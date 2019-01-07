.class final Lcom/taobao/weex/devtools/inspector/elements/android/DialogFragmentDescriptor;
.super Lcom/taobao/weex/devtools/inspector/elements/Descriptor;
.source "DialogFragmentDescriptor.java"

# interfaces
.implements Lcom/taobao/weex/devtools/inspector/elements/ChainedDescriptor;
.implements Lcom/taobao/weex/devtools/inspector/elements/android/HighlightableDescriptor;


# instance fields
.field private final mAccessor:Lcom/taobao/weex/devtools/common/android/DialogFragmentAccessor;

.field private mSuper:Lcom/taobao/weex/devtools/inspector/elements/Descriptor;


# direct methods
.method private constructor <init>(Lcom/taobao/weex/devtools/common/android/FragmentCompat;)V
    .locals 1
    .param p1, "compat"    # Lcom/taobao/weex/devtools/common/android/FragmentCompat;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/taobao/weex/devtools/inspector/elements/Descriptor;-><init>()V

    .line 50
    invoke-virtual {p1}, Lcom/taobao/weex/devtools/common/android/FragmentCompat;->forDialogFragment()Lcom/taobao/weex/devtools/common/android/DialogFragmentAccessor;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/weex/devtools/inspector/elements/android/DialogFragmentDescriptor;->mAccessor:Lcom/taobao/weex/devtools/common/android/DialogFragmentAccessor;

    .line 51
    return-void
.end method

.method private static maybeRegister(Lcom/taobao/weex/devtools/inspector/elements/DescriptorMap;Lcom/taobao/weex/devtools/common/android/FragmentCompat;)V
    .locals 4
    .param p0, "map"    # Lcom/taobao/weex/devtools/inspector/elements/DescriptorMap;
    .param p1, "compat"    # Lcom/taobao/weex/devtools/common/android/FragmentCompat;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 42
    if-eqz p1, :cond_0

    .line 43
    invoke-virtual {p1}, Lcom/taobao/weex/devtools/common/android/FragmentCompat;->getDialogFragmentClass()Ljava/lang/Class;

    move-result-object v0

    .line 44
    .local v0, "dialogFragmentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v1, "Adding support for %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/taobao/weex/devtools/common/LogUtil;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 45
    new-instance v1, Lcom/taobao/weex/devtools/inspector/elements/android/DialogFragmentDescriptor;

    invoke-direct {v1, p1}, Lcom/taobao/weex/devtools/inspector/elements/android/DialogFragmentDescriptor;-><init>(Lcom/taobao/weex/devtools/common/android/FragmentCompat;)V

    invoke-virtual {p0, v0, v1}, Lcom/taobao/weex/devtools/inspector/elements/DescriptorMap;->register(Ljava/lang/Class;Lcom/taobao/weex/devtools/inspector/elements/Descriptor;)Lcom/taobao/weex/devtools/inspector/elements/DescriptorMap;

    .line 47
    .end local v0    # "dialogFragmentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    return-void
.end method

.method public static register(Lcom/taobao/weex/devtools/inspector/elements/DescriptorMap;)Lcom/taobao/weex/devtools/inspector/elements/DescriptorMap;
    .locals 1
    .param p0, "map"    # Lcom/taobao/weex/devtools/inspector/elements/DescriptorMap;

    .prologue
    .line 36
    invoke-static {}, Lcom/taobao/weex/devtools/common/android/FragmentCompat;->getSupportLibInstance()Lcom/taobao/weex/devtools/common/android/FragmentCompat;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/taobao/weex/devtools/inspector/elements/android/DialogFragmentDescriptor;->maybeRegister(Lcom/taobao/weex/devtools/inspector/elements/DescriptorMap;Lcom/taobao/weex/devtools/common/android/FragmentCompat;)V

    .line 37
    invoke-static {}, Lcom/taobao/weex/devtools/common/android/FragmentCompat;->getFrameworkInstance()Lcom/taobao/weex/devtools/common/android/FragmentCompat;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/taobao/weex/devtools/inspector/elements/android/DialogFragmentDescriptor;->maybeRegister(Lcom/taobao/weex/devtools/inspector/elements/DescriptorMap;Lcom/taobao/weex/devtools/common/android/FragmentCompat;)V

    .line 38
    return-object p0
