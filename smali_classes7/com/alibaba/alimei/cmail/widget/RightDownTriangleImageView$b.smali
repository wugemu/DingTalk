.class final Lcom/alibaba/alimei/cmail/widget/RightDownTriangleImageView$b;
.super Ljava/lang/Object;
.source "RightDownTriangleImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/cmail/widget/RightDownTriangleImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field private a:Landroid/graphics/Path;

.field private b:Landroid/graphics/Paint;

.field private c:Landroid/graphics/Paint;

.field private d:Landroid/graphics/Paint;

.field private e:I

.field private f:I

.field private g:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, -0x1

    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 212
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alimei/cmail/widget/RightDownTriangleImageView$b;->a:Landroid/graphics/Path;

    .line 216
    iput v1, p0, Lcom/alibaba/alimei/cmail/widget/RightDownTriangleImageView$b;->e:I

    .line 217
    iput v1, p0, Lcom/alibaba/alimei/cmail/widget/RightDownTriangleImageView$b;->f:I

    .line 218
    iput v1, p0, Lcom/alibaba/alimei/cmail/widget/RightDownTriangleImageView$b;->g:I

    .line 221
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alimei/cmail/widget/RightDownTriangleImageView$b;->c:Landroid/graphics/Paint;

    .line 222
    iget-object v0, p0, Lcom/alibaba/alimei/cmail/widget/RightDownTriangleImageView$b;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 223
    iget-object v0, p0, Lcom/alibaba/alimei/cmail/widget/RightDownTriangleImageView$b;->c:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 225
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alimei/cmail/widget/RightDownTriangleImageView$b;->b:Landroid/graphics/Paint;

    .line 226
    iget-object v0, p0, Lcom/alibaba/alimei/cmail/widget/RightDownTriangleImageView$b;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 228
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alimei/cmail/widget/RightDownTriangleImageView$b;->d:Landroid/graphics/Paint;

    .line 229
    iget-object v0, p0, Lcom/alibaba/alimei/cmail/widget/RightDownTriangleImageView$b;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 230
    iget-object v0, p0, Lcom/alibaba/alimei/cmail/widget/RightDownTriangleImageView$b;->b:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 231
    return-void
.end method
