.class public Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;
.super Landroid/view/View;
.source "CropImageView.java"

# interfaces
.implements Lhsm$a;
.implements Lhsx;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView$a;
    }
.end annotation


# static fields
.field private static J:Landroid/os/Handler;

.field private static c:I

.field private static d:I

.field private static e:I


# instance fields
.field private A:Landroid/graphics/RectF;

.field private B:Landroid/graphics/RectF;

.field private C:Landroid/graphics/RectF;

.field private D:Landroid/graphics/RectF;

.field private E:F

.field private volatile F:Z

.field private G:F

.field private H:F

.field private I:Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView$a;

.field public a:Z

.field b:Landroid/graphics/Matrix;

.field private final f:I

.field private final g:I

.field private h:I

.field private i:Landroid/content/Context;

.field private j:F

.field private k:F

.field private l:I

.field private m:I

.field private n:Landroid/graphics/RectF;

.field private o:Landroid/graphics/RectF;

.field private p:Landroid/graphics/RectF;

.field private q:Landroid/graphics/RectF;

.field private r:Landroid/graphics/RectF;

.field private s:Landroid/graphics/Paint;

.field private t:Landroid/graphics/Paint;

.field private u:Landroid/graphics/Paint;

.field private v:Landroid/graphics/Paint;

.field private w:Landroid/graphics/Bitmap;

.field private x:Landroid/graphics/Rect;

.field private y:Landroid/graphics/RectF;

.field private z:Landroid/graphics/RectF;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x1

    sput v0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->c:I

    .line 32
    const/4 v0, 0x2

    sput v0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->d:I

    .line 33
    const/4 v0, 0x3

    sput v0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->e:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 78
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 34
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->f:I

    .line 35
    iput v1, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->g:I

    .line 37
    const/16 v0, 0x42

    iput v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->h:I

    .line 40
    sget v0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->c:I

    iput v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->l:I

    .line 42
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->n:Landroid/graphics/RectF;

    .line 43
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->o:Landroid/graphics/RectF;

    .line 44
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->p:Landroid/graphics/RectF;

    .line 45
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->q:Landroid/graphics/RectF;

    .line 47
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->r:Landroid/graphics/RectF;

    .line 55
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->x:Landroid/graphics/Rect;

    .line 61
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->C:Landroid/graphics/RectF;

    .line 62
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->D:Landroid/graphics/RectF;

    .line 64
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->E:F

    .line 66
    iput-boolean v1, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->F:Z

    .line 68
    const/high16 v0, 0x42480000    # 50.0f

    iput v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->G:F

    .line 70
    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->H:F

    .line 72
    iput-boolean v1, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->a:Z

    .line 550
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->b:Landroid/graphics/Matrix;

    .line 79
    invoke-direct {p0, p1}, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->a(Landroid/content/Context;)V

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 83
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->f:I

    .line 35
    iput v1, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->g:I

    .line 37
    const/16 v0, 0x42

    iput v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->h:I

    .line 40
    sget v0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->c:I

    iput v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->l:I

    .line 42
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->n:Landroid/graphics/RectF;

    .line 43
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->o:Landroid/graphics/RectF;

    .line 44
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->p:Landroid/graphics/RectF;

    .line 45
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->q:Landroid/graphics/RectF;

    .line 47
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->r:Landroid/graphics/RectF;

    .line 55
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->x:Landroid/graphics/Rect;

    .line 61
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->C:Landroid/graphics/RectF;

    .line 62
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->D:Landroid/graphics/RectF;

    .line 64
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->E:F

    .line 66
    iput-boolean v1, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->F:Z

    .line 68
    const/high16 v0, 0x42480000    # 50.0f

    iput v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->G:F

    .line 70
    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->H:F

    .line 72
    iput-boolean v1, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->a:Z

    .line 550
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->b:Landroid/graphics/Matrix;

    .line 84
    invoke-direct {p0, p1}, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->a(Landroid/content/Context;)V

    .line 85
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v1, 0x0

    .line 88
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->f:I

    .line 35
    iput v1, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->g:I

    .line 37
    const/16 v0, 0x42

    iput v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->h:I

    .line 40
    sget v0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->c:I

    iput v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->l:I

    .line 42
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->n:Landroid/graphics/RectF;

    .line 43
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->o:Landroid/graphics/RectF;

    .line 44
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->p:Landroid/graphics/RectF;

    .line 45
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->q:Landroid/graphics/RectF;

    .line 47
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->r:Landroid/graphics/RectF;

    .line 55
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->x:Landroid/graphics/Rect;

    .line 61
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->C:Landroid/graphics/RectF;

    .line 62
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->D:Landroid/graphics/RectF;

    .line 64
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->E:F

    .line 66
    iput-boolean v1, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->F:Z

    .line 68
    const/high16 v0, 0x42480000    # 50.0f

    iput v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->G:F

    .line 70
    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->H:F

    .line 72
    iput-boolean v1, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->a:Z

    .line 550
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->b:Landroid/graphics/Matrix;

    .line 89
    invoke-direct {p0, p1}, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->a(Landroid/content/Context;)V

    .line 90
    return-void
