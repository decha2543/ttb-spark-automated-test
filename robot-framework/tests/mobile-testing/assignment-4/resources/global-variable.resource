*** Variables ***
${resources}                        ${CURDIR}/../resources
${keywords}                         ${resources}/keywords

${automation_name}                  uiautomator2
${app}                              ${resources}/application/minimal-todo.apk
${platform_name}                    android

# Home Page Element
${app_title}                        xpath=//android.widget.TextView[@text="Minimal"]
${add_button}                       xpath=//android.widget.ImageView[@resource-id="com.avjindersinghsekhon.minimaltodo:id/addToDoItemFAB"]
${todo_item}                        xpath=//android.widget.TextView[@resource-id="com.avjindersinghsekhon.minimaltodo:id/toDoListItemTextview" and contains(lower-case(@text), "_{}_")]
${empty_todo_item}                  xpath=//android.widget.TextView[@text="You don't have any todos"]
${undo_delete_button}               xpath=//android.widget.Button[@resource-id="com.avjindersinghsekhon.minimaltodo:id/snackbar_action"]
${remind_me_in_todo}                xpath=//android.widget.TextView[@resource-id="com.avjindersinghsekhon.minimaltodo:id/todoListItemTimeTextView" and contains(lower-case(@text), "_{}_")]

# Add Todo Page Element
${todo_input}                       xpath=//*[@resource-id="com.avjindersinghsekhon.minimaltodo:id/userToDoEditText"]
${submit_add_todo_button}           xpath=//android.widget.ImageView[@resource-id="com.avjindersinghsekhon.minimaltodo:id/makeToDoFloatingActionButton"]
${remind_me_switch}                 xpath=//android.widget.Switch[@resource-id="com.avjindersinghsekhon.minimaltodo:id/toDoHasDateSwitchCompat"]
${remind_overview_text}             xpath=//android.widget.TextView[@resource-id="com.avjindersinghsekhon.minimaltodo:id/newToDoDateTimeReminderTextView" and contains(lower-case(@text), "_{}_")]
${close_button}                     xpath=//android.widget.ImageButton[@content-desc="Navigate up"]
${date_select}                      xpath=//android.widget.EditText[@resource-id="com.avjindersinghsekhon.minimaltodo:id/newTodoDateEditText"]
${date_select_inner_year}           xpath=//android.widget.Button[@resource-id="com.avjindersinghsekhon.minimaltodo:id/date_picker_year"]
${date_select_inner_year_select}    xpath=//android.widget.TextView[@content-desc="_{}_"]
${date_select_ok_button}            xpath=//android.widget.Button[@resource-id="com.avjindersinghsekhon.minimaltodo:id/ok"]
${time_select}                      xpath=//android.widget.EditText[@resource-id="com.avjindersinghsekhon.minimaltodo:id/newTodoTimeEditText"]
