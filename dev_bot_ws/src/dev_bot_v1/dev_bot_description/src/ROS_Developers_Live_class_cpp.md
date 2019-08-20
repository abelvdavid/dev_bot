
<img src="images/logos/TClogo.png">


# PRESENTS

# ROS Developers Live Class 61


<img src="images/logos/liveclass.png">

## C++ for Robotics

In this class, you will learn how to create C++ programs for robots.

C++ is a one of the best programming language for robotics, especially for ROS based robots. However many roboticists do not know the basics of it. In this live tutorial, we will see the basics of C++, directly applying the C++ programs to ROS robots.

NO PREVIOUS KNOWLEDGE OF C++ OR ROS REQUIRED!
In this class, we'll learn:

* How to create and execute a C++ program for robot control
* How to define a C++ function to get data from a robot sensor
* How to create a C++ class to move a robot

## Why this class?

If you are interested in becoming a **Robotics Developer** and you don't know ROS, then you should start learning C++ and then use your knowledge of C++ to learn ROS.

(To know more, read this guide about <a href="http://www.theconstructsim.com/become-robotics-developer/">How To Become a Robotics Developer</a>)

#### Learning ROS using C++ is the usefull and complete way to learn ROS!

Pre-requisites for this live class are:
* Wanting to become a ROS Developer!
* ...that's it!!

### How to use this ROSject

A <a href="http://rosjects.com">**ROSject**</a> is a **ROS project** packaged in such a way that all the material it contains (**ROS code, Gazebo simulations and Notebooks**) can be shared with any body **using only a web link**. That is what we did with all the attendants to the Live Class, we shared this ROSject with them (so they can have access to all the ROS material they contain).

**Check <a heref="https://www.youtube.com/watch?v=cR-Ow5K7oSo">this webinar</a> to learn more about ROSjects and how to create your own ROSjects**.

You will need to have a free account at the <a href="http://rosds.online">ROS Development Studio</a> (ROSDS). Get the account and then follow the indications below.

## Robot for today's Live Class

Today we are going to use the Neobotix MPO 700.

<img src="images/neobotix.jpg">

Remember that any code you build here can be directly executed in the real robot if you have it, from the **Real Robot** option on the top menu. Check <a href="http://www.rosject.io/l/a10f572/">this ROSject made by Husarion</a> that indicates how to connect with the real robot from ROSDS.

### Launching the robot simulation

To launch it, select **Simulations->Clearpath Playpen** then select again **Simulations->Neobotix MPO 700**. You should get something like this:

<img src="images/mpo700.png">

## Create a C++ program

Let's create our first C ++ program!

Open the IDE and create a new file at **catkin_ws/src/my_cpp_package/src** with name **my_cpp_program.cpp**.

### a) Add a header

Add some lines indicating the interpreter that should use to execute this file when called.


```python
#include <ros/ros.h>
```

Here we are including all the headers necessary to use the most common public pieces of the ROS system.
Always we create a new C++ file, we will need to add this include.

### b) We'll create our main:


```python
int main(int argc, char **argv) {
```

then add the following:



```python
ros::init(argc, argv, "my_node");
ros::NodeHandle nh;
  
```

### c) Add some basic instructions


```python
std::cout << "Keep pushing your ROS learning!\n";
```

and finish our main like this:


```python
return 0;
}
```

You should have something like this:


```python
#include <ros/ros.h>

int main(int argc, char **argv) {

  ros::init(argc, argv, "my_node");
  ros::NodeHandle nh;
  std::cout << "Keep pushing your ROS learning!\n";
  return 0;
}
```

### e) Compile the program

with the IDE go to the **CMakeLists.txt** inside the **src** folder into **my_cpp_package**

find the following sentences:


```python
###########
## Build ##
###########

##add_executable(my_cpp_program src/my_cpp_program.cpp)
##add_dependencies(my_cpp_program ${my_cpp_program_EXPORTED_TARGETS} ${catkin_EXPORTED_TARGETS})
##target_link_libraries(my_cpp_program   ${catkin_LIBRARIES} )
```

and erase those ## of the 3 sentences like this 


