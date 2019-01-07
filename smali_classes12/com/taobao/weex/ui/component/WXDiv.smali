.class public Lcom/taobao/weex/ui/component/WXDiv;
.super Lcom/taobao/weex/ui/flat/WidgetContainer;
.source "WXDiv.java"

# interfaces
.implements Lcom/taobao/weex/ui/flat/FlatComponent;


# annotations
.annotation runtime Lcom/taobao/weex/annotation/Component;
    lazyload = false
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/weex/ui/component/WXDiv$Ceator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/taobao/weex/ui/flat/WidgetContainer",
        "<",
        "Lcom/taobao/weex/ui/view/WXFrameLayout;",
        ">;",
        "Lcom/taobao/weex/ui/flat/FlatComponent",
        "<",
        "Lcom/taobao/weex/ui/flat/widget/WidgetGroup;",
        ">;"
    }
.end annotation


# instance fields
.field private mWidgetGroup:Lcom/taobao/weex/ui/flat/widget/WidgetGroup;


# direct methods
.method public constructor <init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Lcom/taobao/weex/ui/action/BasicComponentData;)V
    .locals 0
    .param p1, "instance"    # Lcom/taobao/weex/WXSDKInstance;
    .param p2, "parent"    # Lcom/taobao/weex/ui/component/WXVContainer;
    .param p3, "basicComponentData"    # Lcom/taobao/weex/ui/action/BasicComponentData;

    .prologue
    .line 60
    invoke-direct {p0, p1, p2, p3}, Lcom/taobao/weex/ui/flat/WidgetContainer;-><init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Lcom/taobao/weex/ui/action/BasicComponentData;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Ljava/lang/String;ZLcom/taobao/weex/ui/action/BasicComponentData;)V
    .locals 0
    .param p1, "instance"    # Lcom/taobao/weex/WXSDKInstance;
    .param p2, "parent"    # Lcom/taobao/weex/ui/component/WXVContainer;
    .param p3, "instanceId"    # Ljava/lang/String;
    .param p4, "isLazy"    # Z
    .param p5, "basicComponentData"    # Lcom/taobao/weex/ui/action/BasicComponentData;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 56
    invoke-direct {p0, p1, p2, p5}, Lcom/taobao/weex/ui/component/WXDiv;-><init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Lcom/taobao/weex/ui/action/BasicComponentData;)V

    .line 57
    return-void
.end method


# virtual methods
.method public bridge synthetic getOrCreateFlatWidget()Lcom/taobao/weex/ui/flat/widget/Widget;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXDiv;->getOrCreateFlatWidget()Lcom/taobao/weex/ui/flat/widget/WidgetGroup;

    move-result-object v0

    return-object v0
.end method

.method public getOrCreateFlatWidget()Lcom/taobao/weex/ui/flat/widget/WidgetGroup;
    .locals 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 83
    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXDiv;->mWidgetGroup:Lcom/taobao/weex/ui/flat/widget/WidgetGroup;

    if-nez v1, :cond_1

    .line 84
    new-instance v1, Lcom/taobao/weex/ui/flat/widget/WidgetGroup;

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXDiv;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/weex/WXSDKInstance;->getFlatUIContext()Lcom/taobao/weex/ui/flat/FlatGUIContext;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/taobao/weex/ui/flat/widget/WidgetGroup;-><init>(Lcom/taobao/weex/ui/flat/FlatGUIContext;)V

    iput-object v1, p0, Lcom/taobao/weex/ui/component/WXDiv;->mWidgetGroup:Lcom/taobao/weex/ui/flat/widget/WidgetGroup;

    .line 85
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXDiv;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 86
    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/component/WXDiv;->createChildViewAt(I)V

    .line 85
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 88
    :cond_0
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXDiv;->mountFlatGUI()V

    .line 90
    .end local v0    # "i":I
    :cond_1
    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXDiv;->mWidgetGroup:Lcom/taobao/weex/ui/flat/widget/WidgetGroup;

    return-object v1
.end method

.method protected bridge synthetic initComponentHostView(Landroid/content/Context;)Landroid/view/View;
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 43
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/WXDiv;->initComponentHostView(Landroid/content/Context;)Lcom/taobao/weex/ui/view/WXFrameLayout;

    move-result-object v0

    return-object v0
.end method

.method protected initComponentHostView(Landroid/content/Context;)Lcom/taobao/weex/ui/view/WXFrameLayout;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 65
    new-instance v0, Lcom/taobao/weex/ui/view/WXFrameLayout;

    invoke-direct {v0, p1}, Lcom/taobao/weex/ui/view/WXFrameLayout;-><init>(Landroid/content/Context;)V

    .line 66
    .local v0, "frameLayout":Lcom/taobao/weex/ui/view/WXFrameLayout;
    invoke-virtual {v0, p0}, Lcom/taobao/weex/ui/view/WXFrameLayout;->holdComponent(Lcom/taobao/weex/ui/component/WXDiv;)V

    .line 67
    return-object v0
.end method

.method public intendToBeFlatContainer()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 116
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXDiv;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getFlatUIContext()Lcom/taobao/weex/ui/flat/FlatGUIContext;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/taobao/weex/ui/flat/FlatGUIContext;->isFlatUIEnabled(Lcom/taobao/weex/ui/component/WXComponent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/taobao/weex/ui/component/WXDiv;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVirtualComponent()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x1

    .line 121
    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/component/WXDiv;->promoteToView(Z)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected mountFlatGUI()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 95
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXDiv;->widgets:Ljava/util/List;

    if-nez v0, :cond_0

    .line 96
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/ui/component/WXDiv;->widgets:Ljava/util/List;

    .line 98
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/component/WXDiv;->promoteToView(Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 99
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXDiv;->getHostView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 100
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXDiv;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/WXFrameLayout;

    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXDiv;->widgets:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/taobao/weex/ui/view/WXFrameLayout;->mountFlatGUI(Ljava/util/List;)V

    .line 105
    :cond_1
    :goto_0
    return-void

    .line 103
    :cond_2
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXDiv;->mWidgetGroup:Lcom/taobao/weex/ui/flat/widget/WidgetGroup;

    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXDiv;->widgets:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/taobao/weex/ui/flat/widget/WidgetGroup;->replaceAll(Ljava/util/List;)V

    goto :goto_0
.end method

.method public promoteToView(Z)Z
    .locals 2
    .param p1, "checkAncestor"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXDiv;->intendToBeFlatContainer()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXDiv;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getFlatUIContext()Lcom/taobao/weex/ui/flat/FlatGUIContext;

    move-result-object v0

    const-class v1, Lcom/taobao/weex/ui/component/WXDiv;

    invoke-virtual {v0, p0, p1, v1}, Lcom/taobao/weex/ui/flat/FlatGUIContext;->promoteToView(Lcom/taobao/weex/ui/component/WXComponent;ZLjava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public unmountFlatGUI()V
    .locals 1

    .prologue
    .line 109
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXDiv;->getHostView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 110
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXDiv;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/WXFrameLayout;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/WXFrameLayout;->unmountFlatGUI()V

    .line 112
    :cond_0
    return-void
.end method
