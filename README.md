# Todo List App using SwiftUI

This SwiftUI code implements a basic Todo List app, allowing users to add and delete tasks to a list.

## Code Explanation

The code consists of two primary components: the `ContentView` view and the `ContentView_Previews` struct.

### `ContentView` (View)

The `ContentView` struct is the main view of the app and handles the UI components of the Todo List. It includes the following key components:

1.  `@State private var todos: [String] = []`: A state property that holds an array of strings representing the list of tasks (todos). When this property changes, SwiftUI automatically updates the UI accordingly.

2.  `@State private var newTodoTitle = ""`: A state property that stores the text input for adding a new task.

3.  `var body: some View`: The body of the `ContentView`, defining the UI elements and their layout. The view consists of a VStack containing a title, a list of todos, and an input field with a "+" button to add new tasks.

4.  `ForEach(todos, id: \.self) { todo in ... }`: A loop that iterates through the `todos` array and displays each task in the list. Each task is represented by a `Text` view with the task's title.

5.  `private func addTodo()`: A private method to add a new task to the `todos` array. It trims the input text, checks if it's not empty, and then appends the new task to the `todos` array.

6.  `private func deleteTodo(at offsets: IndexSet)`: A private method to delete a task from the `todos` array using the indices provided by `IndexSet`.

7.  `.toolbar { EditButton() }`: Adds an "Edit" button to the navigation bar to enable editing mode in the `List` view. This allows users to delete tasks by swiping and tapping the delete button.

### `ContentView_Previews` (Preview)

The `ContentView_Previews` struct provides a preview of the `ContentView` view for Xcode's SwiftUI preview canvas. It is used during development to see how the app looks without running it on a simulator or device.

## Preview

The preview shows how the `ContentView` will look, displaying an empty Todo List with a placeholder "New task" input field and a "+" button to add new tasks. As tasks are added, they will be displayed in the list. Users can tap the "Edit" button to enter editing mode and delete tasks from the list.

Feel free to explore and modify the code to enhance the functionality and design of the Todo List app!

## License

This project is licensed under the MIT License - see the [LICENSE](https://github.com/apiphoomchu/Simple-ToDoList/blob/main/LICENSE) file for details.

## Acknowledgments

Special thanks to SwiftUI and Apple for providing the framework and tools to build this Todo List app.
