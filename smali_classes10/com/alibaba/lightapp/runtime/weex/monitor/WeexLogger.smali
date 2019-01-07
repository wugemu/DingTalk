.class public Lcom/alibaba/lightapp/runtime/weex/monitor/WeexLogger;
.super Ljava/lang/Object;
.source "WeexLogger.java"


# static fields
.field private static final MODULE_API:Ljava/lang/String; = "weex_api"

.field private static final MODULE_APP:Ljava/lang/String; = "weex_app"

.field private static final MODULE_CORE:Ljava/lang/String; = "weex_core"

.field private static final MODULE_DATA:Ljava/lang/String; = "weex_data"

.field private static final MODULE_DEBUG:Ljava/lang/String; = "weex_debug"

.field private static final MODULE_MAIN:Ljava/lang/String; = "weex_main"

.field private static final MODULE_NET:Ljava/lang/String; = "weex_net"

.field private static final MODULE_PERF:Ljava/lang/String; = "weex_perf"

.field public static final MODULE_SDK_LOG:Ljava/lang/String; = "weex_log_sdk"

.field private static final MODULE_TASK:Ljava/lang/String; = "weex_task"

.field private static final TAG:Ljava/lang/String; = "WeexLogger"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs trace(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 7
    .param p0, "module"    # Ljava/lang/String;
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msgs"    # [Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    .line 97
    :try_start_0
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v2

    .line 98
    .local v2, "sb":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    const-string/jumbo v5, "tag="

    invoke-virtual {v2, v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 99
    invoke-virtual {v2, p1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 100
    const-string/jumbo v5, " "

    invoke-virtual {v2, v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 101
    array-length v5, p2

    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v0, p2, v4

    .line 102
    .local v0, "msg":Ljava/lang/Object;
    invoke-virtual {v2, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/Object;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 103
    const-string/jumbo v6, " "

    invoke-virtual {v2, v6}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 101
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 105
    .end local v0    # "msg":Ljava/lang/Object;
    :cond_0
    invoke-virtual {v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 106
    .local v1, "s":Ljava/lang/String;
    invoke-static {p0, p1, v1}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "module="

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p0, v4, v5

    const/4 v5, 0x2

    const-string/jumbo v6, ", "

    aput-object v6, v4, v5

    const/4 v5, 0x3

    aput-object v1, v4, v5

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    .end local v1    # "s":Ljava/lang/String;
    .end local v2    # "sb":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    :goto_1
    return-void

    .line 110
    :catch_0
    move-exception v3

    .line 111
    .local v3, "t":Ljava/lang/Throwable;
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method public static varargs traceApi(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msgs"    # [Ljava/lang/Object;

    .prologue
    .line 77
    const-string/jumbo v0, "weex_api"

    invoke-static {v0, p0, p1}, Lcom/alibaba/lightapp/runtime/weex/monitor/WeexLogger;->trace(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 78
    return-void
.end method

.method public static varargs traceApp(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msgs"    # [Ljava/lang/Object;

    .prologue
    .line 52
    const-string/jumbo v0, "weex_app"

    invoke-static {v0, p0, p1}, Lcom/alibaba/lightapp/runtime/weex/monitor/WeexLogger;->trace(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 53
    return-void
.end method

.method public static varargs traceCore(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msgs"    # [Ljava/lang/Object;

    .prologue
    .line 43
    const-string/jumbo v0, "weex_core"

    invoke-static {v0, p0, p1}, Lcom/alibaba/lightapp/runtime/weex/monitor/WeexLogger;->trace(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 44
    return-void
.end method

.method public static varargs traceData(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msgs"    # [Ljava/lang/Object;

    .prologue
    .line 72
    const-string/jumbo v0, "weex_data"

    invoke-static {v0, p0, p1}, Lcom/alibaba/lightapp/runtime/weex/monitor/WeexLogger;->trace(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 73
    return-void
.end method

.method public static varargs traceDebug(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msgs"    # [Ljava/lang/Object;

    .prologue
    .line 82
    const-string/jumbo v0, "weex_debug"

    invoke-static {v0, p0, p1}, Lcom/alibaba/lightapp/runtime/weex/monitor/WeexLogger;->trace(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 83
    return-void
.end method

.method public static varargs traceMain(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msgs"    # [Ljava/lang/Object;

    .prologue
    .line 34
    const-string/jumbo v0, "weex_main"

    invoke-static {v0, p0, p1}, Lcom/alibaba/lightapp/runtime/weex/monitor/WeexLogger;->trace(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 35
    return-void
.end method

.method public static varargs traceNet(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msgs"    # [Ljava/lang/Object;

    .prologue
    .line 91
    const-string/jumbo v0, "weex_net"

    invoke-static {v0, p0, p1}, Lcom/alibaba/lightapp/runtime/weex/monitor/WeexLogger;->trace(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 92
    return-void
.end method

.method public static varargs tracePerf(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msgs"    # [Ljava/lang/Object;

    .prologue
    .line 67
    const-string/jumbo v0, "weex_perf"

    invoke-static {v0, p0, p1}, Lcom/alibaba/lightapp/runtime/weex/monitor/WeexLogger;->trace(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 68
    return-void
.end method

.method public static varargs traceSDKLog(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msgs"    # [Ljava/lang/Object;

    .prologue
    .line 87
    const-string/jumbo v0, "weex_log_sdk"

    invoke-static {v0, p0, p1}, Lcom/alibaba/lightapp/runtime/weex/monitor/WeexLogger;->trace(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 88
    return-void
.end method

.method public static varargs traceTask(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msgs"    # [Ljava/lang/Object;

    .prologue
    .line 62
    const-string/jumbo v0, "weex_task"

    invoke-static {v0, p0, p1}, Lcom/alibaba/lightapp/runtime/weex/monitor/WeexLogger;->trace(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 63
    return-void
.end method
