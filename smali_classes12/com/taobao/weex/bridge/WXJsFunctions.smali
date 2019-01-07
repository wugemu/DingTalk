.class public Lcom/taobao/weex/bridge/WXJsFunctions;
.super Ljava/lang/Object;
.source "WXJsFunctions.java"

# interfaces
.implements Lcom/taobao/weex/common/IWXJsFunctions;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native initWxBridge(Ljava/lang/Object;Ljava/lang/String;)V
.end method

.method public native jsFunctionCallAddEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public jsFunctionCallCreateBody(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "pageId"    # Ljava/lang/String;
    .param p2, "domStr"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 80
    invoke-static {p2}, Lgxk;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/weex/wson/WsonUtils;->toWson(Ljava/lang/Object;)[B

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/taobao/weex/bridge/WXJsFunctions;->jsFunctionCallCreateBody(Ljava/lang/String;[BZ)V

    .line 81
    return-void
.end method

.method public native jsFunctionCallCreateBody(Ljava/lang/String;[BZ)V
.end method

.method public native jsFunctionCallCreateFinish(Ljava/lang/String;)V
.end method

.method public native jsFunctionCallMoveElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public native jsFunctionCallRefreshFinish(Ljava/lang/String;[BLjava/lang/String;)V
.end method

.method public native jsFunctionCallRemoveElement(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public native jsFunctionCallRemoveEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public jsFunctionCallUpdateAttrs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "pageId"    # Ljava/lang/String;
    .param p2, "ref"    # Ljava/lang/String;
    .param p3, "data"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 100
    invoke-static {p3}, Lgxk;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/weex/wson/WsonUtils;->toWson(Ljava/lang/Object;)[B

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/taobao/weex/bridge/WXJsFunctions;->jsFunctionCallUpdateAttrs(Ljava/lang/String;Ljava/lang/String;[BZ)V

    .line 101
    return-void
.end method

.method public native jsFunctionCallUpdateAttrs(Ljava/lang/String;Ljava/lang/String;[BZ)V
.end method

.method public native jsFunctionCallUpdateFinish(Ljava/lang/String;[BLjava/lang/String;)V
.end method

.method public jsFunctionCallUpdateStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "pageId"    # Ljava/lang/String;
    .param p2, "ref"    # Ljava/lang/String;
    .param p3, "data"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 108
    invoke-static {p3}, Lgxk;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/weex/wson/WsonUtils;->toWson(Ljava/lang/Object;)[B

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/taobao/weex/bridge/WXJsFunctions;->jsFunctionCallUpdateStyle(Ljava/lang/String;Ljava/lang/String;[BZ)V

    .line 109
    return-void
.end method

.method public native jsFunctionCallUpdateStyle(Ljava/lang/String;Ljava/lang/String;[BZ)V
.end method

.method public jsHandleCallAddElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "instanceId"    # Ljava/lang/String;
    .param p2, "ref"    # Ljava/lang/String;
    .param p3, "dom"    # Ljava/lang/String;
    .param p4, "index"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 64
    invoke-static {p3}, Lgxk;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/weex/wson/WsonUtils;->toWson(Ljava/lang/Object;)[B

    move-result-object v3

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/taobao/weex/bridge/WXJsFunctions;->jsHandleCallAddElement(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Z)V

    .line 65
    return-void
.end method

.method public native jsHandleCallAddElement(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Z)V
.end method

.method public native jsHandleCallGCanvasLinkNative(Ljava/lang/String;ILjava/lang/String;)V
.end method

.method public native jsHandleCallNative(Ljava/lang/String;[BLjava/lang/String;)V
.end method

.method public jsHandleCallNativeComponent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B)V
    .locals 7
    .param p1, "instanceId"    # Ljava/lang/String;
    .param p2, "componentRef"    # Ljava/lang/String;
    .param p3, "method"    # Ljava/lang/String;
    .param p4, "arguments"    # [B
    .param p5, "options"    # [B

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 55
    invoke-static {p4}, Lcom/taobao/weex/utils/WXWsonJSONSwitch;->convertJSONToWsonIfUseWson([B)[B

    move-result-object v4

    invoke-static {p5}, Lcom/taobao/weex/utils/WXWsonJSONSwitch;->convertJSONToWsonIfUseWson([B)[B

    move-result-object v5

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v6}, Lcom/taobao/weex/bridge/WXJsFunctions;->jsHandleCallNativeComponent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[BZ)V

    .line 56
    return-void
.end method

.method public native jsHandleCallNativeComponent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[BZ)V
.end method

.method public native jsHandleCallNativeLog([B)V
.end method

.method public jsHandleCallNativeModule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B)V
    .locals 7
    .param p1, "instanceId"    # Ljava/lang/String;
    .param p2, "module"    # Ljava/lang/String;
    .param p3, "method"    # Ljava/lang/String;
    .param p4, "arguments"    # [B
    .param p5, "options"    # [B

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 46
    .line 47
    invoke-static {p4}, Lcom/taobao/weex/utils/WXWsonJSONSwitch;->convertJSONToWsonIfUseWson([B)[B

    move-result-object v4

    invoke-static {p5}, Lcom/taobao/weex/utils/WXWsonJSONSwitch;->convertJSONToWsonIfUseWson([B)[B

    move-result-object v5

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 46
    invoke-virtual/range {v0 .. v6}, Lcom/taobao/weex/bridge/WXJsFunctions;->jsHandleCallNativeModule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[BZ)V

    .line 48
    return-void
.end method

.method public native jsHandleCallNativeModule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[BZ)V
.end method

.method public native jsHandleClearInterval(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public native jsHandleReportException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public native jsHandleSetInterval(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public native jsHandleSetJSVersion(Ljava/lang/String;)V
.end method

.method public native jsHandleSetTimeout(Ljava/lang/String;Ljava/lang/String;)V
.end method