.end method


# virtual methods
.method public final getAttributes(Ljava/lang/Object;Lcom/taobao/weex/devtools/inspector/elements/AttributeAccumulator;)V
    .locals 1
    .param p1, "element"    # Ljava/lang/Object;
    .param p2, "attributes"    # Lcom/taobao/weex/devtools/inspector/elements/AttributeAccumulator;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/elements/android/DialogFragmentDescriptor;->mSuper:Lcom/taobao/weex/devtools/inspector/elements/Descriptor;

    invoke-virtual {v0, p1, p2}, Lcom/taobao/weex/devtools/inspector/elements/Descriptor;->getAttributes(Ljava/lang/Object;Lcom/taobao/weex/devtools/inspector/elements/AttributeAccumulator;)V

    .line 111
    return-void
.end method

.method public final getChildren(Ljava/lang/Object;Lcom/taobao/weex/devtools/common/Accumulator;)V
    .locals 1
    .param p1, "element"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/taobao/weex/devtools/common/Accumulator",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 105
    .local p2, "children":Lcom/taobao/weex/devtools/common/Accumulator;, "Lcom/taobao/weex/devtools/common/Accumulator<Ljava/lang/Object;>;"
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/elements/android/DialogFragmentDescriptor;->mAccessor:Lcom/taobao/weex/devtools/common/android/DialogFragmentAccessor;

    invoke-interface {v0, p1}, Lcom/taobao/weex/devtools/common/android/DialogFragmentAccessor;->getDialog(Ljava/lang/Object;)Landroid/app/Dialog;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/taobao/weex/devtools/common/Accumulator;->store(Ljava/lang/Object;)V

    .line 106
    return-void
.end method

