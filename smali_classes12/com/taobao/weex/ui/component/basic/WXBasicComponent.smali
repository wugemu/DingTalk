.class public abstract Lcom/taobao/weex/ui/component/basic/WXBasicComponent;
.super Ljava/lang/Object;
.source "WXBasicComponent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/View;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mBasicComponentData:Lcom/taobao/weex/ui/action/BasicComponentData;

.field private mComponentType:Ljava/lang/String;

.field private mExtra:Ljava/lang/Object;

.field private mLayoutPosition:Lcom/taobao/weex/ui/action/GraphicPosition;

.field private mLayoutSize:Lcom/taobao/weex/ui/action/GraphicSize;

.field private mRef:Ljava/lang/String;

.field private mViewPortWidth:I


# direct methods
.method public constructor <init>(Lcom/taobao/weex/ui/action/BasicComponentData;)V
    .locals 1
    .param p1, "basicComponentData"    # Lcom/taobao/weex/ui/action/BasicComponentData;

    .prologue
    .line 46
    .local p0, "this":Lcom/taobao/weex/ui/component/basic/WXBasicComponent;, "Lcom/taobao/weex/ui/component/basic/WXBasicComponent<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/16 v0, 0x2ee

    iput v0, p0, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->mViewPortWidth:I

    .line 47
    iput-object p1, p0, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->mBasicComponentData:Lcom/taobao/weex/ui/action/BasicComponentData;

    .line 48
    iget-object v0, p1, Lcom/taobao/weex/ui/action/BasicComponentData;->mRef:Ljava/lang/String;

    iput-object v0, p0, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->mRef:Ljava/lang/String;

    .line 49
    iget-object v0, p1, Lcom/taobao/weex/ui/action/BasicComponentData;->mComponentType:Ljava/lang/String;

    iput-object v0, p0, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->mComponentType:Ljava/lang/String;

    .line 50
    return-void
.end method


