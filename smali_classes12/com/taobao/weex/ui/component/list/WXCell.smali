.class public Lcom/taobao/weex/ui/component/list/WXCell;
.super Lcom/taobao/weex/ui/flat/WidgetContainer;
.source "WXCell.java"


# annotations
.annotation runtime Lcom/taobao/weex/annotation/Component;
    lazyload = false
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/weex/ui/component/list/WXCell$CellAppendTreeListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/taobao/weex/ui/flat/WidgetContainer",
        "<",
        "Lcom/taobao/weex/ui/view/WXFrameLayout;",
        ">;"
    }
.end annotation


# instance fields
.field private cellAppendTreeListener:Lcom/taobao/weex/ui/component/list/WXCell$CellAppendTreeListener;

.field private isAppendTreeDone:Z

.field private isSourceUsed:Z

.field private mFlatUIEnabled:Z

.field private mHeadView:Landroid/view/View;

.field private mLastLocationY:I

.field private mRealView:Landroid/view/ViewGroup;

.field private mScrollPosition:I

.field private mTempStickyView:Landroid/view/View;

.field private renderData:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Ljava/lang/String;ZLcom/taobao/weex/ui/action/BasicComponentData;)V
    .locals 2
    .param p1, "instance"    # Lcom/taobao/weex/WXSDKInstance;
    .param p2, "parent"    # Lcom/taobao/weex/ui/component/WXVContainer;
    .param p3, "instanceId"    # Ljava/lang/String;
    .param p4, "isLazy"    # Z
    .param p5, "basicComponentData"    # Lcom/taobao/weex/ui/action/BasicComponentData;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 72
    invoke-direct {p0, p1, p2, p5}, Lcom/taobao/weex/ui/flat/WidgetContainer;-><init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Lcom/taobao/weex/ui/action/BasicComponentData;)V

    .line 52
    iput v1, p0, Lcom/taobao/weex/ui/component/list/WXCell;->mLastLocationY:I

    .line 58
    const/4 v0, -0x1

    iput v0, p0, Lcom/taobao/weex/ui/component/list/WXCell;->mScrollPosition:I

    .line 59
    iput-boolean v1, p0, Lcom/taobao/weex/ui/component/list/WXCell;->mFlatUIEnabled:Z

    .line 64
    iput-boolean v1, p0, Lcom/taobao/weex/ui/component/list/WXCell;->isSourceUsed:Z

    .line 73
    return-void
.end method