```python
add_executable(my_cpp_program src/my_cpp_program.cpp)
add_dependencies(my_cpp_program ${my_cpp_program_EXPORTED_TARGETS} ${catkin_EXPORTED_TARGETS})
target_link_libraries(my_cpp_program   ${catkin_LIBRARIES} )
```

You'll erase those ## of the correct program everytime you'll run each program

Don't forget to save everytime you make a change of a file.
Then in the webshell go to the **~/catkin_ws** and write the following command to compile:


```python
catkin_make
```

### f) Execute the program

then you have to go to the direction of the executable program running the following into the webshell.


```python
 cd devel/lib/my_cpp_package/
```

and to run the program use the following into the webshell


```python
./my_cpp_program
```

## Functions in C++

**What is a function?**

A function is a block of organized, reusable code that is used to perform a single, related action. Functions provide better modularity for your application and a high degree of code reusing. 



### a) Creating the function

Create the following function in your C++ program:
Remember that you have to create the function before de main function.


```python
std::string printerfunction(std::string lastname) {

  std::cout << "Hi ros developer, what's your name?";
  std::string name;
  std::cin >> name;

  std::string text = " Keep pushing your ROS learning!\n";
  std::string stringresult = name + " " + lastname + text;
  
  strcpy(result, stringresult.c_str());

  

  return stringresult;
}
```

Important points of a function:
1. It can receive any number of parameters
2. It can return a single result

### b) Calling the function

at the end we put our new function into the main with the next sintaxis , remember that into the () you have tu put your lastname:


```python
std::string result2 = printerfunction("my lastname");
```

then let's print the result


```python
std::cout << result2;
```

So, you should have something like this:


```python
#include <ros/ros.h>

std::string printerfunction(std::string lastname) {

  std::cout << "Hi ros developer, what's your name?";
  std::string name;
  std::cin >> name;

  std::string text = " Keep pushing your ROS learning!\n";
  std::string result = name + " " + lastname + text;

  return result;
}
    
int main(int argc, char **argv) {

  ros::init(argc, argv, "my_node");
  ros::NodeHandle nh;
  std::cout << "Keep pushing your ROS learning!\n";

  std::string result2 = printerfunction("my lastname");

  std::cout << result2;

  return 0;
}

```

Once we have everything we have to run a catkin_make again with the following.


```python
cd ~/catkin_ws/
catkin_make
```

and go again to the devel folder and execute with the following.


```python
 cd devel/lib/my_cpp_package/
./my_cpp_program
```

### d) Example with the robot

Create a new program called **obstacle_infront.cpp** with the IDE in the same place as your program.


```python
#include <sensor_msgs/LaserScan.h>
#include <ros/ros.h>

void chatterCallback(const sensor_msgs::LaserScan::ConstPtr &scan) {

  int size = scan->ranges.size();
  int middle = size / 2;
  float range = scan->ranges[middle];

  ROS_INFO("RANGE[%d]=%f", middle, range);
}

int main(int argc, char **argv) {

  ros::init(argc, argv, "my_node");
  ros::NodeHandle nh;

  ros::Subscriber sub = nh.subscribe("/sick_s300_front/scan", 1, chatterCallback);

  ros::spin();

  return 0;
}
```

Add the following lines to the *CMakeLists.txt*:


```python
add_executable(obstacle_infront src/obstacle_infront.cpp)
add_dependencies(obstacle_infront ${obstacle_infront_EXPORTED_TARGETS} ${catkin_EXPORTED_TARGETS})
target_link_libraries(obstacle_infront   ${catkin_LIBRARIES} )
```

Then compile and execute.

## Create a C++ Class

A C++ class (also called, an *object*), is simply a collection of data (variables) and methods (functions) that act on those data. 

### a) How to create a Class

Example:



```python
class Box {

private:
  float lenght2;
  float breadth2;
  float height2;

public:
  std::string color;
  float weight;
  float volume;
  Box(float length, float breadth, float height) {

    lenght2 = length;
    breadth2 = breadth;
    height2 = height;
  }

  float BoxVolume() {
    volume = lenght2 * breadth2 * height2;
    return volume;
  }
};
```

