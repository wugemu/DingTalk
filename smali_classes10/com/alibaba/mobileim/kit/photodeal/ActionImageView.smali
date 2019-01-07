.class public Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;
.super Landroid/widget/ImageView;
.source "ActionImageView.java"

# interfaces
.implements Lcom/alibaba/mobileim/kit/photodeal/widget/ColorPickBox$b;
.implements Lcom/alibaba/mobileim/kit/photodeal/widget/MasicSizePickBox$b;
.implements Lhta;
.implements Lhtb;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "AppCompatCustomView"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/mobileim/kit/photodeal/ActionImageView$a;
    }
.end annotation


# instance fields
.field private A:Landroid/graphics/RectF;

.field private B:Landroid/graphics/RectF;

.field private C:Landroid/graphics/Rect;

.field private D:Landroid/graphics/RectF;

.field private E:Landroid/graphics/RectF;

.field private F:Lhsv;

.field private G:Lhsy;

.field private H:Lhtc;

.field private I:I

.field private J:F

.field private K:Z

.field private L:Lhsh;

.field private M:Landroid/graphics/Matrix;

.field private N:[F

.field private O:Landroid/graphics/Matrix;

.field a:Lhsi;

.field b:Landroid/graphics/Canvas;

.field c:Landroid/graphics/Canvas;

.field public d:Lcom/alibaba/mobileim/kit/photodeal/NotifyLinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alibaba/mobileim/kit/photodeal/NotifyLinkedList",
            "<",
            "Lhsi;",
            ">;"
        }
    .end annotation
.end field

.field e:Z

.field f:Landroid/graphics/Bitmap;

.field g:Landroid/graphics/Bitmap;

.field h:Landroid/graphics/Bitmap;

.field public i:Landroid/graphics/Bitmap;

.field public j:Landroid/graphics/Bitmap;

.field k:F

.field l:F

.field m:F

.field n:F

.field o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lhsx;",
            ">;"
        }
    .end annotation
.end field

.field p:Landroid/graphics/Matrix;

.field q:Lcom/alibaba/mobileim/kit/photodeal/ActionImageView$a;

.field private r:Ljava/lang/String;

.field private s:I

.field private t:Landroid/graphics/Canvas;

.field private u:Landroid/graphics/Canvas;

.field private v:Landroid/graphics/Paint;

.field private w:Landroid/graphics/Paint;

.field private x:Landroid/graphics/Paint;

.field private y:Landroid/graphics/Paint;

