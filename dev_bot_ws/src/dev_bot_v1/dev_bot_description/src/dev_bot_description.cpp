#include <ros/ros.h>

using namespace std ;

int main(int argc, char **argv)
{
    ros::init(argc, argv, "my_node");
    ros::NodeHandle nh;
    cout <<"Hello World\n";
    return 0;

}