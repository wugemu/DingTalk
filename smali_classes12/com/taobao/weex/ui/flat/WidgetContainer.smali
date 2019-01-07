.class public abstract Lcom/taobao/weex/ui/flat/WidgetContainer;
.super Lcom/taobao/weex/ui/component/WXVContainer;
.source "WidgetContainer.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/ViewGroup;",
        ">",
        "Lcom/taobao/weex/ui/component/WXVContainer",
        "<TT;>;"
    }
.end annotation


# instance fields
.field protected widgets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/taobao/weex/ui/flat/widget/Widget;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Lcom/taobao/weex/ui/action/BasicComponentData;)V
    .locals 0
    .param p1, "instance"    # Lcom/taobao/weex/WXSDKInstance;
    .param p2, "parent"    # Lcom/taobao/weex/ui/component/WXVContainer;
    .param p3, "basicComponentData"    # Lcom/taobao/weex/ui/action/BasicComponentData;

    .prologue
    .line 43
    .local p0, "this":Lcom/taobao/weex/ui/flat/WidgetContainer;, "Lcom/taobao/weex/ui/flat/WidgetContainer<TT;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/taobao/weex/ui/component/WXVContainer;-><init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Lcom/taobao/weex/ui/action/BasicComponentData;)V

    .line 44
    return-void
.end method