.field private z:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 133
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 134
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 137
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 138
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v4, -0x1

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 141
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 66
    iput v1, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->s:I

    .line 75
    new-instance v0, Lcom/alibaba/mobileim/kit/photodeal/NotifyLinkedList;

    invoke-direct {v0}, Lcom/alibaba/mobileim/kit/photodeal/NotifyLinkedList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->d:Lcom/alibaba/mobileim/kit/photodeal/NotifyLinkedList;

    .line 79
    iput-boolean v1, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->e:Z

    .line 81
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->v:Landroid/graphics/Paint;

    .line 83
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->w:Landroid/graphics/Paint;

    .line 85
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->x:Landroid/graphics/Paint;

    .line 87
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->y:Landroid/graphics/Paint;

    .line 105
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->m:F

    .line 115
    iput v3, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->n:F

    .line 121
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->o:Ljava/util/List;

    .line 123
    iput v4, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->I:I

    .line 124
    iput v3, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->J:F

    .line 125
    iput-boolean v1, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->K:Z

    .line 308
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->p:Landroid/graphics/Matrix;

    .line 442
    new-instance v0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView$a;

    invoke-direct {v0, p0}, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView$a;-><init>(Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;)V

    iput-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->q:Lcom/alibaba/mobileim/kit/photodeal/ActionImageView$a;

    .line 490
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->M:Landroid/graphics/Matrix;

    .line 492
    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->N:[F

    .line 704
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->O:Landroid/graphics/Matrix;

    .line 1160
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->v:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1161
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->v:Landroid/graphics/Paint;

    const/high16 v1, -0x10000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1162
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->v:Landroid/graphics/Paint;

    const/high16 v1, 0x41000000    # 8.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1163
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->v:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1164
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->v:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 1168
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->w:Landroid/graphics/Paint;

    const-string/jumbo v1, "#c0c0c0"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1169
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->w:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1170
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->w:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 1171
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->w:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1172
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->w:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 1173
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->w:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 1175
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->w:Landroid/graphics/Paint;

    const/high16 v1, 0x41900000    # 18.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 2152
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->y:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 2153
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->y:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 2154
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->y:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 2155
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->y:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 2156
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->y:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 143
    return-void
.end method

.method static synthetic a(Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;)Lcom/alibaba/mobileim/kit/photodeal/NotifyLinkedList;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->d:Lcom/alibaba/mobileim/kit/photodeal/NotifyLinkedList;

    return-object v0
.end method

.method private a(Landroid/graphics/Canvas;)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 297
    iget-boolean v0, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->e:Z

    if-nez v0, :cond_1

    .line 306
    :cond_0
    :goto_0
    return-void

    .line 298
    :cond_1
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->t:Landroid/graphics/Canvas;

    if-eqz v0, :cond_0

    .line 299
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->A:Landroid/graphics/RectF;

    invoke-direct {p0, v0}, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->b(Landroid/graphics/RectF;)V

    .line 300
    iget-object v5, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->t:Landroid/graphics/Canvas;

    .line 4345
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->x:Landroid/graphics/Paint;

    sget-object v1, Lhsp;->a:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 4346
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->x:Landroid/graphics/Paint;

    invoke-virtual {v5, v0}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    .line 4347
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->x:Landroid/graphics/Paint;

    sget-object v1, Lhsp;->b:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 4349
    invoke-virtual {v5}, Landroid/graphics/Canvas;->save()I

    .line 4351
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->t:Landroid/graphics/Canvas;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRGB(III)V

    .line 4352
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->t:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->h:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->B:Landroid/graphics/RectF;

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 4353
    invoke-virtual {v5}, Landroid/graphics/Canvas;->restore()V

    .line 4357
    const/4 v0, 0x0

    .line 4358
    iget-object v1, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->d:Lcom/alibaba/mobileim/kit/photodeal/NotifyLinkedList;

    invoke-virtual {v1}, Lcom/alibaba/mobileim/kit/photodeal/NotifyLinkedList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_1
    if-ltz v1, :cond_11

    .line 4359
    iget-object v2, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->d:Lcom/alibaba/mobileim/kit/photodeal/NotifyLinkedList;

    invoke-virtual {v2, v1}, Lcom/alibaba/mobileim/kit/photodeal/NotifyLinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lhsm;

    if-eqz v2, :cond_2

    .line 4360
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->d:Lcom/alibaba/mobileim/kit/photodeal/NotifyLinkedList;

    invoke-virtual {v0, v1}, Lcom/alibaba/mobileim/kit/photodeal/NotifyLinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhsm;

    move-object v2, v0

    .line 4365
    :goto_2
    const/4 v3, 0x0

    .line 4366
    const/4 v0, 0x0

    .line 4368
    iget-object v1, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->q:Lcom/alibaba/mobileim/kit/photodeal/ActionImageView$a;

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->q:Lcom/alibaba/mobileim/kit/photodeal/ActionImageView$a;

    iget-object v1, v1, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView$a;->b:Lhsj;

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->d:Lcom/alibaba/mobileim/kit/photodeal/NotifyLinkedList;

    iget-object v4, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->q:Lcom/alibaba/mobileim/kit/photodeal/ActionImageView$a;

    iget-object v4, v4, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView$a;->b:Lhsj;

    invoke-virtual {v1, v4}, Lcom/alibaba/mobileim/kit/photodeal/NotifyLinkedList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 4369
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->d:Lcom/alibaba/mobileim/kit/photodeal/NotifyLinkedList;

    iget-object v1, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->q:Lcom/alibaba/mobileim/kit/photodeal/ActionImageView$a;

    iget-object v1, v1, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView$a;->b:Lhsj;

    invoke-virtual {v0, v1}, Lcom/alibaba/mobileim/kit/photodeal/NotifyLinkedList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 4370
    add-int/lit8 v0, v1, -0x1

    :goto_3
    if-ltz v0, :cond_f

    .line 4371
    iget-object v4, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->d:Lcom/alibaba/mobileim/kit/photodeal/NotifyLinkedList;

    invoke-virtual {v4, v0}, Lcom/alibaba/mobileim/kit/photodeal/NotifyLinkedList;->get(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lhsm;

    if-eqz v4, :cond_3

    .line 4372
    iget-object v3, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->d:Lcom/alibaba/mobileim/kit/photodeal/NotifyLinkedList;

    invoke-virtual {v3, v0}, Lcom/alibaba/mobileim/kit/photodeal/NotifyLinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhsm;

    .line 5040
    iget v0, v0, Lhsm;->a:F

    move v3, v1

    move v4, v0

    .line 4379
    :goto_4
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->d:Lcom/alibaba/mobileim/kit/photodeal/NotifyLinkedList;

    invoke-virtual {v0}, Lcom/alibaba/mobileim/kit/photodeal/NotifyLinkedList;->size()I

    move-result v0

    if-ge v3, v0, :cond_e

    .line 4380
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->d:Lcom/alibaba/mobileim/kit/photodeal/NotifyLinkedList;

    invoke-virtual {v0, v3}, Lcom/alibaba/mobileim/kit/photodeal/NotifyLinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhsi;

    .line 4381
    instance-of v1, v0, Lhsm;

    if-eqz v1, :cond_4

    .line 4382
    check-cast v0, Lhsm;

    .line 6040
    iget v4, v0, Lhsm;->a:F

    move v1, v4

    .line 4379
    :goto_5
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    move v4, v1

    goto :goto_4

    .line 4358
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 4370
    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 4386
    :cond_4
    instance-of v1, v0, Lhsn;

    if-eqz v1, :cond_5

    iget v1, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->s:I

    const/4 v6, 0x3

    if-ne v1, v6, :cond_5

    iget-object v6, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->H:Lhtc;

    move-object v1, v0

    check-cast v1, Lhsn;

    invoke-interface {v6, v1}, Lhtc;->b(Lhsn;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 4389
    :cond_5
    instance-of v1, v0, Lhsj;

    if-eqz v1, :cond_9

    move-object v1, v0

    .line 4390
    check-cast v1, Lhsj;

    .line 4391
    iget-object v6, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->q:Lcom/alibaba/mobileim/kit/photodeal/ActionImageView$a;

    iget-object v6, v6, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView$a;->b:Lhsj;

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->q:Lcom/alibaba/mobileim/kit/photodeal/ActionImageView$a;

    iget-object v6, v6, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView$a;->b:Lhsj;

    if-ne v6, v0, :cond_8

    .line 4392
    new-instance v6, Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->C:Landroid/graphics/Rect;

    invoke-direct {v6, v7}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 4393
    invoke-direct {p0, v4}, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->b(F)Landroid/graphics/RectF;

    move-result-object v7

    .line 4394
    iget-object v8, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->q:Lcom/alibaba/mobileim/kit/photodeal/ActionImageView$a;

    iget-object v8, v8, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView$a;->b:Lhsj;

    iget-object v8, v8, Lhsj;->e:Landroid/graphics/Rect;

    invoke-direct {p0, v8}, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->a(Landroid/graphics/Rect;)V

    .line 4395
    iget-object v8, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->q:Lcom/alibaba/mobileim/kit/photodeal/ActionImageView$a;

    iget-object v8, v8, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView$a;->b:Lhsj;

    const/4 v9, 0x6

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget v11, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->m:F

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    iget-object v11, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->D:Landroid/graphics/RectF;

    aput-object v11, v9, v10

    const/4 v10, 0x2

    iget-object v11, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->E:Landroid/graphics/RectF;

    aput-object v11, v9, v10

    const/4 v10, 0x3

    aput-object v6, v9, v10

    const/4 v6, 0x4

    aput-object v7, v9, v6

    const/4 v6, 0x5

    iget-object v7, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->B:Landroid/graphics/RectF;

    aput-object v7, v9, v6

    invoke-virtual {v8, v9}, Lhsj;->a([Ljava/lang/Object;)V

    .line 4396
    iget-object v6, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->q:Lcom/alibaba/mobileim/kit/photodeal/ActionImageView$a;

    iget-object v6, v6, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView$a;->b:Lhsj;

    .line 6092
    sget-object v7, Lhsj;->j:Landroid/graphics/Paint;

    sget-object v8, Lhsp;->a:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 6093
    sget-object v7, Lhsj;->j:Landroid/graphics/Paint;

    invoke-virtual {v5, v7}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    .line 6094
    sget-object v7, Lhsj;->j:Landroid/graphics/Paint;

    sget-object v8, Lhsp;->b:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 6096
    iget v7, v6, Lhsj;->i:F

    const/high16 v8, 0x42b40000    # 90.0f

    div-float/2addr v7, v8

    const/high16 v8, 0x40000000    # 2.0f

    rem-float/2addr v7, v8

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-nez v7, :cond_7

    .line 6097
    iget-object v7, v6, Lhsj;->a:Landroid/graphics/Bitmap;

    iget-object v8, v6, Lhsj;->e:Landroid/graphics/Rect;

    iget-object v6, v6, Lhsj;->h:Landroid/graphics/RectF;

    const/4 v9, 0x0

    invoke-virtual {v5, v7, v8, v6, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 4397
    :goto_6
    iget v1, v1, Lhsj;->i:F

    const/high16 v6, 0x42b40000    # 90.0f

    div-float/2addr v1, v6

    const/high16 v6, 0x40000000    # 2.0f

    rem-float/2addr v1, v6

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v6

    if-nez v1, :cond_6

    .line 4398
    new-instance v1, Landroid/graphics/RectF;

    iget-object v6, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->D:Landroid/graphics/RectF;

    invoke-direct {v1, v6}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    invoke-direct {p0, v1}, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->b(Landroid/graphics/RectF;)V

    .line 4414
    :cond_6
    :goto_7
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->q:Lcom/alibaba/mobileim/kit/photodeal/ActionImageView$a;

    aput-object v7, v1, v6

    invoke-interface {v0, v1}, Lhsi;->c([Ljava/lang/Object;)V

    move v1, v4

    .line 4415
    goto/16 :goto_5

    .line 6099
    :cond_7
    invoke-virtual {v5}, Landroid/graphics/Canvas;->save()I

    .line 6100
    iget v7, v6, Lhsj;->i:F

    neg-float v7, v7

    iget v8, v6, Lhsj;->c:F

    iget v9, v6, Lhsj;->d:F

    invoke-virtual {v5, v7, v8, v9}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 6101
    iget-object v7, v6, Lhsj;->a:Landroid/graphics/Bitmap;

    iget-object v8, v6, Lhsj;->e:Landroid/graphics/Rect;

    iget-object v6, v6, Lhsj;->g:Landroid/graphics/RectF;

    const/4 v9, 0x0

    invoke-virtual {v5, v7, v8, v6, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 6102
    invoke-virtual {v5}, Landroid/graphics/Canvas;->restore()V

    goto :goto_6

    .line 4401
    :cond_8
    new-instance v6, Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->C:Landroid/graphics/Rect;

    invoke-direct {v6, v7}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 4402
    invoke-direct {p0, v4}, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->b(F)Landroid/graphics/RectF;

    move-result-object v7

    .line 4403
    iget-object v8, v1, Lhsj;->e:Landroid/graphics/Rect;

    invoke-direct {p0, v8}, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->a(Landroid/graphics/Rect;)V

    .line 4404
    const/4 v8, 0x6

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget v10, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->m:F

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    iget-object v10, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->D:Landroid/graphics/RectF;

    aput-object v10, v8, v9

    const/4 v9, 0x2

    iget-object v10, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->E:Landroid/graphics/RectF;

    aput-object v10, v8, v9

    const/4 v9, 0x3

    aput-object v6, v8, v9

    const/4 v6, 0x4

    aput-object v7, v8, v6

    const/4 v6, 0x5

    iget-object v7, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->B:Landroid/graphics/RectF;

    aput-object v7, v8, v6

    invoke-interface {v0, v8}, Lhsi;->a([Ljava/lang/Object;)V

    .line 4405
    invoke-interface {v0, v5}, Lhsi;->a(Landroid/graphics/Canvas;)V

    .line 4410
    iget v1, v1, Lhsj;->i:F

    const/high16 v6, 0x42b40000    # 90.0f

    div-float/2addr v1, v6

    const/high16 v6, 0x40000000    # 2.0f

    rem-float/2addr v1, v6

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v6

    if-nez v1, :cond_6

    .line 4411
    new-instance v1, Landroid/graphics/RectF;

    iget-object v6, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->D:Landroid/graphics/RectF;

    invoke-direct {v1, v6}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    invoke-direct {p0, v1}, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->b(Landroid/graphics/RectF;)V

    goto :goto_7

    .line 4415
    :cond_9
    instance-of v1, v0, Lhsn;

    if-eqz v1, :cond_b

    move-object v1, v0

    .line 4416
    check-cast v1, Lhsn;

    .line 4417
    iget-object v6, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->H:Lhtc;

    invoke-interface {v6, v1}, Lhtc;->b(Lhsn;)Z

    move-result v6

    if-nez v6, :cond_a

    .line 4418
    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget v8, v1, Lhsn;->b:F

    neg-float v8, v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    iget v8, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->k:F

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    iget v8, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->l:F

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x3

    iget-object v8, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->y:Landroid/graphics/Paint;

    aput-object v8, v6, v7

    const/4 v7, 0x4

    iget v1, v1, Lhsn;->a:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v6, v7

    invoke-interface {v0, v6}, Lhsi;->a([Ljava/lang/Object;)V

    .line 4422
    :goto_8
    invoke-interface {v0, v5}, Lhsi;->a(Landroid/graphics/Canvas;)V

    move v1, v4

    .line 4429
    goto/16 :goto_5

    .line 4420
    :cond_a
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget v7, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->m:F

    neg-float v7, v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v1, v6

    const/4 v6, 0x1

    iget v7, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->k:F

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v1, v6

    const/4 v6, 0x2

    iget v7, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->l:F

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v1, v6

    const/4 v6, 0x3

    iget-object v7, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->y:Landroid/graphics/Paint;

    aput-object v7, v1, v6

    const/4 v6, 0x4

    iget v7, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->n:F

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v1, v6

    invoke-interface {v0, v1}, Lhsi;->a([Ljava/lang/Object;)V

    goto :goto_8

    .line 4430
    :cond_b
    if-eqz v2, :cond_c

    .line 4431
    invoke-virtual {v5}, Landroid/graphics/Canvas;->save()I

    .line 4432
    neg-float v1, v4

    iget v6, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->k:F

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    iget v7, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->l:F

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    invoke-virtual {v5, v1, v6, v7}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 4433
    invoke-interface {v0, v5}, Lhsi;->a(Landroid/graphics/Canvas;)V

    .line 4434
    invoke-virtual {v5}, Landroid/graphics/Canvas;->restore()V

    move v1, v4

    goto/16 :goto_5

    .line 4436
    :cond_c
    invoke-interface {v0, v5}, Lhsi;->a(Landroid/graphics/Canvas;)V

    :cond_d
    move v1, v4

    goto/16 :goto_5

    .line 302
    :cond_e
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 303
    iget v0, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->m:F

    iget v1, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->k:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iget v2, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->l:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 304
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->i:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->C:Landroid/graphics/Rect;

    invoke-direct {p0}, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->getRealCurrentScaleRectF()Landroid/graphics/RectF;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 305
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_0

    :cond_f
    move v4, v3

    move v3, v1

    goto/16 :goto_4

    :cond_10
    move v4, v3

    move v3, v0

    goto/16 :goto_4

    :cond_11
    move-object v2, v0

    goto/16 :goto_2
.end method

.method private a(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 701
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    invoke-direct {p0, v0}, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->b(Landroid/graphics/RectF;)V

    .line 702
    return-void
.end method

.method private a(Landroid/view/MotionEvent;)V
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    .line 498
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->M:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 499
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->M:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->n:F

    iget v2, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->n:F

    iget v3, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->k:F

    div-float/2addr v3, v5

    iget v4, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->l:F

    div-float/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 500
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->N:[F

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    aput v2, v0, v1

    .line 501
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->N:[F

    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    aput v2, v0, v1

    .line 502
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->M:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->N:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 503
    return-void
.end method

.method static synthetic a(Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;Landroid/graphics/Rect;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;
    .param p1, "x1"    # Landroid/graphics/Rect;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->a(Landroid/graphics/Rect;)V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;Landroid/graphics/RectF;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;
    .param p1, "x1"    # Landroid/graphics/RectF;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->b(Landroid/graphics/RectF;)V

    return-void
.end method

.method private b(F)Landroid/graphics/RectF;
    .locals 2
    .param p1, "angle"    # F

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 818
    const/high16 v0, 0x42b40000    # 90.0f

    div-float v0, p1, v0

    const/high16 v1, 0x40000000    # 2.0f

    rem-float/2addr v0, v1

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 819
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->B:Landroid/graphics/RectF;

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 821
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->E:Landroid/graphics/RectF;

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;)Landroid/graphics/RectF;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->E:Landroid/graphics/RectF;

    return-object v0
.end method

.method private b(Landroid/graphics/RectF;)V
    .locals 6
    .param p1, "rectF"    # Landroid/graphics/RectF;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    .line 693
    invoke-virtual {p0, p1}, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->a(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->B:Landroid/graphics/RectF;

    .line 694
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->B:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    float-to-int v1, v1

    iget-object v2, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->B:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    float-to-int v2, v2

    iget-object v3, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->B:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    float-to-int v3, v3

    iget-object v4, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->B:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    float-to-int v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->C:Landroid/graphics/Rect;

    .line 695
    invoke-direct {p0, p1}, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->c(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->D:Landroid/graphics/RectF;

    .line 6773
    invoke-direct {p0, p1}, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->c(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v0

    .line 6774
    iget-object v1, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->O:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 6775
    iget-object v1, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->O:Landroid/graphics/Matrix;

    iget v2, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->k:F

    div-float/2addr v2, v5

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->l:F

    div-float/2addr v3, v5

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    sub-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 6776
    iget-object v1, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->O:Landroid/graphics/Matrix;

    const/high16 v2, -0x3d4c0000    # -90.0f

    iget v3, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->k:F

    div-float/2addr v3, v5

    iget v4, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->l:F

    div-float/2addr v4, v5

    invoke-virtual {v1, v2, v3, v4}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 6777
    iget-object v1, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->O:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 696
    iput-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->E:Landroid/graphics/RectF;

    .line 697
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->B:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-direct {p0}, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->getCurrentScaleRectF()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->n:F

    .line 698
    return-void
.end method

.method private c(Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 11
    .param p1, "rectF"    # Landroid/graphics/RectF;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v10, 0x0

    const/high16 v9, 0x40000000    # 2.0f

    .line 741
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, p1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 742
    .local v1, "rf":Landroid/graphics/RectF;
    iget v5, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->k:F

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v6

    div-float v4, v5, v6

    .line 743
    .local v4, "scaleW":F
    iget v5, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->l:F

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v6

    div-float v3, v5, v6

    .line 744
    .local v3, "scaleH":F
    cmpg-float v5, v4, v3

    if-gez v5, :cond_0

    move v2, v4

    .line 746
    .local v2, "scale":F
    :goto_0
    iget-object v5, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->O:Landroid/graphics/Matrix;

    invoke-virtual {v5}, Landroid/graphics/Matrix;->reset()V

    .line 747
    iget-object v5, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->O:Landroid/graphics/Matrix;

    iget v6, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->k:F

    div-float/2addr v6, v9

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v7

    sub-float/2addr v6, v7

    iget v7, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->l:F

    div-float/2addr v7, v9

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v8

    sub-float/2addr v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 748
    iget-object v5, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->O:Landroid/graphics/Matrix;

    const/high16 v6, 0x42b40000    # 90.0f

    iget v7, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->k:F

    div-float/2addr v7, v9

    iget v8, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->l:F

    div-float/2addr v8, v9

    invoke-virtual {v5, v6, v7, v8}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 749
    iget-object v5, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->O:Landroid/graphics/Matrix;

    iget v6, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->k:F

    div-float/2addr v6, v9

    iget v7, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->l:F

    div-float/2addr v7, v9

    invoke-virtual {v5, v2, v2, v6, v7}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 750
    iget-object v5, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->O:Landroid/graphics/Matrix;

    invoke-virtual {v5, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 752
    cmpg-float v5, v4, v3

    if-gez v5, :cond_1

    .line 754
    iget v5, v1, Landroid/graphics/RectF;->left:F

    neg-float v0, v5

    .line 755
    .local v0, "del":F
    iput v10, v1, Landroid/graphics/RectF;->left:F

    .line 756
    iget v5, v1, Landroid/graphics/RectF;->right:F

    add-float/2addr v5, v0

    iput v5, v1, Landroid/graphics/RectF;->right:F

    .line 763
    :goto_1
    return-object v1

    .end local v0    # "del":F
    .end local v2    # "scale":F
    :cond_0
    move v2, v3

    .line 744
    goto :goto_0

    .line 759
    .restart local v2    # "scale":F
    :cond_1
    iget v5, v1, Landroid/graphics/RectF;->top:F

    neg-float v0, v5

    .line 760
    .restart local v0    # "del":F
    iput v10, v1, Landroid/graphics/RectF;->top:F

    .line 761
    iget v5, v1, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v5, v0

    iput v5, v1, Landroid/graphics/RectF;->bottom:F

    goto :goto_1
.end method

.method static synthetic c(Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;)Landroid/graphics/RectF;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->B:Landroid/graphics/RectF;

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;)Lhsy;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->G:Lhsy;

    return-object v0
.end method

.method static synthetic e(Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;)Lhsv;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->F:Lhsv;

    return-object v0
.end method

.method static synthetic f(Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;)Landroid/graphics/RectF;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->D:Landroid/graphics/RectF;

    return-object v0
.end method

.method static synthetic g(Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;)Landroid/graphics/RectF;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->A:Landroid/graphics/RectF;

    return-object v0
.end method

.method private getCurrentRotateRect()Landroid/graphics/Rect;
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 802
    iget v0, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->m:F

    const/high16 v1, 0x42b40000    # 90.0f

    div-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    rem-float/2addr v0, v1

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 803
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->B:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    float-to-int v1, v1

    iget-object v2, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->B:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    float-to-int v2, v2

    iget-object v3, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->B:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    float-to-int v3, v3

    iget-object v4, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->B:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    float-to-int v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 805
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->D:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    float-to-int v1, v1

    iget-object v2, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->D:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    float-to-int v2, v2

    iget-object v3, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->D:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    float-to-int v3, v3

    iget-object v4, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->D:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    float-to-int v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0
.end method

.method private getCurrentScaleRect()Landroid/graphics/Rect;
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 826
    iget v0, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->m:F

    const/high16 v1, 0x42b40000    # 90.0f

    div-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    rem-float/2addr v0, v1

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 827
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->B:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    float-to-int v1, v1

    iget-object v2, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->B:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    float-to-int v2, v2

    iget-object v3, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->B:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    float-to-int v3, v3

    iget-object v4, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->B:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    float-to-int v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 829
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->E:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    float-to-int v1, v1

    iget-object v2, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->E:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    float-to-int v2, v2

    iget-object v3, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->E:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    float-to-int v3, v3

    iget-object v4, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->E:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    float-to-int v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0
.end method

.method private getCurrentScaleRectF()Landroid/graphics/RectF;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 810
    iget v0, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->m:F

    const/high16 v1, 0x42b40000    # 90.0f

    div-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    rem-float/2addr v0, v1

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 811
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->B:Landroid/graphics/RectF;

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 813
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->E:Landroid/graphics/RectF;

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    goto :goto_0
.end method

.method private getRealCurrentScaleRectF()Landroid/graphics/RectF;
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const v4, 0x3f669595

    .line 313
    invoke-direct {p0}, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->getCurrentScaleRectF()Landroid/graphics/RectF;

    move-result-object v0

    .line 314
    .local v0, "rectF":Landroid/graphics/RectF;
    iget-boolean v1, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->K:Z

    if-nez v1, :cond_0

    .line 318
    :goto_0
    return-object v0

    .line 315
    :cond_0
    iget-object v1, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->p:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 316
    iget-object v1, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->p:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 317
    iget-object v1, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->p:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    goto :goto_0
.end method

.method static synthetic h(Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->o:Ljava/util/List;

    return-object v0
.end method

.method static synthetic i(Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;)Lcom/alibaba/mobileim/kit/photodeal/ActionImageView$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->q:Lcom/alibaba/mobileim/kit/photodeal/ActionImageView$a;

    return-object v0
.end method


# virtual methods
.method public final a()Landroid/graphics/RectF;
    .locals 1

    .prologue
    .line 446
    invoke-virtual {p0}, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->getCurrentRotateRectF()Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method a(Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 11
    .param p1, "rectF"    # Landroid/graphics/RectF;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v10, 0x0

    const/high16 v9, 0x40000000    # 2.0f

    .line 711
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, p1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 712
    .local v1, "rf":Landroid/graphics/RectF;
    iget v5, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->k:F

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v6

    div-float v4, v5, v6

    .line 713
    .local v4, "scaleW":F
    iget v5, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->l:F

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v6

    div-float v3, v5, v6

    .line 714
    .local v3, "scaleH":F
    cmpg-float v5, v4, v3

    if-gez v5, :cond_0

    move v2, v4

    .line 716
    .local v2, "scale":F
    :goto_0
    iget-object v5, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->O:Landroid/graphics/Matrix;

    invoke-virtual {v5}, Landroid/graphics/Matrix;->reset()V

    .line 717
    iget-object v5, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->O:Landroid/graphics/Matrix;

    iget v6, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->k:F

    div-float/2addr v6, v9

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v7

    sub-float/2addr v6, v7

    iget v7, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->l:F

    div-float/2addr v7, v9

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v8

    sub-float/2addr v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 718
    iget-object v5, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->O:Landroid/graphics/Matrix;

    iget v6, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->k:F

    div-float/2addr v6, v9

    iget v7, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->l:F

    div-float/2addr v7, v9

    invoke-virtual {v5, v2, v2, v6, v7}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 719
    iget-object v5, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->O:Landroid/graphics/Matrix;

    invoke-virtual {v5, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 721
    cmpg-float v5, v4, v3

    if-gez v5, :cond_1

    .line 723
    iget v5, v1, Landroid/graphics/RectF;->left:F

    neg-float v0, v5

    .line 724
    .local v0, "del":F
    iput v10, v1, Landroid/graphics/RectF;->left:F

    .line 725
    iget v5, v1, Landroid/graphics/RectF;->right:F

    add-float/2addr v5, v0

    iput v5, v1, Landroid/graphics/RectF;->right:F

    .line 732
    :goto_1
    return-object v1

    .end local v0    # "del":F
    .end local v2    # "scale":F
    :cond_0
    move v2, v3

    .line 714
    goto :goto_0

    .line 728
    .restart local v2    # "scale":F
    :cond_1
    iget v5, v1, Landroid/graphics/RectF;->top:F

    neg-float v0, v5

    .line 729
    .restart local v0    # "del":F
    iput v10, v1, Landroid/graphics/RectF;->top:F

    .line 730
    iget v5, v1, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v5, v0

    iput v5, v1, Landroid/graphics/RectF;->bottom:F

    goto :goto_1
.end method

.method public final a(F)V
    .locals 0
    .param p1, "size"    # F

    .prologue
    .line 458
    iput p1, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->J:F

    .line 459
    return-void
.end method

.method public final a(FLhsm$a;Lhsy;)V
    .locals 3
    .param p1, "angle"    # F
    .param p2, "rotateActionBackListener"    # Lhsm$a;
    .param p3, "rotateActionListener"    # Lhsy;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 630
    new-instance v1, Lhsm;

    invoke-direct {v1, p1, p2}, Lhsm;-><init>(FLhsm$a;)V

    iput-object v1, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->a:Lhsi;

    .line 631
    iput-object p3, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->G:Lhsy;

    .line 633
    const/high16 v1, 0x42b40000    # 90.0f

    div-float v1, p1, v1

    const/high16 v2, 0x40000000    # 2.0f

    rem-float/2addr v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    .line 634
    iget-object v1, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->E:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget-object v2, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->B:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    div-float v0, v1, v2

    .line 638
    .local v0, "nextNormalRectF2scaleRectF":F
    :goto_0
    iget-object v1, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->G:Lhsy;

    iget v2, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->m:F

    sub-float v2, p1, v2

    invoke-interface {v1, v2, v0}, Lhsy;->b(FF)V

    .line 639
    iput p1, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->m:F

    .line 640
    iget-object v1, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->d:Lcom/alibaba/mobileim/kit/photodeal/NotifyLinkedList;

    iget-object v2, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->a:Lhsi;

    invoke-virtual {v1, v2}, Lcom/alibaba/mobileim/kit/photodeal/NotifyLinkedList;->add(Ljava/lang/Object;)Z

    .line 641
    invoke-virtual {p0}, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->invalidate()V

    .line 642
    return-void

    .line 636
    .end local v0    # "nextNormalRectF2scaleRectF":F
    :cond_0
    iget-object v1, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->B:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget-object v2, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->E:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    div-float v0, v1, v2

    .restart local v0    # "nextNormalRectF2scaleRectF":F
    goto :goto_0
.end method

.method public final a(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 451
    iput p1, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->I:I

    .line 452
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->v:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 453
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->y:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 454
    return-void
.end method

.method public final a(Lhsn;)V
    .locals 1
    .param p1, "textAction"    # Lhsn;

    .prologue
    .line 855
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->d:Lcom/alibaba/mobileim/kit/photodeal/NotifyLinkedList;

    invoke-virtual {v0, p1}, Lcom/alibaba/mobileim/kit/photodeal/NotifyLinkedList;->add(Ljava/lang/Object;)Z

    .line 856
    invoke-virtual {p0}, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->postInvalidate()V

    .line 857
    return-void
.end method

.method public final declared-synchronized a(Ljava/lang/String;)V
    .locals 6
    .param p1, "path"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 183
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->r:Ljava/lang/String;

    .line 184
    iget v1, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->k:F

    cmpg-float v1, v1, v2

    if-lez v1, :cond_0

    iget v1, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->l:F

    cmpg-float v1, v1, v2

    if-lez v1, :cond_0

    iget-boolean v1, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 212
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 185
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->h:Landroid/graphics/Bitmap;

    .line 186
    iget-object v1, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->h:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 2215
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 2216
    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 2217
    const/4 v2, 0x1

    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 2218
    invoke-static {p1, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 2219
    new-instance v2, Landroid/graphics/RectF;

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget v5, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v5, v5

    iget v1, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v1, v1

    invoke-direct {v2, v3, v4, v5, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 187
    iput-object v2, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->A:Landroid/graphics/RectF;

    .line 188
    iget-object v1, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->A:Landroid/graphics/RectF;

    invoke-direct {p0, v1}, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->b(Landroid/graphics/RectF;)V

    .line 190
    invoke-virtual {p0}, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->getMeasuredHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->i:Landroid/graphics/Bitmap;

    .line 191
    new-instance v1, Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->i:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->t:Landroid/graphics/Canvas;

    .line 193
    invoke-virtual {p0}, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->getMeasuredHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->j:Landroid/graphics/Bitmap;

    .line 194
    new-instance v1, Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->j:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->b:Landroid/graphics/Canvas;

    .line 197
    iget-object v1, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->h:Landroid/graphics/Bitmap;

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 198
    .local v0, "srcBitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 203
    const-wide v2, 0x3fc999999999999aL    # 0.2

    invoke-static {v0, v2, v3}, Lhsq;->a(Landroid/graphics/Bitmap;D)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->z:Landroid/graphics/Bitmap;

    .line 204
    iget-object v1, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->z:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->getMeasuredHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->f:Landroid/graphics/Bitmap;

    .line 205
    new-instance v1, Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->f:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->u:Landroid/graphics/Canvas;

    .line 207
    invoke-virtual {p0}, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->getMeasuredHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->g:Landroid/graphics/Bitmap;

    .line 208
    new-instance v1, Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->g:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->c:Landroid/graphics/Canvas;

    .line 210
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 211
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->e:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 183
    .end local v0    # "srcBitmap":Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public final b()Ljava/lang/String;
    .locals 15

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v14

    invoke-static {v14}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v14, 0x0

    const/4 v13, 0x0

    .line 649
    iget-boolean v9, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->e:Z

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->B:Landroid/graphics/RectF;

    if-nez v9, :cond_1

    .line 650
    :cond_0
    const-string/jumbo v9, ""

    .line 685
    :goto_0
    return-object v9

    .line 652
    :cond_1
    new-instance v7, Landroid/graphics/Rect;

    iget-object v9, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->B:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->left:F

    float-to-int v9, v9

    iget-object v10, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->B:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->top:F

    float-to-int v10, v10

    iget-object v11, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->B:Landroid/graphics/RectF;

    iget v11, v11, Landroid/graphics/RectF;->right:F

    float-to-int v11, v11

    iget-object v12, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->B:Landroid/graphics/RectF;

    iget v12, v12, Landroid/graphics/RectF;->bottom:F

    float-to-int v12, v12

    invoke-direct {v7, v9, v10, v11, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 654
    .local v7, "srcrect":Landroid/graphics/Rect;
    new-instance v8, Landroid/graphics/Canvas;

    invoke-direct {v8}, Landroid/graphics/Canvas;-><init>()V

    .line 655
    .local v8, "tempCanvas":Landroid/graphics/Canvas;
    invoke-direct {p0, v8}, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->a(Landroid/graphics/Canvas;)V

    .line 658
    invoke-virtual {p0}, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->getCurrentRotateRectF()Landroid/graphics/RectF;

    move-result-object v5

    .line 659
    .local v5, "rotateRect":Landroid/graphics/RectF;
    iget-object v9, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->A:Landroid/graphics/RectF;

    invoke-virtual {v9}, Landroid/graphics/RectF;->width()F

    move-result v9

    iget v10, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->k:F

    cmpg-float v9, v9, v10

    if-gez v9, :cond_5

    iget-object v9, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->A:Landroid/graphics/RectF;

    invoke-virtual {v9}, Landroid/graphics/RectF;->height()F

    move-result v9

    iget v10, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->l:F

    cmpg-float v9, v9, v10

    if-gez v9, :cond_5

    .line 661
    iget-object v9, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->A:Landroid/graphics/RectF;

    invoke-virtual {v9}, Landroid/graphics/RectF;->width()F

    move-result v9

    iget-object v10, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->A:Landroid/graphics/RectF;

    invoke-virtual {v10}, Landroid/graphics/RectF;->height()F

    move-result v10

    cmpg-float v9, v9, v10

    if-gez v9, :cond_2

    .line 662
    iget-object v9, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->A:Landroid/graphics/RectF;

    invoke-virtual {v9}, Landroid/graphics/RectF;->width()F

    move-result v9

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v10

    div-float v6, v9, v10

    .line 668
    .local v6, "scale":F
    :goto_1
    new-instance v2, Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v9

    mul-float/2addr v9, v6

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v10

    mul-float/2addr v10, v6

    invoke-direct {v2, v13, v13, v9, v10}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 672
    .end local v6    # "scale":F
    .local v2, "destrect":Landroid/graphics/RectF;
    :goto_2
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    .line 673
    .local v4, "rect1":Landroid/graphics/RectF;
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    .line 674
    .local v3, "matrix":Landroid/graphics/Matrix;
    iget v9, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->m:F

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v10

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v11

    invoke-virtual {v3, v9, v10, v11}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 675
    invoke-virtual {v3, v4, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 677
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v9

    float-to-int v9, v9

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v10

    float-to-int v10, v10

    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v9, v10, v11}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 678
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 679
    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 680
    iget v9, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->m:F

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v10

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v11

    invoke-virtual {v1, v9, v10, v11}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 681
    iget-object v9, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->v:Landroid/graphics/Paint;

    invoke-virtual {v1, v4, v9}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 682
    iget-object v9, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v9, v7, v4, v14}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 683
    iget-object v9, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->i:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v9, v7, v4, v14}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 684
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 685
    invoke-virtual {p0}, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9, v0}, Lhst;->a(Landroid/content/Context;Landroid/graphics/Bitmap;)Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_0

    .line 663
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    .end local v2    # "destrect":Landroid/graphics/RectF;
    .end local v3    # "matrix":Landroid/graphics/Matrix;
    .end local v4    # "rect1":Landroid/graphics/RectF;
    :cond_2
    iget-object v9, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->A:Landroid/graphics/RectF;

    invoke-virtual {v9}, Landroid/graphics/RectF;->width()F

    move-result v9

    iget-object v10, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->A:Landroid/graphics/RectF;

    invoke-virtual {v10}, Landroid/graphics/RectF;->height()F

    move-result v10

    cmpl-float v9, v9, v10

    if-nez v9, :cond_4

    .line 664
    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v9

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v10

    cmpg-float v9, v9, v10

    if-gez v9, :cond_3

    iget-object v9, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->A:Landroid/graphics/RectF;

    invoke-virtual {v9}, Landroid/graphics/RectF;->width()F

    move-result v9

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v10

    div-float v6, v9, v10

    .restart local v6    # "scale":F
    :goto_3
    goto/16 :goto_1

    .end local v6    # "scale":F
    :cond_3
    iget-object v9, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->A:Landroid/graphics/RectF;

    invoke-virtual {v9}, Landroid/graphics/RectF;->height()F

    move-result v9

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v10

    div-float v6, v9, v10

    goto :goto_3

    .line 666
    :cond_4
    iget-object v9, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->A:Landroid/graphics/RectF;

    invoke-virtual {v9}, Landroid/graphics/RectF;->height()F

    move-result v9

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v10

    div-float v6, v9, v10

    .restart local v6    # "scale":F
    goto/16 :goto_1

    .line 670
    .end local v6    # "scale":F
    :cond_5
    new-instance v2, Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v9

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v10

    invoke-direct {v2, v13, v13, v9, v10}, Landroid/graphics/RectF;-><init>(FFFF)V

    .restart local v2    # "destrect":Landroid/graphics/RectF;
    goto/16 :goto_2
.end method

.method public final b(Lhsn;)V
    .locals 1
    .param p1, "textAction"    # Lhsn;

    .prologue
    .line 861
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->d:Lcom/alibaba/mobileim/kit/photodeal/NotifyLinkedList;

    invoke-virtual {v0, p1}, Lcom/alibaba/mobileim/kit/photodeal/NotifyLinkedList;->remove(Ljava/lang/Object;)Z

    .line 862
    invoke-virtual {p0}, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->postInvalidate()V

    .line 863
    return-void
.end method

.method public getActionsCount()I
    .locals 1

    .prologue
    .line 898
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->d:Lcom/alibaba/mobileim/kit/photodeal/NotifyLinkedList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 899
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->d:Lcom/alibaba/mobileim/kit/photodeal/NotifyLinkedList;

    invoke-virtual {v0}, Lcom/alibaba/mobileim/kit/photodeal/NotifyLinkedList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getCurrentRotateRectF()Landroid/graphics/RectF;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 782
    iget v0, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->m:F

    const/high16 v1, 0x42b40000    # 90.0f

    div-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    rem-float/2addr v0, v1

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 783
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->B:Landroid/graphics/RectF;

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 785
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->D:Landroid/graphics/RectF;

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    goto :goto_0
.end method

.method public getMode()I
    .locals 1

    .prologue
    .line 850
    iget v0, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->s:I

    return v0
.end method

.method public getRealCurrentRectF()Landroid/graphics/RectF;
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const v4, 0x3f669595

    .line 335
    invoke-virtual {p0}, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->getCurrentRotateRectF()Landroid/graphics/RectF;

    move-result-object v0

    .line 336
    .local v0, "rectF":Landroid/graphics/RectF;
    iget-boolean v1, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->K:Z

    if-nez v1, :cond_0

    .line 340
    :goto_0
    return-object v0

    .line 337
    :cond_0
    iget-object v1, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->p:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 338
    iget-object v1, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->p:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 339
    iget-object v1, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->p:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    goto :goto_0
.end method

.method public getRealCurrentRotateRectF()Landroid/graphics/RectF;
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const v4, 0x3f669595

    .line 326
    invoke-virtual {p0}, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->getCurrentRotateRectF()Landroid/graphics/RectF;

    move-result-object v0

    .line 327
    .local v0, "rectF":Landroid/graphics/RectF;
    iget-boolean v1, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->K:Z

    if-nez v1, :cond_0

    .line 331
    :goto_0
    return-object v0

    .line 328
    :cond_0
    iget-object v1, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->p:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 329
    iget-object v1, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->p:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 330
    iget-object v1, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->p:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    goto :goto_0
.end method

.method public getmRect()Landroid/graphics/Rect;
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 842
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->getLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->getTop()I

    move-result v2

    invoke-virtual {p0}, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->getRight()I

    move-result v3

    invoke-virtual {p0}, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->getBottom()I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public getmRectF()Landroid/graphics/RectF;
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 838
    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->getLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->getTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->getRight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->getBottom()I

    move-result v4

    int-to-float v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/high16 v11, 0x42b40000    # 90.0f

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/high16 v10, 0x40000000    # 2.0f

    const/4 v9, 0x0

    .line 225
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->z:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->e:Z

    if-eqz v0, :cond_6

    .line 2242
    iget-boolean v0, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->e:Z

    if-eqz v0, :cond_1

    .line 2243
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->u:Landroid/graphics/Canvas;

    if-eqz v0, :cond_1

    .line 2244
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->A:Landroid/graphics/RectF;

    invoke-direct {p0, v0}, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->b(Landroid/graphics/RectF;)V

    .line 2247
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->x:Landroid/graphics/Paint;

    sget-object v3, Lhsp;->a:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 2248
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->u:Landroid/graphics/Canvas;

    iget-object v3, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->x:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    .line 2249
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->x:Landroid/graphics/Paint;

    sget-object v3, Lhsp;->b:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 2251
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->u:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    .line 2252
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->u:Landroid/graphics/Canvas;

    iget-object v3, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->z:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->B:Landroid/graphics/RectF;

    invoke-virtual {v0, v3, v9, v4, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 2253
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->u:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    .line 2255
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->q:Lcom/alibaba/mobileim/kit/photodeal/ActionImageView$a;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->q:Lcom/alibaba/mobileim/kit/photodeal/ActionImageView$a;

    iget-object v0, v0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView$a;->b:Lhsj;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->d:Lcom/alibaba/mobileim/kit/photodeal/NotifyLinkedList;

    iget-object v3, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->q:Lcom/alibaba/mobileim/kit/photodeal/ActionImageView$a;

    iget-object v3, v3, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView$a;->b:Lhsj;

    invoke-virtual {v0, v3}, Lcom/alibaba/mobileim/kit/photodeal/NotifyLinkedList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2256
    new-instance v0, Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->C:Landroid/graphics/Rect;

    invoke-direct {v0, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 2257
    invoke-direct {p0}, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->getCurrentScaleRectF()Landroid/graphics/RectF;

    move-result-object v3

    .line 2258
    iget-object v4, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->q:Lcom/alibaba/mobileim/kit/photodeal/ActionImageView$a;

    iget-object v4, v4, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView$a;->b:Lhsj;

    iget-object v4, v4, Lhsj;->e:Landroid/graphics/Rect;

    invoke-direct {p0, v4}, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->a(Landroid/graphics/Rect;)V

    .line 2259
    iget-object v4, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->q:Lcom/alibaba/mobileim/kit/photodeal/ActionImageView$a;

    iget-object v4, v4, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView$a;->b:Lhsj;

    const/4 v5, 0x6

    new-array v5, v5, [Ljava/lang/Object;

    iget v6, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->m:F

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v5, v2

    iget-object v6, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->D:Landroid/graphics/RectF;

    aput-object v6, v5, v1

    const/4 v6, 0x2

    iget-object v7, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->E:Landroid/graphics/RectF;

    aput-object v7, v5, v6

    const/4 v6, 0x3

    aput-object v0, v5, v6

    const/4 v0, 0x4

    aput-object v3, v5, v0

    const/4 v0, 0x5

    iget-object v3, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->B:Landroid/graphics/RectF;

    aput-object v3, v5, v0

    invoke-virtual {v4, v5}, Lhsj;->a([Ljava/lang/Object;)V

    .line 2260
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->q:Lcom/alibaba/mobileim/kit/photodeal/ActionImageView$a;

    iget-object v0, v0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView$a;->b:Lhsj;

    iget-object v3, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->u:Landroid/graphics/Canvas;

    .line 3151
    sget-object v4, Lhsj;->j:Landroid/graphics/Paint;

    sget-object v5, Lhsp;->a:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 3152
    sget-object v4, Lhsj;->j:Landroid/graphics/Paint;

    invoke-virtual {v3, v4}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    .line 3153
    sget-object v4, Lhsj;->j:Landroid/graphics/Paint;

    sget-object v5, Lhsp;->b:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 3155
    iget v4, v0, Lhsj;->i:F

    div-float/2addr v4, v11

    rem-float/2addr v4, v10

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-nez v4, :cond_3

    .line 3156
    iget-object v4, v0, Lhsj;->b:Landroid/graphics/Bitmap;

    iget-object v5, v0, Lhsj;->e:Landroid/graphics/Rect;

    iget-object v0, v0, Lhsj;->h:Landroid/graphics/RectF;

    invoke-virtual {v3, v4, v5, v0, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 2261
    :goto_0
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->q:Lcom/alibaba/mobileim/kit/photodeal/ActionImageView$a;

    iget-object v0, v0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView$a;->b:Lhsj;

    iget v0, v0, Lhsj;->i:F

    div-float/2addr v0, v11

    rem-float/2addr v0, v10

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v3

    if-nez v0, :cond_0

    .line 2262
    new-instance v0, Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->D:Landroid/graphics/RectF;

    invoke-direct {v0, v3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    invoke-direct {p0, v0}, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->b(Landroid/graphics/RectF;)V

    .line 2286
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 2287
    iget v0, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->m:F

    iget v3, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->k:F

    div-float/2addr v3, v10

    iget v4, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->l:F

    div-float/2addr v4, v10

    invoke-virtual {p1, v0, v3, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 2288
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->f:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->C:Landroid/graphics/Rect;

    invoke-direct {p0}, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->getRealCurrentScaleRectF()Landroid/graphics/RectF;

    move-result-object v4

    invoke-virtual {p1, v0, v3, v4, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 2289
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 227
    :cond_1
    invoke-direct {p0, p1}, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->a(Landroid/graphics/Canvas;)V

    .line 232
    :goto_1
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->L:Lhsh;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->L:Lhsh;

    .line 4020
    iget-object v0, v0, Lhsh;->a:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_7

    move v0, v1

    .line 232
    :goto_2
    if-eqz v0, :cond_2

    .line 233
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->L:Lhsh;

    .line 4032
    iget-object v1, v0, Lhsh;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 4033
    iput-object v9, v0, Lhsh;->a:Ljava/util/concurrent/CountDownLatch;

    .line 235
    :cond_2
    return-void

    .line 3158
    :cond_3
    invoke-virtual {v3}, Landroid/graphics/Canvas;->save()I

    .line 3159
    iget v4, v0, Lhsj;->i:F

    neg-float v4, v4

    iget v5, v0, Lhsj;->c:F

    iget v6, v0, Lhsj;->d:F

    invoke-virtual {v3, v4, v5, v6}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 3160
    iget-object v4, v0, Lhsj;->b:Landroid/graphics/Bitmap;

    iget-object v5, v0, Lhsj;->e:Landroid/graphics/Rect;

    iget-object v0, v0, Lhsj;->g:Landroid/graphics/RectF;

    invoke-virtual {v3, v4, v5, v0, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 3161
    invoke-virtual {v3}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    .line 2265
    :cond_4
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->d:Lcom/alibaba/mobileim/kit/photodeal/NotifyLinkedList;

    invoke-virtual {v0}, Lcom/alibaba/mobileim/kit/photodeal/NotifyLinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhsi;

    .line 2266
    instance-of v4, v0, Lhsj;

    if-eqz v4, :cond_5

    .line 2267
    check-cast v0, Lhsj;

    .line 2268
    new-instance v4, Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->C:Landroid/graphics/Rect;

    invoke-direct {v4, v5}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 2269
    invoke-direct {p0}, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->getCurrentScaleRectF()Landroid/graphics/RectF;

    move-result-object v5

    .line 2270
    iget-object v6, v0, Lhsj;->e:Landroid/graphics/Rect;

    invoke-direct {p0, v6}, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->a(Landroid/graphics/Rect;)V

    .line 2271
    const/4 v6, 0x6

    new-array v6, v6, [Ljava/lang/Object;

    iget v7, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->m:F

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v6, v2

    iget-object v7, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->D:Landroid/graphics/RectF;

    aput-object v7, v6, v1

    const/4 v7, 0x2

    iget-object v8, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->E:Landroid/graphics/RectF;

    aput-object v8, v6, v7

    const/4 v7, 0x3

    aput-object v4, v6, v7

    const/4 v4, 0x4

    aput-object v5, v6, v4

    const/4 v4, 0x5

    iget-object v5, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->B:Landroid/graphics/RectF;

    aput-object v5, v6, v4

    invoke-virtual {v0, v6}, Lhsj;->a([Ljava/lang/Object;)V

    .line 2272
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->u:Landroid/graphics/Canvas;

    aput-object v5, v4, v2

    iget v5, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->m:F

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-virtual {v0, v4}, Lhsj;->b([Ljava/lang/Object;)V

    .line 2277
    iget v0, v0, Lhsj;->i:F

    div-float/2addr v0, v11

    rem-float/2addr v0, v10

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v4

    if-nez v0, :cond_5

    .line 2278
    new-instance v0, Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->D:Landroid/graphics/RectF;

    invoke-direct {v0, v4}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    invoke-direct {p0, v0}, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->b(Landroid/graphics/RectF;)V

    goto :goto_3

    .line 229
    :cond_6
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    goto/16 :goto_1

    :cond_7
    move v0, v2

    .line 4020
    goto/16 :goto_2
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 479
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    .line 481
    invoke-virtual {p0}, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->k:F

    .line 482
    invoke-virtual {p0}, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->l:F

    .line 483
    iget v0, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->k:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget v0, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->l:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->e:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->r:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 484
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->r:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->a(Ljava/lang/String;)V

    .line 487
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v7, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 507
    invoke-virtual {p0}, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v2

    .line 533
    :goto_0
    return v1

    .line 6465
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 509
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    move v1, v3

    .line 533
    goto :goto_0

    .line 6537
    :pswitch_0
    const/4 v1, 0x0

    .line 6538
    iget v4, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->s:I

    packed-switch v4, :pswitch_data_1

    .line 512
    :goto_1
    iput-object v1, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->a:Lhsi;

    .line 513
    iget-object v1, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->a:Lhsi;

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_0

    .line 6540
    :pswitch_1
    new-instance v1, Lhsk;

    new-instance v4, Landroid/graphics/Path;

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    iget-object v5, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->v:Landroid/graphics/Paint;

    iget v6, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->I:I

    invoke-direct {v1, v4, v5, v6}, Lhsk;-><init>(Landroid/graphics/Path;Landroid/graphics/Paint;I)V

    goto :goto_1

    .line 6543
    :pswitch_2
    new-instance v1, Lhsl;

    new-instance v4, Landroid/graphics/Path;

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    iget-object v5, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->w:Landroid/graphics/Paint;

    iget v6, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->J:F

    invoke-direct {v1, v4, v5, v6}, Lhsl;-><init>(Landroid/graphics/Path;Landroid/graphics/Paint;F)V

    goto :goto_1

    .line 514
    :cond_1
    invoke-direct {p0, p1}, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->a(Landroid/view/MotionEvent;)V

    .line 515
    iget-object v1, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->a:Lhsi;

    new-array v4, v7, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->N:[F

    aget v5, v5, v2

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v2

    iget-object v2, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->N:[F

    aget v2, v2, v3

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v4, v3

    invoke-interface {v1, v4}, Lhsi;->a([Ljava/lang/Object;)V

    .line 516
    iget-object v1, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->d:Lcom/alibaba/mobileim/kit/photodeal/NotifyLinkedList;

    iget-object v2, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->a:Lhsi;

    invoke-virtual {v1, v2}, Lcom/alibaba/mobileim/kit/photodeal/NotifyLinkedList;->add(Ljava/lang/Object;)Z

    move v1, v3

    .line 517
    goto :goto_0

    .line 520
    :pswitch_3
    iget-object v1, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->a:Lhsi;

    if-nez v1, :cond_2

    move v1, v2

    goto :goto_0

    .line 521
    :cond_2
    invoke-direct {p0, p1}, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->a(Landroid/view/MotionEvent;)V

    .line 522
    iget-object v1, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->a:Lhsi;

    new-array v4, v7, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->N:[F

    aget v5, v5, v2

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v2

    iget-object v2, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->N:[F

    aget v2, v2, v3

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v4, v3

    invoke-interface {v1, v4}, Lhsi;->b([Ljava/lang/Object;)V

    .line 523
    invoke-virtual {p0}, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->invalidate()V

    move v1, v3

    .line 524
    goto/16 :goto_0

    .line 527
    :pswitch_4
    iget-object v1, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->a:Lhsi;

    if-nez v1, :cond_3

    move v1, v2

    goto/16 :goto_0

    .line 528
    :cond_3
    invoke-direct {p0, p1}, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->a(Landroid/view/MotionEvent;)V

    .line 529
    iget-object v1, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->a:Lhsi;

    new-array v4, v7, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->N:[F

    aget v5, v5, v2

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v2

    iget-object v2, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->N:[F

    aget v2, v2, v3

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v4, v3

    invoke-interface {v1, v4}, Lhsi;->c([Ljava/lang/Object;)V

    .line 530
    invoke-virtual {p0}, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->invalidate()V

    move v1, v3

    .line 531
    goto/16 :goto_0

    .line 509
    .line 6538
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setComplete(Z)V
    .locals 0
    .param p1, "complete"    # Z

    .prologue
    .line 890
    iput-boolean p1, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->e:Z

    .line 891
    return-void
.end method

.method public setCropIng(Z)V
    .locals 0
    .param p1, "cropIng"    # Z

    .prologue
    .line 894
    iput-boolean p1, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->K:Z

    .line 895
    return-void
.end method

.method public setFinishWatcher(Lhsh;)V
    .locals 0
    .param p1, "finishWatcher"    # Lhsh;

    .prologue
    .line 882
    iput-object p1, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->L:Lhsh;

    .line 883
    return-void
.end method

.method public setLinkedListOperateListner(Lcom/alibaba/mobileim/kit/photodeal/NotifyLinkedList$a;)V
    .locals 1
    .param p1, "mLinkedListOperateListner"    # Lcom/alibaba/mobileim/kit/photodeal/NotifyLinkedList$a;

    .prologue
    .line 878
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->d:Lcom/alibaba/mobileim/kit/photodeal/NotifyLinkedList;

    invoke-virtual {v0, p1}, Lcom/alibaba/mobileim/kit/photodeal/NotifyLinkedList;->setmLinkedListOperateListner(Lcom/alibaba/mobileim/kit/photodeal/NotifyLinkedList$a;)V

    .line 879
    return-void
.end method

.method public setMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 846
    iput p1, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->s:I

    .line 847
    return-void
.end method

.method public setmBackTextActionListener(Lhsv;)V
    .locals 0
    .param p1, "mBackTextActionListener"    # Lhsv;

    .prologue
    .line 866
    iput-object p1, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->F:Lhsv;

    .line 867
    return-void
.end method

.method public setmCropActionListener(Lhsx;)V
    .locals 1
    .param p1, "mCropActionListener"    # Lhsx;

    .prologue
    .line 870
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->o:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 871
    return-void
.end method

.method public setmTextActionCacheQuery(Lhtc;)V
    .locals 0
    .param p1, "mTextActionCacheQuery"    # Lhtc;

    .prologue
    .line 874
    iput-object p1, p0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->H:Lhtc;

    .line 875
    return-void
.end method
