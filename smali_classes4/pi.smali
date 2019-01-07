.class public final Lpi;
.super Ljava/lang/Object;
.source "AlimeiAlarmLogger.java"

# interfaces
.implements Lcom/alibaba/alimei/restfulapi/robot/IARFRobot;
.implements Lyi;
.implements Lyl;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "moniterPoint"    # Ljava/lang/String;
    .param p2, "errorCode"    # Ljava/lang/String;
    .param p3, "errorMsg"    # Ljava/lang/String;
    .param p4, "arg"    # Ljava/lang/String;

    .prologue
    .line 23
    invoke-static {p1, p2, p3, p4}, Lafg;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    return-void
.end method

.method public final a(Ljava/util/Map;Ljava/lang/String;)V
    .locals 1
    .param p2, "desc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 18
    .local p1, "info":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v0, 0xdac

    invoke-static {v0, p1, p2}, Lajg;->a(ILjava/util/Map;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public final alarm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "monitorPointer"    # Ljava/lang/String;
    .param p2, "errCode"    # Ljava/lang/String;
    .param p3, "errMsg"    # Ljava/lang/String;
    .param p4, "arg"    # Ljava/lang/String;

    .prologue
    .line 28
    invoke-static {p1, p2, p3, p4}, Lafg;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "moniterPoint"    # Ljava/lang/String;
    .param p2, "errorCode"    # Ljava/lang/String;
    .param p3, "errorMsg"    # Ljava/lang/String;
    .param p4, "arg"    # Ljava/lang/String;

    .prologue
    .line 38
    invoke-static {p1, p2, p3, p4}, Lafg;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method public final coreAlarm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "moniterPoint"    # Ljava/lang/String;
    .param p2, "errorCode"    # Ljava/lang/String;
    .param p3, "errorMsg"    # Ljava/lang/String;
    .param p4, "arg"    # Ljava/lang/String;

    .prologue
    .line 33
    invoke-static {p1, p2, p3, p4}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    return-void
.end method
