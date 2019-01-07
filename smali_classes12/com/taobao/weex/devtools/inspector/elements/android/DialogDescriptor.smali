.class final Lcom/taobao/weex/devtools/inspector/elements/android/DialogDescriptor;
.super Lcom/taobao/weex/devtools/inspector/elements/AbstractChainedDescriptor;
.source "DialogDescriptor.java"

# interfaces
.implements Lcom/taobao/weex/devtools/inspector/elements/android/HighlightableDescriptor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/taobao/weex/devtools/inspector/elements/AbstractChainedDescriptor",
        "<",
        "Landroid/app/Dialog;",
        ">;",
        "Lcom/taobao/weex/devtools/inspector/elements/android/HighlightableDescriptor;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/taobao/weex/devtools/inspector/elements/AbstractChainedDescriptor;-><init>()V

    return-void
.end method


# virtual methods
.method public final getViewForHighlighting(Ljava/lang/Object;)Landroid/view/View;
    .locals 3
    .param p1, "element"    # Ljava/lang/Object;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/taobao/weex/devtools/inspector/elements/android/DialogDescriptor;->getHost()Lcom/taobao/weex/devtools/inspector/elements/Descriptor$Host;

    move-result-object v1

    .line 36
    .local v1, "host":Lcom/taobao/weex/devtools/inspector/elements/Descriptor$Host;
    instance-of v2, v1, Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDescriptorHost;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 37
    check-cast v0, Landroid/app/Dialog;

    .line 38
    .local v0, "dialog":Landroid/app/Dialog;
    check-cast v1, Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDescriptorHost;

    .end local v1    # "host":Lcom/taobao/weex/devtools/inspector/elements/Descriptor$Host;
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDescriptorHost;->getHighlightingView(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v2

    .line 41
    .end local v0    # "dialog":Landroid/app/Dialog;
    :goto_0
    return-object v2

    .restart local v1    # "host":Lcom/taobao/weex/devtools/inspector/elements/Descriptor$Host;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected final onGetChildren(Landroid/app/Dialog;Lcom/taobao/weex/devtools/common/Accumulator;)V
    .locals 1
    .param p1, "element"    # Landroid/app/Dialog;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Dialog;",
            "Lcom/taobao/weex/devtools/common/Accumulator",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 26
    .local p2, "children":Lcom/taobao/weex/devtools/common/Accumulator;, "Lcom/taobao/weex/devtools/common/Accumulator<Ljava/lang/Object;>;"
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 27
    .local v0, "window":Landroid/view/Window;
    if-eqz v0, :cond_0

    .line 28
    invoke-interface {p2, v0}, Lcom/taobao/weex/devtools/common/Accumulator;->store(Ljava/lang/Object;)V

    .line 30
    :cond_0
    return-void
.end method

.method protected final bridge synthetic onGetChildren(Ljava/lang/Object;Lcom/taobao/weex/devtools/common/Accumulator;)V
    .locals 0

    .prologue
    .line 22
    check-cast p1, Landroid/app/Dialog;

    invoke-virtual {p0, p1, p2}, Lcom/taobao/weex/devtools/inspector/elements/android/DialogDescriptor;->onGetChildren(Landroid/app/Dialog;Lcom/taobao/weex/devtools/common/Accumulator;)V

    return-void
.end method
