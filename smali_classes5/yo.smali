.class public final Lyo;
.super Ljava/lang/Object;
.source "RobotAlarmUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "moniterPoint"    # Ljava/lang/String;
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;
    .param p3, "arg"    # Ljava/lang/String;

    .prologue
    .line 19
    invoke-static {}, Lxn;->k()Lxt;

    move-result-object v0

    .line 20
    .local v0, "config":Lxt;
    if-eqz v0, :cond_0

    .line 1116
    iget-object v1, v0, Lxt;->f:Lyl;

    .line 22
    .local v1, "robotAlarm":Lyl;
    if-eqz v1, :cond_0

    .line 23
    invoke-interface {v1, p0, p1, p2, p3}, Lyl;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .end local v1    # "robotAlarm":Lyl;
    :cond_0
    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "moniterPoint"    # Ljava/lang/String;
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;
    .param p3, "arg"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-static {}, Lxn;->k()Lxt;

    move-result-object v0

    .line 37
    .local v0, "config":Lxt;
    if-eqz v0, :cond_0

    .line 2116
    iget-object v1, v0, Lxt;->f:Lyl;

    .line 39
    .local v1, "robotAlarm":Lyl;
    if-eqz v1, :cond_0

    .line 40
    invoke-interface {v1, p0, p1, p2, p3}, Lyl;->coreAlarm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .end local v1    # "robotAlarm":Lyl;
    :cond_0
    return-void
.end method
