.class public Lcom/alibaba/android/dingtalk/live/msg/core/utils/MsgMonitor;
.super Ljava/lang/Object;
.source "MsgMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalk/live/msg/core/utils/MsgMonitor$IMonitor;
    }
.end annotation


# static fields
.field private static monitor:Lcom/alibaba/android/dingtalk/live/msg/core/utils/MsgMonitor$IMonitor;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    return-void
.end method

.method public static commitCount(Ljava/lang/String;Ljava/lang/String;D)V
    .locals 2
    .param p0, "module"    # Ljava/lang/String;
    .param p1, "monitorPoint"    # Ljava/lang/String;
    .param p2, "value"    # D

    .prologue
    .line 65
    sget-object v0, Lcom/alibaba/android/dingtalk/live/msg/core/utils/MsgMonitor;->monitor:Lcom/alibaba/android/dingtalk/live/msg/core/utils/MsgMonitor$IMonitor;

    if-nez v0, :cond_0

    .line 67
    :goto_0
    return-void

    .line 66
    :cond_0
    sget-object v0, Lcom/alibaba/android/dingtalk/live/msg/core/utils/MsgMonitor;->monitor:Lcom/alibaba/android/dingtalk/live/msg/core/utils/MsgMonitor$IMonitor;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/alibaba/android/dingtalk/live/msg/core/utils/MsgMonitor$IMonitor;->commitCount(Ljava/lang/String;Ljava/lang/String;D)V

    goto :goto_0
.end method

.method public static commitCount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V
    .locals 7
    .param p0, "module"    # Ljava/lang/String;
    .param p1, "monitorPoint"    # Ljava/lang/String;
    .param p2, "arg"    # Ljava/lang/String;
    .param p3, "value"    # D

    .prologue
    .line 70
    sget-object v0, Lcom/alibaba/android/dingtalk/live/msg/core/utils/MsgMonitor;->monitor:Lcom/alibaba/android/dingtalk/live/msg/core/utils/MsgMonitor$IMonitor;

    if-nez v0, :cond_0

    .line 72
    :goto_0
    return-void

    .line 71
    :cond_0
    sget-object v0, Lcom/alibaba/android/dingtalk/live/msg/core/utils/MsgMonitor;->monitor:Lcom/alibaba/android/dingtalk/live/msg/core/utils/MsgMonitor$IMonitor;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Lcom/alibaba/android/dingtalk/live/msg/core/utils/MsgMonitor$IMonitor;->commitCount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    goto :goto_0
.end method

