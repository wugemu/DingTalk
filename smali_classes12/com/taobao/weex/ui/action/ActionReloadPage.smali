.class public Lcom/taobao/weex/ui/action/ActionReloadPage;
.super Ljava/lang/Object;
.source "ActionReloadPage.java"

# interfaces
.implements Lcom/taobao/weex/ui/action/IExecutable;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mPageId:Ljava/lang/String;

.field private mReloadThis:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "pageId"    # Ljava/lang/String;
    .param p2, "reloadThis"    # Z

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const-string/jumbo v0, "ReloadPageAction"

    iput-object v0, p0, Lcom/taobao/weex/ui/action/ActionReloadPage;->TAG:Ljava/lang/String;

    .line 36
    iput-object p1, p0, Lcom/taobao/weex/ui/action/ActionReloadPage;->mPageId:Ljava/lang/String;

    .line 37
    iput-boolean p2, p0, Lcom/taobao/weex/ui/action/ActionReloadPage;->mReloadThis:Z

    .line 38
    return-void
.end method


# virtual methods
.method public executeAction()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 42
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKManager;->getWXRenderManager()Lcom/taobao/weex/ui/WXRenderManager;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/weex/ui/action/ActionReloadPage;->mPageId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/taobao/weex/ui/WXRenderManager;->getWXSDKInstance(Ljava/lang/String;)Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    .line 43
    .local v0, "instance":Lcom/taobao/weex/WXSDKInstance;
    if-eqz v0, :cond_0

    .line 44
    iget-boolean v1, p0, Lcom/taobao/weex/ui/action/ActionReloadPage;->mReloadThis:Z

    invoke-virtual {v0, v1}, Lcom/taobao/weex/WXSDKInstance;->reloadPage(Z)V

    .line 48
    :goto_0
    return-void

    .line 46
    :cond_0
    const-string/jumbo v1, "ReloadPageAction"

    const-string/jumbo v2, "ReloadPageAction executeDom reloadPage instance is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
