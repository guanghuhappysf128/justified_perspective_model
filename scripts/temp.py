import matplotlib.pyplot as plt

# Sample data
categories = ['Category 1', 'Category 2', 'Category 3', 'Category 4']
subcategories = ['Subcat A', 'Subcat B', 'Subcat C']

# Four sets of data as lists
data1 = [[5, 2, 3],
         [3, 7, 2],
         [6, 4, 3],
         [4, 5, 6]]

data2 = [[6, 3, 4],
         [4, 6, 3],
         [7, 5, 4],
         [5, 6, 7]]

data3 = [[7, 4, 5],
         [5, 8, 4],
         [8, 6, 5],
         [6, 7, 8]]

data4 = [[8, 5, 6],
         [6, 9, 5],
         [9, 7, 6],
         [7, 8, 9]]

# Create 2x2 subplot
fig, axs = plt.subplots(2, 2, figsize=(12, 10))

# List of data sets
datasets = [data1, data2, data3, data4]
titles = ['Dataset 1', 'Dataset 2', 'Dataset 3', 'Dataset 4']

for ax, data, title in zip(axs.flatten(), datasets, titles):
    bottom = [0] * len(categories)
    for i, subcat in enumerate(subcategories):
        values = [row[i] for row in data]
        ax.bar(categories, values, label=subcat, bottom=bottom)
        bottom = [sum(x) for x in zip(bottom, values)]
    ax.set_xlabel('Categories')
    ax.set_ylabel('Values')
    ax.set_title(title)
    ax.legend()

plt.tight_layout()

plt.savefig("temp.png", dpi=600, bbox_inches='tight')