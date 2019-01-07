.class public Lcom/alibaba/dingtalk/facebox/ui/widget/FaceMaskView;
.super Landroid/view/View;
.source "FaceMaskView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/dingtalk/facebox/ui/widget/FaceMaskView$a;
    }
.end annotation


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/dingtalk/facebox/ui/widget/FaceMaskView$a;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Landroid/graphics/Rect;

.field private c:Landroid/graphics/Path;

.field private d:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 21
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/alibaba/dingtalk/facebox/ui/widget/FaceMaskView;->b:Landroid/graphics/Rect;

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/dingtalk/facebox/ui/widget/FaceMaskView;->a:Ljava/util/List;

    .line 1039
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/dingtalk/facebox/ui/widget/FaceMaskView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/alibaba/dingtalk/facebox/ui/widget/FaceMaskView;->b:Landroid/graphics/Rect;

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/dingtalk/facebox/ui/widget/FaceMaskView;->a:Ljava/util/List;

    .line 2039
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/dingtalk/facebox/ui/widget/FaceMaskView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 36
    return-void
.end method

.method private a(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 62
    iget v0, p0, Lcom/alibaba/dingtalk/facebox/ui/widget/FaceMaskView;->d:I

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 63
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 44
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 46
    iget-object v1, p0, Lcom/alibaba/dingtalk/facebox/ui/widget/FaceMaskView;->c:Landroid/graphics/Path;

    if-eqz v1, :cond_0

    .line 47
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 48
    iget-object v1, p0, Lcom/alibaba/dingtalk/facebox/ui/widget/FaceMaskView;->c:Landroid/graphics/Path;

    sget-object v2, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 49
    iget-object v1, p0, Lcom/alibaba/dingtalk/facebox/ui/widget/FaceMaskView;->b:Landroid/graphics/Rect;

    invoke-virtual {p0, v1}, Lcom/alibaba/dingtalk/facebox/ui/widget/FaceMaskView;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    .line 50
    invoke-direct {p0, p1}, Lcom/alibaba/dingtalk/facebox/ui/widget/FaceMaskView;->a(Landroid/graphics/Canvas;)V

    .line 51
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 56
    :goto_0
    iget-object v1, p0, Lcom/alibaba/dingtalk/facebox/ui/widget/FaceMaskView;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/facebox/ui/widget/FaceMaskView$a;

    .line 57
    .local v0, "drawer":Lcom/alibaba/dingtalk/facebox/ui/widget/FaceMaskView$a;
    invoke-interface {v0, p1}, Lcom/alibaba/dingtalk/facebox/ui/widget/FaceMaskView$a;->a(Landroid/graphics/Canvas;)V

    goto :goto_1

    .line 53
    .end local v0    # "drawer":Lcom/alibaba/dingtalk/facebox/ui/widget/FaceMaskView$a;
    :cond_0
    invoke-direct {p0, p1}, Lcom/alibaba/dingtalk/facebox/ui/widget/FaceMaskView;->a(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 59
    :cond_1
    return-void
.end method

.method public setClipPath(Landroid/graphics/Path;)V
    .locals 0
    .param p1, "path"    # Landroid/graphics/Path;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/alibaba/dingtalk/facebox/ui/widget/FaceMaskView;->c:Landroid/graphics/Path;

    .line 72
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/facebox/ui/widget/FaceMaskView;->invalidate()V

    .line 73
    return-void
.end method

.method public setSceneColor(I)V
    .locals 0
    .param p1, "sceneColor"    # I

    .prologue
    .line 66
    iput p1, p0, Lcom/alibaba/dingtalk/facebox/ui/widget/FaceMaskView;->d:I

    .line 67
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/facebox/ui/widget/FaceMaskView;->invalidate()V

    .line 68
    return-void
.end method
