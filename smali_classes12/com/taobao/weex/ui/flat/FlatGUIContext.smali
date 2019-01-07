.class public Lcom/taobao/weex/ui/flat/FlatGUIContext;
.super Ljava/lang/Object;
.source "FlatGUIContext.java"

# interfaces
.implements Lcom/taobao/weex/common/Destroyable;


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field private mViewWidgetRegistry:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/taobao/weex/ui/component/WXComponent;",
            "Lcom/taobao/weex/ui/flat/widget/AndroidViewWidget;",
            ">;"
        }
    .end annotation
.end field

.field private mWidgetRegistry:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/taobao/weex/ui/component/WXComponent;",
            "Lcom/taobao/weex/ui/flat/WidgetContainer;",
            ">;"
        }
    .end annotation
.end field

.field private widgetToComponent:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/taobao/weex/ui/flat/widget/Widget;",
            "Lcom/taobao/weex/ui/component/WXComponent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Lfk;

    invoke-direct {v0}, Lfk;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/ui/flat/FlatGUIContext;->mWidgetRegistry:Ljava/util/Map;

    .line 47
    new-instance v0, Lfk;

    invoke-direct {v0}, Lfk;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/ui/flat/FlatGUIContext;->mViewWidgetRegistry:Ljava/util/Map;

    .line 48
    new-instance v0, Lfk;

    invoke-direct {v0}, Lfk;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/ui/flat/FlatGUIContext;->widgetToComponent:Ljava/util/Map;

    return-void
.end method

.method private checkComponent(Lcom/taobao/weex/ui/component/WXComponent;)Z
    .locals 4
    .param p1, "component"    # Lcom/taobao/weex/ui/component/WXComponent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 125
    const/4 v1, 0x0

    .line 126
    .local v1, "ret":Z
    if-eqz p1, :cond_1

    .line 127
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object v2

    .line 128
    .local v2, "style":Lcom/taobao/weex/dom/WXStyle;
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v0

    .line 129
    .local v0, "attr":Lcom/taobao/weex/dom/WXAttr;
    const-string/jumbo v3, "opacity"

    invoke-virtual {v2, v3}, Lcom/taobao/weex/dom/WXStyle;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "transform"

    .line 130
    invoke-virtual {v2, v3}, Lcom/taobao/weex/dom/WXStyle;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "visibility"

    .line 131
    invoke-virtual {v2, v3}, Lcom/taobao/weex/dom/WXStyle;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "elevation"

    .line 132
    invoke-virtual {v0, v3}, Lcom/taobao/weex/dom/WXAttr;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "ariaHidden"

    .line 133
    invoke-virtual {v0, v3}, Lcom/taobao/weex/dom/WXAttr;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "ariaLabel"

    .line 134
    invoke-virtual {v0, v3}, Lcom/taobao/weex/dom/WXAttr;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "fixedSize"

    .line 135
    invoke-virtual {v0, v3}, Lcom/taobao/weex/dom/WXAttr;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "disabled"

    .line 136
    invoke-virtual {v0, v3}, Lcom/taobao/weex/dom/WXAttr;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 137
    invoke-virtual {v2}, Lcom/taobao/weex/dom/WXStyle;->isFixed()Z

    move-result v3

    if-nez v3, :cond_0

    .line 138
    invoke-virtual {v2}, Lcom/taobao/weex/dom/WXStyle;->isSticky()Z

    move-result v3

    if-nez v3, :cond_0

    .line 139
    invoke-virtual {v2}, Lcom/taobao/weex/dom/WXStyle;->getPesudoStyles()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 140
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/taobao/weex/dom/WXEvent;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 141
    :cond_0
    const/4 v1, 0x1

    .line 144
    .end local v0    # "attr":Lcom/taobao/weex/dom/WXAttr;
    .end local v2    # "style":Lcom/taobao/weex/dom/WXStyle;
    :cond_1
    return v1