.method public final getLocalName(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p1, "element"    # Ljava/lang/Object;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/elements/android/DialogFragmentDescriptor;->mSuper:Lcom/taobao/weex/devtools/inspector/elements/Descriptor;

    invoke-virtual {v0, p1}, Lcom/taobao/weex/devtools/inspector/elements/Descriptor;->getLocalName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getNodeName(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p1, "element"    # Ljava/lang/Object;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/elements/android/DialogFragmentDescriptor;->mSuper:Lcom/taobao/weex/devtools/inspector/elements/Descriptor;

    invoke-virtual {v0, p1}, Lcom/taobao/weex/devtools/inspector/elements/Descriptor;->getNodeName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getNodeType(Ljava/lang/Object;)Lcom/taobao/weex/devtools/inspector/elements/NodeType;
    .locals 1
    .param p1, "element"    # Ljava/lang/Object;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/elements/android/DialogFragmentDescriptor;->mSuper:Lcom/taobao/weex/devtools/inspector/elements/Descriptor;

    invoke-virtual {v0, p1}, Lcom/taobao/weex/devtools/inspector/elements/Descriptor;->getNodeType(Ljava/lang/Object;)Lcom/taobao/weex/devtools/inspector/elements/NodeType;

    move-result-object v0

    return-object v0
.end method

.method public final getNodeValue(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p1, "element"    # Ljava/lang/Object;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 93
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/elements/android/DialogFragmentDescriptor;->mSuper:Lcom/taobao/weex/devtools/inspector/elements/Descriptor;

    invoke-virtual {v0, p1}, Lcom/taobao/weex/devtools/inspector/elements/Descriptor;->getNodeValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getStyles(Ljava/lang/Object;Lcom/taobao/weex/devtools/inspector/elements/StyleAccumulator;)V
    .locals 0
    .param p1, "element"    # Ljava/lang/Object;
    .param p2, "styles"    # Lcom/taobao/weex/devtools/inspector/elements/StyleAccumulator;

    .prologue
    .line 132
    return-void
.end method

.method public final getViewForHighlighting(Ljava/lang/Object;)Landroid/view/View;
    .locals 3
    .param p1, "element"    # Ljava/lang/Object;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 121
    invoke-virtual {p0}, Lcom/taobao/weex/devtools/inspector/elements/android/DialogFragmentDescriptor;->getHost()Lcom/taobao/weex/devtools/inspector/elements/Descriptor$Host;

    move-result-object v1

    .line 122
    .local v1, "host":Lcom/taobao/weex/devtools/inspector/elements/Descriptor$Host;
    instance-of v2, v1, Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDescriptorHost;

    if-eqz v2, :cond_0

    .line 123
    iget-object v2, p0, Lcom/taobao/weex/devtools/inspector/elements/android/DialogFragmentDescriptor;->mAccessor:Lcom/taobao/weex/devtools/common/android/DialogFragmentAccessor;

    invoke-interface {v2, p1}, Lcom/taobao/weex/devtools/common/android/DialogFragmentAccessor;->getDialog(Ljava/lang/Object;)Landroid/app/Dialog;

    move-result-object v0

    .line 124
    .local v0, "dialog":Landroid/app/Dialog;
    check-cast v1, Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDescriptorHost;

    .end local v1    # "host":Lcom/taobao/weex/devtools/inspector/elements/Descriptor$Host;
    invoke-interface {v1, v0}, Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDescriptorHost;->getHighlightingView(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v2

    .line 127
    .end local v0    # "dialog":Landroid/app/Dialog;
    :goto_0
    return-object v2

    .restart local v1    # "host":Lcom/taobao/weex/devtools/inspector/elements/Descriptor$Host;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public final hook(Ljava/lang/Object;)V
    .locals 1
    .param p1, "element"    # Ljava/lang/Object;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/elements/android/DialogFragmentDescriptor;->mSuper:Lcom/taobao/weex/devtools/inspector/elements/Descriptor;

    invoke-virtual {v0, p1}, Lcom/taobao/weex/devtools/inspector/elements/Descriptor;->hook(Ljava/lang/Object;)V

    .line 68
    return-void
.end method

.method public final setAttributesAsText(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .param p1, "element"    # Ljava/lang/Object;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/elements/android/DialogFragmentDescriptor;->mSuper:Lcom/taobao/weex/devtools/inspector/elements/Descriptor;

    invoke-virtual {v0, p1, p2}, Lcom/taobao/weex/devtools/inspector/elements/Descriptor;->setAttributesAsText(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    return-void
.end method

.method public final setSuper(Lcom/taobao/weex/devtools/inspector/elements/Descriptor;)V
    .locals 1
    .param p1, "superDescriptor"    # Lcom/taobao/weex/devtools/inspector/elements/Descriptor;

    .prologue
    .line 55
    invoke-static {p1}, Lcom/taobao/weex/devtools/common/Util;->throwIfNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/elements/android/DialogFragmentDescriptor;->mSuper:Lcom/taobao/weex/devtools/inspector/elements/Descriptor;

    if-eq p1, v0, :cond_1

    .line 58
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/elements/android/DialogFragmentDescriptor;->mSuper:Lcom/taobao/weex/devtools/inspector/elements/Descriptor;

    if-eqz v0, :cond_0

    .line 59
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 61
    :cond_0
    iput-object p1, p0, Lcom/taobao/weex/devtools/inspector/elements/android/DialogFragmentDescriptor;->mSuper:Lcom/taobao/weex/devtools/inspector/elements/Descriptor;

    .line 63
    :cond_1
    return-void
.end method

.method public final unhook(Ljava/lang/Object;)V
    .locals 1
    .param p1, "element"    # Ljava/lang/Object;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/elements/android/DialogFragmentDescriptor;->mSuper:Lcom/taobao/weex/devtools/inspector/elements/Descriptor;

    invoke-virtual {v0, p1}, Lcom/taobao/weex/devtools/inspector/elements/Descriptor;->unhook(Ljava/lang/Object;)V

    .line 73
    return-void
.end method
