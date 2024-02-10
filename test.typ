= Test results <test_results>

Since running tests on different applications require to write a distinct inspector for each application, our tests have been run on the "postepay" app. Then we showed that it is possible to automate the testing of applications which require a login by writing an inspector for the "discord" app.

#figure(
    grid(
        columns: 4,
        gutter: 2mm,
        image("images/Screenshot_1.png"),
        image("images/Screenshot_2.png"),
        image("images/Screenshot_3.png"),
        image("images/Screenshot_4.png")
    ),
    caption: "Test screenshots"
)

We run the complete test set of @QRFuzz on the "postepay" app without finding vulnerabilities and our tool was able to scan an average of 7 QRs every minute.