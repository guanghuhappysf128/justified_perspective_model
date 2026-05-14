#pragma once

#include <memory>
#include <optional>
#include <string>
#include <unordered_map>
#include <unordered_set>
#include <vector>

enum class VarType { Enumerate, Integer, Boolean, String, Float, Unknown };
enum class Op { Equal, NotEqual, Greater, GreaterEqual, Less, LessEqual };
enum class EffectKind { Assign, Increase, Decrease };
enum class UpdateKind { Constant, Ontic, Epistemic };
enum class ConditionKind { Ontic, Epistemic };
enum class FormulaKind { Ep, Jp };
enum class Ternary { True, False, Unknown };

constexpr int UNSEEN_VALUE = -1;
constexpr int HAVENT_SEEN_VALUE = -2;

struct Condition;

struct EpFormula {
    FormulaKind kind = FormulaKind::Ep;
    std::string query;
    std::shared_ptr<Condition> varphi;
    int variable = -1;
};

struct Variable {
    std::string name;
    std::string schema;
    std::vector<std::string> arguments;
    VarType type = VarType::Unknown;
    bool has_integer_range = false;
    int integer_min = 0;
    int integer_max = 0;
    std::vector<std::string> values;
    std::unordered_map<std::string, int> value_to_id;
};

struct Condition {
    ConditionKind kind = ConditionKind::Ontic;
    Op op = Op::Equal;
    int var = -1;
    bool target_is_var = false;
    int target_var = -1;
    int value = -1;
    Ternary target_ternary = Ternary::True;
    std::shared_ptr<EpFormula> epistemic;
};

struct Effect {
    EffectKind effect = EffectKind::Assign;
    UpdateKind update = UpdateKind::Constant;
    int target = -1;
    int source_var = -1;
    int value = -1;
    std::string literal_value;
    std::shared_ptr<EpFormula> epistemic;
};

struct Action {
    std::string name;
    std::vector<Condition> preconditions;
    std::vector<Effect> effects;
    bool has_unsupported_epistemic = false;
};

struct Task {
    std::string domain;
    std::string problem;
    std::vector<Variable> variables;
    std::unordered_map<std::string, int> var_to_id;
    std::unordered_set<std::string> agent_names;
    std::vector<int> initial_state;
    std::vector<Condition> goals;
    std::vector<Action> actions;
    bool has_epistemic_formulas = false;
    std::string visibility_model = "all_visible";
};

using StateSequence = std::vector<std::vector<int>>;

VarType parse_var_type(const std::string &type);
Op parse_op(const std::string &op);
EffectKind parse_effect_kind(const std::string &effect);
UpdateKind parse_update_kind(const std::string &update);
Ternary parse_ternary(const std::string &value);

int lookup_var(const Task &task, const std::string &name);
int maybe_lookup_var(const Task &task, const std::string &name);
int encode_value(const Variable &var, const std::string &value);
int ensure_value(Variable &var, const std::string &value);
int parse_special_or_encoded_value(const Variable &var, const std::string &value);

bool condition_has_epistemic(const Condition &condition);
Ternary bool_to_ternary(bool value);
Ternary compare_ternary(Ternary expected, Ternary actual);
Ternary compare_encoded_values(const Variable &var, int lhs, int rhs, Op op);
bool integer_value_in_declared_range(const Variable &var, int value);

Task load_task(const std::string &path);
