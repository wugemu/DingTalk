.class final Lcom/taobao/weex/devtools/inspector/elements/android/FragmentDescriptor;
.super Lcom/taobao/weex/devtools/inspector/elements/AbstractChainedDescriptor;
.source "FragmentDescriptor.java"

# interfaces
.implements Lcom/taobao/weex/devtools/inspector/elements/android/HighlightableDescriptor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/taobao/weex/devtools/inspector/elements/AbstractChainedDescriptor",
        "<",
        "Ljava/lang/Object;",
        ">;",
        "Lcom/taobao/weex/devtools/inspector/elements/android/HighlightableDescriptor;"
    }
.end annotation


# static fields
.field private static final ID_ATTRIBUTE_NAME:Ljava/lang/String; = "id"

.field private static final TAG_ATTRIBUTE_NAME:Ljava/lang/String; = "tag"


# instance fields
.field private final mAccessor:Lcom/taobao/weex/devtools/common/android/FragmentAccessor;


# direct methods
.method private constructor <init>(Lcom/taobao/weex/devtools/common/android/FragmentCompat;)V
    .locals 1
    .param p1, "compat"    # Lcom/taobao/weex/devtools/common/android/FragmentCompat;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/taobao/weex/devtools/inspector/elements/AbstractChainedDescriptor;-><init>()V

    .line 47
    invoke-virtual {p1}, Lcom/taobao/weex/devtools/common/android/FragmentCompat;->forFragment()Lcom/taobao/weex/devtools/common/android/FragmentAccessor;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/weex/devtools/inspector/elements/android/FragmentDescriptor;->mAccessor:Lcom/taobao/weex/devtools/common/android/FragmentAccessor;

    .line 48
    return-void
.end method

.method private static maybeRegister(Lcom/taobao/weex/devtools/inspector/elements/DescriptorMap;Lcom/taobao/weex/devtools/common/android/FragmentCompat;)V
    .locals 5
    .param p0, "map"    # Lcom/taobao/weex/devtools/inspector/elements/DescriptorMap;
    .param p1, "compat"    # Lcom/taobao/weex/devtools/common/android/FragmentCompat;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 39
    if-eqz p1, :cond_0

    .line 40
    invoke-virtual {p1}, Lcom/taobao/weex/devtools/common/android/FragmentCompat;->getFragmentClass()Ljava/lang/Class;

    move-result-object v0

    .line 41
    .local v0, "fragmentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v1, "Adding support for %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/taobao/weex/devtools/common/LogUtil;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 42
    new-instance v1, Lcom/taobao/weex/devtools/inspector/elements/android/FragmentDescriptor;

    invoke-direct {v1, p1}, Lcom/taobao/weex/devtools/inspector/elements/android/FragmentDescriptor;-><init>(Lcom/taobao/weex/devtools/common/android/FragmentCompat;)V

    invoke-virtual {p0, v0, v1}, Lcom/taobao/weex/devtools/inspector/elements/DescriptorMap;->register(Ljava/lang/Class;Lcom/taobao/weex/devtools/inspector/elements/Descriptor;)Lcom/taobao/weex/devtools/inspector/elements/DescriptorMap;

    .line 44
    .end local v0    # "fragmentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    return-void
.end method

.method public static register(Lcom/taobao/weex/devtools/inspector/elements/DescriptorMap;)Lcom/taobao/weex/devtools/inspector/elements/DescriptorMap;
    .locals 1
    .param p0, "map"    # Lcom/taobao/weex/devtools/inspector/elements/DescriptorMap;

    .prologue
    .line 33
    invoke-static {}, Lcom/taobao/weex/devtools/common/android/FragmentCompat;->getSupportLibInstance()Lcom/taobao/weex/devtools/common/android/FragmentCompat;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/taobao/weex/devtools/inspector/elements/android/FragmentDescriptor;->maybeRegister(Lcom/taobao/weex/devtools/inspector/elements/DescriptorMap;Lcom/taobao/weex/devtools/common/android/FragmentCompat;)V

    .line 34
    invoke-static {}, Lcom/taobao/weex/devtools/common/android/FragmentCompat;->getFrameworkInstance()Lcom/taobao/weex/devtools/common/android/FragmentCompat;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/taobao/weex/devtools/inspector/elements/android/FragmentDescriptor;->maybeRegister(Lcom/taobao/weex/devtools/inspector/elements/DescriptorMap;Lcom/taobao/weex/devtools/common/android/FragmentCompat;)V

    .line 35
    return-object p0