# virtual methods
.method public final addAttr(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 113
    .local p0, "this":Lcom/taobao/weex/ui/component/basic/WXBasicComponent;, "Lcom/taobao/weex/ui/component/basic/WXBasicComponent<TT;>;"
    .local p1, "attrs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 117
    :cond_0
    :goto_0
    return-void

    .line 116
    :cond_1
    iget-object v0, p0, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->mBasicComponentData:Lcom/taobao/weex/ui/action/BasicComponentData;

    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/action/BasicComponentData;->addAttr(Ljava/util/Map;)V

    goto :goto_0
.end method

.method public final addEvent(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 141
    .local p0, "this":Lcom/taobao/weex/ui/component/basic/WXBasicComponent;, "Lcom/taobao/weex/ui/component/basic/WXBasicComponent<TT;>;"
    .local p1, "events":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 146
    :cond_0
    :goto_0
    return-void

    .line 145
    :cond_1
    iget-object v0, p0, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->mBasicComponentData:Lcom/taobao/weex/ui/action/BasicComponentData;

    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/action/BasicComponentData;->addEvent(Ljava/util/Set;)V

    goto :goto_0
.end method

.method public final addShorthand(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 149
    .local p0, "this":Lcom/taobao/weex/ui/component/basic/WXBasicComponent;, "Lcom/taobao/weex/ui/component/basic/WXBasicComponent<TT;>;"
    .local p1, "shorthand":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->mBasicComponentData:Lcom/taobao/weex/ui/action/BasicComponentData;

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->mBasicComponentData:Lcom/taobao/weex/ui/action/BasicComponentData;

    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/action/BasicComponentData;->addShorthand(Ljava/util/Map;)V

    .line 152
    :cond_0
    return-void
.end method

.method public final addStyle(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 120
    .local p0, "this":Lcom/taobao/weex/ui/component/basic/WXBasicComponent;, "Lcom/taobao/weex/ui/component/basic/WXBasicComponent<TT;>;"
    .local p1, "styles":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 124
    :cond_0
    :goto_0
    return-void

    .line 123
    :cond_1
    iget-object v0, p0, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->mBasicComponentData:Lcom/taobao/weex/ui/action/BasicComponentData;

    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/action/BasicComponentData;->addStyle(Ljava/util/Map;)V

    goto :goto_0
.end method

.method public final addStyle(Ljava/util/Map;Z)V
    .locals 1
    .param p2, "byPesudo"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 127
    .local p0, "this":Lcom/taobao/weex/ui/component/basic/WXBasicComponent;, "Lcom/taobao/weex/ui/component/basic/WXBasicComponent<TT;>;"
    .local p1, "styles":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 131
    :cond_0
    :goto_0
    return-void

    .line 130
    :cond_1
    iget-object v0, p0, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->mBasicComponentData:Lcom/taobao/weex/ui/action/BasicComponentData;

    invoke-virtual {v0, p1, p2}, Lcom/taobao/weex/ui/action/BasicComponentData;->addStyle(Ljava/util/Map;Z)V

    goto :goto_0
.end method

.method public bindComponent(Lcom/taobao/weex/ui/component/WXComponent;)V
    .locals 1
    .param p1, "component"    # Lcom/taobao/weex/ui/component/WXComponent;

    .prologue
    .line 57
    .local p0, "this":Lcom/taobao/weex/ui/component/basic/WXBasicComponent;, "Lcom/taobao/weex/ui/component/basic/WXBasicComponent<TT;>;"
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getComponentType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->mComponentType:Ljava/lang/String;

    .line 58
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getRef()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->mRef:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public final getAttrs()Lcom/taobao/weex/dom/WXAttr;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 68
    .local p0, "this":Lcom/taobao/weex/ui/component/basic/WXBasicComponent;, "Lcom/taobao/weex/ui/component/basic/WXBasicComponent<TT;>;"
    iget-object v0, p0, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->mBasicComponentData:Lcom/taobao/weex/ui/action/BasicComponentData;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/action/BasicComponentData;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v0

    return-object v0
.end method

.method public getBasicComponentData()Lcom/taobao/weex/ui/action/BasicComponentData;
    .locals 1

    .prologue
    .line 53
    .local p0, "this":Lcom/taobao/weex/ui/component/basic/WXBasicComponent;, "Lcom/taobao/weex/ui/component/basic/WXBasicComponent<TT;>;"
    iget-object v0, p0, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->mBasicComponentData:Lcom/taobao/weex/ui/action/BasicComponentData;

    return-object v0
.end method

.method public getBorder()Lcom/taobao/weex/dom/CSSShorthand;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 97
    .local p0, "this":Lcom/taobao/weex/ui/component/basic/WXBasicComponent;, "Lcom/taobao/weex/ui/component/basic/WXBasicComponent<TT;>;"
    iget-object v0, p0, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->mBasicComponentData:Lcom/taobao/weex/ui/action/BasicComponentData;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/action/BasicComponentData;->getBorder()Lcom/taobao/weex/dom/CSSShorthand;

    move-result-object v0

    return-object v0
.end method

.method public getCSSLayoutBottom()F
    .locals 1

    .prologue
    .line 205
    .local p0, "this":Lcom/taobao/weex/ui/component/basic/WXBasicComponent;, "Lcom/taobao/weex/ui/component/basic/WXBasicComponent<TT;>;"
    iget-object v0, p0, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->mLayoutPosition:Lcom/taobao/weex/ui/action/GraphicPosition;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->mLayoutPosition:Lcom/taobao/weex/ui/action/GraphicPosition;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/action/GraphicPosition;->getBottom()F

    move-result v0

    goto :goto_0
.end method

.method public getCSSLayoutLeft()F
    .locals 1

    .prologue
    .line 209
    .local p0, "this":Lcom/taobao/weex/ui/component/basic/WXBasicComponent;, "Lcom/taobao/weex/ui/component/basic/WXBasicComponent<TT;>;"
    iget-object v0, p0, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->mLayoutPosition:Lcom/taobao/weex/ui/action/GraphicPosition;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->mLayoutPosition:Lcom/taobao/weex/ui/action/GraphicPosition;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/action/GraphicPosition;->getLeft()F

    move-result v0

    goto :goto_0
.end method

.method public getCSSLayoutRight()F
    .locals 1

    .prologue
    .line 213
    .local p0, "this":Lcom/taobao/weex/ui/component/basic/WXBasicComponent;, "Lcom/taobao/weex/ui/component/basic/WXBasicComponent<TT;>;"
    iget-object v0, p0, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->mLayoutPosition:Lcom/taobao/weex/ui/action/GraphicPosition;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->mLayoutPosition:Lcom/taobao/weex/ui/action/GraphicPosition;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/action/GraphicPosition;->getRight()F

    move-result v0

    goto :goto_0
.end method

.method public getCSSLayoutTop()F
    .locals 1

    .prologue
    .line 201
    .local p0, "this":Lcom/taobao/weex/ui/component/basic/WXBasicComponent;, "Lcom/taobao/weex/ui/component/basic/WXBasicComponent<TT;>;"
    iget-object v0, p0, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->mLayoutPosition:Lcom/taobao/weex/ui/action/GraphicPosition;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->mLayoutPosition:Lcom/taobao/weex/ui/action/GraphicPosition;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/action/GraphicPosition;->getTop()F

    move-result v0

    goto :goto_0
.end method

.method public getComponentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 171
    .local p0, "this":Lcom/taobao/weex/ui/component/basic/WXBasicComponent;, "Lcom/taobao/weex/ui/component/basic/WXBasicComponent<TT;>;"
    iget-object v0, p0, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->mComponentType:Ljava/lang/String;

    return-object v0
.end method

.method public final getEvents()Lcom/taobao/weex/dom/WXEvent;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 73
    .local p0, "this":Lcom/taobao/weex/ui/component/basic/WXBasicComponent;, "Lcom/taobao/weex/ui/component/basic/WXBasicComponent<TT;>;"
    iget-object v0, p0, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->mBasicComponentData:Lcom/taobao/weex/ui/action/BasicComponentData;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/action/BasicComponentData;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object v0

    return-object v0
.end method

.method public getExtra()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 163
    .local p0, "this":Lcom/taobao/weex/ui/component/basic/WXBasicComponent;, "Lcom/taobao/weex/ui/component/basic/WXBasicComponent<TT;>;"
    iget-object v0, p0, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->mExtra:Ljava/lang/Object;

    return-object v0
.end method

.method public getLayoutHeight()F
    .locals 1

    .prologue
    .line 221
    .local p0, "this":Lcom/taobao/weex/ui/component/basic/WXBasicComponent;, "Lcom/taobao/weex/ui/component/basic/WXBasicComponent<TT;>;"
    iget-object v0, p0, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->mLayoutSize:Lcom/taobao/weex/ui/action/GraphicSize;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->mLayoutSize:Lcom/taobao/weex/ui/action/GraphicSize;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/action/GraphicSize;->getHeight()F

    move-result v0

    goto :goto_0
.end method

.method public getLayoutPosition()Lcom/taobao/weex/ui/action/GraphicPosition;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p0, "this":Lcom/taobao/weex/ui/component/basic/WXBasicComponent;, "Lcom/taobao/weex/ui/component/basic/WXBasicComponent<TT;>;"
    const/4 v1, 0x0

    .line 179
    iget-object v0, p0, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->mLayoutPosition:Lcom/taobao/weex/ui/action/GraphicPosition;

    if-nez v0, :cond_0

    .line 180
    new-instance v0, Lcom/taobao/weex/ui/action/GraphicPosition;

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/taobao/weex/ui/action/GraphicPosition;-><init>(FFFF)V

    iput-object v0, p0, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->mLayoutPosition:Lcom/taobao/weex/ui/action/GraphicPosition;

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->mLayoutPosition:Lcom/taobao/weex/ui/action/GraphicPosition;

    return-object v0
.end method

.method public getLayoutSize()Lcom/taobao/weex/ui/action/GraphicSize;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p0, "this":Lcom/taobao/weex/ui/component/basic/WXBasicComponent;, "Lcom/taobao/weex/ui/component/basic/WXBasicComponent<TT;>;"
    const/4 v1, 0x0

    .line 190
    iget-object v0, p0, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->mLayoutSize:Lcom/taobao/weex/ui/action/GraphicSize;

    if-nez v0, :cond_0

    .line 191
    new-instance v0, Lcom/taobao/weex/ui/action/GraphicSize;

    invoke-direct {v0, v1, v1}, Lcom/taobao/weex/ui/action/GraphicSize;-><init>(FF)V

    iput-object v0, p0, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->mLayoutSize:Lcom/taobao/weex/ui/action/GraphicSize;

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->mLayoutSize:Lcom/taobao/weex/ui/action/GraphicSize;

    return-object v0
.end method

.method public getLayoutWidth()F
    .locals 1

    .prologue
    .line 217
    .local p0, "this":Lcom/taobao/weex/ui/component/basic/WXBasicComponent;, "Lcom/taobao/weex/ui/component/basic/WXBasicComponent<TT;>;"
    iget-object v0, p0, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->mLayoutSize:Lcom/taobao/weex/ui/action/GraphicSize;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->mLayoutSize:Lcom/taobao/weex/ui/action/GraphicSize;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/action/GraphicSize;->getWidth()F

    move-result v0

    goto :goto_0
.end method

.method public final getMargin()Lcom/taobao/weex/dom/CSSShorthand;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 81
    .local p0, "this":Lcom/taobao/weex/ui/component/basic/WXBasicComponent;, "Lcom/taobao/weex/ui/component/basic/WXBasicComponent<TT;>;"
    iget-object v0, p0, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->mBasicComponentData:Lcom/taobao/weex/ui/action/BasicComponentData;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/action/BasicComponentData;->getMargin()Lcom/taobao/weex/dom/CSSShorthand;

    move-result-object v0

    return-object v0
.end method

.method public final getPadding()Lcom/taobao/weex/dom/CSSShorthand;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 89
    .local p0, "this":Lcom/taobao/weex/ui/component/basic/WXBasicComponent;, "Lcom/taobao/weex/ui/component/basic/WXBasicComponent<TT;>;"
    iget-object v0, p0, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->mBasicComponentData:Lcom/taobao/weex/ui/action/BasicComponentData;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/action/BasicComponentData;->getPadding()Lcom/taobao/weex/dom/CSSShorthand;

    move-result-object v0

    return-object v0
.end method

.method public getRef()Ljava/lang/String;
    .locals 1

    .prologue
    .line 175
    .local p0, "this":Lcom/taobao/weex/ui/component/basic/WXBasicComponent;, "Lcom/taobao/weex/ui/component/basic/WXBasicComponent<TT;>;"
    iget-object v0, p0, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->mRef:Ljava/lang/String;

    return-object v0
.end method

.method public final getStyles()Lcom/taobao/weex/dom/WXStyle;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 63
    .local p0, "this":Lcom/taobao/weex/ui/component/basic/WXBasicComponent;, "Lcom/taobao/weex/ui/component/basic/WXBasicComponent<TT;>;"
    iget-object v0, p0, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->mBasicComponentData:Lcom/taobao/weex/ui/action/BasicComponentData;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/action/BasicComponentData;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object v0

    return-object v0
.end method

.method public getViewPortWidth()I
    .locals 1

    .prologue
    .line 155
    .local p0, "this":Lcom/taobao/weex/ui/component/basic/WXBasicComponent;, "Lcom/taobao/weex/ui/component/basic/WXBasicComponent<TT;>;"
    iget v0, p0, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->mViewPortWidth:I

    return v0
.end method

.method public final setBorders(Lcom/taobao/weex/dom/CSSShorthand;)V
    .locals 1
    .param p1, "borders"    # Lcom/taobao/weex/dom/CSSShorthand;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 109
    .local p0, "this":Lcom/taobao/weex/ui/component/basic/WXBasicComponent;, "Lcom/taobao/weex/ui/component/basic/WXBasicComponent<TT;>;"
    iget-object v0, p0, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->mBasicComponentData:Lcom/taobao/weex/ui/action/BasicComponentData;

    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/action/BasicComponentData;->setBorders(Lcom/taobao/weex/dom/CSSShorthand;)V

    .line 110
    return-void
.end method

.method protected setLayoutPosition(Lcom/taobao/weex/ui/action/GraphicPosition;)V
    .locals 0
    .param p1, "mLayoutPosition"    # Lcom/taobao/weex/ui/action/GraphicPosition;

    .prologue
    .line 186
    .local p0, "this":Lcom/taobao/weex/ui/component/basic/WXBasicComponent;, "Lcom/taobao/weex/ui/component/basic/WXBasicComponent<TT;>;"
    iput-object p1, p0, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->mLayoutPosition:Lcom/taobao/weex/ui/action/GraphicPosition;

    .line 187
    return-void
.end method

.method protected setLayoutSize(Lcom/taobao/weex/ui/action/GraphicSize;)V
    .locals 0
    .param p1, "mLayoutSize"    # Lcom/taobao/weex/ui/action/GraphicSize;

    .prologue
    .line 197
    .local p0, "this":Lcom/taobao/weex/ui/component/basic/WXBasicComponent;, "Lcom/taobao/weex/ui/component/basic/WXBasicComponent<TT;>;"
    iput-object p1, p0, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->mLayoutSize:Lcom/taobao/weex/ui/action/GraphicSize;

    .line 198
    return-void
.end method

.method public final setMargins(Lcom/taobao/weex/dom/CSSShorthand;)V
    .locals 1
    .param p1, "margins"    # Lcom/taobao/weex/dom/CSSShorthand;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 101
    .local p0, "this":Lcom/taobao/weex/ui/component/basic/WXBasicComponent;, "Lcom/taobao/weex/ui/component/basic/WXBasicComponent<TT;>;"
    iget-object v0, p0, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->mBasicComponentData:Lcom/taobao/weex/ui/action/BasicComponentData;

    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/action/BasicComponentData;->setMargins(Lcom/taobao/weex/dom/CSSShorthand;)V

    .line 102
    return-void
.end method

.method public final setPaddings(Lcom/taobao/weex/dom/CSSShorthand;)V
    .locals 1
    .param p1, "paddings"    # Lcom/taobao/weex/dom/CSSShorthand;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 105
    .local p0, "this":Lcom/taobao/weex/ui/component/basic/WXBasicComponent;, "Lcom/taobao/weex/ui/component/basic/WXBasicComponent<TT;>;"
    iget-object v0, p0, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->mBasicComponentData:Lcom/taobao/weex/ui/action/BasicComponentData;

    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/action/BasicComponentData;->setPaddings(Lcom/taobao/weex/dom/CSSShorthand;)V

    .line 106
    return-void
.end method

.method public setViewPortWidth(I)V
    .locals 0
    .param p1, "mViewPortWidth"    # I

    .prologue
    .line 159
    .local p0, "this":Lcom/taobao/weex/ui/component/basic/WXBasicComponent;, "Lcom/taobao/weex/ui/component/basic/WXBasicComponent<TT;>;"
    iput p1, p0, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->mViewPortWidth:I

    .line 160
    return-void
.end method

.method public updateExtra(Ljava/lang/Object;)V
    .locals 0
    .param p1, "extra"    # Ljava/lang/Object;

    .prologue
    .line 167
    .local p0, "this":Lcom/taobao/weex/ui/component/basic/WXBasicComponent;, "Lcom/taobao/weex/ui/component/basic/WXBasicComponent<TT;>;"
    iput-object p1, p0, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->mExtra:Ljava/lang/Object;

    .line 168
    return-void
.end method

.method public final updateStyle(Ljava/util/Map;Z)V
    .locals 1
    .param p2, "byPesudo"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 134
    .local p0, "this":Lcom/taobao/weex/ui/component/basic/WXBasicComponent;, "Lcom/taobao/weex/ui/component/basic/WXBasicComponent<TT;>;"
    .local p1, "styles":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 138
    :cond_0
    :goto_0
    return-void

    .line 137
    :cond_1
    iget-object v0, p0, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->mBasicComponentData:Lcom/taobao/weex/ui/action/BasicComponentData;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/action/BasicComponentData;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/taobao/weex/dom/WXStyle;->updateStyle(Ljava/util/Map;Z)V

    goto :goto_0
.end method
