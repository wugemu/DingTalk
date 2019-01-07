.class public final Lgvc;
.super Ljava/lang/Object;
.source "WebViewUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 17
    invoke-static {}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->getInterfaceImpl()Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->createRuntimeEntry(Landroid/content/Context;)Lhdf;

    move-result-object v0

    .line 18
    .local v0, "iRuntimeEntry":Lhdf;
    if-nez v0, :cond_0

    .line 19
    const/4 v1, 0x0

    .line 22
    :goto_0
    return-object v1

    :cond_0
    invoke-interface {v0}, Lhdf;->getWebViewWrapper()Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;

    move-result-object v1

    goto :goto_0
.end method

.method public static a(Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;)V
    .locals 2
    .param p0, "webViewWrapper"    # Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;

    .prologue
    .line 26
    if-eqz p0, :cond_0

    .line 27
    const-string/jumbo v0, "sharePage"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 29
    :cond_0
    return-void
.end method
