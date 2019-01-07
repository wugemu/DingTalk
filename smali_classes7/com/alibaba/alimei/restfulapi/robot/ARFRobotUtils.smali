.class public Lcom/alibaba/alimei/restfulapi/robot/ARFRobotUtils;
.super Ljava/lang/Object;
.source "ARFRobotUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static alarm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "monitorPointer"    # Ljava/lang/String;
    .param p1, "errCode"    # Ljava/lang/String;
    .param p2, "errMsg"    # Ljava/lang/String;
    .param p3, "arg"    # Ljava/lang/String;

    .prologue
    .line 20
    invoke-static {}, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->getRobot()Lcom/alibaba/alimei/restfulapi/robot/IARFRobot;

    move-result-object v0

    .line 21
    .local v0, "robot":Lcom/alibaba/alimei/restfulapi/robot/IARFRobot;
    if-eqz v0, :cond_0

    .line 22
    invoke-interface {v0, p0, p1, p2, p3}, Lcom/alibaba/alimei/restfulapi/robot/IARFRobot;->alarm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    :cond_0
    return-void
.end method

.method public static coreAlarm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "monitorPointer"    # Ljava/lang/String;
    .param p1, "errCode"    # Ljava/lang/String;
    .param p2, "errMsg"    # Ljava/lang/String;
    .param p3, "arg"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-static {}, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->getRobot()Lcom/alibaba/alimei/restfulapi/robot/IARFRobot;

    move-result-object v0

    .line 35
    .local v0, "robot":Lcom/alibaba/alimei/restfulapi/robot/IARFRobot;
    if-eqz v0, :cond_0

    .line 36
    invoke-interface {v0, p0, p1, p2, p3}, Lcom/alibaba/alimei/restfulapi/robot/IARFRobot;->coreAlarm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    :cond_0
    return-void
.end method
