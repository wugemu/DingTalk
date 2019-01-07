.class public Lcom/alipay/mobile/nebula/data/H5Trace;
.super Ljava/lang/Object;
.source "H5Trace.java"


# static fields
.field private static sEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/mobile/nebula/data/H5Trace;->sEnabled:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs event(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "viewId"    # Ljava/lang/String;
    .param p2, "params"    # [Ljava/lang/String;

    .prologue
    .line 39
    invoke-static {}, Lcom/alipay/mobile/nebula/data/H5Trace;->isTraceEnable()Z

    move-result v1

    if-nez v1, :cond_1

    .line 46
    :cond_0
    :goto_0
    return-void

    .line 42
    :cond_1
    const-class v1, Lcom/alipay/mobile/nebula/provider/H5TraceProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5TraceProvider;

    .line 43
    .local v0, "provider":Lcom/alipay/mobile/nebula/provider/H5TraceProvider;
    if-eqz v0, :cond_0

    .line 44
    invoke-static {p2}, Lcom/alipay/mobile/nebula/data/H5Trace;->formatParam([Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    invoke-interface {v0, p0, p1, v1}, Lcom/alipay/mobile/nebula/provider/H5TraceProvider;->event(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    goto :goto_0
.end method

.method private static formatParam([Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;
    .locals 4
    .param p0, "params"    # [Ljava/lang/String;

    .prologue
    .line 23
    new-instance v1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 24
    .local v1, "jobj":Lcom/alibaba/fastjson/JSONObject;
    if-eqz p0, :cond_0

    array-length v2, p0

    if-nez v2, :cond_1

    .line 30
    :cond_0
    return-object v1

    .line 27
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    div-int/lit8 v2, v2, 0x2

    if-ge v0, v2, :cond_0

    .line 28
    aget-object v2, p0, v0

    add-int/lit8 v3, v0, 0x1

    aget-object v3, p0, v3

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static isTraceEnable()Z
    .locals 1

    .prologue
    .line 19
    sget-boolean v0, Lcom/alipay/mobile/nebula/data/H5Trace;->sEnabled:Z

    return v0
.end method

.method public static varargs sessionBegin(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "viewId"    # Ljava/lang/String;
    .param p2, "params"    # [Ljava/lang/String;

    .prologue
    .line 54
    invoke-static {}, Lcom/alipay/mobile/nebula/data/H5Trace;->isTraceEnable()Z

    move-result v1

    if-nez v1, :cond_1

    .line 61
    :cond_0
    :goto_0
    return-void

    .line 57
    :cond_1
    const-class v1, Lcom/alipay/mobile/nebula/provider/H5TraceProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5TraceProvider;

    .line 58
    .local v0, "provider":Lcom/alipay/mobile/nebula/provider/H5TraceProvider;
    if-eqz v0, :cond_0

    .line 59
    invoke-static {p2}, Lcom/alipay/mobile/nebula/data/H5Trace;->formatParam([Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    invoke-interface {v0, p0, p1, v1}, Lcom/alipay/mobile/nebula/provider/H5TraceProvider;->sessionBegin(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    goto :goto_0
.end method

.method public static varargs sessionEnd(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "viewId"    # Ljava/lang/String;
    .param p2, "params"    # [Ljava/lang/String;

    .prologue
    .line 69
    invoke-static {}, Lcom/alipay/mobile/nebula/data/H5Trace;->isTraceEnable()Z

    move-result v1

    if-nez v1, :cond_1

    .line 76
    :cond_0
    :goto_0
    return-void

    .line 72
    :cond_1
    const-class v1, Lcom/alipay/mobile/nebula/provider/H5TraceProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5TraceProvider;

    .line 73
    .local v0, "provider":Lcom/alipay/mobile/nebula/provider/H5TraceProvider;
    if-eqz v0, :cond_0

    .line 74
    invoke-static {p2}, Lcom/alipay/mobile/nebula/data/H5Trace;->formatParam([Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    invoke-interface {v0, p0, p1, v1}, Lcom/alipay/mobile/nebula/provider/H5TraceProvider;->sessionEnd(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    goto :goto_0
.end method

.method public static setEnabled(Z)V
    .locals 0
    .param p0, "sEnabled"    # Z

    .prologue
    .line 15
    sput-boolean p0, Lcom/alipay/mobile/nebula/data/H5Trace;->sEnabled:Z

    .line 16
    return-void
.end method
