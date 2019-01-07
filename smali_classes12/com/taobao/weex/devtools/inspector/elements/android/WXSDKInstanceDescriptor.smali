.class public Lcom/taobao/weex/devtools/inspector/elements/android/WXSDKInstanceDescriptor;
.super Lcom/taobao/weex/devtools/inspector/elements/AbstractChainedDescriptor;
.source "WXSDKInstanceDescriptor.java"

# interfaces
.implements Lcom/taobao/weex/devtools/inspector/elements/android/HighlightableDescriptor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/taobao/weex/devtools/inspector/elements/AbstractChainedDescriptor",
        "<",
        "Lcom/taobao/weex/WXSDKInstance;",
        ">;",
        "Lcom/taobao/weex/devtools/inspector/elements/android/HighlightableDescriptor;"
    }
.end annotation


# static fields
.field private static final HEIGHT:Ljava/lang/String; = "height"

.field private static final ID_NAME:Ljava/lang/String; = "id"

.field private static final WIDTH:Ljava/lang/String; = "width"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/taobao/weex/devtools/inspector/elements/AbstractChainedDescriptor;-><init>()V

    return-void
.end method


# virtual methods
.method public getViewForHighlighting(Ljava/lang/Object;)Landroid/view/View;
    .locals 1
    .param p1, "element"    # Ljava/lang/Object;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 40
    check-cast p1, Lcom/taobao/weex/WXSDKInstance;

    .end local p1    # "element":Ljava/lang/Object;
    invoke-virtual {p1}, Lcom/taobao/weex/WXSDKInstance;->getRootView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected onGetAttributes(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/devtools/inspector/elements/AttributeAccumulator;)V
    .locals 2
    .param p1, "element"    # Lcom/taobao/weex/WXSDKInstance;
    .param p2, "attributes"    # Lcom/taobao/weex/devtools/inspector/elements/AttributeAccumulator;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 52
    const-string/jumbo v0, "id"

    invoke-virtual {p1}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lcom/taobao/weex/devtools/inspector/elements/AttributeAccumulator;->store(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    const-string/jumbo v0, "width"

    invoke-virtual {p1}, Lcom/taobao/weex/WXSDKInstance;->getWeexWidth()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lcom/taobao/weex/devtools/inspector/elements/AttributeAccumulator;->store(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    const-string/jumbo v0, "height"

    invoke-virtual {p1}, Lcom/taobao/weex/WXSDKInstance;->getWeexHeight()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lcom/taobao/weex/devtools/inspector/elements/AttributeAccumulator;->store(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method protected bridge synthetic onGetAttributes(Ljava/lang/Object;Lcom/taobao/weex/devtools/inspector/elements/AttributeAccumulator;)V
    .locals 0

    .prologue
    .line 17
    check-cast p1, Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {p0, p1, p2}, Lcom/taobao/weex/devtools/inspector/elements/android/WXSDKInstanceDescriptor;->onGetAttributes(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/devtools/inspector/elements/AttributeAccumulator;)V

    return-void
.end method

.method protected onGetChildren(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/devtools/common/Accumulator;)V
    .locals 1
    .param p1, "element"    # Lcom/taobao/weex/WXSDKInstance;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/weex/WXSDKInstance;",
            "Lcom/taobao/weex/devtools/common/Accumulator",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 31
    .local p2, "children":Lcom/taobao/weex/devtools/common/Accumulator;, "Lcom/taobao/weex/devtools/common/Accumulator<Ljava/lang/Object;>;"
    invoke-virtual {p1}, Lcom/taobao/weex/WXSDKInstance;->getRootComponent()Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v0

    .line 32
    .local v0, "component":Lcom/taobao/weex/ui/component/WXComponent;
    if-eqz v0, :cond_0

    .line 33
    invoke-interface {p2, v0}, Lcom/taobao/weex/devtools/common/Accumulator;->store(Ljava/lang/Object;)V

    .line 35
    :cond_0
    return-void
.end method

.method protected bridge synthetic onGetChildren(Ljava/lang/Object;Lcom/taobao/weex/devtools/common/Accumulator;)V
    .locals 0

    .prologue
    .line 17
    check-cast p1, Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {p0, p1, p2}, Lcom/taobao/weex/devtools/inspector/elements/android/WXSDKInstanceDescriptor;->onGetChildren(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/devtools/common/Accumulator;)V

    return-void
.end method

.method protected onGetNodeName(Lcom/taobao/weex/WXSDKInstance;)Ljava/lang/String;
    .locals 1
    .param p1, "element"    # Lcom/taobao/weex/WXSDKInstance;

    .prologue
    .line 26
    const-string/jumbo v0, "instance"

    return-object v0
.end method

.method protected bridge synthetic onGetNodeName(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    check-cast p1, Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {p0, p1}, Lcom/taobao/weex/devtools/inspector/elements/android/WXSDKInstanceDescriptor;->onGetNodeName(Lcom/taobao/weex/WXSDKInstance;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onGetStyles(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/devtools/inspector/elements/StyleAccumulator;)V
    .locals 4
    .param p1, "element"    # Lcom/taobao/weex/WXSDKInstance;
    .param p2, "accumulator"    # Lcom/taobao/weex/devtools/inspector/elements/StyleAccumulator;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 45
    const-string/jumbo v0, "id"

    invoke-virtual {p1}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {p2, v0, v1, v2}, Lcom/taobao/weex/devtools/inspector/elements/StyleAccumulator;->store(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 46
    const-string/jumbo v0, "width"

    invoke-virtual {p1}, Lcom/taobao/weex/WXSDKInstance;->getWeexWidth()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1, v3}, Lcom/taobao/weex/devtools/inspector/elements/StyleAccumulator;->store(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 47
    const-string/jumbo v0, "height"

    invoke-virtual {p1}, Lcom/taobao/weex/WXSDKInstance;->getWeexHeight()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1, v3}, Lcom/taobao/weex/devtools/inspector/elements/StyleAccumulator;->store(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 48
    return-void
.end method

.method protected bridge synthetic onGetStyles(Ljava/lang/Object;Lcom/taobao/weex/devtools/inspector/elements/StyleAccumulator;)V
    .locals 0

    .prologue
    .line 17
    check-cast p1, Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {p0, p1, p2}, Lcom/taobao/weex/devtools/inspector/elements/android/WXSDKInstanceDescriptor;->onGetStyles(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/devtools/inspector/elements/StyleAccumulator;)V

    return-void
.end method
