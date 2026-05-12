#pragma once

#include <cctype>
#include <map>
#include <optional>
#include <stdexcept>
#include <string>
#include <utility>
#include <variant>
#include <vector>

namespace json {

struct Value;
using Array = std::vector<Value>;
using Object = std::map<std::string, Value>;

struct Value {
    std::variant<std::nullptr_t, bool, double, std::string, Array, Object> data;

    bool is_null() const { return std::holds_alternative<std::nullptr_t>(data); }
    bool is_bool() const { return std::holds_alternative<bool>(data); }
    bool is_number() const { return std::holds_alternative<double>(data); }
    bool is_string() const { return std::holds_alternative<std::string>(data); }
    bool is_array() const { return std::holds_alternative<Array>(data); }
    bool is_object() const { return std::holds_alternative<Object>(data); }

    const std::string &as_string() const { return std::get<std::string>(data); }
    const Array &as_array() const { return std::get<Array>(data); }
    const Object &as_object() const { return std::get<Object>(data); }
    double as_number() const { return std::get<double>(data); }
    bool as_bool() const { return std::get<bool>(data); }
};

class Parser {
public:
    explicit Parser(std::string input) : text(std::move(input)) {}

    Value parse() {
        Value value = parse_value();
        skip_ws();
        if (pos != text.size()) {
            throw std::runtime_error("unexpected trailing JSON content");
        }
        return value;
    }

private:
    std::string text;
    std::size_t pos = 0;

    void skip_ws() {
        while (pos < text.size() && std::isspace(static_cast<unsigned char>(text[pos]))) {
            ++pos;
        }
    }

    char peek() {
        skip_ws();
        if (pos >= text.size()) {
            throw std::runtime_error("unexpected end of JSON");
        }
        return text[pos];
    }

    char get() {
        if (pos >= text.size()) {
            throw std::runtime_error("unexpected end of JSON");
        }
        return text[pos++];
    }

    void expect(char expected) {
        skip_ws();
        char actual = get();
        if (actual != expected) {
            throw std::runtime_error(std::string("expected '") + expected + "', got '" + actual + "'");
        }
    }

    Value parse_value() {
        char ch = peek();
        if (ch == '"') {
            return Value{parse_string()};
        }
        if (ch == '{') {
            return Value{parse_object()};
        }
        if (ch == '[') {
            return Value{parse_array()};
        }
        if (ch == '-' || std::isdigit(static_cast<unsigned char>(ch))) {
            return Value{parse_number()};
        }
        if (text.compare(pos, 4, "true") == 0) {
            pos += 4;
            return Value{true};
        }
        if (text.compare(pos, 5, "false") == 0) {
            pos += 5;
            return Value{false};
        }
        if (text.compare(pos, 4, "null") == 0) {
            pos += 4;
            return Value{nullptr};
        }
        throw std::runtime_error("invalid JSON value");
    }

    std::string parse_string() {
        expect('"');
        std::string out;
        while (pos < text.size()) {
            char ch = get();
            if (ch == '"') {
                return out;
            }
            if (ch == '\\') {
                char esc = get();
                switch (esc) {
                    case '"': out.push_back('"'); break;
                    case '\\': out.push_back('\\'); break;
                    case '/': out.push_back('/'); break;
                    case 'b': out.push_back('\b'); break;
                    case 'f': out.push_back('\f'); break;
                    case 'n': out.push_back('\n'); break;
                    case 'r': out.push_back('\r'); break;
                    case 't': out.push_back('\t'); break;
                    default:
                        throw std::runtime_error("unsupported JSON string escape");
                }
            } else {
                out.push_back(ch);
            }
        }
        throw std::runtime_error("unterminated JSON string");
    }

    double parse_number() {
        std::size_t start = pos;
        if (text[pos] == '-') {
            ++pos;
        }
        while (pos < text.size() && std::isdigit(static_cast<unsigned char>(text[pos]))) {
            ++pos;
        }
        if (pos < text.size() && text[pos] == '.') {
            ++pos;
            while (pos < text.size() && std::isdigit(static_cast<unsigned char>(text[pos]))) {
                ++pos;
            }
        }
        return std::stod(text.substr(start, pos - start));
    }

    Array parse_array() {
        expect('[');
        Array out;
        skip_ws();
        if (pos < text.size() && text[pos] == ']') {
            ++pos;
            return out;
        }
        while (true) {
            out.push_back(parse_value());
            skip_ws();
            char ch = get();
            if (ch == ']') {
                return out;
            }
            if (ch != ',') {
                throw std::runtime_error("expected ',' or ']' in JSON array");
            }
        }
    }

    Object parse_object() {
        expect('{');
        Object out;
        skip_ws();
        if (pos < text.size() && text[pos] == '}') {
            ++pos;
            return out;
        }
        while (true) {
            skip_ws();
            std::string key = parse_string();
            expect(':');
            out.emplace(std::move(key), parse_value());
            skip_ws();
            char ch = get();
            if (ch == '}') {
                return out;
            }
            if (ch != ',') {
                throw std::runtime_error("expected ',' or '}' in JSON object");
            }
        }
    }
};

inline const Value &at(const Object &object, const std::string &key) {
    auto it = object.find(key);
    if (it == object.end()) {
        throw std::runtime_error("missing JSON key: " + key);
    }
    return it->second;
}

inline const Value &at(const Object &object, const char *key) {
    auto it = object.find(key);
    if (it == object.end()) {
        throw std::runtime_error(std::string("missing JSON key: ") + key);
    }
    return it->second;
}

inline const Value *ptr_at(const Object &object, const char *key) {
    auto it = object.find(key);
    if (it == object.end()) {
        throw std::runtime_error(std::string("missing JSON key: ") + key);
    }
    return &it->second;
}

inline std::optional<const Value *> maybe_at(const Object &object, const std::string &key) {
    auto it = object.find(key);
    if (it == object.end()) {
        return std::nullopt;
    }
    return &it->second;
}

}  // namespace json
