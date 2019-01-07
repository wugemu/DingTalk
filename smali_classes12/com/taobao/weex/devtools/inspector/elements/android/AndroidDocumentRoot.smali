.class public final Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentRoot;
.super Lcom/taobao/weex/devtools/inspector/elements/AbstractChainedDescriptor;
.source "AndroidDocumentRoot.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/taobao/weex/devtools/inspector/elements/AbstractChainedDescriptor",
        "<",
        "Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentRoot;",
        ">;"
    }
.end annotation


# instance fields
.field private mApplication:Landroid/app/Application;


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 1
    .param p1, "application"    # Landroid/app/Application;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/taobao/weex/devtools/inspector/elements/AbstractChainedDescriptor;-><init>()V

    .line 31
    invoke-static {p1}, Lcom/taobao/weex/devtools/common/Util;->throwIfNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    iput-object v0, p0, Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentRoot;->mApplication:Landroid/app/Application;

    .line 32
    return-void
.end method


# virtual methods
.method protected final onGetChildren(Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentRoot;Lcom/taobao/weex/devtools/common/Accumulator;)V
    .locals 5
    .param p1, "element"    # Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentRoot;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentRoot;",
            "Lcom/taobao/weex/devtools/common/Accumulator",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 46
    .local p2, "children":Lcom/taobao/weex/devtools/common/Accumulator;, "Lcom/taobao/weex/devtools/common/Accumulator<Ljava/lang/Object;>;"
    invoke-static {}, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM;->isNativeMode()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 47
    iget-object v3, p0, Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentRoot;->mApplication:Landroid/app/Application;

    invoke-interface {p2, v3}, Lcom/taobao/weex/devtools/common/Accumulator;->store(Ljava/lang/Object;)V

    .line 59
    :cond_0
    return-void

    .line 49
    :cond_1
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/taobao/weex/WXSDKManager;->getWXRenderManager()Lcom/taobao/weex/ui/WXRenderManager;

    move-result-object v2

    .line 50
    .local v2, "renderManager":Lcom/taobao/weex/ui/WXRenderManager;
    if-eqz v2, :cond_0

    .line 51
    invoke-virtual {v2}, Lcom/taobao/weex/ui/WXRenderManager;->getAllInstances()Ljava/util/List;

    move-result-object v1

    .line 52
    .local v1, "instances":Ljava/util/List;, "Ljava/util/List<Lcom/taobao/weex/WXSDKInstance;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 53
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/WXSDKInstance;

    .line 54
    .local v0, "instance":Lcom/taobao/weex/WXSDKInstance;
    invoke-interface {p2, v0}, Lcom/taobao/weex/devtools/common/Accumulator;->store(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected final bridge synthetic onGetChildren(Ljava/lang/Object;Lcom/taobao/weex/devtools/common/Accumulator;)V
    .locals 0

    .prologue
    .line 27
    check-cast p1, Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentRoot;

    invoke-virtual {p0, p1, p2}, Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentRoot;->onGetChildren(Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentRoot;Lcom/taobao/weex/devtools/common/Accumulator;)V

    return-void
.end method

.method protected final onGetNodeName(Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentRoot;)Ljava/lang/String;
    .locals 1
    .param p1, "element"    # Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentRoot;

    .prologue
    .line 41
    const-string/jumbo v0, "root"

    return-object v0
.end method

.method protected final bridge synthetic onGetNodeName(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    check-cast p1, Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentRoot;

    invoke-virtual {p0, p1}, Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentRoot;->onGetNodeName(Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentRoot;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final onGetNodeType(Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentRoot;)Lcom/taobao/weex/devtools/inspector/elements/NodeType;
    .locals 1
    .param p1, "element"    # Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentRoot;

    .prologue
    .line 36
    sget-object v0, Lcom/taobao/weex/devtools/inspector/elements/NodeType;->DOCUMENT_NODE:Lcom/taobao/weex/devtools/inspector/elements/NodeType;

    return-object v0
.end method

.method protected final bridge synthetic onGetNodeType(Ljava/lang/Object;)Lcom/taobao/weex/devtools/inspector/elements/NodeType;
    .locals 1

    .prologue
    .line 27
    check-cast p1, Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentRoot;

    invoke-virtual {p0, p1}, Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentRoot;->onGetNodeType(Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentRoot;)Lcom/taobao/weex/devtools/inspector/elements/NodeType;

    move-result-object v0

    return-object v0
.end method
