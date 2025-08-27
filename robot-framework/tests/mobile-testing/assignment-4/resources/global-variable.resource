*** Variables ***
${resources}                    ${CURDIR}/../resources
${keywords}                     ${resources}/keywords

${automation_name}              uiautomator2
${app}                          ${resources}/application/minimal-todo.apk
${platform_name}                android
${wait_for_idle_timeout}        10000

# Home Page Element
${app_title}                    xpath=//android.widget.TextView[@text="Minimal"]
${add_button}                   xpath=//android.widget.ImageView[@resource-id="com.avjindersinghsekhon.minimaltodo:id/addToDoItemFAB"]
${specific_todo_item}           xpath=//android.widget.TextView[@resource-id="com.avjindersinghsekhon.minimaltodo:id/toDoListItemTextview" and @text="_{}_"]
${all_todo_item}                xpath=//android.widget.TextView[@resource-id="com.avjindersinghsekhon.minimaltodo:id/toDoListItemTextview"]
${empty_todo_item}              xpath=//android.widget.TextView[@text="You don't have any todos"]
${undo_delete_button}           xpath=//android.widget.Button[@resource-id="com.avjindersinghsekhon.minimaltodo:id/snackbar_action"]

# Add Todo Page Element
${todo_input}                   xpath=//*[@resource-id="com.avjindersinghsekhon.minimaltodo:id/userToDoEditText"]
${submit_add_todo_button}       xpath=//android.widget.ImageView[@resource-id="com.avjindersinghsekhon.minimaltodo:id/makeToDoFloatingActionButton"]
${remind_me_switch}             xpath=//android.widget.Switch[@resource-id="com.avjindersinghsekhon.minimaltodo:id/toDoHasDateSwitchCompat"]
${remind_overview_text}         xpath=//android.widget.TextView[@resource-id="com.avjindersinghsekhon.minimaltodo:id/newToDoDateTimeReminderTextView"]
${close_button}                 xpath=//android.widget.ImageButton[@content-desc="Navigate up"]
# The date you entered is in the past.
