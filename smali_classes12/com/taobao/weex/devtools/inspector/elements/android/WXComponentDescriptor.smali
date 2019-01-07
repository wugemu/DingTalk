.class public Lcom/taobao/weex/devtools/inspector/elements/android/WXComponentDescriptor;
.super Lcom/taobao/weex/devtools/inspector/elements/AbstractChainedDescriptor;
.source "WXComponentDescriptor.java"

# interfaces
.implements Lcom/taobao/weex/devtools/inspector/elements/android/HighlightableDescriptor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/taobao/weex/devtools/inspector/elements/AbstractChainedDescriptor",
        "<",
        "Lcom/taobao/weex/ui/component/WXComponent;",
        ">;",
        "Lcom/taobao/weex/devtools/inspector/elements/android/HighlightableDescriptor;"
    }
.end annotation


# static fields
.field private static sClassName:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 46
    sput-object v0, Lcom/taobao/weex/devtools/inspector/elements/android/WXComponentDescriptor;->sClassName:Ljava/util/HashMap;

    const-class v1, Lcom/taobao/weex/ui/component/WXComponent;

    const-string/jumbo v2, "component"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v0, Lcom/taobao/weex/devtools/inspector/elements/android/WXComponentDescriptor;->sClassName:Ljava/util/HashMap;

    const-class v1, Lcom/taobao/weex/ui/component/WXText;

    const-string/jumbo v2, "text"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v0, Lcom/taobao/weex/devtools/inspector/elements/android/WXComponentDescriptor;->sClassName:Ljava/util/HashMap;

    const-class v1, Lcom/taobao/weex/ui/component/WXVContainer;

    const-string/jumbo v2, "container"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v0, Lcom/taobao/weex/devtools/inspector/elements/android/WXComponentDescriptor;->sClassName:Ljava/util/HashMap;

    const-class v1, Lcom/taobao/weex/ui/component/WXDiv;

    const-string/jumbo v2, "div"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v0, Lcom/taobao/weex/devtools/inspector/elements/android/WXComponentDescriptor;->sClassName:Ljava/util/HashMap;

    const-class v1, Lcom/taobao/weex/ui/view/WXEditText;

    const-string/jumbo v2, "textarea"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v0, Lcom/taobao/weex/devtools/inspector/elements/android/WXComponentDescriptor;->sClassName:Ljava/util/HashMap;

    const-class v1, Lcom/taobao/weex/ui/component/WXA;

    const-string/jumbo v2, "a"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v0, Lcom/taobao/weex/devtools/inspector/elements/android/WXComponentDescriptor;->sClassName:Ljava/util/HashMap;

    const-class v1, Lcom/taobao/weex/ui/component/WXInput;

    const-string/jumbo v2, "input"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v0, Lcom/taobao/weex/devtools/inspector/elements/android/WXComponentDescriptor;->sClassName:Ljava/util/HashMap;

    const-class v1, Lcom/taobao/weex/ui/component/WXLoading;

    const-string/jumbo v2, "loading"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v0, Lcom/taobao/weex/devtools/inspector/elements/android/WXComponentDescriptor;->sClassName:Ljava/util/HashMap;

    const-class v1, Lcom/taobao/weex/ui/component/WXScroller;

    const-string/jumbo v2, "scroller"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v0, Lcom/taobao/weex/devtools/inspector/elements/android/WXComponentDescriptor;->sClassName:Ljava/util/HashMap;

    const-class v1, Lcom/taobao/weex/ui/component/WXSwitch;

    const-string/jumbo v2, "switch"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v0, Lcom/taobao/weex/devtools/inspector/elements/android/WXComponentDescriptor;->sClassName:Ljava/util/HashMap;

    const-class v1, Lcom/taobao/weex/ui/component/WXSlider;

    const-string/jumbo v2, "slider"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v0, Lcom/taobao/weex/devtools/inspector/elements/android/WXComponentDescriptor;->sClassName:Ljava/util/HashMap;

    const-class v1, Lcom/taobao/weex/ui/component/WXVideo;

    const-string/jumbo v2, "video"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v0, Lcom/taobao/weex/devtools/inspector/elements/android/WXComponentDescriptor;->sClassName:Ljava/util/HashMap;

    const-class v1, Lcom/taobao/weex/ui/component/WXImage;

    const-string/jumbo v2, "image"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v0, Lcom/taobao/weex/devtools/inspector/elements/android/WXComponentDescriptor;->sClassName:Ljava/util/HashMap;

    const-class v1, Lcom/taobao/weex/ui/component/WXHeader;

    const-string/jumbo v2, "header"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v0, Lcom/taobao/weex/devtools/inspector/elements/android/WXComponentDescriptor;->sClassName:Ljava/util/HashMap;

    const-class v1, Lcom/taobao/weex/ui/component/WXEmbed;

    const-string/jumbo v2, "embed"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v0, Lcom/taobao/weex/devtools/inspector/elements/android/WXComponentDescriptor;->sClassName:Ljava/util/HashMap;

    const-class v1, Lcom/taobao/weex/ui/component/list/WXListComponent;

    const-string/jumbo v2, "list"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object v0, Lcom/taobao/weex/devtools/inspector/elements/android/WXComponentDescriptor;->sClassName:Ljava/util/HashMap;

    const-class v1, Lcom/taobao/weex/ui/component/list/HorizontalListComponent;

    const-string/jumbo v2, "hlist"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v0, Lcom/taobao/weex/devtools/inspector/elements/android/WXComponentDescriptor;->sClassName:Ljava/util/HashMap;

    const-class v1, Lcom/taobao/weex/ui/component/list/WXCell;

    const-string/jumbo v2, "cell"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/taobao/weex/devtools/inspector/elements/AbstractChainedDescriptor;-><init>()V

    return-void