.method public constructor <init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;ZLcom/taobao/weex/ui/action/BasicComponentData;)V
    .locals 4
    .param p1, "instance"    # Lcom/taobao/weex/WXSDKInstance;
    .param p2, "parent"    # Lcom/taobao/weex/ui/component/WXVContainer;
    .param p3, "isLazy"    # Z
    .param p4, "basicComponentData"    # Lcom/taobao/weex/ui/action/BasicComponentData;

    .prologue
    const/4 v3, 0x0

    .line 76
    invoke-direct {p0, p1, p2, p4}, Lcom/taobao/weex/ui/flat/WidgetContainer;-><init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Lcom/taobao/weex/ui/action/BasicComponentData;)V

    .line 52
    iput v3, p0, Lcom/taobao/weex/ui/component/list/WXCell;->mLastLocationY:I

    .line 58
    const/4 v2, -0x1

    iput v2, p0, Lcom/taobao/weex/ui/component/list/WXCell;->mScrollPosition:I

    .line 59
    iput-boolean v3, p0, Lcom/taobao/weex/ui/component/list/WXCell;->mFlatUIEnabled:Z

    .line 64
    iput-boolean v3, p0, Lcom/taobao/weex/ui/component/list/WXCell;->isSourceUsed:Z

    .line 77
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/taobao/weex/ui/component/list/WXCell;->lazy(Z)V

    .line 78
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-ge v2, v3, :cond_0

    .line 81
    :try_start_0
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/WXCell;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v0

    .line 82
    .local v0, "attr":Lcom/taobao/weex/dom/WXAttr;
    const-string/jumbo v2, "flat"

    invoke-virtual {v0, v2}, Lcom/taobao/weex/dom/WXAttr;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 83
    const-string/jumbo v2, "flat"

    invoke-virtual {v0, v2}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/taobao/weex/utils/WXUtils;->getBoolean(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, p0, Lcom/taobao/weex/ui/component/list/WXCell;->mFlatUIEnabled:Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    .end local v0    # "attr":Lcom/taobao/weex/dom/WXAttr;
    :cond_0
    :goto_0
    return-void

    .line 85
    :catch_0
    move-exception v1

    .line 86
    .local v1, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v2, "Cell"

    invoke-static {v1}, Lcom/taobao/weex/utils/WXLogUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public appendTreeCreateFinish()V
    .locals 1

    .prologue
    .line 241
    invoke-super {p0}, Lcom/taobao/weex/ui/flat/WidgetContainer;->appendTreeCreateFinish()V

    .line 242
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/taobao/weex/ui/component/list/WXCell;->isAppendTreeDone:Z

    .line 243
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/WXCell;->cellAppendTreeListener:Lcom/taobao/weex/ui/component/list/WXCell$CellAppendTreeListener;

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/WXCell;->cellAppendTreeListener:Lcom/taobao/weex/ui/component/list/WXCell$CellAppendTreeListener;

    invoke-interface {v0}, Lcom/taobao/weex/ui/component/list/WXCell$CellAppendTreeListener;->onAppendTreeDone()V

    .line 246
    :cond_0
    return-void
.end method

.method public getLocationFromStart()I
    .locals 1

    .prologue
    .line 127
    iget v0, p0, Lcom/taobao/weex/ui/component/list/WXCell;->mLastLocationY:I

    return v0
.end method

.method public bridge synthetic getRealView()Landroid/view/View;
    .locals 1

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/WXCell;->getRealView()Landroid/view/ViewGroup;

    move-result-object v0

    return-object v0
.end method

.method public getRealView()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/WXCell;->mRealView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getRenderData()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/WXCell;->renderData:Ljava/lang/Object;

    return-object v0
.end method

.method public getScrollPositon()I
    .locals 1

    .prologue
    .line 139
    iget v0, p0, Lcom/taobao/weex/ui/component/list/WXCell;->mScrollPosition:I

    return v0
.end method

.method public getStickyOffset()I
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 211
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/WXCell;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v1

    const-string/jumbo v2, "stickyOffset"

    invoke-virtual {v1, v2}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 212
    const/4 v1, 0x0

    .line 215
    :goto_0
    return v1

    .line 214
    :cond_0
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/WXCell;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v1

    const-string/jumbo v2, "stickyOffset"

    invoke-virtual {v1, v2}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/taobao/weex/utils/WXUtils;->getFloat(Ljava/lang/Object;)F

    move-result v0

    .line 215
    .local v0, "offset":F
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/WXCell;->getViewPortWidth()I

    move-result v1

    invoke-static {v0, v1}, Lcom/taobao/weex/utils/WXViewUtils;->getRealPxByWidth(FI)F

    move-result v1

    float-to-int v1, v1

    goto :goto_0
.end method

.method protected bridge synthetic initComponentHostView(Landroid/content/Context;)Landroid/view/View;
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 48
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/list/WXCell;->initComponentHostView(Landroid/content/Context;)Lcom/taobao/weex/ui/view/WXFrameLayout;

    move-result-object v0

    return-object v0
.end method

.method protected initComponentHostView(Landroid/content/Context;)Lcom/taobao/weex/ui/view/WXFrameLayout;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x2

    .line 107
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/WXCell;->isSticky()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 108
    new-instance v0, Lcom/taobao/weex/ui/view/WXFrameLayout;

    invoke-direct {v0, p1}, Lcom/taobao/weex/ui/view/WXFrameLayout;-><init>(Landroid/content/Context;)V

    .line 109
    .local v0, "view":Lcom/taobao/weex/ui/view/WXFrameLayout;
    new-instance v2, Lcom/taobao/weex/ui/view/WXFrameLayout;

    invoke-direct {v2, p1}, Lcom/taobao/weex/ui/view/WXFrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/taobao/weex/ui/component/list/WXCell;->mRealView:Landroid/view/ViewGroup;

    .line 110
    iget-object v2, p0, Lcom/taobao/weex/ui/component/list/WXCell;->mRealView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Lcom/taobao/weex/ui/view/WXFrameLayout;->addView(Landroid/view/View;)V

    .line 112
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/WXCell;->isFlatUIEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 113
    invoke-virtual {v0, v3, v4}, Lcom/taobao/weex/ui/view/WXFrameLayout;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_0
    move-object v1, v0

    .line 122
    .end local v0    # "view":Lcom/taobao/weex/ui/view/WXFrameLayout;
    .local v1, "view":Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 117
    .end local v1    # "view":Ljava/lang/Object;
    :cond_1
    new-instance v0, Lcom/taobao/weex/ui/view/WXFrameLayout;

    invoke-direct {v0, p1}, Lcom/taobao/weex/ui/view/WXFrameLayout;-><init>(Landroid/content/Context;)V

    .line 118
    .restart local v0    # "view":Lcom/taobao/weex/ui/view/WXFrameLayout;
    iput-object v0, p0, Lcom/taobao/weex/ui/component/list/WXCell;->mRealView:Landroid/view/ViewGroup;

    .line 119
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/WXCell;->isFlatUIEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 120
    invoke-virtual {v0, v3, v4}, Lcom/taobao/weex/ui/view/WXFrameLayout;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_2
    move-object v1, v0

    .line 122
    .restart local v1    # "view":Ljava/lang/Object;
    goto :goto_0
.end method

.method public intendToBeFlatContainer()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 207
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/WXCell;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getFlatUIContext()Lcom/taobao/weex/ui/flat/FlatGUIContext;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/taobao/weex/ui/flat/FlatGUIContext;->isFlatUIEnabled(Lcom/taobao/weex/ui/component/WXComponent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/taobao/weex/ui/component/list/WXCell;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/WXCell;->isSticky()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAppendTreeDone()Z
    .locals 1

    .prologue
    .line 236
    iget-boolean v0, p0, Lcom/taobao/weex/ui/component/list/WXCell;->isAppendTreeDone:Z

    return v0
.end method

.method public isFlatUIEnabled()Z
    .locals 1
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/taobao/weex/ui/component/list/WXCell;->mFlatUIEnabled:Z

    return v0
.end method

.method public isLazy()Z
    .locals 1

    .prologue
    .line 93
    invoke-super {p0}, Lcom/taobao/weex/ui/flat/WidgetContainer;->isLazy()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/WXCell;->isFixed()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSourceUsed()Z
    .locals 1

    .prologue
    .line 227
    iget-boolean v0, p0, Lcom/taobao/weex/ui/component/list/WXCell;->isSourceUsed:Z

    return v0
.end method

.method protected mountFlatGUI()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 190
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/WXCell;->getHostView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 191
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/WXCell;->widgets:Ljava/util/List;

    if-nez v0, :cond_0

    .line 192
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/ui/component/list/WXCell;->widgets:Ljava/util/List;

    .line 194
    :cond_0
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/WXCell;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/WXFrameLayout;

    iget-object v1, p0, Lcom/taobao/weex/ui/component/list/WXCell;->widgets:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/taobao/weex/ui/view/WXFrameLayout;->mountFlatGUI(Ljava/util/List;)V

    .line 196
    :cond_1
    return-void
.end method

.method public recoverySticky()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 168
    iget-object v1, p0, Lcom/taobao/weex/ui/component/list/WXCell;->mHeadView:Landroid/view/View;

    if-eqz v1, :cond_3

    .line 169
    iget-object v1, p0, Lcom/taobao/weex/ui/component/list/WXCell;->mHeadView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 170
    iget-object v1, p0, Lcom/taobao/weex/ui/component/list/WXCell;->mHeadView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 171
    .local v0, "params":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-lez v1, :cond_0

    .line 172
    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 175
    .end local v0    # "params":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_0
    iget-object v1, p0, Lcom/taobao/weex/ui/component/list/WXCell;->mHeadView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_1

    .line 176
    iget-object v1, p0, Lcom/taobao/weex/ui/component/list/WXCell;->mHeadView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 178
    :cond_1
    iget-object v1, p0, Lcom/taobao/weex/ui/component/list/WXCell;->mHeadView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 179
    iget-object v1, p0, Lcom/taobao/weex/ui/component/list/WXCell;->mHeadView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/taobao/weex/ui/component/list/WXCell;->mHeadView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 181
    :cond_2
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/WXCell;->getHostView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/ui/view/WXFrameLayout;

    iget-object v2, p0, Lcom/taobao/weex/ui/component/list/WXCell;->mTempStickyView:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/taobao/weex/ui/view/WXFrameLayout;->removeView(Landroid/view/View;)V

    .line 182
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/WXCell;->getHostView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/ui/view/WXFrameLayout;

    iget-object v2, p0, Lcom/taobao/weex/ui/component/list/WXCell;->mHeadView:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/taobao/weex/ui/view/WXFrameLayout;->addView(Landroid/view/View;)V

    .line 183
    iget-object v1, p0, Lcom/taobao/weex/ui/component/list/WXCell;->mHeadView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 184
    iget-object v1, p0, Lcom/taobao/weex/ui/component/list/WXCell;->mHeadView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 186
    :cond_3
    return-void
.end method

.method public removeSticky()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    .line 148
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/WXCell;->getHostView()Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/taobao/weex/ui/view/WXFrameLayout;

    invoke-virtual {v5}, Lcom/taobao/weex/ui/view/WXFrameLayout;->getChildCount()I

    move-result v5

    if-lez v5, :cond_0

    .line 149
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/WXCell;->getHostView()Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/taobao/weex/ui/view/WXFrameLayout;

    invoke-virtual {v5, v6}, Lcom/taobao/weex/ui/view/WXFrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/taobao/weex/ui/component/list/WXCell;->mHeadView:Landroid/view/View;

    .line 150
    new-array v2, v7, [I

    .line 151
    .local v2, "location":[I
    new-array v4, v7, [I

    .line 152
    .local v4, "parentLocation":[I
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/WXCell;->getHostView()Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/taobao/weex/ui/view/WXFrameLayout;

    invoke-virtual {v5, v2}, Lcom/taobao/weex/ui/view/WXFrameLayout;->getLocationOnScreen([I)V

    .line 153
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/WXCell;->getParentScroller()Lcom/taobao/weex/ui/component/Scrollable;

    move-result-object v5

    invoke-interface {v5}, Lcom/taobao/weex/ui/component/Scrollable;->getView()Landroid/view/ViewGroup;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    .line 154
    aget v5, v2, v6

    aget v6, v4, v6

    sub-int v0, v5, v6

    .line 155
    .local v0, "headerViewOffsetX":I
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/WXCell;->getParent()Lcom/taobao/weex/ui/component/WXVContainer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/taobao/weex/ui/component/WXVContainer;->getHostView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v1

    .line 156
    .local v1, "headerViewOffsetY":I
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/WXCell;->getHostView()Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/taobao/weex/ui/view/WXFrameLayout;

    iget-object v6, p0, Lcom/taobao/weex/ui/component/list/WXCell;->mHeadView:Landroid/view/View;

    invoke-virtual {v5, v6}, Lcom/taobao/weex/ui/view/WXFrameLayout;->removeView(Landroid/view/View;)V

    .line 157
    iget-object v5, p0, Lcom/taobao/weex/ui/component/list/WXCell;->mHeadView:Landroid/view/View;

    check-cast v5, Landroid/view/ViewGroup;

    iput-object v5, p0, Lcom/taobao/weex/ui/component/list/WXCell;->mRealView:Landroid/view/ViewGroup;

    .line 158
    new-instance v5, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/WXCell;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/taobao/weex/ui/component/list/WXCell;->mTempStickyView:Landroid/view/View;

    .line 159
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/WXCell;->getLayoutWidth()F

    move-result v5

    float-to-int v5, v5

    .line 160
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/WXCell;->getLayoutHeight()F

    move-result v6

    float-to-int v6, v6

    invoke-direct {v3, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 161
    .local v3, "lp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/WXCell;->getHostView()Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/taobao/weex/ui/view/WXFrameLayout;

    iget-object v6, p0, Lcom/taobao/weex/ui/component/list/WXCell;->mTempStickyView:Landroid/view/View;

    invoke-virtual {v5, v6, v3}, Lcom/taobao/weex/ui/view/WXFrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 162
    iget-object v5, p0, Lcom/taobao/weex/ui/component/list/WXCell;->mHeadView:Landroid/view/View;

    int-to-float v6, v0

    invoke-virtual {v5, v6}, Landroid/view/View;->setTranslationX(F)V

    .line 163
    iget-object v5, p0, Lcom/taobao/weex/ui/component/list/WXCell;->mHeadView:Landroid/view/View;

    int-to-float v6, v1

    invoke-virtual {v5, v6}, Landroid/view/View;->setTranslationY(F)V

    .line 165
    .end local v0    # "headerViewOffsetX":I
    .end local v1    # "headerViewOffsetY":I
    .end local v2    # "location":[I
    .end local v3    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v4    # "parentLocation":[I
    :cond_0
    return-void
.end method

.method public setCellAppendTreeListener(Lcom/taobao/weex/ui/component/list/WXCell$CellAppendTreeListener;)V
    .locals 1
    .param p1, "cellAppendTreeListener"    # Lcom/taobao/weex/ui/component/list/WXCell$CellAppendTreeListener;

    .prologue
    .line 249
    iput-object p1, p0, Lcom/taobao/weex/ui/component/list/WXCell;->cellAppendTreeListener:Lcom/taobao/weex/ui/component/list/WXCell$CellAppendTreeListener;

    .line 250
    iget-boolean v0, p0, Lcom/taobao/weex/ui/component/list/WXCell;->isAppendTreeDone:Z

    if-eqz v0, :cond_0

    .line 251
    invoke-interface {p1}, Lcom/taobao/weex/ui/component/list/WXCell$CellAppendTreeListener;->onAppendTreeDone()V

    .line 253
    :cond_0
    return-void
.end method

.method public setLocationFromStart(I)V
    .locals 0
    .param p1, "l"    # I

    .prologue
    .line 131
    iput p1, p0, Lcom/taobao/weex/ui/component/list/WXCell;->mLastLocationY:I

    .line 132
    return-void
.end method

.method public setRenderData(Ljava/lang/Object;)V
    .locals 0
    .param p1, "renderData"    # Ljava/lang/Object;

    .prologue
    .line 223
    iput-object p1, p0, Lcom/taobao/weex/ui/component/list/WXCell;->renderData:Ljava/lang/Object;

    .line 224
    return-void
.end method

.method setScrollPositon(I)V
    .locals 0
    .param p1, "pos"    # I

    .prologue
    .line 135
    iput p1, p0, Lcom/taobao/weex/ui/component/list/WXCell;->mScrollPosition:I

    .line 136
    return-void
.end method

.method public setSourceUsed(Z)V
    .locals 0
    .param p1, "sourceUsed"    # Z

    .prologue
    .line 231
    iput-boolean p1, p0, Lcom/taobao/weex/ui/component/list/WXCell;->isSourceUsed:Z

    .line 232
    return-void
.end method

.method public unmountFlatGUI()V
    .locals 1

    .prologue
    .line 200
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/WXCell;->getHostView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 201
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/WXCell;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/WXFrameLayout;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/WXFrameLayout;->unmountFlatGUI()V

    .line 203
    :cond_0
    return-void
.end method