.end method


# virtual methods
.method public final getViewForHighlighting(Ljava/lang/Object;)Landroid/view/View;
    .locals 1
    .param p1, "element"    # Ljava/lang/Object;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/elements/android/FragmentDescriptor;->mAccessor:Lcom/taobao/weex/devtools/common/android/FragmentAccessor;

    invoke-interface {v0, p1}, Lcom/taobao/weex/devtools/common/android/FragmentAccessor;->getView(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected final onGetAttributes(Ljava/lang/Object;Lcom/taobao/weex/devtools/inspector/elements/AttributeAccumulator;)V
    .locals 4
    .param p1, "element"    # Ljava/lang/Object;
    .param p2, "attributes"    # Lcom/taobao/weex/devtools/inspector/elements/AttributeAccumulator;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 52
    iget-object v3, p0, Lcom/taobao/weex/devtools/inspector/elements/android/FragmentDescriptor;->mAccessor:Lcom/taobao/weex/devtools/common/android/FragmentAccessor;

    invoke-interface {v3, p1}, Lcom/taobao/weex/devtools/common/android/FragmentAccessor;->getId(Ljava/lang/Object;)I

    move-result v0

    .line 53
    .local v0, "id":I
    if-eqz v0, :cond_0

    .line 54
    iget-object v3, p0, Lcom/taobao/weex/devtools/inspector/elements/android/FragmentDescriptor;->mAccessor:Lcom/taobao/weex/devtools/common/android/FragmentAccessor;

    .line 56
    invoke-interface {v3, p1}, Lcom/taobao/weex/devtools/common/android/FragmentAccessor;->getResources(Ljava/lang/Object;)Landroid/content/res/Resources;

    move-result-object v3

    .line 54
    invoke-static {p1, v3, v0}, Lcom/taobao/weex/devtools/common/android/ResourcesUtil;->getIdStringQuietly(Ljava/lang/Object;Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v2

    .line 58
    .local v2, "value":Ljava/lang/String;
    const-string/jumbo v3, "id"

    invoke-interface {p2, v3, v2}, Lcom/taobao/weex/devtools/inspector/elements/AttributeAccumulator;->store(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .end local v2    # "value":Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Lcom/taobao/weex/devtools/inspector/elements/android/FragmentDescriptor;->mAccessor:Lcom/taobao/weex/devtools/common/android/FragmentAccessor;

    invoke-interface {v3, p1}, Lcom/taobao/weex/devtools/common/android/FragmentAccessor;->getTag(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 62
    .local v1, "tag":Ljava/lang/String;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 63
    const-string/jumbo v3, "tag"

    invoke-interface {p2, v3, v1}, Lcom/taobao/weex/devtools/inspector/elements/AttributeAccumulator;->store(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    :cond_1
    return-void
.end method

.method protected final onGetChildren(Ljava/lang/Object;Lcom/taobao/weex/devtools/common/Accumulator;)V
    .locals 2
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

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 69
    .local p2, "children":Lcom/taobao/weex/devtools/common/Accumulator;, "Lcom/taobao/weex/devtools/common/Accumulator<Ljava/lang/Object;>;"
    iget-object v1, p0, Lcom/taobao/weex/devtools/inspector/elements/android/FragmentDescriptor;->mAccessor:Lcom/taobao/weex/devtools/common/android/FragmentAccessor;

    invoke-interface {v1, p1}, Lcom/taobao/weex/devtools/common/android/FragmentAccessor;->getView(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 70
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 71
    invoke-interface {p2, v0}, Lcom/taobao/weex/devtools/common/Accumulator;->store(Ljava/lang/Object;)V

    .line 73
    :cond_0
    return-void
.end method