.method public static commitFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "module"    # Ljava/lang/String;
    .param p1, "monitorPoint"    # Ljava/lang/String;
    .param p2, "errorCode"    # Ljava/lang/String;
    .param p3, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 60
    sget-object v0, Lcom/alibaba/android/dingtalk/live/msg/core/utils/MsgMonitor;->monitor:Lcom/alibaba/android/dingtalk/live/msg/core/utils/MsgMonitor$IMonitor;

    if-nez v0, :cond_0

    .line 62
    :goto_0
    return-void

    .line 61
    :cond_0
    sget-object v0, Lcom/alibaba/android/dingtalk/live/msg/core/utils/MsgMonitor;->monitor:Lcom/alibaba/android/dingtalk/live/msg/core/utils/MsgMonitor$IMonitor;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/alibaba/android/dingtalk/live/msg/core/utils/MsgMonitor$IMonitor;->commitFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static commitMonitor(Lcom/alibaba/android/dingtalk/live/msg/core/model/Package;)V
    .locals 5
    .param p0, "p"    # Lcom/alibaba/android/dingtalk/live/msg/core/model/Package;

    .prologue
    .line 29
    sget-object v0, Lcom/alibaba/android/dingtalk/live/msg/core/utils/MsgMonitor;->monitor:Lcom/alibaba/android/dingtalk/live/msg/core/utils/MsgMonitor$IMonitor;

    if-nez v0, :cond_0

    .line 47
    :goto_0
    return-void

    .line 30
    :cond_0
    sget-object v0, Lcom/alibaba/android/dingtalk/live/msg/core/utils/MsgMonitor;->monitor:Lcom/alibaba/android/dingtalk/live/msg/core/utils/MsgMonitor$IMonitor;

    const-string/jumbo v1, "MKT"

    const-string/jumbo v2, "MKT_MSG_DURATION"

    new-instance v3, Lcom/alibaba/android/dingtalk/live/msg/core/utils/MsgMonitor$1;

    invoke-direct {v3, p0}, Lcom/alibaba/android/dingtalk/live/msg/core/utils/MsgMonitor$1;-><init>(Lcom/alibaba/android/dingtalk/live/msg/core/model/Package;)V

    new-instance v4, Lcom/alibaba/android/dingtalk/live/msg/core/utils/MsgMonitor$2;

    invoke-direct {v4, p0}, Lcom/alibaba/android/dingtalk/live/msg/core/utils/MsgMonitor$2;-><init>(Lcom/alibaba/android/dingtalk/live/msg/core/model/Package;)V

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/alibaba/android/dingtalk/live/msg/core/utils/MsgMonitor$IMonitor;->commitStat(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public static commitStat(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V
    .locals 1
    .param p0, "module"    # Ljava/lang/String;
    .param p1, "monitorPoint"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 50
    .local p2, "dimensionValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p3, "measureValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Double;>;"
    sget-object v0, Lcom/alibaba/android/dingtalk/live/msg/core/utils/MsgMonitor;->monitor:Lcom/alibaba/android/dingtalk/live/msg/core/utils/MsgMonitor$IMonitor;

    if-nez v0, :cond_0

    .line 52
    :goto_0
    return-void

    .line 51
    :cond_0
    sget-object v0, Lcom/alibaba/android/dingtalk/live/msg/core/utils/MsgMonitor;->monitor:Lcom/alibaba/android/dingtalk/live/msg/core/utils/MsgMonitor$IMonitor;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/alibaba/android/dingtalk/live/msg/core/utils/MsgMonitor$IMonitor;->commitStat(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public static commitSuccess(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "module"    # Ljava/lang/String;
    .param p1, "monitorPoint"    # Ljava/lang/String;

    .prologue
    .line 55
    sget-object v0, Lcom/alibaba/android/dingtalk/live/msg/core/utils/MsgMonitor;->monitor:Lcom/alibaba/android/dingtalk/live/msg/core/utils/MsgMonitor$IMonitor;

    if-nez v0, :cond_0

    .line 57
    :goto_0
    return-void

    .line 56
    :cond_0
    sget-object v0, Lcom/alibaba/android/dingtalk/live/msg/core/utils/MsgMonitor;->monitor:Lcom/alibaba/android/dingtalk/live/msg/core/utils/MsgMonitor$IMonitor;

    invoke-interface {v0, p0, p1}, Lcom/alibaba/android/dingtalk/live/msg/core/utils/MsgMonitor$IMonitor;->commitSuccess(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static register(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .param p0, "module"    # Ljava/lang/String;
    .param p1, "monitorPoint"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 24
    .local p2, "dimensions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "measures":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v0, Lcom/alibaba/android/dingtalk/live/msg/core/utils/MsgMonitor;->monitor:Lcom/alibaba/android/dingtalk/live/msg/core/utils/MsgMonitor$IMonitor;

    if-nez v0, :cond_0

    .line 26
    :goto_0
    return-void

    .line 25
    :cond_0
    sget-object v0, Lcom/alibaba/android/dingtalk/live/msg/core/utils/MsgMonitor;->monitor:Lcom/alibaba/android/dingtalk/live/msg/core/utils/MsgMonitor$IMonitor;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/alibaba/android/dingtalk/live/msg/core/utils/MsgMonitor$IMonitor;->register(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    goto :goto_0
.end method

.method public static setMonitor(Lcom/alibaba/android/dingtalk/live/msg/core/utils/MsgMonitor$IMonitor;)V
    .locals 0
    .param p0, "monitor"    # Lcom/alibaba/android/dingtalk/live/msg/core/utils/MsgMonitor$IMonitor;

    .prologue
    .line 20
    sput-object p0, Lcom/alibaba/android/dingtalk/live/msg/core/utils/MsgMonitor;->monitor:Lcom/alibaba/android/dingtalk/live/msg/core/utils/MsgMonitor$IMonitor;

    .line 21
    return-void
.end method
