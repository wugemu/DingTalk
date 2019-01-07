.class public Lcom/alibaba/lightapp/runtime/monitor/RuntimeTrace;
.super Ljava/lang/Object;
.source "RuntimeTrace.java"


# static fields
.field public static final TRACE_MODULE_AUTH:Ljava/lang/String; = "RuntimeAuth"

.field public static final TRACE_MODULE_CONFIG:Ljava/lang/String; = "JsConfig"

.field public static final TRACE_MODULE_DATA:Ljava/lang/String; = "runtimeData"

.field public static final TRACE_MODULE_EXCEPTION:Ljava/lang/String; = "WebException"

.field public static final TRACE_MODULE_H5:Ljava/lang/String; = "H5"

.field public static final TRACE_MODULE_HPM:Ljava/lang/String; = "hpm"

.field public static final TRACE_MODULE_JSAPI:Ljava/lang/String; = "JsApi"

.field public static final TRACE_MODULE_LIVE:Ljava/lang/String; = "live"

.field public static final TRACE_MODULE_LWP:Ljava/lang/String; = "lwp"

.field public static final TRACE_MODULE_NET_INSPECT:Ljava/lang/String; = "NetInspect"

.field public static final TRACE_MODULE_RESOURCE:Ljava/lang/String; = "Resource"

.field public static final TRACE_MODULE_RUNTIME_CONFIG:Ljava/lang/String; = "RuntimeConfig"

.field public static final TRACE_MODULE_RUNTIME_START:Ljava/lang/String; = "RuntimeStart"

.field public static final TRACE_MODULE_UC_CORE:Ljava/lang/String; = "UCCore"

.field public static final TRACE_MODULE_UIC_DD:Ljava/lang/String; = "uicdd"

.field public static final TRACE_MODULE_UIC_SDK:Ljava/lang/String; = "uicsdk"

.field public static final TRACE_SAFE_TUNNEL:Ljava/lang/String; = "safeTunnel"

.field public static final TRACE_WEB_CONFIG:Ljava/lang/String; = "WebConfig"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 6
    .param p0, "module"    # Ljava/lang/String;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "msgs"    # [Ljava/lang/Object;

    .prologue
    .line 39
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v2

    .line 40
    .local v2, "sb":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    const-string/jumbo v3, "tag="

    invoke-virtual {v2, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 41
    invoke-virtual {v2, p2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 42
    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 43
    if-eqz p1, :cond_0

    .line 44
    const-string/jumbo v3, "url="

    invoke-virtual {v2, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 45
    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 47
    :cond_0
    array-length v4, p3

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v0, p3, v3

    .line 48
    .local v0, "msg":Ljava/lang/Object;
    invoke-virtual {v2, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/Object;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 49
    const-string/jumbo v5, " "

    invoke-virtual {v2, v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 47
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 51
    .end local v0    # "msg":Ljava/lang/Object;
    :cond_1
    invoke-virtual {v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 52
    .local v1, "s":Ljava/lang/String;
    invoke-static {p0, p2, v1}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    return-void
.end method