As you can see it, you can declare variables and functions that will be the properties of your object or class.

### b) How to use a class

By creating an **instance** of that class where you put the name of the constructor and the name of your new object with the parameters of the constructor:


```python
Box box1(1.0, 2.0, 3.0);
```

Then you can call the functions of that class or even you can assign a value of the variables or properties of your object:


```python
box1.BoxVolume();
box1.color = "blanco";
box1.weight = 4.0;
```

**IMPORTANT**: different instances of the same class, are independent, that is, maintain different values for the variables.


```python
Box box1(1.0, 2.0, 3.0) ;
Box box2(2.0, 4.0, 6.0);   

box1.BoxVolume;
box2.BoxVolume;

box1.color = "blanco";
box2.color = "negro";


box1.weight = 4.0;
box2.weight = 5.0;

```

### c) The constructor

Every class calls a special function called the constructor whenever a new instance is generated, this could be Parameterized or Default

An example of a Default constructor could be:


```python
Box()
```


```python
Box box1;
```


```python
An example of a Parameterized constructor could be:
```


```python
Box(float length, float breadth, float height) {

    lenght2 = length;
    breadth2 = breadth;
    height2 = height;
  }
```


```python
Box box1(1.0, 2.0, 3.0);
```

### d) Move the robot

Let's create a program named **robot_commander.cpp** with the following code:


```python
#include <geometry_msgs/Twist.h>
#include <ros/ros.h>

class MyRobot {
    
private:
  std::string robot_name_;
  ros::NodeHandle n_;
  ros::Publisher speed_pub_;

public:

  MyRobot(ros::NodeHandle& nh, std::string robot_model): n_(nh)
  { 
        robot_name_ = robot_model;
        speed_pub_ = n_.advertise<geometry_msgs::Twist>("/cmd_vel", 1);
  }
    
  void speed() 
  { 
    geometry_msgs::Twist vel;
    
    vel.linear.x = 0.2;
    vel.angular.z = 0.2;
    speed_pub_.publish(vel);
  }
};

int main(int argc, char **argv) 
{

  ros::init(argc, argv, "my_node");
  ros::NodeHandle nh;

  MyRobot MPO700(nh, "Neobotix MPO 700");
    
  ros::Rate loop_rate(10);
  while (ros::ok()) 
  {
      MPO700.speed();
      ros::spinOnce();
      loop_rate.sleep();
  }
  return 0;
}


```

Add the following lines to the CMakeLists.txt


```python
add_executable(robot_commander src/robot_commander.cpp)
add_dependencies(robot_commander ${robot_commander_EXPORTED_TARGETS} ${catkin_EXPORTED_TARGETS})
target_link_libraries(robot_commander   ${catkin_LIBRARIES} )
```

Compile and execute

# Mission completed!!

### Before you log off, remember to <span style="background: #098be8; padding: 0px; color:white;">GIVE US A LIKE</span> and hit the <span style="background: #098be8; padding: 0px; color:white;">THUMBS UP</span> and <span style="background: #098be8; padding: 0px; color:white;">SUBSCRIBE</span> for more weekly tutorials!!!

# HELP US CREATE THE FUTURE C++ FOR ROBOTICS COURSE!

* We have created a free online course <a href="http://www.theconstructsim.com/construct-learn-develop-robots-using-ros/robotigniteacademy_learnros/ros-courses-library/python-robotics/">**PYTHON FOR ROBOTICS**</a>
* We want to create another one for **C++ FOR ROBOTICS** and provide it completely for free.
* Let me know what you would like to have in that course!!

Contribute to the creation of that course with your suggestion. 

## A course created by the community for the community!

### If you want to learn more...

Remember we have our ROS online academy

Let me recommend you  this related course:

* Basic knowledge of <b>ROS concepts such as topics, publish and subscribe, ROS Service, ROS Actions</b>. If you don't know about it, <a href="http://www.theconstructsim.com/construct-learn-develop-robots-using-ros/robotigniteacademy_learnros/ros-courses-library/ros-courses-ros-basics-in-5-days-c/">check this course</a>
<img src="images/logos/ros5daysc++.png" width="200" height="200">



```python

```