.end method

.method private getComponent(Lcom/taobao/weex/ui/flat/widget/Widget;)Lcom/taobao/weex/ui/component/WXComponent;
    .locals 1
    .param p1, "widget"    # Lcom/taobao/weex/ui/flat/widget/Widget;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 121
    iget-object v0, p0, Lcom/taobao/weex/ui/flat/FlatGUIContext;->widgetToComponent:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/component/WXComponent;

    return-object v0
.end method


# virtual methods
.method public destroy()V
    .locals 4
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 106
    iget-object v2, p0, Lcom/taobao/weex/ui/flat/FlatGUIContext;->widgetToComponent:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 108
    iget-object v2, p0, Lcom/taobao/weex/ui/flat/FlatGUIContext;->mViewWidgetRegistry:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 109
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/taobao/weex/ui/component/WXComponent;Lcom/taobao/weex/ui/flat/widget/AndroidViewWidget;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/taobao/weex/ui/flat/widget/AndroidViewWidget;

    invoke-virtual {v2}, Lcom/taobao/weex/ui/flat/widget/AndroidViewWidget;->destroy()V

    goto :goto_0

    .line 111
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/taobao/weex/ui/component/WXComponent;Lcom/taobao/weex/ui/flat/widget/AndroidViewWidget;>;"
    :cond_0
    iget-object v2, p0, Lcom/taobao/weex/ui/flat/FlatGUIContext;->mViewWidgetRegistry:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 113
    iget-object v2, p0, Lcom/taobao/weex/ui/flat/FlatGUIContext;->mWidgetRegistry:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 114
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/taobao/weex/ui/component/WXComponent;Lcom/taobao/weex/ui/flat/WidgetContainer;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/taobao/weex/ui/flat/WidgetContainer;

    invoke-virtual {v2}, Lcom/taobao/weex/ui/flat/WidgetContainer;->unmountFlatGUI()V

    goto :goto_1

    .line 116
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/taobao/weex/ui/component/WXComponent;Lcom/taobao/weex/ui/flat/WidgetContainer;>;"
    :cond_1
    iget-object v2, p0, Lcom/taobao/weex/ui/flat/FlatGUIContext;->mWidgetRegistry:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 117
    return-void
.end method

.method public getAndroidViewWidget(Lcom/taobao/weex/ui/component/WXComponent;)Lcom/taobao/weex/ui/flat/widget/AndroidViewWidget;
    .locals 1
    .param p1, "component"    # Lcom/taobao/weex/ui/component/WXComponent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 78
    iget-object v0, p0, Lcom/taobao/weex/ui/flat/FlatGUIContext;->mViewWidgetRegistry:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/flat/widget/AndroidViewWidget;

    return-object v0
.end method

.method public getFlatComponentAncestor(Lcom/taobao/weex/ui/component/WXComponent;)Lcom/taobao/weex/ui/flat/WidgetContainer;
    .locals 1
    .param p1, "flatWidget"    # Lcom/taobao/weex/ui/component/WXComponent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 72
    iget-object v0, p0, Lcom/taobao/weex/ui/flat/FlatGUIContext;->mWidgetRegistry:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/flat/WidgetContainer;

    return-object v0
.end method

.method public getWidgetContainerView(Lcom/taobao/weex/ui/flat/widget/Widget;)Landroid/view/View;
    .locals 3
    .param p1, "widget"    # Lcom/taobao/weex/ui/flat/widget/Widget;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 94
    const/4 v2, 0x0

    .line 95
    .local v2, "ret":Landroid/view/View;
    invoke-direct {p0, p1}, Lcom/taobao/weex/ui/flat/FlatGUIContext;->getComponent(Lcom/taobao/weex/ui/flat/widget/Widget;)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v1

    .local v1, "component":Lcom/taobao/weex/ui/component/WXComponent;
    if-eqz v1, :cond_0

    .line 96
    invoke-virtual {p0, v1}, Lcom/taobao/weex/ui/flat/FlatGUIContext;->getFlatComponentAncestor(Lcom/taobao/weex/ui/component/WXComponent;)Lcom/taobao/weex/ui/flat/WidgetContainer;

    move-result-object v0

    .local v0, "ancestor":Lcom/taobao/weex/ui/component/WXComponent;
    if-eqz v0, :cond_0

    .line 97
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v2

    .line 100
    .end local v0    # "ancestor":Lcom/taobao/weex/ui/component/WXComponent;
    :cond_0
    return-object v2
