    <!-- Sidebar -->

    
        <div class="sidebar" id="sidebar" *ngIf='menuType === "Owner" '>
        <div class="sidebar-inner slimscroll">
        <div id="sidebar-menu" class="sidebar-menu">
        <ul>
        <li class="menu-title">
        <span>Main</span>
        </li>
        <li>
        <a routerLink="/home/dashboard/"><i class="fa fa-dashboard"></i> <span> Dashboard</span> </a>
        </li>

        <!-- ERPMark Admin -->
        <!-- ERPMark Admin -->
        <!-- ERPMark Admin -->
        <li class="menu-title">
        <span>ERPMark</span>
        </li>
        <li>
        <a routerLink="/home/admin/company"><i class="la la-building"></i> <span> Company settings</span> </a>
        </li>

        <li>
        <a routerLink="/home/admin/theme"><i class="la la-pencil-square"></i> <span> Theme</span> </a>
        </li>
        <li>
        <a routerLink="/home/admin/local"><i class="fa fa-clock-o"></i> <span> Localization</span> </a>
        </li>

        <li>
        <a routerLink="/home/admin/roles"><i class="la la-key"></i> <span> Roles and Privileges</span> </a>
        </li>


        <li class="menu-title">
        <span>Settings</span>
        </li>

        <li>
        <a href="reports.html"><i class="la la-cog"></i> <span>Reports</span></a>
        </li>

        <li>
        <a href="settings.html"><i class="la la-cog"></i> <span>Settings</span></a>
        </li>

        </ul>

        </div>
        </div>
         </div>


        <div class="sidebar" id="sidebar" *ngIf='menuType === "Company" '>
        <div class="sidebar-inner slimscroll">
        <div id="sidebar-menu" class="sidebar-menu">
        <ul>
        <li class="menu-title">
        <span>Main</span>
        </li>
        <li>
        <a routerLink="/home/dashboard/"><i class="fa fa-dashboard"></i> <span> Dashboard</span> </a>
        </li>



        <!-- Superiror Admin -->
        <!-- Superiror Admin -->
        <!-- Superiror Admin -->
        <span *ngIf='menuType === "1" '>
        <li class="menu-title">
        <span>Superior Admin</span>
        </li>


        <li class="submenu">
        <a href="#" class="noti-dot"><i class="la la-user"></i> <span> Employers</span> <span class="menu-arrow"></span></a>
        <ul style="display: none;">
        <li><a  routerLink="/home/employee/list-employee">All Employer</a></li>
        <!-- <li><a routerLink="/home/allocate-leave/list-leave">Leaves <span class="badge badge-pill bg-primary float-right">1</span></a></li> -->
        <li><a routerLink="/home/attendance/list-attendance">Attendance</a></li>
        <li><a routerLink="/home/allocate-leave/list-leave">Leaves</a></li>
        <li><a routerLink="/home/department/list-department">Departments</a></li>
        <li><a routerLink="/home/desigination/list-desigination">Designations</a></li>
        <li><a routerLink="/home/timesheet/list-timesheet">Timesheet</a></li>
        <li><a routerLink="/home/resigination/resigination-list">Resigination</a></li>
        </ul>
        </li>


        <li class="submenu">
        <a href="#" class="noti-dot"><i class="la la-user"></i> <span> Employees</span> <span class="menu-arrow"></span></a>
        <ul style="display: none;">
        <li><a routerLink="/home/employee/list-employee">All Employees</a></li>
        <li><a routerLink="/home/attendance/list-attendance">Attendance</a></li>
        <li><a routerLink="/home/allocate-leave/list-leave">Leaves</a></li>
        <li><a routerLink="/home/department/list-department">Departments</a></li>
        <li><a routerLink="/home/desigination/list-desigination">Designations</a></li>
        <li><a routerLink="/home/timesheet/list-timesheet">Timesheet</a></li>
        <li><a routerLink="/home/resigination/resigination-list">Resigination</a></li>
        </ul>
        </li>


        <li>
        <a routerLink="/home/attendance/list-holidays"><i class="la la-users"></i>
        <span>Holidays</span></a>
        </li>

        <li>
        <a routerLink="/home/allocate-project/list-project"><i class="la la-users"></i>
        <span>Project Allocation</span></a>
        </li>

        </span> 





        <li class="menu-title">
        <span>Settings</span>
        </li>

        <li>
        <a href="reports.html"><i class="la la-cog"></i> <span>Reports</span></a>
        </li>

        <li>
        <a href="settings.html"><i class="la la-cog"></i> <span>Settings</span></a>
        </li>

        </ul>
        </div>
        </div>
        </div> 

        <div class="sidebar" id="sidebar" *ngIf='menuType === "Branch" '>
        <div class="sidebar-inner slimscroll">
        <div id="sidebar-menu" class="sidebar-menu">
        <ul>
        <li class="menu-title">
        <span>Main</span>
        </li>
        <li>
        <a routerLink="/home/dashboard/"><i class="fa fa-dashboard"></i> <span> Dashboard</span> </a>
        </li>


        <!-- Admin -->
        <!-- Admin -->
        <!-- Admin -->
        <li class="menu-title">
        <span>Admin</span>
        </li>

        <li>
        <a routerLink="/home/employee/list-employee"><i class="la la-users"></i>
        <span>Employee</span></a>
        </li>
        <li>
        <a routerLink="/home/attendance/list-attendance"><i class="la la-users"></i>
        <span>Attendance</span></a>
        </li>

        <li>
        <a routerLink="/home/allocate-team/list-team"><i class="la la-users"></i>
        <span>Team Allocation</span></a>
        </li>
        <li>
        <a routerLink="/home/allocate-sprint/list-sprint"><i class="la la-users"></i>
        <span>Generate Sprints</span></a>
        </li>
        <li>
        <a routerLink="/home/allocate-leave/list-leave"><i class="la la-users"></i>
        <span>Leaves</span></a>
        </li>
        <!-- <li>
        <a routerLink="/home/allocate-task/list-task"><i class="la la-users"></i>
        <span>Task Allocation</span></a>
        </li> -->
        <li>
        <a routerLink="/home/timesheet/list-timesheet"><i class="la la-user-secret"></i>
        <span>Timesheet</span></a>
        </li>
        <li>
        <a routerLink="/home/resigination/resigination-list"><i class="la la-users"></i>
        <span>Resigination</span></a>
        </li>

        <li class="submenu">
        <a href="#" class="noti-dot"><i class="la la-user"></i> <span> Task Allocation</span> <span class="menu-arrow"></span></a>
        <ul style="display: none;">
        <li><a  routerLink="/home/allocate-task/list-task">Project 1</a></li>
        <li><a routerLink="/home/allocate-task/list-task">Project 2 <span class="badge badge-pill bg-primary float-right">1</span></a></li>
        <li><a routerLink="/home/allocate-task/list-task">Project 3</a></li>
        </ul>
        </li>

        <li class="menu-title">
        <span>Settings</span>
        </li>

        <li>
        <a href="reports.html"><i class="la la-cog"></i> <span>Reports</span></a>
        </li>

        <li>
        <a href="settings.html"><i class="la la-cog"></i> <span>Settings</span></a>
        </li>


        </ul>
        </div>
        </div>
        </div>


        <div class="sidebar" id="sidebar" *ngIf='menuType === "Employee" ' >
        <div class="sidebar-inner slimscroll">
        <div id="sidebar-menu" class="sidebar-menu">
        <ul>
        <li class="menu-title">
        <span>Main</span>
        </li>
        <li>
        <a routerLink="/home/dashboard/"><i class="fa fa-dashboard"></i> <span> Dashboard</span> </a>
        </li>

        <!-- Employeee -->
        <!-- Employeee -->
        <!-- Employeee -->

        <li class="menu-title">
        <span>Employees</span>
        </li>
        <li>
        <a routerLink="/home/allocate-leave/list-leave"><i class="la la-users"></i>
        <span>Leaves</span></a>
        </li>

        <li>
        <a routerLink="/home/timesheet/list-timesheet"><i class="la la-user-secret"></i>
        <span>Timesheet</span></a>
        </li>
        <li>
        <a routerLink="/home/attendance/list-attendance"><i class="la la-users"></i>
        <span>Attendance</span></a>
        </li>
        <li>
        <a routerLink="/home/resigination/resigination-list"><i class="la la-users"></i>
        <span>Resigination</span></a>
        </li>
        <li class="submenu">
        <a href="#" class="noti-dot"><i class="la la-user"></i> <span>Allocated Task</span> <span class="menu-arrow"></span></a>
        <ul style="display: none;">
        <li><a  routerLink="/home/allocate-task/list-task">Project 1</a></li>
        <li><a routerLink="/home/allocate-task/list-task">Project 2 <span class="badge badge-pill bg-primary float-right">1</span></a></li>
        <li><a routerLink="/home/allocate-task/list-task">Project 3</a></li>
        </ul>
        </li>


        <li class="menu-title">
        <span>Settings</span>
        </li>

        <li>
        <a href="reports.html"><i class="la la-cog"></i> <span>Reports</span></a>
        </li>

        <li>
        <a href="settings.html"><i class="la la-cog"></i> <span>Settings</span></a>
        </li>


        </ul>
        </div>
        </div>
        </div>