.method private addFlatChild(Lcom/taobao/weex/ui/flat/widget/Widget;I)V
    .locals 1
    .param p1, "widget"    # Lcom/taobao/weex/ui/flat/widget/Widget;
    .param p2, "index"    # I

    .prologue
    .line 87
    .local p0, "this":Lcom/taobao/weex/ui/flat/WidgetContainer;, "Lcom/taobao/weex/ui/flat/WidgetContainer<TT;>;"
    iget-object v0, p0, Lcom/taobao/weex/ui/flat/WidgetContainer;->widgets:Ljava/util/List;

    if-nez v0, :cond_0

    .line 88
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/ui/flat/WidgetContainer;->widgets:Ljava/util/List;

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/taobao/weex/ui/flat/WidgetContainer;->widgets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p2, v0, :cond_1

    .line 91
    iget-object v0, p0, Lcom/taobao/weex/ui/flat/WidgetContainer;->widgets:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    :goto_0
    invoke-virtual {p0}, Lcom/taobao/weex/ui/flat/WidgetContainer;->mountFlatGUI()V

    .line 97
    return-void

    .line 93
    :cond_1
    iget-object v0, p0, Lcom/taobao/weex/ui/flat/WidgetContainer;->widgets:Ljava/util/List;

    invoke-interface {v0, p2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public createChildViewAt(I)V
    .locals 7
    .param p1, "index"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 56
    .local p0, "this":Lcom/taobao/weex/ui/flat/WidgetContainer;, "Lcom/taobao/weex/ui/flat/WidgetContainer<TT;>;"
    invoke-virtual {p0}, Lcom/taobao/weex/ui/flat/WidgetContainer;->intendToBeFlatContainer()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 57
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/flat/WidgetContainer;->rearrangeIndexAndGetChild(I)Landroid/util/Pair;

    move-result-object v3

    .line 58
    .local v3, "ret":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/taobao/weex/ui/component/WXComponent;Ljava/lang/Integer;>;"
    iget-object v5, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v5, :cond_2

    .line 59
    iget-object v0, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/taobao/weex/ui/component/WXComponent;

    .line 61
    .local v0, "child":Lcom/taobao/weex/ui/component/WXComponent;
    invoke-virtual {p0}, Lcom/taobao/weex/ui/flat/WidgetContainer;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v5

    invoke-virtual {v5}, Lcom/taobao/weex/WXSDKInstance;->getFlatUIContext()Lcom/taobao/weex/ui/flat/FlatGUIContext;

    move-result-object v4

    .line 62
    .local v4, "uiImp":Lcom/taobao/weex/ui/flat/FlatGUIContext;
    invoke-virtual {v4, p0}, Lcom/taobao/weex/ui/flat/FlatGUIContext;->getFlatComponentAncestor(Lcom/taobao/weex/ui/component/WXComponent;)Lcom/taobao/weex/ui/flat/WidgetContainer;

    move-result-object v2

    .line 63
    .local v2, "parent":Lcom/taobao/weex/ui/flat/WidgetContainer;
    if-eqz v2, :cond_0

    invoke-virtual {v4, p0}, Lcom/taobao/weex/ui/flat/FlatGUIContext;->getAndroidViewWidget(Lcom/taobao/weex/ui/component/WXComponent;)Lcom/taobao/weex/ui/flat/widget/AndroidViewWidget;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 64
    :cond_0
    move-object v2, p0

    .line 66
    :cond_1
    invoke-virtual {v4, v0, v2}, Lcom/taobao/weex/ui/flat/FlatGUIContext;->register(Lcom/taobao/weex/ui/component/WXComponent;Lcom/taobao/weex/ui/flat/WidgetContainer;)V

    .line 68
    instance-of v5, v0, Lcom/taobao/weex/ui/flat/FlatComponent;

    if-eqz v5, :cond_3

    move-object v5, v0

    check-cast v5, Lcom/taobao/weex/ui/flat/FlatComponent;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Lcom/taobao/weex/ui/flat/FlatComponent;->promoteToView(Z)Z

    move-result v5

    if-nez v5, :cond_3

    move-object v5, v0

    .line 69
    check-cast v5, Lcom/taobao/weex/ui/flat/FlatComponent;

    invoke-interface {v5}, Lcom/taobao/weex/ui/flat/FlatComponent;->getOrCreateFlatWidget()Lcom/taobao/weex/ui/flat/widget/Widget;

    move-result-object v1

    .line 78
    .local v1, "flatChild":Lcom/taobao/weex/ui/flat/widget/Widget;
    :goto_0
    invoke-virtual {v4, v1, v0}, Lcom/taobao/weex/ui/flat/FlatGUIContext;->register(Lcom/taobao/weex/ui/flat/widget/Widget;Lcom/taobao/weex/ui/component/WXComponent;)V

    .line 79
    iget-object v5, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {p0, v1, v5}, Lcom/taobao/weex/ui/flat/WidgetContainer;->addFlatChild(Lcom/taobao/weex/ui/flat/widget/Widget;I)V

    .line 84
    .end local v0    # "child":Lcom/taobao/weex/ui/component/WXComponent;
    .end local v1    # "flatChild":Lcom/taobao/weex/ui/flat/widget/Widget;
    .end local v2    # "parent":Lcom/taobao/weex/ui/flat/WidgetContainer;
    .end local v3    # "ret":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/taobao/weex/ui/component/WXComponent;Ljava/lang/Integer;>;"
    .end local v4    # "uiImp":Lcom/taobao/weex/ui/flat/FlatGUIContext;
    :cond_2
    :goto_1
    return-void

    .line 71
    .restart local v0    # "child":Lcom/taobao/weex/ui/component/WXComponent;
    .restart local v2    # "parent":Lcom/taobao/weex/ui/flat/WidgetContainer;
    .restart local v3    # "ret":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/taobao/weex/ui/component/WXComponent;Ljava/lang/Integer;>;"
    .restart local v4    # "uiImp":Lcom/taobao/weex/ui/flat/FlatGUIContext;
    :cond_3
    new-instance v1, Lcom/taobao/weex/ui/flat/widget/AndroidViewWidget;

    invoke-direct {v1, v4}, Lcom/taobao/weex/ui/flat/widget/AndroidViewWidget;-><init>(Lcom/taobao/weex/ui/flat/FlatGUIContext;)V

    .restart local v1    # "flatChild":Lcom/taobao/weex/ui/flat/widget/Widget;
    move-object v5, v1

    .line 72
    check-cast v5, Lcom/taobao/weex/ui/flat/widget/AndroidViewWidget;

    invoke-virtual {v4, v0, v5}, Lcom/taobao/weex/ui/flat/FlatGUIContext;->register(Lcom/taobao/weex/ui/component/WXComponent;Lcom/taobao/weex/ui/flat/widget/AndroidViewWidget;)V

    .line 73
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->createView()V

    move-object v5, v1

    .line 74
    check-cast v5, Lcom/taobao/weex/ui/flat/widget/AndroidViewWidget;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/taobao/weex/ui/flat/widget/AndroidViewWidget;->setContentView(Landroid/view/View;)V

    .line 76
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v5

    const/4 v6, -0x1

    invoke-virtual {v2, v5, v6}, Lcom/taobao/weex/ui/flat/WidgetContainer;->addSubView(Landroid/view/View;I)V

    goto :goto_0

    .line 82
    .end local v0    # "child":Lcom/taobao/weex/ui/component/WXComponent;
    .end local v1    # "flatChild":Lcom/taobao/weex/ui/flat/widget/Widget;
    .end local v2    # "parent":Lcom/taobao/weex/ui/flat/WidgetContainer;
    .end local v3    # "ret":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/taobao/weex/ui/component/WXComponent;Ljava/lang/Integer;>;"
    .end local v4    # "uiImp":Lcom/taobao/weex/ui/flat/FlatGUIContext;
    :cond_4
    invoke-super {p0, p1}, Lcom/taobao/weex/ui/component/WXVContainer;->createChildViewAt(I)V

    goto :goto_1
.end method

.method public intendToBeFlatContainer()Z
    .locals 1

    .prologue
    .line 51
    .local p0, "this":Lcom/taobao/weex/ui/flat/WidgetContainer;, "Lcom/taobao/weex/ui/flat/WidgetContainer<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method protected abstract mountFlatGUI()V
.end method

.method protected abstract unmountFlatGUI()V
.end method
