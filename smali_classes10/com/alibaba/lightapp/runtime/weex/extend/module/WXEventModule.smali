.class public Lcom/alibaba/lightapp/runtime/weex/extend/module/WXEventModule;
.super Lcom/taobao/weex/common/WXModule;
.source "WXEventModule.java"


# static fields
.field private static final WEEX_CATEGORY:Ljava/lang/String; = "com.taobao.android.intent.category.WEEX"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/taobao/weex/common/WXModule;-><init>()V

    return-void
.end method


# virtual methods
.method public openURL(Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
        uiThread = true
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 18
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 26
    :goto_0
    return-void

    .line 22
    :cond_0
    invoke-static {}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->getInterfaceImpl()Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;

    move-result-object v1

    .line 23
    .local v1, "lightAppRuntimeReverseInterface":Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 24
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "url"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/weex/extend/module/WXEventModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v2}, Lcom/taobao/weex/WXSDKInstance;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->navToCommonWebView(Landroid/content/Context;Landroid/os/Bundle;)V

    goto :goto_0
.end method