.end method

.method public isFlatUIEnabled(Lcom/taobao/weex/ui/component/WXComponent;)Z
    .locals 1
    .param p1, "component"    # Lcom/taobao/weex/ui/component/WXComponent;

    .prologue
    .line 51
    const/4 v0, 0x0

    return v0
.end method

.method public promoteToView(Lcom/taobao/weex/ui/component/WXComponent;ZLjava/lang/Class;)Z
    .locals 2
    .param p1, "component"    # Lcom/taobao/weex/ui/component/WXComponent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "checkAncestor"    # Z
    .param p3    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/weex/ui/component/WXComponent;",
            "Z",
            "Ljava/lang/Class",
            "<+",
            "Lcom/taobao/weex/ui/component/WXComponent",
            "<*>;>;)Z"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 83
    .local p3, "expectedClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/taobao/weex/ui/component/WXComponent<*>;>;"
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/flat/FlatGUIContext;->isFlatUIEnabled(Lcom/taobao/weex/ui/component/WXComponent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 84
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 85
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getRef()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "_root"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    .line 86
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/flat/FlatGUIContext;->getFlatComponentAncestor(Lcom/taobao/weex/ui/component/WXComponent;)Lcom/taobao/weex/ui/flat/WidgetContainer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 87
    :cond_0
    invoke-direct {p0, p1}, Lcom/taobao/weex/ui/flat/FlatGUIContext;->checkComponent(Lcom/taobao/weex/ui/component/WXComponent;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public register(Lcom/taobao/weex/ui/component/WXComponent;Lcom/taobao/weex/ui/flat/WidgetContainer;)V
    .locals 2
    .param p1, "descendant"    # Lcom/taobao/weex/ui/component/WXComponent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "ancestor"    # Lcom/taobao/weex/ui/flat/WidgetContainer;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 55
    instance-of v0, p2, Lcom/taobao/weex/ui/flat/FlatComponent;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/taobao/weex/ui/flat/FlatComponent;

    const/4 v1, 0x1

    .line 56
    invoke-interface {v0, v1}, Lcom/taobao/weex/ui/flat/FlatComponent;->promoteToView(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/taobao/weex/ui/flat/FlatGUIContext;->mWidgetRegistry:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    :cond_1
    return-void
.end method

.method public register(Lcom/taobao/weex/ui/component/WXComponent;Lcom/taobao/weex/ui/flat/widget/AndroidViewWidget;)V
    .locals 1
    .param p1, "component"    # Lcom/taobao/weex/ui/component/WXComponent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "viewWidget"    # Lcom/taobao/weex/ui/flat/widget/AndroidViewWidget;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 62
    iget-object v0, p0, Lcom/taobao/weex/ui/flat/FlatGUIContext;->mViewWidgetRegistry:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    return-void
.end method

.method public register(Lcom/taobao/weex/ui/flat/widget/Widget;Lcom/taobao/weex/ui/component/WXComponent;)V
    .locals 1
    .param p1, "widget"    # Lcom/taobao/weex/ui/flat/widget/Widget;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "component"    # Lcom/taobao/weex/ui/component/WXComponent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 66
    iget-object v0, p0, Lcom/taobao/weex/ui/flat/FlatGUIContext;->widgetToComponent:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    return-void
.end method