.end method

.method static synthetic a()I
    .locals 1

    .prologue
    .line 30
    sget v0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->c:I

    return v0
.end method

.method static synthetic a(Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;

    .prologue
    .line 30
    iget v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->l:I

    return v0
.end method

.method private a(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 93
    .line 1124
    sget-object v0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->J:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 1125
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "CropImageView"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 1126
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 1127
    new-instance v1, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView$1;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView$1;-><init>(Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;Landroid/os/Looper;)V

    sput-object v1, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->J:Landroid/os/Handler;

    .line 95
    :cond_0
    iput-object p1, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->i:Landroid/content/Context;

    .line 96
    const/high16 v0, 0x41500000    # 13.0f

    invoke-static {p1, v0}, Lhso;->a(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->H:F

    .line 97
    const/high16 v0, 0x41900000    # 18.0f

    invoke-static {p1, v0}, Lhso;->a(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->G:F

    .line 2097
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 2098
    const-string/jumbo v1, "#B0000000"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 99
    iput-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->s:Landroid/graphics/Paint;

    .line 100
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Liff$c;->aliwx_photo_deal_crop_rotate:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->w:Landroid/graphics/Bitmap;

    .line 102
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->x:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->w:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->w:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 103
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->h:I

    int-to-float v1, v1

    iget v2, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->h:I

    int-to-float v2, v2

    invoke-direct {v0, v4, v4, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->y:Landroid/graphics/RectF;

    .line 104
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->y:Landroid/graphics/RectF;

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->z:Landroid/graphics/RectF;

    .line 105
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->y:Landroid/graphics/RectF;

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->A:Landroid/graphics/RectF;

    .line 106
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->y:Landroid/graphics/RectF;

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->B:Landroid/graphics/RectF;

    .line 108
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->t:Landroid/graphics/Paint;

    .line 109
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->t:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 110
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->t:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 112
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->u:Landroid/graphics/Paint;

    .line 113
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->u:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 114
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->u:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 115
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->u:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 116
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->u:Landroid/graphics/Paint;

    iget v1, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->H:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 118
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->v:Landroid/graphics/Paint;

    .line 119
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->v:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 120
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->v:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 121
    return-void
.end method

.method private static final a(Landroid/graphics/RectF;FF)V
    .locals 1
    .param p0, "rect"    # Landroid/graphics/RectF;
    .param p1, "dx"    # F
    .param p2, "dy"    # F

    .prologue
    .line 374
    iget v0, p0, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, p1

    iput v0, p0, Landroid/graphics/RectF;->left:F

    .line 375
    iget v0, p0, Landroid/graphics/RectF;->right:F

    add-float/2addr v0, p1

    iput v0, p0, Landroid/graphics/RectF;->right:F

    .line 376
    iget v0, p0, Landroid/graphics/RectF;->top:F

    add-float/2addr v0, p2

    iput v0, p0, Landroid/graphics/RectF;->top:F

    .line 377
    iget v0, p0, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v0, p2

    iput v0, p0, Landroid/graphics/RectF;->bottom:F

    .line 378
    return-void
.end method

.method static synthetic a(Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;
    .param p1, "x1"    # Z

    .prologue
    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->F:Z

    return v0
.end method

.method private b()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 312
    iget-boolean v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->a:Z

    if-nez v0, :cond_1

    .line 313
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->a:Z

    .line 314
    sget-object v0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->J:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 315
    sget-object v0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->J:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 317
    :cond_0
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->I:Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView$a;

    if-eqz v0, :cond_1

    .line 318
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->I:Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView$a;

    invoke-interface {v0}, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView$a;->c()V

    .line 321
    :cond_1
    return-void
.end method


# virtual methods
.method public final a(FF)V
    .locals 0
    .param p1, "currentAngle"    # F
    .param p2, "currentNormalRectF2scaleRectF"    # F

    .prologue
    .line 548
    return-void
.end method

.method public final a(Landroid/graphics/RectF;)V
    .locals 1
    .param p1, "destRect"    # Landroid/graphics/RectF;

    .prologue
    .line 543
    const/high16 v0, -0x40800000    # -1.0f

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->a(Landroid/graphics/RectF;F)V

    .line 544
    return-void
.end method

.method public final a(Landroid/graphics/RectF;F)V
    .locals 1
    .param p1, "rect"    # Landroid/graphics/RectF;
    .param p2, "r"    # F

    .prologue
    .line 161
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->E:F

    .line 163
    invoke-virtual {p0, p1}, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->setCropRect(Landroid/graphics/RectF;)V

    .line 164
    return-void
.end method

.method public final b(Landroid/graphics/RectF;)V
    .locals 4
    .param p1, "destRect"    # Landroid/graphics/RectF;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const v3, 0x3f669595

    .line 553
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->b:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 554
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->b:Landroid/graphics/Matrix;

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 555
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->b:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 556
    const/high16 v0, -0x40800000    # -1.0f

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->a(Landroid/graphics/RectF;F)V

    .line 557
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/high16 v12, 0x40400000    # 3.0f

    const/4 v11, 0x0

    const/high16 v10, 0x40000000    # 2.0f

    const/4 v5, 0x0

    .line 188
    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 190
    invoke-virtual {p0}, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->getWidth()I

    move-result v8

    .line 191
    .local v8, "w":I
    invoke-virtual {p0}, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->getHeight()I

    move-result v6

    .line 192
    .local v6, "h":I
    if-lez v8, :cond_0

    if-gtz v6, :cond_1

    .line 224
    :cond_0
    :goto_0
    return-void

    .line 199
    :cond_1
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->n:Landroid/graphics/RectF;

    int-to-float v1, v8

    iget-object v2, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->r:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0, v5, v5, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 200
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->o:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->r:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    iget-object v2, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->r:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget-object v3, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->r:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v0, v5, v1, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 201
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->p:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->r:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    iget-object v2, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->r:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    int-to-float v3, v8

    iget-object v4, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->r:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 202
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->q:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->r:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    int-to-float v2, v8

    int-to-float v3, v6

    invoke-virtual {v0, v5, v1, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 204
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->n:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->s:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 205
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->o:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->s:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 206
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->p:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->s:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 207
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->q:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->s:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 210
    iget v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->h:I

    shr-int/lit8 v7, v0, 0x1

    .line 211
    .local v7, "radius":I
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->y:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->r:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    int-to-float v2, v7

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->r:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    int-to-float v3, v7

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->r:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    int-to-float v4, v7

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->r:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    int-to-float v5, v7

    add-float/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 213
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->z:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->r:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    int-to-float v2, v7

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->r:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    int-to-float v3, v7

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->r:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    int-to-float v4, v7

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->r:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    int-to-float v5, v7

    add-float/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 215
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->A:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->r:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    int-to-float v2, v7

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->r:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    int-to-float v3, v7

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->r:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    int-to-float v4, v7

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->r:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    int-to-float v5, v7

    add-float/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 217
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->B:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->r:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    int-to-float v2, v7

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->r:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    int-to-float v3, v7

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->r:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    int-to-float v4, v7

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->r:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    int-to-float v5, v7

    add-float/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 4230
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->t:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 4233
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->r:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    div-float v9, v0, v12

    .line 4234
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->r:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->r:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->top:F

    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->r:Landroid/graphics/RectF;

    iget v3, v0, Landroid/graphics/RectF;->right:F

    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->r:Landroid/graphics/RectF;

    iget v4, v0, Landroid/graphics/RectF;->top:F

    iget-object v5, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->t:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 4236
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->r:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->r:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    add-float v2, v9, v0

    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->r:Landroid/graphics/RectF;

    iget v3, v0, Landroid/graphics/RectF;->right:F

    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->r:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    add-float v4, v9, v0

    iget-object v5, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->t:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 4238
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->r:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    mul-float v0, v9, v10

    iget-object v2, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->r:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    add-float/2addr v2, v0

    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->r:Landroid/graphics/RectF;

    iget v3, v0, Landroid/graphics/RectF;->right:F

    mul-float v0, v9, v10

    iget-object v4, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->r:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    add-float/2addr v4, v0

    iget-object v5, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->t:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 4240
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->r:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->r:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->r:Landroid/graphics/RectF;

    iget v3, v0, Landroid/graphics/RectF;->right:F

    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->r:Landroid/graphics/RectF;

    iget v4, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v5, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->t:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 4243
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->r:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    div-float v9, v0, v12

    .line 4244
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->r:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->r:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->top:F

    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->r:Landroid/graphics/RectF;

    iget v3, v0, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->r:Landroid/graphics/RectF;

    iget v4, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v5, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->t:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 4246
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->r:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    add-float v1, v0, v9

    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->r:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->top:F

    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->r:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    add-float v3, v0, v9

    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->r:Landroid/graphics/RectF;

    iget v4, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v5, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->t:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 4248
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->r:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    mul-float v1, v9, v10

    add-float/2addr v1, v0

    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->r:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->top:F

    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->r:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    mul-float v3, v9, v10

    add-float/2addr v3, v0

    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->r:Landroid/graphics/RectF;

    iget v4, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v5, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->t:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 4250
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->r:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->right:F

    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->r:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->top:F

    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->r:Landroid/graphics/RectF;

    iget v3, v0, Landroid/graphics/RectF;->right:F

    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->r:Landroid/graphics/RectF;

    iget v4, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v5, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->t:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 4254
    iget-boolean v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->F:Z

    if-eqz v0, :cond_2

    .line 4255
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->r:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->r:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->r:Landroid/graphics/RectF;

    .line 4256
    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget-object v2, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->r:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    iget v3, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->G:F

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->u:Landroid/graphics/Paint;

    .line 4255
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 220
    :cond_2
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->w:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->x:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->y:Landroid/graphics/RectF;

    invoke-virtual {p1, v0, v1, v2, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 221
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->w:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->x:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->z:Landroid/graphics/RectF;

    invoke-virtual {p1, v0, v1, v2, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 222
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->w:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->x:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->A:Landroid/graphics/RectF;

    invoke-virtual {p1, v0, v1, v2, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 223
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->w:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->x:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->B:Landroid/graphics/RectF;

    invoke-virtual {p1, v0, v1, v2, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto/16 :goto_0
.end method

.method public getCropRect()Landroid/graphics/RectF;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 499
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->r:Landroid/graphics/RectF;

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    return-object v0
.end method

.method public getRatio()F
    .locals 1

    .prologue
    .line 534
    iget v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->E:F

    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 141
    sget-object v0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->J:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 142
    sget-object v0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->J:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 143
    const/4 v0, 0x0

    sput-object v0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->J:Landroid/os/Handler;

    .line 145
    :cond_0
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 146
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 490
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 491
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "event"    # Landroid/view/MotionEvent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x1

    const/4 v9, 0x0

    .line 265
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 266
    .local v1, "ret":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 267
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 268
    .local v3, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 269
    .local v4, "y":F
    and-int/lit16 v5, v0, 0xff

    packed-switch v5, :pswitch_data_0

    .line 306
    :cond_0
    :goto_0
    iput v3, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->j:F

    .line 307
    iput v4, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->k:F

    .line 308
    return v1

    .line 271
    :pswitch_0
    iput-boolean v2, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->F:Z

    .line 4477
    iget-object v5, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->y:Landroid/graphics/RectF;

    invoke-virtual {v5, v3, v4}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 273
    .local v2, "selectCircle":I
    :goto_1
    if-lez v2, :cond_5

    .line 274
    const/4 v1, 0x1

    .line 275
    iput v2, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->m:I

    .line 276
    sget v5, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->e:I

    iput v5, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->l:I

    .line 277
    invoke-direct {p0}, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->b()V

    goto :goto_0

    .line 4479
    .end local v2    # "selectCircle":I
    :cond_1
    iget-object v5, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->z:Landroid/graphics/RectF;

    invoke-virtual {v5, v3, v4}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 4480
    const/4 v2, 0x2

    goto :goto_1

    .line 4481
    :cond_2
    iget-object v5, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->A:Landroid/graphics/RectF;

    invoke-virtual {v5, v3, v4}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 4482
    const/4 v2, 0x3

    goto :goto_1

    .line 4483
    :cond_3
    iget-object v5, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->B:Landroid/graphics/RectF;

    invoke-virtual {v5, v3, v4}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 4484
    const/4 v2, 0x4

    goto :goto_1

    .line 4485
    :cond_4
    const/4 v2, -0x1

    goto :goto_1

    .line 278
    .restart local v2    # "selectCircle":I
    :cond_5
    iget-object v5, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->r:Landroid/graphics/RectF;

    invoke-virtual {v5, v3, v4}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 279
    const/4 v1, 0x1

    .line 280
    sget v5, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->d:I

    iput v5, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->l:I

    .line 281
    invoke-direct {p0}, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->b()V

    goto :goto_0

    .line 287
    .end local v2    # "selectCircle":I
    :pswitch_1
    iget v5, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->l:I

    sget v6, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->e:I

    if-ne v5, v6, :cond_f

    .line 5387
    iget-object v5, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->D:Landroid/graphics/RectF;

    iget-object v6, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->r:Landroid/graphics/RectF;

    invoke-virtual {v5, v6}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 5388
    iget v5, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->m:I

    packed-switch v5, :pswitch_data_1

    .line 5407
    :goto_2
    iget v5, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->E:F

    cmpg-float v5, v5, v9

    if-gez v5, :cond_c

    .line 5445
    iget-object v5, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->r:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    iget v6, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->h:I

    int-to-float v6, v6

    cmpg-float v5, v5, v6

    if-gez v5, :cond_6

    .line 5446
    iget-object v5, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->r:Landroid/graphics/RectF;

    iget-object v6, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->D:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    iput v6, v5, Landroid/graphics/RectF;->left:F

    .line 5447
    iget-object v5, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->r:Landroid/graphics/RectF;

    iget-object v6, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->D:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    iput v6, v5, Landroid/graphics/RectF;->right:F

    .line 5449
    :cond_6
    iget-object v5, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->r:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    iget v6, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->h:I

    int-to-float v6, v6

    cmpg-float v5, v5, v6

    if-gez v5, :cond_7

    .line 5450
    iget-object v5, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->r:Landroid/graphics/RectF;

    iget-object v6, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->D:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    iput v6, v5, Landroid/graphics/RectF;->top:F

    .line 5451
    iget-object v5, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->r:Landroid/graphics/RectF;

    iget-object v6, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->D:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    iput v6, v5, Landroid/graphics/RectF;->bottom:F

    .line 5453
    :cond_7
    iget-object v5, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->r:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    iget-object v6, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->C:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    cmpg-float v5, v5, v6

    if-gez v5, :cond_8

    .line 5454
    iget-object v5, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->r:Landroid/graphics/RectF;

    iget-object v6, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->C:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    iput v6, v5, Landroid/graphics/RectF;->left:F

    .line 5456
    :cond_8
    iget-object v5, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->r:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    iget-object v6, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->C:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    cmpl-float v5, v5, v6

    if-lez v5, :cond_9

    .line 5457
    iget-object v5, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->r:Landroid/graphics/RectF;

    iget-object v6, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->C:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    iput v6, v5, Landroid/graphics/RectF;->right:F

    .line 5459
    :cond_9
    iget-object v5, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->r:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    iget-object v6, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->C:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    cmpg-float v5, v5, v6

    if-gez v5, :cond_a

    .line 5460
    iget-object v5, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->r:Landroid/graphics/RectF;

    iget-object v6, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->C:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    iput v6, v5, Landroid/graphics/RectF;->top:F

    .line 5462
    :cond_a
    iget-object v5, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->r:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    iget-object v6, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->C:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    cmpl-float v5, v5, v6

    if-lez v5, :cond_b

    .line 5463
    iget-object v5, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->r:Landroid/graphics/RectF;

    iget-object v6, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->C:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    iput v6, v5, Landroid/graphics/RectF;->bottom:F

    .line 5410
    :cond_b
    invoke-virtual {p0}, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->invalidate()V

    goto/16 :goto_0

    .line 5390
    :pswitch_2
    iget-object v5, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->r:Landroid/graphics/RectF;

    iput v3, v5, Landroid/graphics/RectF;->left:F

    .line 5391
    iget-object v5, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->r:Landroid/graphics/RectF;

    iput v4, v5, Landroid/graphics/RectF;->top:F

    goto/16 :goto_2

    .line 5394
    :pswitch_3
    iget-object v5, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->r:Landroid/graphics/RectF;

    iput v3, v5, Landroid/graphics/RectF;->right:F

    .line 5395
    iget-object v5, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->r:Landroid/graphics/RectF;

    iput v4, v5, Landroid/graphics/RectF;->top:F

    goto/16 :goto_2

    .line 5398
    :pswitch_4
    iget-object v5, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->r:Landroid/graphics/RectF;

    iput v3, v5, Landroid/graphics/RectF;->left:F

    .line 5399
    iget-object v5, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->r:Landroid/graphics/RectF;

    iput v4, v5, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_2

    .line 5402
    :pswitch_5
    iget-object v5, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->r:Landroid/graphics/RectF;

    iput v3, v5, Landroid/graphics/RectF;->right:F

    .line 5403
    iget-object v5, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->r:Landroid/graphics/RectF;

    iput v4, v5, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_2

    .line 5414
    :cond_c
    iget v5, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->m:I

    packed-switch v5, :pswitch_data_2

    .line 5428
    :goto_3
    iget-object v5, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->r:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    iget-object v6, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->C:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    cmpg-float v5, v5, v6

    if-ltz v5, :cond_d

    iget-object v5, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->r:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    iget-object v6, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->C:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    cmpl-float v5, v5, v6

    if-gtz v5, :cond_d

    iget-object v5, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->r:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    iget-object v6, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->C:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    cmpg-float v5, v5, v6

    if-ltz v5, :cond_d

    iget-object v5, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->r:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    iget-object v6, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->C:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    cmpl-float v5, v5, v6

    if-gtz v5, :cond_d

    iget-object v5, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->r:Landroid/graphics/RectF;

    .line 5432
    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    iget v6, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->h:I

    int-to-float v6, v6

    cmpg-float v5, v5, v6

    if-ltz v5, :cond_d

    iget-object v5, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->r:Landroid/graphics/RectF;

    .line 5433
    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    iget v6, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->h:I

    int-to-float v6, v6

    cmpg-float v5, v5, v6

    if-gez v5, :cond_e

    .line 5434
    :cond_d
    iget-object v5, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->r:Landroid/graphics/RectF;

    iget-object v6, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->D:Landroid/graphics/RectF;

    invoke-virtual {v5, v6}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 5436
    :cond_e
    invoke-virtual {p0}, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->invalidate()V

    goto/16 :goto_0

    .line 5417
    :pswitch_6
    iget-object v5, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->r:Landroid/graphics/RectF;

    iget-object v6, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->r:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    iget-object v7, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->r:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->left:F

    sub-float/2addr v6, v7

    iget v7, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->E:F

    div-float/2addr v6, v7

    iget-object v7, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->r:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    add-float/2addr v6, v7

    iput v6, v5, Landroid/graphics/RectF;->bottom:F

    goto :goto_3

    .line 5422
    :pswitch_7
    iget-object v5, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->r:Landroid/graphics/RectF;

    iget-object v6, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->r:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    iget-object v7, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->r:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->right:F

    iget-object v8, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->r:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->left:F

    sub-float/2addr v7, v8

    iget v8, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->E:F

    div-float/2addr v7, v8

    sub-float/2addr v6, v7

    iput v6, v5, Landroid/graphics/RectF;->top:F

    goto/16 :goto_3

    .line 290
    :cond_f
    iget v5, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->l:I

    sget v6, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->d:I

    if-ne v5, v6, :cond_0

    .line 292
    iget v5, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->j:F

    sub-float v5, v3, v5

    iget v6, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->k:F

    sub-float v6, v4, v6

    .line 6342
    iget-object v7, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->D:Landroid/graphics/RectF;

    iget-object v8, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->r:Landroid/graphics/RectF;

    invoke-virtual {v7, v8}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 6344
    iget-object v7, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->r:Landroid/graphics/RectF;

    invoke-static {v7, v5, v6}, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->a(Landroid/graphics/RectF;FF)V

    .line 6346
    iget-object v5, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->C:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    iget-object v6, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->r:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    sub-float/2addr v5, v6

    .line 6347
    cmpl-float v6, v5, v9

    if-lez v6, :cond_10

    .line 6348
    iget-object v6, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->r:Landroid/graphics/RectF;

    invoke-static {v6, v5, v9}, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->a(Landroid/graphics/RectF;FF)V

    .line 6350
    :cond_10
    iget-object v5, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->C:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    iget-object v6, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->r:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    sub-float/2addr v5, v6

    .line 6351
    cmpg-float v6, v5, v9

    if-gez v6, :cond_11

    .line 6352
    iget-object v6, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->r:Landroid/graphics/RectF;

    invoke-static {v6, v5, v9}, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->a(Landroid/graphics/RectF;FF)V

    .line 6354
    :cond_11
    iget-object v5, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->C:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    iget-object v6, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->r:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    sub-float/2addr v5, v6

    .line 6355
    cmpl-float v6, v5, v9

    if-lez v6, :cond_12

    .line 6356
    iget-object v6, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->r:Landroid/graphics/RectF;

    invoke-static {v6, v9, v5}, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->a(Landroid/graphics/RectF;FF)V

    .line 6358
    :cond_12
    iget-object v5, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->C:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    iget-object v6, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->r:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v5, v6

    .line 6359
    cmpg-float v6, v5, v9

    if-gez v6, :cond_13

    .line 6360
    iget-object v6, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->r:Landroid/graphics/RectF;

    invoke-static {v6, v9, v5}, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->a(Landroid/graphics/RectF;FF)V

    .line 6363
    :cond_13
    invoke-virtual {p0}, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->invalidate()V

    .line 293
    invoke-direct {p0}, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->b()V

    goto/16 :goto_0

    .line 298
    :pswitch_8
    sget v5, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->c:I

    iput v5, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->l:I

    .line 299
    sget-object v5, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->J:Landroid/os/Handler;

    if-eqz v5, :cond_0

    .line 300
    sget-object v5, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->J:Landroid/os/Handler;

    const/4 v6, 0x0

    const-wide/16 v8, 0x1f4

    invoke-virtual {v5, v6, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 269
    .line 5388
    .line 5414
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_8
        :pswitch_1
        :pswitch_8
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_6
        :pswitch_6
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method

.method public setCropRect(Landroid/graphics/RectF;)V
    .locals 6
    .param p1, "rect"    # Landroid/graphics/RectF;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    const/high16 v4, 0x3f800000    # 1.0f

    .line 154
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->C:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 155
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->r:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 156
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->r:Landroid/graphics/RectF;

    .line 3508
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v1

    .line 3509
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v2

    .line 3511
    mul-float v3, v4, v1

    .line 3512
    mul-float/2addr v4, v2

    .line 3514
    sub-float v1, v3, v1

    div-float/2addr v1, v5

    .line 3515
    sub-float v2, v4, v2

    div-float/2addr v2, v5

    .line 3517
    iget v3, v0, Landroid/graphics/RectF;->left:F

    sub-float/2addr v3, v1

    iput v3, v0, Landroid/graphics/RectF;->left:F

    .line 3518
    iget v3, v0, Landroid/graphics/RectF;->top:F

    sub-float/2addr v3, v2

    iput v3, v0, Landroid/graphics/RectF;->top:F

    .line 3519
    iget v3, v0, Landroid/graphics/RectF;->right:F

    add-float/2addr v1, v3

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 3520
    iget v1, v0, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 157
    invoke-virtual {p0}, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->invalidate()V

    .line 158
    return-void
.end method

.method public setRatio(F)V
    .locals 0
    .param p1, "ratio"    # F

    .prologue
    .line 538
    iput p1, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->E:F

    .line 539
    return-void
.end method

.method public setmCropActiveListener(Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView$a;)V
    .locals 0
    .param p1, "mCropActiveListener"    # Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView$a;

    .prologue
    .line 564
    iput-object p1, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->I:Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView$a;

    .line 565
    return-void
.end method