.end method

.method private static filter(Ljava/lang/String;)Z
    .locals 3
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 114
    const/4 v1, 0x0

    .line 115
    .local v1, "result":Z
    if-eqz p0, :cond_0

    .line 116
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 117
    .local v0, "exp":Ljava/lang/String;
    const-string/jumbo v2, "padding"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "margin"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "width"

    .line 118
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "height"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "left"

    .line 119
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "right"

    .line 120
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "top"

    .line 121
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "bottom"

    .line 122
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v1, 0x1

    .line 124
    .end local v0    # "exp":Ljava/lang/String;
    :cond_0
    :goto_0
    return v1

    .line 122
    .restart local v0    # "exp":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getAttribute(Lcom/taobao/weex/ui/component/WXComponent;)Ljava/util/HashMap;
    .locals 5
    .param p1, "element"    # Lcom/taobao/weex/ui/component/WXComponent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/weex/ui/component/WXComponent;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 103
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 104
    .local v1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/weex/dom/WXAttr;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 105
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 106
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 110
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_1
    return-object v1
.end method

.method public getStyles(Lcom/taobao/weex/ui/component/WXComponent;)Ljava/util/HashMap;
    .locals 5
    .param p1, "element"    # Lcom/taobao/weex/ui/component/WXComponent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/weex/ui/component/WXComponent;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 93
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 94
    .local v1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/weex/dom/WXStyle;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 95
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 96
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 99
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_1
    return-object v1
.end method

