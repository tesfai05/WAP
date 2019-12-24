/** Javascript source code for Student Registration SPApp **/
/** Author: O. A. Kalu **/
/** Date created: Thur 9/14/2017 **/
/** Date modified: Fri 11/8/2019 **/

$(document).ready(function(){
    // Setup and switch-on DateTime ticking clock
    setInterval(() => {
        $("#dateTimeTicker").text(new Date());
    }, 1000);

    // check for Geolocation support
    if (navigator.geolocation) {
        console.log('Geolocation is supported!');
    }
    else {
        console.log('Geolocation is not supported for this Browser/OS.');
    }

    // Hold a copy of studentsData in memory
    const studentsData = [];

    /** Adds a new Student */
    const addStudent = function(student) {
        addStudentToListView(student);
        addStudentToArrayData(student);
        addStudentToLocalStorage(student);
    }

    /** Adds the student data to List UI */
    const addStudentToListView = function(student) {
        const newListItem = "<li class='list-group-item'>" + student.studentId + "-->" + student.firstName + "</li>";
        $("#olstStudents").append(newListItem);
    }

    /** Adds the student to the studentsData array */
    const addStudentToArrayData = function(student) {
        studentsData.push(student);
    }

    /** Adds the student data to localStorage */
    const addStudentToLocalStorage = function(student) {
        let idx = localStorage.length;
        localStorage.setItem(idx, student.studentId + "-->" + student.firstName);
    }

    //#region load data
    const localDataSize = localStorage.length;
    if(localDataSize > 0) {
        // read & display list from localStorage
        for(let i=0; i<localDataSize; i++) {
            const localDataItem = localStorage.getItem(i);
            const std= localDataItem.split("-->");
            const studentId = std[0];
            const firstName = std[1];
            const objStudent = {
                "studentId": studentId,
                "firstName": firstName
            }; 
            addStudentToListView(objStudent);
            addStudentToArrayData(objStudent);
        }
    } else {
        // Fetch and display studentsData from server using JQuery AJAX
        $.ajax({
            url: "data/students.json",
            type: "GET",
            dataType: "json"
        }).done(function(studentsData) {
            studentsData.forEach((objStudent) => {
                addStudent(objStudent);
            });
        }).fail(function(xhr, status, err) {
            alert("Error: " + status + " - " + err);
        }).always(function(xhr, status) {
            //alert( "The request is complete!" );
        });   
    }
    //#endregion

    //#region Form submission
    $("#stuRegForm").on("submit", function(event) {
        event.preventDefault();
        const studentId = $("#studentId").val();
        const firstName = $("#firstName").val();
        const objNewStudent = {
            "studentId": studentId,
            "firstName": firstName
        };
        addStudent(objNewStudent);
        $("#studentId").val("");
        $("#firstName").val("");
        $("#studentId").focus();
    });
    //#endregion

    $("#studentId").focus();
});
