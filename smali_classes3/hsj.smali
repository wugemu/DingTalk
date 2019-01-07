.class public final Lhsj;
.super Ljava/lang/Object;
.source "CropAction.java"

# interfaces
.implements Lhsi;


# static fields
.field public static j:Landroid/graphics/Paint;


# instance fields
.field public a:Landroid/graphics/Bitmap;

.field public b:Landroid/graphics/Bitmap;

.field public c:F

.field public d:F

.field public e:Landroid/graphics/Rect;

.field public f:Landroid/graphics/RectF;

.field public g:Landroid/graphics/RectF;

.field public h:Landroid/graphics/RectF;

.field public i:F

.field private k:Landroid/graphics/Bitmap;

.field private l:Landroid/graphics/Canvas;

.field private m:Landroid/graphics/Bitmap;

.field private n:Landroid/graphics/Canvas;

.field private o:F

.field private p:Landroid/graphics/RectF;

.field private q:Landroid/graphics/Rect;

.field private r:Landroid/graphics/RectF;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 38
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 40
    sput-object v0, Lhsj;->j:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 41
    sget-object v0, Lhsj;->j:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 42
    return-void
.end method

.method public constructor <init>(FFLandroid/graphics/RectF;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Canvas;F)V
    .locals 5
    .param p1, "centerx"    # F
    .param p2, "centery"    # F
    .param p3, "cropRect"    # Landroid/graphics/RectF;
    .param p4, "cropBitmap"    # Landroid/graphics/Bitmap;
    .param p5, "foreBitmap"    # Landroid/graphics/Bitmap;
    .param p6, "croprCanvas"    # Landroid/graphics/Canvas;
    .param p7, "cropMasicBitmap"    # Landroid/graphics/Bitmap;
    .param p8, "behindBitmap"    # Landroid/graphics/Bitmap;
    .param p9, "cropMasicCanvas"    # Landroid/graphics/Canvas;
    .param p10, "angle"    # F

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lhsj;->o:F

    .line 46
    iput p10, p0, Lhsj;->i:F

    .line 47
    iput p1, p0, Lhsj;->c:F

    .line 48
    iput p2, p0, Lhsj;->d:F

    .line 49
    iput-object p4, p0, Lhsj;->a:Landroid/graphics/Bitmap;

    .line 50
    iput-object p5, p0, Lhsj;->k:Landroid/graphics/Bitmap;

    .line 51
    iput-object p6, p0, Lhsj;->l:Landroid/graphics/Canvas;

    .line 52
    iput-object p7, p0, Lhsj;->b:Landroid/graphics/Bitmap;

    .line 53
    iput-object p8, p0, Lhsj;->m:Landroid/graphics/Bitmap;

    .line 54
    iput-object p9, p0, Lhsj;->n:Landroid/graphics/Canvas;

    .line 55
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v0, p0, Lhsj;->f:Landroid/graphics/RectF;

    .line 56
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p3, Landroid/graphics/RectF;->left:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget v2, p3, Landroid/graphics/RectF;->top:F

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget v3, p3, Landroid/graphics/RectF;->right:F

    .line 57
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iget v4, p3, Landroid/graphics/RectF;->bottom:F

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lhsj;->e:Landroid/graphics/Rect;

    .line 58
    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 63
    sget-object v0, Lhsj;->j:Landroid/graphics/Paint;

    sget-object v1, Lhsp;->a:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 64
    iget-object v0, p0, Lhsj;->l:Landroid/graphics/Canvas;

    sget-object v1, Lhsj;->j:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    .line 65
    sget-object v0, Lhsj;->j:Landroid/graphics/Paint;

    sget-object v1, Lhsp;->b:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 67
    iget-object v0, p0, Lhsj;->l:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    .line 68
    iget-object v0, p0, Lhsj;->l:Landroid/graphics/Canvas;

    iget v1, p0, Lhsj;->i:F

    iget v2, p0, Lhsj;->c:F

    iget v3, p0, Lhsj;->d:F

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 69
    iget-object v0, p0, Lhsj;->l:Landroid/graphics/Canvas;

    iget-object v1, p0, Lhsj;->k:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lhsj;->q:Landroid/graphics/Rect;

    iget-object v3, p0, Lhsj;->r:Landroid/graphics/RectF;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 70
    iget-object v0, p0, Lhsj;->l:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    .line 1076
    sget-object v0, Lhsj;->j:Landroid/graphics/Paint;

    sget-object v1, Lhsp;->a:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 1077
    sget-object v0, Lhsj;->j:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    .line 1078
    sget-object v0, Lhsj;->j:Landroid/graphics/Paint;

    sget-object v1, Lhsp;->b:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 1080
    iget v0, p0, Lhsj;->i:F

    const/high16 v1, 0x42b40000    # 90.0f

    div-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    rem-float/2addr v0, v1

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 1081
    iget-object v0, p0, Lhsj;->a:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lhsj;->e:Landroid/graphics/Rect;

    iget-object v2, p0, Lhsj;->h:Landroid/graphics/RectF;

    invoke-virtual {p1, v0, v1, v2, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :goto_0
    return-void

    .line 1083
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1084
    iget v0, p0, Lhsj;->i:F

    neg-float v0, v0

    iget v1, p0, Lhsj;->c:F

    iget v2, p0, Lhsj;->d:F

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 1085
    iget-object v0, p0, Lhsj;->a:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lhsj;->e:Landroid/graphics/Rect;

    iget-object v2, p0, Lhsj;->g:Landroid/graphics/RectF;

    invoke-virtual {p1, v0, v1, v2, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 1086
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0
.end method

.method public final varargs a([Ljava/lang/Object;)V
    .locals 1
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 108
    const/4 v0, 0x0

    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lhsj;->o:F

    .line 109
    const/4 v0, 0x1

    aget-object v0, p1, v0

    check-cast v0, Landroid/graphics/RectF;

    iput-object v0, p0, Lhsj;->p:Landroid/graphics/RectF;

    .line 110
    const/4 v0, 0x2

    aget-object v0, p1, v0

    check-cast v0, Landroid/graphics/RectF;

    iput-object v0, p0, Lhsj;->g:Landroid/graphics/RectF;

    .line 111
    const/4 v0, 0x5

    aget-object v0, p1, v0

    check-cast v0, Landroid/graphics/RectF;

    iput-object v0, p0, Lhsj;->h:Landroid/graphics/RectF;

    .line 113
    const/4 v0, 0x3

    aget-object v0, p1, v0

    check-cast v0, Landroid/graphics/Rect;

    iput-object v0, p0, Lhsj;->q:Landroid/graphics/Rect;

    .line 114
    const/4 v0, 0x4

    aget-object v0, p1, v0

    check-cast v0, Landroid/graphics/RectF;

    iput-object v0, p0, Lhsj;->r:Landroid/graphics/RectF;

    .line 115
    return-void
.end method

.method public final varargs b([Ljava/lang/Object;)V
    .locals 6
    .param p1, "params"    # [Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 119
    const/4 v1, 0x0

    aget-object v0, p1, v1

    check-cast v0, Landroid/graphics/Canvas;

    .line 121
    .local v0, "canvas":Landroid/graphics/Canvas;
    sget-object v1, Lhsj;->j:Landroid/graphics/Paint;

    sget-object v2, Lhsp;->a:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 122
    iget-object v1, p0, Lhsj;->n:Landroid/graphics/Canvas;

    sget-object v2, Lhsj;->j:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    .line 123
    sget-object v1, Lhsj;->j:Landroid/graphics/Paint;

    sget-object v2, Lhsp;->b:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 125
    iget-object v1, p0, Lhsj;->n:Landroid/graphics/Canvas;

    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 126
    iget-object v1, p0, Lhsj;->n:Landroid/graphics/Canvas;

    iget v2, p0, Lhsj;->i:F

    iget v3, p0, Lhsj;->c:F

    iget v4, p0, Lhsj;->d:F

    invoke-virtual {v1, v2, v3, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 127
    iget-object v1, p0, Lhsj;->n:Landroid/graphics/Canvas;

    iget-object v2, p0, Lhsj;->m:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lhsj;->q:Landroid/graphics/Rect;

    iget-object v4, p0, Lhsj;->r:Landroid/graphics/RectF;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 128
    iget-object v1, p0, Lhsj;->n:Landroid/graphics/Canvas;

    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 1135
    sget-object v1, Lhsj;->j:Landroid/graphics/Paint;

    sget-object v2, Lhsp;->a:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 1136
    sget-object v1, Lhsj;->j:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    .line 1137
    sget-object v1, Lhsj;->j:Landroid/graphics/Paint;

    sget-object v2, Lhsp;->b:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 1139
    iget v1, p0, Lhsj;->i:F

    const/high16 v2, 0x42b40000    # 90.0f

    div-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    rem-float/2addr v1, v2

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    .line 1140
    iget-object v1, p0, Lhsj;->b:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lhsj;->e:Landroid/graphics/Rect;

    iget-object v3, p0, Lhsj;->h:Landroid/graphics/RectF;

    invoke-virtual {v0, v1, v2, v3, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :goto_0
    return-void

    .line 1142
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    .line 1143
    iget v1, p0, Lhsj;->i:F

    neg-float v1, v1

    iget v2, p0, Lhsj;->c:F

    iget v3, p0, Lhsj;->d:F

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 1144
    iget-object v1, p0, Lhsj;->b:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lhsj;->e:Landroid/graphics/Rect;

    iget-object v3, p0, Lhsj;->g:Landroid/graphics/RectF;

    invoke-virtual {v0, v1, v2, v3, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 1145
    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0
.end method

.method public final varargs c([Ljava/lang/Object;)V
    .locals 1
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 167
    const/4 v0, 0x0

    aget-object v0, p1, v0

    check-cast v0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView$a;

    invoke-virtual {v0, p0}, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView$a;->a(Lhsj;)V

    .line 168
    return-void
.end method