.method public getViewForHighlighting(Ljava/lang/Object;)Landroid/view/View;
    .locals 1
    .param p1, "element"    # Ljava/lang/Object;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 88
    check-cast p1, Lcom/taobao/weex/ui/component/WXComponent;

    .end local p1    # "element":Ljava/lang/Object;
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getRealView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected onGetAttributes(Lcom/taobao/weex/ui/component/WXComponent;Lcom/taobao/weex/devtools/inspector/elements/AttributeAccumulator;)V
    .locals 6
    .param p1, "element"    # Lcom/taobao/weex/ui/component/WXComponent;
    .param p2, "attributes"    # Lcom/taobao/weex/devtools/inspector/elements/AttributeAccumulator;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 187
    invoke-virtual {p0, p1}, Lcom/taobao/weex/devtools/inspector/elements/android/WXComponentDescriptor;->getAttribute(Lcom/taobao/weex/ui/component/WXComponent;)Ljava/util/HashMap;

    move-result-object v1

    .line 188
    .local v1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 189
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 190
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {p2, v3, v4}, Lcom/taobao/weex/devtools/inspector/elements/AttributeAccumulator;->store(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 193
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getRealView()Landroid/view/View;

    move-result-object v2

    .line 194
    .local v2, "view":Landroid/view/View;
    if-eqz v2, :cond_1

    .line 195
    invoke-virtual {v2}, Landroid/view/View;->isShown()Z

    move-result v3

    if-nez v3, :cond_1

    .line 196
    const-string/jumbo v3, "visibility"

    invoke-virtual {v2}, Landroid/view/View;->isShown()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v3, v4}, Lcom/taobao/weex/devtools/inspector/elements/AttributeAccumulator;->store(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    :cond_1
    return-void
.end method

.method protected bridge synthetic onGetAttributes(Ljava/lang/Object;Lcom/taobao/weex/devtools/inspector/elements/AttributeAccumulator;)V
    .locals 0

    .prologue
    .line 40
    check-cast p1, Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {p0, p1, p2}, Lcom/taobao/weex/devtools/inspector/elements/android/WXComponentDescriptor;->onGetAttributes(Lcom/taobao/weex/ui/component/WXComponent;Lcom/taobao/weex/devtools/inspector/elements/AttributeAccumulator;)V

    return-void
.end method

.method protected onGetChildren(Lcom/taobao/weex/ui/component/WXComponent;Lcom/taobao/weex/devtools/common/Accumulator;)V
    .locals 0
    .param p1, "element"    # Lcom/taobao/weex/ui/component/WXComponent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/weex/ui/component/WXComponent;",
            "Lcom/taobao/weex/devtools/common/Accumulator",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 83
    .local p2, "children":Lcom/taobao/weex/devtools/common/Accumulator;, "Lcom/taobao/weex/devtools/common/Accumulator<Ljava/lang/Object;>;"
    return-void
.end method

.method protected bridge synthetic onGetChildren(Ljava/lang/Object;Lcom/taobao/weex/devtools/common/Accumulator;)V
    .locals 0

    .prologue
    .line 40
    check-cast p1, Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {p0, p1, p2}, Lcom/taobao/weex/devtools/inspector/elements/android/WXComponentDescriptor;->onGetChildren(Lcom/taobao/weex/ui/component/WXComponent;Lcom/taobao/weex/devtools/common/Accumulator;)V

    return-void
.end method

.method protected onGetNodeName(Lcom/taobao/weex/ui/component/WXComponent;)Ljava/lang/String;
    .locals 4
    .param p1, "element"    # Lcom/taobao/weex/ui/component/WXComponent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 69
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 70
    .local v0, "clazz":Ljava/lang/Class;
    sget-object v2, Lcom/taobao/weex/devtools/inspector/elements/android/WXComponentDescriptor;->sClassName:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 71
    .local v1, "name":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 72
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "WX"

    invoke-static {v2, v3}, Lcom/taobao/weex/devtools/common/StringUtil;->removePrefix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 74
    :cond_0
    return-object v1
.end method

.method protected bridge synthetic onGetNodeName(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    check-cast p1, Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {p0, p1}, Lcom/taobao/weex/devtools/inspector/elements/android/WXComponentDescriptor;->onGetNodeName(Lcom/taobao/weex/ui/component/WXComponent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onGetStyles(Lcom/taobao/weex/ui/component/WXComponent;Lcom/taobao/weex/devtools/inspector/elements/StyleAccumulator;)V
    .locals 7
    .param p1, "element"    # Lcom/taobao/weex/ui/component/WXComponent;
    .param p2, "accumulator"    # Lcom/taobao/weex/devtools/inspector/elements/StyleAccumulator;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 129
    invoke-virtual {p0, p1}, Lcom/taobao/weex/devtools/inspector/elements/android/WXComponentDescriptor;->getStyles(Lcom/taobao/weex/ui/component/WXComponent;)Ljava/util/HashMap;

    move-result-object v1

    .line 130
    .local v1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 131
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 132
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "v-"

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {p2, v4, v3, v6}, Lcom/taobao/weex/devtools/inspector/elements/StyleAccumulator;->store(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 133
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/taobao/weex/devtools/inspector/elements/android/WXComponentDescriptor;->filter(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 134
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {p2, v3, v4, v6}, Lcom/taobao/weex/devtools/inspector/elements/StyleAccumulator;->store(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 139
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getRealView()Landroid/view/View;

    move-result-object v2

    .line 140
    .local v2, "view":Landroid/view/View;
    if-eqz v2, :cond_4

    .line 141
    const-string/jumbo v3, "left"

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v3, v4, v6}, Lcom/taobao/weex/devtools/inspector/elements/StyleAccumulator;->store(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 142
    const-string/jumbo v3, "top"

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v3, v4, v6}, Lcom/taobao/weex/devtools/inspector/elements/StyleAccumulator;->store(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 143
    const-string/jumbo v3, "right"

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v3, v4, v6}, Lcom/taobao/weex/devtools/inspector/elements/StyleAccumulator;->store(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 144
    const-string/jumbo v3, "bottom"

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v3, v4, v6}, Lcom/taobao/weex/devtools/inspector/elements/StyleAccumulator;->store(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 145
    const-string/jumbo v3, "width"

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v3, v4, v6}, Lcom/taobao/weex/devtools/inspector/elements/StyleAccumulator;->store(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 146
    const-string/jumbo v3, "height"

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v3, v4, v6}, Lcom/taobao/weex/devtools/inspector/elements/StyleAccumulator;->store(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 162
    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    if-nez v3, :cond_2

    .line 163
    invoke-virtual {v2}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    if-nez v3, :cond_2

    .line 164
    invoke-virtual {v2}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    if-nez v3, :cond_2

    .line 165
    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    if-eqz v3, :cond_3

    .line 166
    :cond_2
    const-string/jumbo v3, "padding-left"

    invoke-virtual {v2}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v3, v4, v6}, Lcom/taobao/weex/devtools/inspector/elements/StyleAccumulator;->store(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 167
    const-string/jumbo v3, "padding-top"

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v3, v4, v6}, Lcom/taobao/weex/devtools/inspector/elements/StyleAccumulator;->store(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 168
    const-string/jumbo v3, "padding-right"

    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v3, v4, v6}, Lcom/taobao/weex/devtools/inspector/elements/StyleAccumulator;->store(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 169
    const-string/jumbo v3, "padding-bottom"

    invoke-virtual {v2}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v3, v4, v6}, Lcom/taobao/weex/devtools/inspector/elements/StyleAccumulator;->store(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 181
    :cond_3
    const-string/jumbo v3, "visibility"

    invoke-virtual {v2}, Landroid/view/View;->isShown()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v3, v4, v6}, Lcom/taobao/weex/devtools/inspector/elements/StyleAccumulator;->store(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 183
    :cond_4
    return-void
.end method

.method protected bridge synthetic onGetStyles(Ljava/lang/Object;Lcom/taobao/weex/devtools/inspector/elements/StyleAccumulator;)V
    .locals 0

    .prologue
    .line 40
    check-cast p1, Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {p0, p1, p2}, Lcom/taobao/weex/devtools/inspector/elements/android/WXComponentDescriptor;->onGetStyles(Lcom/taobao/weex/ui/component/WXComponent;Lcom/taobao/weex/devtools/inspector/elements/StyleAccumulator;)V

    return-void
.end method
