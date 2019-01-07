.class public Lcom/davemorrissey/labs/subscaleview/GestureImageView;
.super Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView;
.source "GestureImageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/davemorrissey/labs/subscaleview/GestureImageView$d;,
        Lcom/davemorrissey/labs/subscaleview/GestureImageView$b;,
        Lcom/davemorrissey/labs/subscaleview/GestureImageView$e;,
        Lcom/davemorrissey/labs/subscaleview/GestureImageView$a;,
        Lcom/davemorrissey/labs/subscaleview/GestureImageView$f;,
        Lcom/davemorrissey/labs/subscaleview/GestureImageView$c;,
        Lcom/davemorrissey/labs/subscaleview/GestureImageView$g;,
        Lcom/davemorrissey/labs/subscaleview/GestureImageView$h;
    }
.end annotation


# static fields
.field private static final e:Ljava/lang/String;

.field private static final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private A:F

.field private B:F

.field private C:Landroid/graphics/PointF;

.field private D:Landroid/graphics/PointF;

.field private E:Ljava/lang/Float;

.field private F:Landroid/graphics/PointF;

.field private G:Landroid/graphics/PointF;

.field private H:I

.field private I:I

.field private J:I

.field private K:Landroid/graphics/Rect;

.field private L:Landroid/graphics/Rect;

.field private M:Z

.field private N:Z

.field private O:Z

.field private P:I

.field private Q:Landroid/view/GestureDetector;

.field private R:Livx;

.field private final S:Ljava/lang/Object;

.field private T:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Livx;",
            ">;"
        }
    .end annotation
.end field

.field private U:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Livw;",
            ">;"
        }
    .end annotation
.end field

.field private V:Landroid/graphics/PointF;

.field private W:F

.field private aa:F

.field private ab:Landroid/graphics/PointF;

.field private ac:F

.field private ad:Landroid/graphics/PointF;

.field private ae:Z

.field private af:Lcom/davemorrissey/labs/subscaleview/GestureImageView$a;

.field private ag:Z

.field private ah:Z

.field private ai:Lcom/davemorrissey/labs/subscaleview/GestureImageView$d;

.field private aj:Landroid/os/Handler;

.field private ak:Landroid/graphics/Paint;

.field private al:Landroid/graphics/Paint;

.field private am:Landroid/graphics/Paint;

.field private an:Lcom/davemorrissey/labs/subscaleview/GestureImageView$e;

.field private ao:Landroid/graphics/Matrix;

.field private ap:Landroid/graphics/RectF;

.field private aq:[F

.field private ar:[F

.field private as:I

.field private at:Z

.field private au:Z

.field private av:I

.field private k:Landroid/graphics/Bitmap;

.field private l:Z

.field private m:I

.field private n:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Lcom/davemorrissey/labs/subscaleview/GestureImageView$f;",
            ">;>;"
        }
    .end annotation
.end field

.field private o:Z

.field private p:I

.field private q:F

.field private r:F

.field private s:I

.field private t:I

.field private u:I

.field private v:Z

.field private w:Z

.field private x:Z

.field private y:F

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x0

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 77
    const-class v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->e:Ljava/lang/String;

    .line 90
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Integer;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v5

    const/16 v1, 0x5a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const/16 v1, 0xb4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    const/16 v1, 0x10e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v6

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->f:Ljava/util/List;

    .line 99
    new-array v0, v4, [Ljava/lang/Integer;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->g:Ljava/util/List;

    .line 106
    new-array v0, v3, [Ljava/lang/Integer;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->h:Ljava/util/List;

    .line 115
    new-array v0, v4, [Ljava/lang/Integer;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->i:Ljava/util/List;

    .line 126
    new-array v0, v6, [Ljava/lang/Integer;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->j:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 292
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 293
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attr"    # Landroid/util/AttributeSet;

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 259
    invoke-direct {p0, p1, p2}, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 144
    iput v2, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->p:I

    .line 147
    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->q:F

    .line 150
    invoke-direct {p0}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->o()F

    move-result v0

    iput v0, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->r:F

    .line 153
    const/4 v0, -0x1

    iput v0, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->s:I

    .line 156
    iput v1, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->t:I

    .line 159
    const/4 v0, 0x4

    iput v0, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->u:I

    .line 162
    iput-boolean v1, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->v:Z

    .line 163
    iput-boolean v1, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->w:Z

    .line 164
    iput-boolean v1, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->x:Z

    .line 167
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->y:F

    .line 168
    iput v1, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->z:I

    .line 204
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->S:Ljava/lang/Object;

    .line 205
    const-class v0, Livz;

    iput-object v0, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->T:Ljava/lang/Class;

    .line 206
    const-class v0, Livy;

    iput-object v0, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->U:Ljava/lang/Class;

    .line 243
    new-array v0, v3, [F

    iput-object v0, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->aq:[F

    .line 244
    new-array v0, v3, [F

    iput-object v0, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->ar:[F

    .line 247
    iput-boolean v2, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->at:Z

    .line 248
    iput-boolean v2, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->au:Z

    .line 251
    invoke-static {}, Landroid/view/ViewConfiguration;->getTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->av:I

    .line 260
    invoke-direct {p0, p1}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->a(Landroid/content/Context;)V

    .line 261
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attr"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 254
    invoke-direct {p0, p1, p2, p3}, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 144
    iput v2, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->p:I

    .line 147
    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->q:F

    .line 150
    invoke-direct {p0}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->o()F

    move-result v0

    iput v0, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->r:F

    .line 153
    const/4 v0, -0x1

    iput v0, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->s:I

    .line 156
    iput v1, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->t:I

    .line 159
    const/4 v0, 0x4

    iput v0, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->u:I

    .line 162
    iput-boolean v1, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->v:Z

    .line 163
    iput-boolean v1, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->w:Z

    .line 164
    iput-boolean v1, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->x:Z

    .line 167
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->y:F

    .line 168
    iput v1, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->z:I

    .line 204
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->S:Ljava/lang/Object;

    .line 205
    const-class v0, Livz;

    iput-object v0, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->T:Ljava/lang/Class;

    .line 206
    const-class v0, Livy;

    iput-object v0, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->U:Ljava/lang/Class;

    .line 243
    new-array v0, v3, [F

    iput-object v0, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->aq:[F

    .line 244
    new-array v0, v3, [F

    iput-object v0, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->ar:[F

    .line 247
    iput-boolean v2, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->at:Z

    .line 248
    iput-boolean v2, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->au:Z

    .line 251
    invoke-static {}, Landroid/view/ViewConfiguration;->getTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->av:I

    .line 255
    invoke-direct {p0, p1}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->a(Landroid/content/Context;)V

    .line 256
    return-void
.end method

.method private a(F)F
    .locals 2
    .param p1, "vx"    # F

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1985
    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->C:Landroid/graphics/PointF;

    if-nez v0, :cond_0

    const/high16 v0, 0x7fc00000    # NaNf

    .line 1986
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->C:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    sub-float v0, p1, v0

    iget v1, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->A:F

    div-float/2addr v0, v1

    goto :goto_0
.end method

.method private static a(FFFF)F
    .locals 4
    .param p0, "x0"    # F
    .param p1, "x1"    # F
    .param p2, "y0"    # F
    .param p3, "y1"    # F

    .prologue
    .line 1963
    sub-float v0, p0, p1

    .line 1964
    .local v0, "x":F
    sub-float v1, p2, p3

    .line 1965
    .local v1, "y":F
    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    return v2
.end method

.method private a(IJFFJ)F
    .locals 4
    .param p1, "type"    # I
    .param p2, "time"    # J
    .param p4, "from"    # F
    .param p5, "change"    # F
    .param p6, "duration"    # J

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v2, 0x40000000    # 2.0f

    .line 2160
    packed-switch p1, :pswitch_data_0

    .line 2166
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Unexpected easing type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50982
    :pswitch_0
    long-to-float v0, p2

    long-to-float v1, p6

    div-float/2addr v1, v2

    div-float/2addr v0, v1

    .line 50983
    cmpg-float v1, v0, v3

    if-gez v1, :cond_0

    .line 50984
    div-float v1, p5, v2

    mul-float/2addr v1, v0

    mul-float/2addr v0, v1

    add-float/2addr v0, p4

    :goto_0
    return v0

    .line 50986
    :cond_0
    sub-float/2addr v0, v3

    .line 50987
    neg-float v1, p5

    div-float/2addr v1, v2

    sub-float v2, v0, v2

    mul-float/2addr v0, v2

    sub-float/2addr v0, v3

    mul-float/2addr v0, v1

    add-float/2addr v0, p4

    .line 2162
    goto :goto_0

    .line 50988
    :pswitch_1
    long-to-float v0, p2

    long-to-float v1, p6

    div-float/2addr v0, v1

    .line 50989
    neg-float v1, p5

    mul-float/2addr v1, v0

    sub-float/2addr v0, v2

    mul-float/2addr v0, v1

    add-float/2addr v0, p4

    .line 2164
    goto :goto_0

    .line 2160
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic a(Lcom/davemorrissey/labs/subscaleview/GestureImageView;F)F
    .locals 0
    .param p0, "x0"    # Lcom/davemorrissey/labs/subscaleview/GestureImageView;
    .param p1, "x1"    # F

    .prologue
    .line 75
    iput p1, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->B:F

    return p1
.end method

.method static synthetic a(Lcom/davemorrissey/labs/subscaleview/GestureImageView;I)I
    .locals 1
    .param p0, "x0"    # Lcom/davemorrissey/labs/subscaleview/GestureImageView;
    .param p1, "x1"    # I

    .prologue
    .line 75
    const/4 v0, 0x0

    iput v0, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->P:I

    return v0
.end method

.method static synthetic a(Lcom/davemorrissey/labs/subscaleview/GestureImageView;Ljava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Lcom/davemorrissey/labs/subscaleview/GestureImageView;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 75
    invoke-static {p1}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->a(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static a(Ljava/lang/String;)I
    .locals 6
    .param p0, "sourceUri"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    .line 1813
    const/4 v1, -0x1

    .line 1814
    .local v1, "exifOrientation":I
    const-string/jumbo v3, "file:///"

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v3, "file:///android_asset/"

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1816
    :try_start_0
    new-instance v0, Landroid/media/ExifInterface;

    const/4 v3, 0x7

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 1817
    .local v0, "exifInterface":Landroid/media/ExifInterface;
    const-string/jumbo v3, "Orientation"

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v2

    .line 1818
    .local v2, "orientationAttr":I
    if-eq v2, v5, :cond_0

    if-nez v2, :cond_2

    .line 1819
    :cond_0
    const/4 v1, 0x0

    .line 1833
    .end local v0    # "exifInterface":Landroid/media/ExifInterface;
    .end local v2    # "orientationAttr":I
    :cond_1
    :goto_0
    return v1

    .line 1820
    .restart local v0    # "exifInterface":Landroid/media/ExifInterface;
    .restart local v2    # "orientationAttr":I
    :cond_2
    const/4 v3, 0x6

    if-ne v2, v3, :cond_3

    .line 1821
    const/16 v1, 0x5a

    goto :goto_0

    .line 1822
    :cond_3
    const/4 v3, 0x3

    if-ne v2, v3, :cond_4

    .line 1823
    const/16 v1, 0xb4

    goto :goto_0

    .line 1824
    :cond_4
    const/16 v3, 0x8

    if-ne v2, v3, :cond_5

    .line 1825
    const/16 v1, 0x10e

    goto :goto_0

    .line 1827
    :cond_5
    sget-object v3, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->e:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Unsupported EXIF orientation: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1830
    .end local v0    # "exifInterface":Landroid/media/ExifInterface;
    .end local v2    # "orientationAttr":I
    :catch_0
    move-exception v3

    sget-object v3, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->e:Ljava/lang/String;

    const-string/jumbo v4, "Could not get EXIF orientation of image"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private a(FFLandroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 2
    .param p1, "vx"    # F
    .param p2, "vy"    # F
    .param p3, "sTarget"    # Landroid/graphics/PointF;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 2022
    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->C:Landroid/graphics/PointF;

    if-nez v0, :cond_0

    .line 2023
    const/4 p3, 0x0

    .line 2026
    .end local p3    # "sTarget":Landroid/graphics/PointF;
    :goto_0
    return-object p3

    .line 2025
    .restart local p3    # "sTarget":Landroid/graphics/PointF;
    :cond_0
    invoke-direct {p0, p1}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->a(F)F

    move-result v0

    invoke-direct {p0, p2}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->b(F)F

    move-result v1

    invoke-virtual {p3, v0, v1}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/davemorrissey/labs/subscaleview/GestureImageView;FFFLandroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 6
    .param p0, "x0"    # Lcom/davemorrissey/labs/subscaleview/GestureImageView;
    .param p1, "x1"    # F
    .param p2, "x2"    # F
    .param p3, "x3"    # F
    .param p4, "x4"    # Landroid/graphics/PointF;

    .prologue
    const/4 v5, 0x0

    .line 75
    .line 51012
    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 51013
    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    .line 51014
    iget-object v2, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->an:Lcom/davemorrissey/labs/subscaleview/GestureImageView$e;

    if-nez v2, :cond_0

    .line 51015
    new-instance v2, Lcom/davemorrissey/labs/subscaleview/GestureImageView$e;

    new-instance v3, Landroid/graphics/PointF;

    invoke-direct {v3, v5, v5}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v4, 0x0

    invoke-direct {v2, v5, v3, v4}, Lcom/davemorrissey/labs/subscaleview/GestureImageView$e;-><init>(FLandroid/graphics/PointF;B)V

    iput-object v2, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->an:Lcom/davemorrissey/labs/subscaleview/GestureImageView$e;

    .line 51017
    :cond_0
    iget-object v2, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->an:Lcom/davemorrissey/labs/subscaleview/GestureImageView$e;

    .line 51021
    iput p3, v2, Lcom/davemorrissey/labs/subscaleview/GestureImageView$e;->a:F

    .line 51018
    iget-object v2, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->an:Lcom/davemorrissey/labs/subscaleview/GestureImageView$e;

    .line 51022
    iget-object v2, v2, Lcom/davemorrissey/labs/subscaleview/GestureImageView$e;->b:Landroid/graphics/PointF;

    .line 51018
    int-to-float v0, v0

    mul-float v3, p1, p3

    sub-float/2addr v0, v3

    int-to-float v1, v1

    mul-float v3, p2, p3

    sub-float/2addr v1, v3

    invoke-virtual {v2, v0, v1}, Landroid/graphics/PointF;->set(FF)V

    .line 51019
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->an:Lcom/davemorrissey/labs/subscaleview/GestureImageView$e;

    invoke-direct {p0, v0, v1}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->a(ZLcom/davemorrissey/labs/subscaleview/GestureImageView$e;)V

    .line 51020
    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->an:Lcom/davemorrissey/labs/subscaleview/GestureImageView$e;

    .line 51023
    iget-object v0, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView$e;->b:Landroid/graphics/PointF;

    .line 51006
    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    .line 51007
    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    .line 51008
    int-to-float v1, v1

    iget v3, v0, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v3

    div-float/2addr v1, p3

    .line 51009
    int-to-float v2, v2

    iget v0, v0, Landroid/graphics/PointF;->y:F

    sub-float v0, v2, v0

    div-float/2addr v0, p3

    .line 51010
    invoke-virtual {p4, v1, v0}, Landroid/graphics/PointF;->set(FF)V

    .line 75
    return-object p4
.end method

.method static synthetic a(Lcom/davemorrissey/labs/subscaleview/GestureImageView;Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 0
    .param p0, "x0"    # Lcom/davemorrissey/labs/subscaleview/GestureImageView;
    .param p1, "x1"    # Landroid/graphics/PointF;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->V:Landroid/graphics/PointF;

    return-object p1
.end method

.method static synthetic a(Lcom/davemorrissey/labs/subscaleview/GestureImageView;Lcom/davemorrissey/labs/subscaleview/GestureImageView$a;)Lcom/davemorrissey/labs/subscaleview/GestureImageView$a;
    .locals 0
    .param p0, "x0"    # Lcom/davemorrissey/labs/subscaleview/GestureImageView;
    .param p1, "x1"    # Lcom/davemorrissey/labs/subscaleview/GestureImageView$a;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->af:Lcom/davemorrissey/labs/subscaleview/GestureImageView$a;

    return-object p1
.end method

.method private a(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/high16 v0, 0x40800000    # 4.0f

    .line 264
    invoke-virtual {p0, v0}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->setMaxScale(F)V

    .line 265
    invoke-virtual {p0, v0}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->setDoubleTapZoomScale(F)V

    .line 266
    invoke-direct {p0, p1}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->setGestureDetector(Landroid/content/Context;)V

    .line 267
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->av:I

    .line 269
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/davemorrissey/labs/subscaleview/GestureImageView$1;

    invoke-direct {v1, p0}, Lcom/davemorrissey/labs/subscaleview/GestureImageView$1;-><init>(Lcom/davemorrissey/labs/subscaleview/GestureImageView;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->aj:Landroid/os/Handler;

    .line 288
    const/4 v0, 0x1

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    iput v0, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->aa:F

    .line 289
    return-void
.end method

.method private declared-synchronized a(Landroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "previewBitmap"    # Landroid/graphics/Bitmap;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1768
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->k:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->ah:Z

    if-eqz v0, :cond_2

    .line 1769
    :cond_0
    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->R:Livx;

    invoke-interface {v0, p1}, Livx;->a(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1783
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 1773
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->L:Landroid/graphics/Rect;

    if-eqz v0, :cond_3

    .line 1774
    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->L:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->L:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->L:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget-object v3, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->L:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-static {p1, v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->k:Landroid/graphics/Bitmap;

    .line 1778
    :goto_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->l:Z

    .line 1779
    invoke-direct {p0}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1780
    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->invalidate()V

    .line 1781
    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->requestLayout()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1768
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1776
    :cond_3
    :try_start_2
    iput-object p1, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->k:Landroid/graphics/Bitmap;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method private declared-synchronized a(Landroid/graphics/Bitmap;I)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "sOrientation"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1790
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->H:I

    if-lez v0, :cond_1

    iget v0, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->I:I

    if-lez v0, :cond_1

    iget v0, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->H:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->I:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 1791
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->a(Z)V

    .line 1793
    :cond_1
    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->k:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 1794
    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->R:Livx;

    iget-object v1, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->k:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1}, Livx;->a(Landroid/graphics/Bitmap;)V

    .line 1797
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->l:Z

    .line 1798
    iput-object p1, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->k:Landroid/graphics/Bitmap;

    .line 1799
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->H:I

    .line 1800
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->I:I

    .line 1801
    iput p2, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->J:I

    .line 1802
    invoke-direct {p0}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->h()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->i()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1803
    :cond_3
    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->invalidate()V

    .line 1804
    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->requestLayout()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1806
    :cond_4
    monitor-exit p0

    return-void

    .line 1790
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized a(Landroid/graphics/Point;)V
    .locals 21
    .param p1, "maxTileDimensions"    # Landroid/graphics/Point;

    .prologue
    .line 1248
    monitor-enter p0

    const/4 v7, 0x1

    :try_start_0
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->c(Z)V

    .line 1249
    invoke-direct/range {p0 .. p0}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->k()I

    move-result v7

    move-object/from16 v0, p0

    iput v7, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->m:I

    .line 50890
    new-instance v7, Ljava/util/LinkedHashMap;

    invoke-direct {v7}, Ljava/util/LinkedHashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->n:Ljava/util/Map;

    .line 50891
    move-object/from16 v0, p0

    iget v7, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->m:I

    .line 50892
    const/4 v12, 0x1

    .line 50893
    const/4 v9, 0x1

    move v15, v7

    .line 50895
    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->m()I

    move-result v7

    div-int v11, v7, v12

    .line 50896
    invoke-direct/range {p0 .. p0}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->n()I

    move-result v7

    div-int v8, v7, v9

    .line 50897
    div-int v10, v11, v15

    .line 50898
    div-int v7, v8, v15

    move v13, v11

    move v14, v12

    .line 50899
    :goto_1
    add-int v11, v10, v14

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v0, p1

    iget v12, v0, Landroid/graphics/Point;->x:I

    if-gt v11, v12, :cond_0

    int-to-double v10, v10

    invoke-virtual/range {p0 .. p0}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->getWidth()I

    move-result v12

    int-to-double v0, v12

    move-wide/from16 v16, v0

    const-wide/high16 v18, 0x3ff4000000000000L    # 1.25

    mul-double v16, v16, v18

    cmpl-double v10, v10, v16

    if-lez v10, :cond_a

    move-object/from16 v0, p0

    iget v10, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->m:I

    if-ge v15, v10, :cond_a

    .line 50900
    :cond_0
    add-int/lit8 v12, v14, 0x1

    .line 50901
    invoke-direct/range {p0 .. p0}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->m()I

    move-result v10

    div-int v11, v10, v12

    .line 50902
    div-int v10, v11, v15

    move v13, v11

    move v14, v12

    goto :goto_1

    .line 50904
    :goto_2
    add-int v8, v7, v12

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v0, p1

    iget v9, v0, Landroid/graphics/Point;->y:I

    if-gt v8, v9, :cond_1

    int-to-double v8, v7

    invoke-virtual/range {p0 .. p0}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->getHeight()I

    move-result v7

    int-to-double v0, v7

    move-wide/from16 v16, v0

    const-wide/high16 v18, 0x3ff4000000000000L    # 1.25

    mul-double v16, v16, v18

    cmpl-double v7, v8, v16

    if-lez v7, :cond_2

    move-object/from16 v0, p0

    iget v7, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->m:I

    if-ge v15, v7, :cond_2

    .line 50905
    :cond_1
    add-int/lit8 v9, v12, 0x1

    .line 50906
    invoke-direct/range {p0 .. p0}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->n()I

    move-result v7

    div-int v8, v7, v9

    .line 50907
    div-int v7, v8, v15

    move v11, v8

    move v12, v9

    goto :goto_2

    .line 50909
    :cond_2
    new-instance v16, Ljava/util/ArrayList;

    mul-int v7, v14, v12

    move-object/from16 v0, v16

    invoke-direct {v0, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 50910
    const/4 v7, 0x0

    move v10, v7

    :goto_3
    if-ge v10, v14, :cond_7

    .line 50911
    const/4 v7, 0x0

    move v9, v7

    :goto_4
    if-ge v9, v12, :cond_6

    .line 50912
    new-instance v17, Lcom/davemorrissey/labs/subscaleview/GestureImageView$f;

    const/4 v7, 0x0

    move-object/from16 v0, v17

    invoke-direct {v0, v7}, Lcom/davemorrissey/labs/subscaleview/GestureImageView$f;-><init>(B)V

    .line 50934
    move-object/from16 v0, v17

    iput v15, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView$f;->b:I

    .line 50914
    move-object/from16 v0, p0

    iget v7, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->m:I

    if-ne v15, v7, :cond_3

    const/4 v7, 0x1

    .line 50935
    :goto_5
    move-object/from16 v0, v17

    iput-boolean v7, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView$f;->e:Z

    .line 50915
    new-instance v18, Landroid/graphics/Rect;

    mul-int v19, v10, v13

    mul-int v20, v9, v11

    add-int/lit8 v7, v14, -0x1

    if-ne v10, v7, :cond_4

    .line 50918
    invoke-direct/range {p0 .. p0}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->m()I

    move-result v7

    move v8, v7

    :goto_6
    add-int/lit8 v7, v12, -0x1

    if-ne v9, v7, :cond_5

    .line 50919
    invoke-direct/range {p0 .. p0}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->n()I

    move-result v7

    :goto_7
    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2, v8, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 50936
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/davemorrissey/labs/subscaleview/GestureImageView$f;->a:Landroid/graphics/Rect;

    .line 50921
    new-instance v7, Landroid/graphics/Rect;

    const/4 v8, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v7, v8, v0, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 50937
    move-object/from16 v0, v17

    iput-object v7, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView$f;->f:Landroid/graphics/Rect;

    .line 50922
    new-instance v7, Landroid/graphics/Rect;

    .line 50938
    move-object/from16 v0, v17

    iget-object v8, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView$f;->a:Landroid/graphics/Rect;

    .line 50922
    invoke-direct {v7, v8}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 50939
    move-object/from16 v0, v17

    iput-object v7, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView$f;->g:Landroid/graphics/Rect;

    .line 50923
    invoke-interface/range {v16 .. v17}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50911
    add-int/lit8 v7, v9, 0x1

    move v9, v7

    goto :goto_4

    .line 50914
    :cond_3
    const/4 v7, 0x0

    goto :goto_5

    .line 50918
    :cond_4
    add-int/lit8 v7, v10, 0x1

    mul-int/2addr v7, v13

    move v8, v7

    goto :goto_6

    .line 50919
    :cond_5
    add-int/lit8 v7, v9, 0x1

    mul-int/2addr v7, v11

    goto :goto_7

    .line 50910
    :cond_6
    add-int/lit8 v7, v10, 0x1

    move v10, v7

    goto/16 :goto_3

    .line 50926
    :cond_7
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->n:Ljava/util/Map;

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v0, v16

    invoke-interface {v7, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50927
    const/4 v7, 0x1

    if-eq v15, v7, :cond_8

    .line 50930
    div-int/lit8 v7, v15, 0x2

    move v9, v12

    move v15, v7

    move v12, v14

    .line 50932
    goto/16 :goto_0

    .line 1253
    :cond_8
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->n:Ljava/util/Map;

    move-object/from16 v0, p0

    iget v8, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->m:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1254
    .local v4, "baseGrid":Ljava/util/List;, "Ljava/util/List<Lcom/davemorrissey/labs/subscaleview/GestureImageView$f;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_8
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/davemorrissey/labs/subscaleview/GestureImageView$f;

    .line 1255
    .local v5, "baseTile":Lcom/davemorrissey/labs/subscaleview/GestureImageView$f;
    new-instance v6, Lcom/davemorrissey/labs/subscaleview/GestureImageView$g;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->R:Livx;

    move-object/from16 v0, p0

    invoke-direct {v6, v0, v8, v5}, Lcom/davemorrissey/labs/subscaleview/GestureImageView$g;-><init>(Lcom/davemorrissey/labs/subscaleview/GestureImageView;Livx;Lcom/davemorrissey/labs/subscaleview/GestureImageView$f;)V

    .line 1256
    .local v6, "task":Lcom/davemorrissey/labs/subscaleview/GestureImageView$g;
    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Void;

    invoke-virtual {v6, v8}, Lcom/davemorrissey/labs/subscaleview/GestureImageView$g;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_8

    .line 1248
    .end local v4    # "baseGrid":Ljava/util/List;, "Ljava/util/List<Lcom/davemorrissey/labs/subscaleview/GestureImageView$f;>;"
    .end local v5    # "baseTile":Lcom/davemorrissey/labs/subscaleview/GestureImageView$f;
    .end local v6    # "task":Lcom/davemorrissey/labs/subscaleview/GestureImageView$g;
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7

    .line 1259
    .restart local v4    # "baseGrid":Ljava/util/List;, "Ljava/util/List<Lcom/davemorrissey/labs/subscaleview/GestureImageView$f;>;"
    :cond_9
    monitor-exit p0

    return-void

    .end local v4    # "baseGrid":Ljava/util/List;, "Ljava/util/List<Lcom/davemorrissey/labs/subscaleview/GestureImageView$f;>;"
    :cond_a
    move v11, v8

    move v12, v9

    goto/16 :goto_2
.end method

.method private a(Landroid/graphics/PointF;Landroid/graphics/PointF;)V
    .locals 10
    .param p1, "sCenter"    # Landroid/graphics/PointF;
    .param p2, "vFocus"    # Landroid/graphics/PointF;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 968
    iget-boolean v0, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->v:Z

    if-nez v0, :cond_0

    .line 969
    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->G:Landroid/graphics/PointF;

    if-eqz v0, :cond_2

    .line 971
    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->G:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iput v0, p1, Landroid/graphics/PointF;->x:F

    .line 972
    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->G:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iput v0, p1, Landroid/graphics/PointF;->y:F

    .line 979
    :cond_0
    :goto_0
    iget v0, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->q:F

    iget v1, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->y:F

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 980
    .local v2, "doubleTapZoomScale":F
    iget v0, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->A:F

    float-to-double v0, v0

    float-to-double v4, v2

    const-wide v8, 0x3feccccccccccccdL    # 0.9

    mul-double/2addr v4, v8

    cmpg-double v0, v0, v4

    if-gtz v0, :cond_3

    const/4 v7, 0x1

    .line 981
    .local v7, "zoomIn":Z
    :goto_1
    if-eqz v7, :cond_4

    move v6, v2

    .line 982
    .local v6, "targetScale":F
    :goto_2
    iget v0, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->z:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_5

    .line 17338
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->af:Lcom/davemorrissey/labs/subscaleview/GestureImageView$a;

    .line 17339
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->E:Ljava/lang/Float;

    .line 17340
    iput-object p1, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->F:Landroid/graphics/PointF;

    .line 17341
    iput-object p1, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->G:Landroid/graphics/PointF;

    .line 17342
    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->invalidate()V

    .line 989
    :cond_1
    :goto_3
    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->invalidate()V

    .line 990
    return-void

    .line 975
    .end local v2    # "doubleTapZoomScale":F
    .end local v6    # "targetScale":F
    .end local v7    # "zoomIn":Z
    :cond_2
    invoke-direct {p0}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->m()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iput v0, p1, Landroid/graphics/PointF;->x:F

    .line 976
    invoke-direct {p0}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->n()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iput v0, p1, Landroid/graphics/PointF;->y:F

    goto :goto_0

    .line 980
    .restart local v2    # "doubleTapZoomScale":F
    :cond_3
    const/4 v7, 0x0

    goto :goto_1

    .line 981
    .restart local v7    # "zoomIn":Z
    :cond_4
    invoke-direct {p0}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->o()F

    move-result v6

    goto :goto_2

    .line 984
    .restart local v6    # "targetScale":F
    :cond_5
    iget v0, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->z:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_6

    if-eqz v7, :cond_6

    iget-boolean v0, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->v:Z

    if-nez v0, :cond_7

    .line 985
    :cond_6
    new-instance v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v6, p1, v1}, Lcom/davemorrissey/labs/subscaleview/GestureImageView$b;-><init>(Lcom/davemorrissey/labs/subscaleview/GestureImageView;FLandroid/graphics/PointF;B)V

    .line 17646
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView$b;->b:Z

    .line 985
    invoke-virtual {v0}, Lcom/davemorrissey/labs/subscaleview/GestureImageView$b;->a()V

    goto :goto_3

    .line 986
    :cond_7
    iget v0, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->z:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 987
    new-instance v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView$b;

    const/4 v5, 0x0

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/davemorrissey/labs/subscaleview/GestureImageView$b;-><init>(Lcom/davemorrissey/labs/subscaleview/GestureImageView;FLandroid/graphics/PointF;Landroid/graphics/PointF;B)V

    .line 18646
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView$b;->b:Z

    .line 987
    invoke-virtual {v0}, Lcom/davemorrissey/labs/subscaleview/GestureImageView$b;->a()V

    goto :goto_3
.end method

.method private a(Landroid/view/MotionEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x1

    .line 949
    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->c:Lhck;

    if-eqz v0, :cond_1

    .line 950
    iget v0, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->A:F

    iget v1, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->B:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget v0, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->B:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 952
    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->c:Lhck;

    .line 17117
    iput-boolean v2, v0, Lhck;->a:Z

    .line 954
    :cond_0
    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->c:Lhck;

    invoke-virtual {v0, p0, p1}, Lhck;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 955
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_1

    .line 957
    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->aj:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 961
    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/davemorrissey/labs/subscaleview/GestureImageView;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcom/davemorrissey/labs/subscaleview/GestureImageView;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->setGestureDetector(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/davemorrissey/labs/subscaleview/GestureImageView;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p0, "x0"    # Lcom/davemorrissey/labs/subscaleview/GestureImageView;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic a(Lcom/davemorrissey/labs/subscaleview/GestureImageView;Landroid/graphics/Bitmap;I)V
    .locals 0
    .param p0, "x0"    # Lcom/davemorrissey/labs/subscaleview/GestureImageView;
    .param p1, "x1"    # Landroid/graphics/Bitmap;
    .param p2, "x2"    # I

    .prologue
    .line 75
    invoke-direct {p0, p1, p2}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->a(Landroid/graphics/Bitmap;I)V

    return-void
.end method

.method static synthetic a(Lcom/davemorrissey/labs/subscaleview/GestureImageView;Landroid/graphics/PointF;Landroid/graphics/PointF;)V
    .locals 0
    .param p0, "x0"    # Lcom/davemorrissey/labs/subscaleview/GestureImageView;
    .param p1, "x1"    # Landroid/graphics/PointF;
    .param p2, "x2"    # Landroid/graphics/PointF;

    .prologue
    .line 75
    invoke-direct {p0, p1, p2}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->a(Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    return-void
.end method

.method static synthetic a(Lcom/davemorrissey/labs/subscaleview/GestureImageView;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 5
    .param p0, "x0"    # Lcom/davemorrissey/labs/subscaleview/GestureImageView;
    .param p1, "x1"    # Landroid/graphics/Rect;
    .param p2, "x2"    # Landroid/graphics/Rect;

    .prologue
    .line 75
    .line 50995
    invoke-direct {p0}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->getRequiredRotation()I

    move-result v0

    if-nez v0, :cond_0

    .line 50996
    invoke-virtual {p2, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 51000
    :goto_0
    return-void

    .line 50997
    :cond_0
    invoke-direct {p0}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->getRequiredRotation()I

    move-result v0

    const/16 v1, 0x5a

    if-ne v0, v1, :cond_1

    .line 50998
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->I:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    iget v3, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->I:I

    iget v4, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 50999
    :cond_1
    invoke-direct {p0}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->getRequiredRotation()I

    move-result v0

    const/16 v1, 0xb4

    if-ne v0, v1, :cond_2

    .line 51000
    iget v0, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->H:I

    iget v1, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->I:I

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->H:I

    iget v3, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->I:I

    iget v4, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 51002
    :cond_2
    iget v0, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->H:I

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->H:I

    iget v3, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    iget v3, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/davemorrissey/labs/subscaleview/GestureImageView;Livx;III)V
    .locals 0
    .param p0, "x0"    # Lcom/davemorrissey/labs/subscaleview/GestureImageView;
    .param p1, "x1"    # Livx;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .prologue
    .line 75
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->a(Livx;III)V

    return-void
.end method

.method static synthetic a(Lcom/davemorrissey/labs/subscaleview/GestureImageView;ZLcom/davemorrissey/labs/subscaleview/GestureImageView$e;)V
    .locals 1
    .param p0, "x0"    # Lcom/davemorrissey/labs/subscaleview/GestureImageView;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Lcom/davemorrissey/labs/subscaleview/GestureImageView$e;

    .prologue
    .line 75
    const/4 v0, 0x1

    invoke-direct {p0, v0, p2}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->a(ZLcom/davemorrissey/labs/subscaleview/GestureImageView$e;)V

    return-void
.end method

.method private declared-synchronized a(Livx;III)V
    .locals 3
    .param p1, "decoder"    # Livx;
    .param p2, "sWidth"    # I
    .param p3, "sHeight"    # I
    .param p4, "sOrientation"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 1604
    monitor-enter p0

    :try_start_0
    iget v1, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->H:I

    if-lez v1, :cond_1

    iget v1, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->I:I

    if-lez v1, :cond_1

    iget v1, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->H:I

    if-ne v1, p2, :cond_0

    iget v1, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->I:I

    if-eq v1, p3, :cond_1

    .line 1605
    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->a(Z)V

    .line 1606
    iget-object v1, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->k:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    .line 1607
    iget-object v1, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->k:Landroid/graphics/Bitmap;

    invoke-interface {p1, v1}, Livx;->a(Landroid/graphics/Bitmap;)V

    .line 1608
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->k:Landroid/graphics/Bitmap;

    .line 1609
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->l:Z

    .line 1612
    :cond_1
    iput-object p1, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->R:Livx;

    .line 1613
    iput p2, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->H:I

    .line 1614
    iput p3, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->I:I

    .line 1615
    iput p4, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->J:I

    .line 1617
    mul-int v1, p2, p3

    shl-int/lit8 v1, v1, 0x1

    const/high16 v2, 0xa00000

    if-le v1, v2, :cond_2

    const/4 v0, 0x1

    :cond_2
    iput-boolean v0, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->at:Z

    .line 1618
    invoke-direct {p0}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->h()Z

    .line 1619
    invoke-direct {p0}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->i()Z

    .line 1620
    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->invalidate()V

    .line 1621
    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->requestLayout()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1622
    monitor-exit p0

    return-void

    .line 1604
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private a(Z)V
    .locals 8
    .param p1, "newImage"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 529
    iput v3, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->A:F

    .line 530
    iput v3, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->B:F

    .line 531
    iput-object v6, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->C:Landroid/graphics/PointF;

    .line 532
    iput-object v6, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->D:Landroid/graphics/PointF;

    .line 533
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iput-object v2, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->E:Ljava/lang/Float;

    .line 534
    iput-object v6, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->F:Landroid/graphics/PointF;

    .line 535
    iput-object v6, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->G:Landroid/graphics/PointF;

    .line 536
    iput-boolean v7, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->M:Z

    .line 537
    iput-boolean v7, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->N:Z

    .line 538
    iput-boolean v7, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->O:Z

    .line 539
    iput v7, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->P:I

    .line 540
    iput v7, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->m:I

    .line 541
    iput-object v6, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->V:Landroid/graphics/PointF;

    .line 542
    iput v3, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->W:F

    .line 543
    iput-object v6, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->ab:Landroid/graphics/PointF;

    .line 544
    iput v3, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->ac:F

    .line 545
    iput-object v6, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->ad:Landroid/graphics/PointF;

    .line 546
    iput-boolean v7, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->ae:Z

    .line 547
    iput-object v6, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->af:Lcom/davemorrissey/labs/subscaleview/GestureImageView$a;

    .line 548
    iput-object v6, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->an:Lcom/davemorrissey/labs/subscaleview/GestureImageView$e;

    .line 549
    iput-object v6, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->ao:Landroid/graphics/Matrix;

    .line 550
    iput-object v6, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->ap:Landroid/graphics/RectF;

    .line 552
    iget-object v2, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->n:Ljava/util/Map;

    if-eqz v2, :cond_3

    .line 553
    iget-object v2, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->n:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 554
    .local v1, "tileMapEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/List<Lcom/davemorrissey/labs/subscaleview/GestureImageView$f;>;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView$f;

    .line 13836
    .local v0, "tile":Lcom/davemorrissey/labs/subscaleview/GestureImageView$f;
    iput-boolean v7, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView$f;->e:Z

    .line 14836
    iget-object v4, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView$f;->c:Landroid/graphics/Bitmap;

    .line 556
    if-eqz v4, :cond_1

    .line 557
    iget-object v4, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->R:Livx;

    .line 15836
    iget-object v5, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView$f;->c:Landroid/graphics/Bitmap;

    .line 557
    invoke-interface {v4, v5}, Livx;->a(Landroid/graphics/Bitmap;)V

    .line 16836
    iput-object v6, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView$f;->c:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 562
    .end local v0    # "tile":Lcom/davemorrissey/labs/subscaleview/GestureImageView$f;
    .end local v1    # "tileMapEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/List<Lcom/davemorrissey/labs/subscaleview/GestureImageView$f;>;>;"
    :cond_2
    iput-object v6, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->n:Ljava/util/Map;

    .line 564
    :cond_3
    if-eqz p1, :cond_5

    .line 565
    iget-object v2, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->R:Livx;

    if-eqz v2, :cond_4

    .line 566
    iget-object v2, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->R:Livx;

    iget-object v3, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->k:Landroid/graphics/Bitmap;

    invoke-interface {v2, v3}, Livx;->a(Landroid/graphics/Bitmap;)V

    .line 567
    iget-object v3, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->S:Ljava/lang/Object;

    monitor-enter v3

    .line 568
    :try_start_0
    iget-object v2, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->R:Livx;

    invoke-interface {v2}, Livx;->b()V

    .line 569
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->R:Livx;

    .line 570
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 572
    :cond_4
    iput v7, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->H:I

    .line 573
    iput v7, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->I:I

    .line 574
    iput v7, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->J:I

    .line 575
    iput-object v6, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->K:Landroid/graphics/Rect;

    .line 576
    iput-object v6, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->L:Landroid/graphics/Rect;

    .line 577
    iput-boolean v7, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->ag:Z

    .line 578
    iput-boolean v7, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->ah:Z

    .line 579
    iput-object v6, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->k:Landroid/graphics/Bitmap;

    .line 580
    iput-boolean v7, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->l:Z

    .line 582
    :cond_5
    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->setGestureDetector(Landroid/content/Context;)V

    .line 583
    return-void

    .line 570
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private a(ZLcom/davemorrissey/labs/subscaleview/GestureImageView$e;)V
    .locals 11
    .param p1, "center"    # Z
    .param p2, "sat"    # Lcom/davemorrissey/labs/subscaleview/GestureImageView$e;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1421
    iget v8, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->t:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_0

    .line 50967
    iget-boolean v8, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->ag:Z

    .line 1421
    if-eqz v8, :cond_0

    .line 1422
    const/4 p1, 0x0

    .line 50968
    :cond_0
    iget-object v5, p2, Lcom/davemorrissey/labs/subscaleview/GestureImageView$e;->b:Landroid/graphics/PointF;

    .line 50969
    .local v5, "vTranslate":Landroid/graphics/PointF;
    iget v8, p2, Lcom/davemorrissey/labs/subscaleview/GestureImageView$e;->a:F

    .line 1426
    invoke-direct {p0, v8}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->e(F)F

    move-result v2

    .line 1427
    .local v2, "scale":F
    invoke-direct {p0}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->m()I

    move-result v8

    int-to-float v8, v8

    mul-float v4, v2, v8

    .line 1428
    .local v4, "scaleWidth":F
    invoke-direct {p0}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->n()I

    move-result v8

    int-to-float v8, v8

    mul-float v3, v2, v8

    .line 1430
    .local v3, "scaleHeight":F
    iget v8, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->t:I

    const/4 v9, 0x3

    if-ne v8, v9, :cond_3

    .line 50970
    iget-boolean v8, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->ag:Z

    .line 1430
    if-eqz v8, :cond_3

    .line 1431
    iget v8, v5, Landroid/graphics/PointF;->x:F

    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->getWidth()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    sub-float/2addr v9, v4

    invoke-static {v8, v9}, Ljava/lang/Math;->max(FF)F

    move-result v8

    iput v8, v5, Landroid/graphics/PointF;->x:F

    .line 1432
    iget v8, v5, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->getHeight()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    sub-float/2addr v9, v3

    invoke-static {v8, v9}, Ljava/lang/Math;->max(FF)F

    move-result v8

    iput v8, v5, Landroid/graphics/PointF;->y:F

    .line 1442
    :goto_0
    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->getPaddingLeft()I

    move-result v8

    if-gtz v8, :cond_1

    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->getPaddingRight()I

    move-result v8

    if-lez v8, :cond_5

    :cond_1
    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->getPaddingLeft()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->getPaddingLeft()I

    move-result v9

    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->getPaddingRight()I

    move-result v10

    add-int/2addr v9, v10

    int-to-float v9, v9

    div-float v6, v8, v9

    .line 1443
    .local v6, "xPaddingRatio":F
    :goto_1
    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->getPaddingTop()I

    move-result v8

    if-gtz v8, :cond_2

    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->getPaddingBottom()I

    move-result v8

    if-lez v8, :cond_6

    :cond_2
    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->getPaddingTop()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->getPaddingTop()I

    move-result v9

    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->getPaddingBottom()I

    move-result v10

    add-int/2addr v9, v10

    int-to-float v9, v9

    div-float v7, v8, v9

    .line 1447
    .local v7, "yPaddingRatio":F
    :goto_2
    iget v8, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->t:I

    const/4 v9, 0x3

    if-ne v8, v9, :cond_7

    .line 50971
    iget-boolean v8, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->ag:Z

    .line 1447
    if-eqz v8, :cond_7

    .line 1448
    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->getWidth()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    int-to-float v0, v8

    .line 1449
    .local v0, "maxTx":F
    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->getHeight()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    int-to-float v1, v8

    .line 1458
    .local v1, "maxTy":F
    :goto_3
    iget v8, v5, Landroid/graphics/PointF;->x:F

    invoke-static {v8, v0}, Ljava/lang/Math;->min(FF)F

    move-result v8

    iput v8, v5, Landroid/graphics/PointF;->x:F

    .line 1459
    iget v8, v5, Landroid/graphics/PointF;->y:F

    invoke-static {v8, v1}, Ljava/lang/Math;->min(FF)F

    move-result v8

    iput v8, v5, Landroid/graphics/PointF;->y:F

    .line 50972
    iput v2, p2, Lcom/davemorrissey/labs/subscaleview/GestureImageView$e;->a:F

    .line 1462
    return-void

    .line 1433
    .end local v0    # "maxTx":F
    .end local v1    # "maxTy":F
    .end local v6    # "xPaddingRatio":F
    .end local v7    # "yPaddingRatio":F
    :cond_3
    if-eqz p1, :cond_4

    .line 1434
    iget v8, v5, Landroid/graphics/PointF;->x:F

    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->getWidth()I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v9, v4

    invoke-static {v8, v9}, Ljava/lang/Math;->max(FF)F

    move-result v8

    iput v8, v5, Landroid/graphics/PointF;->x:F

    .line 1435
    iget v8, v5, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->getHeight()I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v9, v3

    invoke-static {v8, v9}, Ljava/lang/Math;->max(FF)F

    move-result v8

    iput v8, v5, Landroid/graphics/PointF;->y:F

    goto/16 :goto_0

    .line 1437
    :cond_4
    iget v8, v5, Landroid/graphics/PointF;->x:F

    neg-float v9, v4

    invoke-static {v8, v9}, Ljava/lang/Math;->max(FF)F

    move-result v8

    iput v8, v5, Landroid/graphics/PointF;->x:F

    .line 1438
    iget v8, v5, Landroid/graphics/PointF;->y:F

    neg-float v9, v3

    invoke-static {v8, v9}, Ljava/lang/Math;->max(FF)F

    move-result v8

    iput v8, v5, Landroid/graphics/PointF;->y:F

    goto/16 :goto_0

    .line 1442
    :cond_5
    const/high16 v6, 0x3f000000    # 0.5f

    goto/16 :goto_1

    .line 1443
    .restart local v6    # "xPaddingRatio":F
    :cond_6
    const/high16 v7, 0x3f000000    # 0.5f

    goto :goto_2

    .line 1450
    .restart local v7    # "yPaddingRatio":F
    :cond_7
    if-eqz p1, :cond_8

    .line 1451
    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->getWidth()I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v9, v4

    mul-float/2addr v9, v6

    invoke-static {v8, v9}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 1452
    .restart local v0    # "maxTx":F
    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->getHeight()I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v9, v3

    mul-float/2addr v9, v7

    invoke-static {v8, v9}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .restart local v1    # "maxTy":F
    goto :goto_3

    .line 1454
    .end local v0    # "maxTx":F
    .end local v1    # "maxTy":F
    :cond_8
    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->getWidth()I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    int-to-float v0, v8

    .line 1455
    .restart local v0    # "maxTx":F
    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->getHeight()I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    int-to-float v1, v8

    .restart local v1    # "maxTy":F
    goto/16 :goto_3
.end method

.method private static a([FFFFFFFFF)V
    .locals 1
    .param p0, "array"    # [F
    .param p1, "f0"    # F
    .param p2, "f1"    # F
    .param p3, "f2"    # F
    .param p4, "f3"    # F
    .param p5, "f4"    # F
    .param p6, "f5"    # F
    .param p7, "f6"    # F
    .param p8, "f7"    # F

    .prologue
    .line 1158
    const/4 v0, 0x0

    aput p1, p0, v0

    .line 1159
    const/4 v0, 0x1

    aput p2, p0, v0

    .line 1160
    const/4 v0, 0x2

    aput p3, p0, v0

    .line 1161
    const/4 v0, 0x3

    aput p4, p0, v0

    .line 1162
    const/4 v0, 0x4

    aput p5, p0, v0

    .line 1163
    const/4 v0, 0x5

    aput p6, p0, v0

    .line 1164
    const/4 v0, 0x6

    aput p7, p0, v0

    .line 1165
    const/4 v0, 0x7

    aput p8, p0, v0

    .line 1166
    return-void
.end method

.method static synthetic a(Lcom/davemorrissey/labs/subscaleview/GestureImageView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/davemorrissey/labs/subscaleview/GestureImageView;

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->h()Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/davemorrissey/labs/subscaleview/GestureImageView;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/davemorrissey/labs/subscaleview/GestureImageView;
    .param p1, "x1"    # Z

    .prologue
    .line 75
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->O:Z

    return v0
.end method

.method private b(F)F
    .locals 2
    .param p1, "vy"    # F

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1993
    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->C:Landroid/graphics/PointF;

    if-nez v0, :cond_0

    const/high16 v0, 0x7fc00000    # NaNf

    .line 1994
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->C:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    sub-float v0, p1, v0

    iget v1, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->A:F

    div-float/2addr v0, v1

    goto :goto_0
.end method

.method static synthetic b(Lcom/davemorrissey/labs/subscaleview/GestureImageView;F)F
    .locals 1
    .param p0, "x0"    # Lcom/davemorrissey/labs/subscaleview/GestureImageView;
    .param p1, "x1"    # F

    .prologue
    .line 75
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->ac:F

    return v0
.end method

.method static synthetic b(Lcom/davemorrissey/labs/subscaleview/GestureImageView;Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 0
    .param p0, "x0"    # Lcom/davemorrissey/labs/subscaleview/GestureImageView;
    .param p1, "x1"    # Landroid/graphics/PointF;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->D:Landroid/graphics/PointF;

    return-object p1
.end method

.method private b(Z)V
    .locals 11
    .param p1, "load"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1267
    iget-object v4, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->R:Livx;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->n:Ljava/util/Map;

    if-nez v4, :cond_1

    .line 1302
    :cond_0
    return-void

    .line 1269
    :cond_1
    iget v4, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->m:I

    invoke-direct {p0}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->k()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1273
    .local v0, "sampleSize":I
    iget-object v4, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->n:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 1274
    .local v3, "tileMapEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/List<Lcom/davemorrissey/labs/subscaleview/GestureImageView$f;>;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/davemorrissey/labs/subscaleview/GestureImageView$f;

    .line 50940
    .local v2, "tile":Lcom/davemorrissey/labs/subscaleview/GestureImageView$f;
    iget v4, v2, Lcom/davemorrissey/labs/subscaleview/GestureImageView$f;->b:I

    .line 1275
    if-lt v4, v0, :cond_4

    .line 50941
    iget v4, v2, Lcom/davemorrissey/labs/subscaleview/GestureImageView$f;->b:I

    .line 1275
    if-le v4, v0, :cond_5

    .line 50942
    iget v4, v2, Lcom/davemorrissey/labs/subscaleview/GestureImageView$f;->b:I

    .line 1275
    iget v7, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->m:I

    if-eq v4, v7, :cond_5

    .line 1276
    :cond_4
    const/4 v4, 0x0

    .line 50943
    iput-boolean v4, v2, Lcom/davemorrissey/labs/subscaleview/GestureImageView$f;->e:Z

    .line 50944
    iget-object v4, v2, Lcom/davemorrissey/labs/subscaleview/GestureImageView$f;->c:Landroid/graphics/Bitmap;

    .line 1277
    if-eqz v4, :cond_5

    .line 1278
    iget-object v4, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->R:Livx;

    .line 50945
    iget-object v7, v2, Lcom/davemorrissey/labs/subscaleview/GestureImageView$f;->c:Landroid/graphics/Bitmap;

    .line 1278
    invoke-interface {v4, v7}, Livx;->a(Landroid/graphics/Bitmap;)V

    .line 1279
    const/4 v4, 0x0

    .line 50946
    iput-object v4, v2, Lcom/davemorrissey/labs/subscaleview/GestureImageView$f;->c:Landroid/graphics/Bitmap;

    .line 50947
    :cond_5
    iget v4, v2, Lcom/davemorrissey/labs/subscaleview/GestureImageView$f;->b:I

    .line 1282
    if-ne v4, v0, :cond_8

    .line 50948
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->a(F)F

    move-result v4

    .line 50949
    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->getWidth()I

    move-result v7

    int-to-float v7, v7

    invoke-direct {p0, v7}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->a(F)F

    move-result v7

    .line 50950
    const/4 v8, 0x0

    invoke-direct {p0, v8}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->b(F)F

    move-result v8

    .line 50951
    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->getHeight()I

    move-result v9

    int-to-float v9, v9

    invoke-direct {p0, v9}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->b(F)F

    move-result v9

    .line 50953
    iget-object v10, v2, Lcom/davemorrissey/labs/subscaleview/GestureImageView$f;->a:Landroid/graphics/Rect;

    .line 50952
    iget v10, v10, Landroid/graphics/Rect;->right:I

    int-to-float v10, v10

    cmpl-float v4, v4, v10

    if-gtz v4, :cond_6

    .line 50954
    iget-object v4, v2, Lcom/davemorrissey/labs/subscaleview/GestureImageView$f;->a:Landroid/graphics/Rect;

    .line 50952
    iget v4, v4, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    cmpl-float v4, v4, v7

    if-gtz v4, :cond_6

    .line 50955
    iget-object v4, v2, Lcom/davemorrissey/labs/subscaleview/GestureImageView$f;->a:Landroid/graphics/Rect;

    .line 50952
    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    cmpl-float v4, v8, v4

    if-gtz v4, :cond_6

    .line 50956
    iget-object v4, v2, Lcom/davemorrissey/labs/subscaleview/GestureImageView$f;->a:Landroid/graphics/Rect;

    .line 50952
    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    cmpl-float v4, v4, v9

    if-gtz v4, :cond_6

    const/4 v4, 0x1

    .line 1283
    :goto_1
    if-eqz v4, :cond_7

    .line 1284
    const/4 v4, 0x1

    .line 50957
    iput-boolean v4, v2, Lcom/davemorrissey/labs/subscaleview/GestureImageView$f;->e:Z

    .line 50958
    iget-boolean v4, v2, Lcom/davemorrissey/labs/subscaleview/GestureImageView$f;->d:Z

    .line 1285
    if-nez v4, :cond_3

    .line 50959
    iget-object v4, v2, Lcom/davemorrissey/labs/subscaleview/GestureImageView$f;->c:Landroid/graphics/Bitmap;

    .line 1285
    if-nez v4, :cond_3

    if-eqz p1, :cond_3

    .line 1286
    new-instance v1, Lcom/davemorrissey/labs/subscaleview/GestureImageView$g;

    iget-object v4, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->R:Livx;

    invoke-direct {v1, p0, v4, v2}, Lcom/davemorrissey/labs/subscaleview/GestureImageView$g;-><init>(Lcom/davemorrissey/labs/subscaleview/GestureImageView;Livx;Lcom/davemorrissey/labs/subscaleview/GestureImageView$f;)V

    .line 1287
    .local v1, "task":Lcom/davemorrissey/labs/subscaleview/GestureImageView$g;
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Void;

    invoke-virtual {v1, v4}, Lcom/davemorrissey/labs/subscaleview/GestureImageView$g;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 50952
    .end local v1    # "task":Lcom/davemorrissey/labs/subscaleview/GestureImageView$g;
    :cond_6
    const/4 v4, 0x0

    goto :goto_1

    .line 50960
    :cond_7
    iget v4, v2, Lcom/davemorrissey/labs/subscaleview/GestureImageView$f;->b:I

    .line 1289
    iget v7, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->m:I

    if-eq v4, v7, :cond_3

    .line 1290
    const/4 v4, 0x0

    .line 50961
    iput-boolean v4, v2, Lcom/davemorrissey/labs/subscaleview/GestureImageView$f;->e:Z

    .line 50962
    iget-object v4, v2, Lcom/davemorrissey/labs/subscaleview/GestureImageView$f;->c:Landroid/graphics/Bitmap;

    .line 1291
    if-eqz v4, :cond_3

    .line 1292
    iget-object v4, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->R:Livx;

    .line 50963
    iget-object v7, v2, Lcom/davemorrissey/labs/subscaleview/GestureImageView$f;->c:Landroid/graphics/Bitmap;

    .line 1292
    invoke-interface {v4, v7}, Livx;->a(Landroid/graphics/Bitmap;)V

    .line 1293
    const/4 v4, 0x0

    .line 50964
    iput-object v4, v2, Lcom/davemorrissey/labs/subscaleview/GestureImageView$f;->c:Landroid/graphics/Bitmap;

    goto/16 :goto_0

    .line 50965
    :cond_8
    iget v4, v2, Lcom/davemorrissey/labs/subscaleview/GestureImageView$f;->b:I

    .line 1296
    iget v7, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->m:I

    if-ne v4, v7, :cond_3

    .line 1297
    const/4 v4, 0x1

    .line 50966
    iput-boolean v4, v2, Lcom/davemorrissey/labs/subscaleview/GestureImageView$f;->e:Z

    goto/16 :goto_0
.end method

.method static synthetic b(Lcom/davemorrissey/labs/subscaleview/GestureImageView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/davemorrissey/labs/subscaleview/GestureImageView;

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->v:Z

    return v0
.end method

.method static synthetic b(Lcom/davemorrissey/labs/subscaleview/GestureImageView;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/davemorrissey/labs/subscaleview/GestureImageView;
    .param p1, "x1"    # Z

    .prologue
    .line 75
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->M:Z

    return v0
.end method

.method private c(F)F
    .locals 2
    .param p1, "sx"    # F

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 2033
    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->C:Landroid/graphics/PointF;

    if-nez v0, :cond_0

    const/high16 v0, 0x7fc00000    # NaNf

    .line 2034
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->A:F

    mul-float/2addr v0, p1

    iget-object v1, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->C:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    add-float/2addr v0, v1

    goto :goto_0
.end method

.method static synthetic c(Lcom/davemorrissey/labs/subscaleview/GestureImageView;F)F
    .locals 1
    .param p0, "x0"    # Lcom/davemorrissey/labs/subscaleview/GestureImageView;
    .param p1, "x1"    # F

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->e(F)F

    move-result v0

    return v0
.end method

.method static synthetic c(Lcom/davemorrissey/labs/subscaleview/GestureImageView;Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 0
    .param p0, "x0"    # Lcom/davemorrissey/labs/subscaleview/GestureImageView;
    .param p1, "x1"    # Landroid/graphics/PointF;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->ab:Landroid/graphics/PointF;

    return-object p1
.end method

.method private c(Z)V
    .locals 5
    .param p1, "center"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 1470
    :goto_0
    const/4 v0, 0x0

    .line 1471
    .local v0, "init":Z
    iget-object v1, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->C:Landroid/graphics/PointF;

    if-nez v1, :cond_0

    .line 1472
    const/4 v0, 0x1

    .line 1473
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1, v4, v4}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v1, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->C:Landroid/graphics/PointF;

    .line 1475
    :cond_0
    iget-object v1, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->an:Lcom/davemorrissey/labs/subscaleview/GestureImageView$e;

    if-nez v1, :cond_1

    .line 1476
    new-instance v1, Lcom/davemorrissey/labs/subscaleview/GestureImageView$e;

    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2, v4, v4}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v3, 0x0

    invoke-direct {v1, v4, v2, v3}, Lcom/davemorrissey/labs/subscaleview/GestureImageView$e;-><init>(FLandroid/graphics/PointF;B)V

    iput-object v1, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->an:Lcom/davemorrissey/labs/subscaleview/GestureImageView$e;

    .line 1478
    :cond_1
    iget-object v1, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->an:Lcom/davemorrissey/labs/subscaleview/GestureImageView$e;

    iget v2, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->A:F

    .line 50973
    iput v2, v1, Lcom/davemorrissey/labs/subscaleview/GestureImageView$e;->a:F

    .line 1479
    iget-object v1, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->an:Lcom/davemorrissey/labs/subscaleview/GestureImageView$e;

    .line 50974
    iget-object v1, v1, Lcom/davemorrissey/labs/subscaleview/GestureImageView$e;->b:Landroid/graphics/PointF;

    .line 1479
    iget-object v2, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->C:Landroid/graphics/PointF;

    invoke-virtual {v1, v2}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 1480
    iget-object v1, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->an:Lcom/davemorrissey/labs/subscaleview/GestureImageView$e;

    invoke-direct {p0, p1, v1}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->a(ZLcom/davemorrissey/labs/subscaleview/GestureImageView$e;)V

    .line 1481
    iget-object v1, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->an:Lcom/davemorrissey/labs/subscaleview/GestureImageView$e;

    .line 50975
    iget v1, v1, Lcom/davemorrissey/labs/subscaleview/GestureImageView$e;->a:F

    .line 1481
    iput v1, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->A:F

    .line 1482
    iget-object v1, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->C:Landroid/graphics/PointF;

    iget-object v2, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->an:Lcom/davemorrissey/labs/subscaleview/GestureImageView$e;

    .line 50976
    iget-object v2, v2, Lcom/davemorrissey/labs/subscaleview/GestureImageView$e;->b:Landroid/graphics/PointF;

    .line 1482
    invoke-virtual {v1, v2}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 1483
    if-eqz v0, :cond_2

    .line 1484
    const/4 p1, 0x1

    goto :goto_0

    .line 1486
    :cond_2
    return-void
.end method

.method static synthetic c(Lcom/davemorrissey/labs/subscaleview/GestureImageView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/davemorrissey/labs/subscaleview/GestureImageView;

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->ag:Z

    return v0
.end method

.method static synthetic c(Lcom/davemorrissey/labs/subscaleview/GestureImageView;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/davemorrissey/labs/subscaleview/GestureImageView;
    .param p1, "x1"    # Z

    .prologue
    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->ae:Z

    return v0
.end method

.method private d(F)F
    .locals 2
    .param p1, "sy"    # F

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 2041
    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->C:Landroid/graphics/PointF;

    if-nez v0, :cond_0

    const/high16 v0, 0x7fc00000    # NaNf

    .line 2042
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->A:F

    mul-float/2addr v0, p1

    iget-object v1, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->C:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    add-float/2addr v0, v1

    goto :goto_0
.end method

.method static synthetic d(Lcom/davemorrissey/labs/subscaleview/GestureImageView;)Landroid/graphics/PointF;
    .locals 1
    .param p0, "x0"    # Lcom/davemorrissey/labs/subscaleview/GestureImageView;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->C:Landroid/graphics/PointF;

    return-object v0
.end method

.method static synthetic d(Lcom/davemorrissey/labs/subscaleview/GestureImageView;Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 0
    .param p0, "x0"    # Lcom/davemorrissey/labs/subscaleview/GestureImageView;
    .param p1, "x1"    # Landroid/graphics/PointF;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->ad:Landroid/graphics/PointF;

    return-object p1
.end method

.method static synthetic d(Lcom/davemorrissey/labs/subscaleview/GestureImageView;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/davemorrissey/labs/subscaleview/GestureImageView;
    .param p1, "x1"    # Z

    .prologue
    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->au:Z

    return v0
.end method

.method private e(F)F
    .locals 1
    .param p1, "targetScale"    # F

    .prologue
    .line 2145
    invoke-direct {p0}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->o()F

    move-result v0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 2146
    iget v0, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->q:F

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 2147
    return p1
.end method

.method static synthetic e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/davemorrissey/labs/subscaleview/GestureImageView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/davemorrissey/labs/subscaleview/GestureImageView;

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->M:Z

    return v0
.end method

.method static synthetic f(Lcom/davemorrissey/labs/subscaleview/GestureImageView;)F
    .locals 1
    .param p0, "x0"    # Lcom/davemorrissey/labs/subscaleview/GestureImageView;

    .prologue
    .line 75
    iget v0, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->A:F

    return v0
.end method

.method static synthetic f()Ljava/util/List;
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->h:Ljava/util/List;

    return-object v0
.end method

.method private g()Z
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1172
    iget-object v3, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->k:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->l:Z

    if-nez v3, :cond_1

    .line 1173
    const/4 v0, 0x1

    .line 1187
    :cond_0
    :goto_0
    return v0

    .line 1174
    :cond_1
    iget-object v3, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->n:Ljava/util/Map;

    if-eqz v3, :cond_5

    .line 1175
    const/4 v0, 0x1

    .line 1176
    .local v0, "baseLayerReady":Z
    iget-object v3, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->n:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1177
    .local v2, "tileMapEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/List<Lcom/davemorrissey/labs/subscaleview/GestureImageView$f;>;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget v5, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->m:I

    if-ne v3, v5, :cond_2

    .line 1178
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/davemorrissey/labs/subscaleview/GestureImageView$f;

    .line 50888
    .local v1, "tile":Lcom/davemorrissey/labs/subscaleview/GestureImageView$f;
    iget-boolean v5, v1, Lcom/davemorrissey/labs/subscaleview/GestureImageView$f;->d:Z

    .line 1179
    if-nez v5, :cond_4

    .line 50889
    iget-object v5, v1, Lcom/davemorrissey/labs/subscaleview/GestureImageView$f;->c:Landroid/graphics/Bitmap;

    .line 1179
    if-nez v5, :cond_3

    .line 1180
    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    .line 1187
    .end local v0    # "baseLayerReady":Z
    .end local v1    # "tile":Lcom/davemorrissey/labs/subscaleview/GestureImageView$f;
    .end local v2    # "tileMapEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/List<Lcom/davemorrissey/labs/subscaleview/GestureImageView$f;>;>;"
    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic g(Lcom/davemorrissey/labs/subscaleview/GestureImageView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/davemorrissey/labs/subscaleview/GestureImageView;

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->w:Z

    return v0
.end method

.method private getInitScaleAndTranslate()Lcom/davemorrissey/labs/subscaleview/GestureImageView$e;
    .locals 11

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v10, 0x0

    const/4 v7, 0x0

    const/high16 v8, 0x40000000    # 2.0f

    .line 1340
    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->getMeasuredWidth()I

    move-result v6

    int-to-float v2, v6

    .line 1341
    .local v2, "displayWidth":F
    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->getMeasuredHeight()I

    move-result v6

    int-to-float v1, v6

    .line 1343
    .local v1, "displayHeight":F
    cmpl-float v6, v2, v7

    if-eqz v6, :cond_0

    cmpl-float v6, v1, v7

    if-eqz v6, :cond_0

    iget v6, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->H:I

    if-lez v6, :cond_0

    iget v6, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->I:I

    if-gtz v6, :cond_1

    .line 1344
    :cond_0
    const/4 v6, 0x0

    .line 1368
    :goto_0
    return-object v6

    .line 1347
    :cond_1
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    .line 1350
    .local v3, "fitMatrix":Landroid/graphics/Matrix;
    iget v6, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->H:I

    iget v7, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->I:I

    div-int/2addr v6, v7

    int-to-float v6, v6

    div-float v7, v2, v1

    cmpl-float v6, v6, v7

    if-lez v6, :cond_2

    .line 1351
    iget v6, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->H:I

    int-to-float v6, v6

    div-float v4, v2, v6

    .line 1357
    .local v4, "scale":F
    :goto_1
    iget v6, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->H:I

    neg-int v6, v6

    int-to-float v6, v6

    div-float/2addr v6, v8

    iget v7, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->I:I

    neg-int v7, v7

    int-to-float v7, v7

    div-float/2addr v7, v8

    invoke-virtual {v3, v6, v7}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1358
    invoke-virtual {v3, v4, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 1359
    div-float v6, v2, v8

    div-float v7, v1, v8

    invoke-virtual {v3, v6, v7}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1361
    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->getMatrixBaseFit()Landroid/graphics/Matrix;

    move-result-object v0

    .line 1362
    .local v0, "baseMatrix":Landroid/graphics/Matrix;
    invoke-virtual {v3, v0}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 1364
    const/16 v6, 0x9

    new-array v5, v6, [F

    .line 1365
    .local v5, "values":[F
    invoke-virtual {v3, v5}, Landroid/graphics/Matrix;->getValues([F)V

    .line 1366
    aget v6, v5, v10

    const/4 v7, 0x4

    aget v7, v5, v7

    add-float/2addr v6, v7

    div-float v4, v6, v8

    .line 1368
    new-instance v6, Lcom/davemorrissey/labs/subscaleview/GestureImageView$e;

    new-instance v7, Landroid/graphics/PointF;

    const/4 v8, 0x2

    aget v8, v5, v8

    const/4 v9, 0x5

    aget v9, v5, v9

    invoke-direct {v7, v8, v9}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-direct {v6, v4, v7, v10}, Lcom/davemorrissey/labs/subscaleview/GestureImageView$e;-><init>(FLandroid/graphics/PointF;B)V

    goto :goto_0

    .line 1353
    .end local v0    # "baseMatrix":Landroid/graphics/Matrix;
    .end local v4    # "scale":F
    .end local v5    # "values":[F
    :cond_2
    iget v6, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->I:I

    int-to-float v6, v6

    div-float v4, v1, v6

    .restart local v4    # "scale":F
    goto :goto_1
.end method

.method private static getMaxBitmapDimensions$1b044117()Landroid/graphics/Point;
    .locals 2

    .prologue
    const/16 v1, 0x200

    .line 1901
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    return-object v0
.end method

.method private getRequiredRotation()I
    .locals 1

    .prologue
    .line 1951
    iget v0, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->J:I

    return v0
.end method

.method private h()Z
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x1

    .line 1196
    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->getWidth()I

    move-result v2

    if-lez v2, :cond_2

    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->getHeight()I

    move-result v2

    if-lez v2, :cond_2

    iget v2, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->H:I

    if-lez v2, :cond_2

    iget v2, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->I:I

    if-lez v2, :cond_2

    iget-object v2, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->k:Landroid/graphics/Bitmap;

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->g()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    move v0, v1

    .line 1197
    .local v0, "ready":Z
    :goto_0
    iget-boolean v2, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->ag:Z

    if-nez v2, :cond_1

    if-eqz v0, :cond_1

    .line 1198
    invoke-direct {p0}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->j()V

    .line 1199
    iput-boolean v1, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->ag:Z

    .line 1201
    iget-object v1, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->ai:Lcom/davemorrissey/labs/subscaleview/GestureImageView$d;

    if-eqz v1, :cond_1

    .line 1202
    iget-object v1, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->ai:Lcom/davemorrissey/labs/subscaleview/GestureImageView$d;

    invoke-interface {v1}, Lcom/davemorrissey/labs/subscaleview/GestureImageView$d;->l()V

    .line 1205
    :cond_1
    return v0

    .line 1196
    .end local v0    # "ready":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic h(Lcom/davemorrissey/labs/subscaleview/GestureImageView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/davemorrissey/labs/subscaleview/GestureImageView;

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->x:Z

    return v0
.end method

.method static synthetic i(Lcom/davemorrissey/labs/subscaleview/GestureImageView;)Landroid/graphics/PointF;
    .locals 1
    .param p0, "x0"    # Lcom/davemorrissey/labs/subscaleview/GestureImageView;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->V:Landroid/graphics/PointF;

    return-object v0
.end method

.method private i()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1213
    invoke-direct {p0}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->g()Z

    move-result v0

    .line 1214
    .local v0, "imageLoaded":Z
    iget-boolean v1, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->ah:Z

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    .line 1215
    invoke-direct {p0}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->j()V

    .line 1216
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->ah:Z

    .line 1218
    iget-object v1, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->ai:Lcom/davemorrissey/labs/subscaleview/GestureImageView$d;

    if-eqz v1, :cond_0

    .line 1219
    iget-object v1, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->ai:Lcom/davemorrissey/labs/subscaleview/GestureImageView$d;

    invoke-interface {v1}, Lcom/davemorrissey/labs/subscaleview/GestureImageView$d;->m()V

    .line 1222
    :cond_0
    return v0
.end method

.method static synthetic j(Lcom/davemorrissey/labs/subscaleview/GestureImageView;)Landroid/graphics/PointF;
    .locals 1
    .param p0, "x0"    # Lcom/davemorrissey/labs/subscaleview/GestureImageView;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->ab:Landroid/graphics/PointF;

    return-object v0
.end method

.method private j()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1319
    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->getWidth()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->getHeight()I

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->H:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->I:I

    if-gtz v0, :cond_1

    .line 1336
    :cond_0
    :goto_0
    return-void

    .line 1324
    :cond_1
    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->F:Landroid/graphics/PointF;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->E:Ljava/lang/Float;

    if-eqz v0, :cond_2

    .line 1325
    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->E:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->A:F

    .line 1326
    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->C:Landroid/graphics/PointF;

    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->A:F

    iget-object v3, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->F:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 1327
    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->C:Landroid/graphics/PointF;

    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->A:F

    iget-object v3, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->F:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/PointF;->y:F

    .line 1328
    iput-object v5, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->F:Landroid/graphics/PointF;

    .line 1329
    iput-object v5, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->E:Ljava/lang/Float;

    .line 1330
    invoke-direct {p0, v4}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->c(Z)V

    .line 1331
    invoke-direct {p0, v4}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->b(Z)V

    .line 1335
    :cond_2
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->c(Z)V

    goto :goto_0
.end method

.method private k()I
    .locals 11

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1375
    iget v0, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->A:F

    .line 1376
    .local v0, "adjustedScale":F
    iget-boolean v9, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->at:Z

    if-eqz v9, :cond_3

    .line 1377
    const/high16 v9, 0x3f000000    # 0.5f

    mul-float/2addr v0, v9

    .line 1384
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->m()I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v9, v0

    float-to-int v7, v9

    .line 1385
    .local v7, "reqWidth":I
    invoke-direct {p0}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->n()I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v9, v0

    float-to-int v6, v9

    .line 1388
    .local v6, "reqHeight":I
    const/4 v3, 0x1

    .line 1389
    .local v3, "inSampleSize":I
    if-eqz v7, :cond_1

    if-nez v6, :cond_4

    .line 1390
    :cond_1
    const/16 v5, 0x20

    .line 1410
    :cond_2
    return v5

    .line 1378
    .end local v3    # "inSampleSize":I
    .end local v6    # "reqHeight":I
    .end local v7    # "reqWidth":I
    :cond_3
    iget v9, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->s:I

    if-lez v9, :cond_0

    .line 1379
    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 1380
    .local v4, "metrics":Landroid/util/DisplayMetrics;
    iget v9, v4, Landroid/util/DisplayMetrics;->xdpi:F

    iget v10, v4, Landroid/util/DisplayMetrics;->ydpi:F

    add-float/2addr v9, v10

    const/high16 v10, 0x40000000    # 2.0f

    div-float v1, v9, v10

    .line 1381
    .local v1, "averageDpi":F
    iget v9, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->s:I

    int-to-float v9, v9

    div-float/2addr v9, v1

    iget v10, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->A:F

    mul-float v0, v9, v10

    goto :goto_0

    .line 1393
    .end local v1    # "averageDpi":F
    .end local v4    # "metrics":Landroid/util/DisplayMetrics;
    .restart local v3    # "inSampleSize":I
    .restart local v6    # "reqHeight":I
    .restart local v7    # "reqWidth":I
    :cond_4
    invoke-direct {p0}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->n()I

    move-result v9

    if-gt v9, v6, :cond_5

    invoke-direct {p0}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->m()I

    move-result v9

    if-le v9, v7, :cond_6

    .line 1396
    :cond_5
    invoke-direct {p0}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->n()I

    move-result v9

    int-to-float v9, v9

    int-to-float v10, v6

    div-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 1397
    .local v2, "heightRatio":I
    invoke-direct {p0}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->m()I

    move-result v9

    int-to-float v9, v9

    int-to-float v10, v7

    div-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v8

    .line 1402
    .local v8, "widthRatio":I
    if-ge v2, v8, :cond_7

    move v3, v2

    .line 1406
    .end local v2    # "heightRatio":I
    .end local v8    # "widthRatio":I
    :cond_6
    :goto_1
    const/4 v5, 0x1

    .line 1407
    .local v5, "power":I
    :goto_2
    shl-int/lit8 v9, v5, 0x1

    if-gt v9, v3, :cond_2

    .line 1408
    shl-int/lit8 v5, v5, 0x1

    goto :goto_2

    .end local v5    # "power":I
    .restart local v2    # "heightRatio":I
    .restart local v8    # "widthRatio":I
    :cond_7
    move v3, v8

    .line 1402
    goto :goto_1
.end method

.method static synthetic k(Lcom/davemorrissey/labs/subscaleview/GestureImageView;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Lcom/davemorrissey/labs/subscaleview/GestureImageView;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->K:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic l(Lcom/davemorrissey/labs/subscaleview/GestureImageView;)Lcom/davemorrissey/labs/subscaleview/GestureImageView$d;
    .locals 1
    .param p0, "x0"    # Lcom/davemorrissey/labs/subscaleview/GestureImageView;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->ai:Lcom/davemorrissey/labs/subscaleview/GestureImageView$d;

    return-object v0
.end method

.method private declared-synchronized l()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1694
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->h()Z

    .line 1695
    invoke-direct {p0}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->i()Z

    .line 1696
    invoke-direct {p0}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->k:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 1697
    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->R:Livx;

    iget-object v1, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->k:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1}, Livx;->a(Landroid/graphics/Bitmap;)V

    .line 1699
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->k:Landroid/graphics/Bitmap;

    .line 1700
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->l:Z

    .line 1702
    :cond_0
    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->invalidate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1703
    monitor-exit p0

    return-void

    .line 1694
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private m()I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1909
    invoke-direct {p0}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->getRequiredRotation()I

    move-result v0

    .line 1910
    .local v0, "rotation":I
    const/16 v1, 0x5a

    if-eq v0, v1, :cond_0

    const/16 v1, 0x10e

    if-ne v0, v1, :cond_1

    .line 1911
    :cond_0
    iget v1, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->I:I

    .line 1913
    :goto_0
    return v1

    :cond_1
    iget v1, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->H:I

    goto :goto_0
.end method

.method static synthetic m(Lcom/davemorrissey/labs/subscaleview/GestureImageView;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/davemorrissey/labs/subscaleview/GestureImageView;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->S:Ljava/lang/Object;

    return-object v0
.end method

.method private n()I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1922
    invoke-direct {p0}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->getRequiredRotation()I

    move-result v0

    .line 1923
    .local v0, "rotation":I
    const/16 v1, 0x5a

    if-eq v0, v1, :cond_0

    const/16 v1, 0x10e

    if-ne v0, v1, :cond_1

    .line 1924
    :cond_0
    iget v1, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->H:I

    .line 1926
    :goto_0
    return v1

    :cond_1
    iget v1, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->I:I

    goto :goto_0
.end method

.method static synthetic n(Lcom/davemorrissey/labs/subscaleview/GestureImageView;)V
    .locals 0
    .param p0, "x0"    # Lcom/davemorrissey/labs/subscaleview/GestureImageView;

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->l()V

    return-void
.end method

.method private o()F
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/high16 v6, 0x40800000    # 4.0f

    .line 2125
    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->getPaddingBottom()I

    move-result v4

    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->getPaddingTop()I

    move-result v5

    add-int v3, v4, v5

    .line 2126
    .local v3, "vPadding":I
    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->getPaddingLeft()I

    move-result v4

    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->getPaddingRight()I

    move-result v5

    add-int v0, v4, v5

    .line 2127
    .local v0, "hPadding":I
    iget v4, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->u:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 2128
    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->getWidth()I

    move-result v4

    sub-int/2addr v4, v0

    int-to-float v4, v4

    invoke-direct {p0}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->m()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->getHeight()I

    move-result v5

    sub-int/2addr v5, v3

    int-to-float v5, v5

    invoke-direct {p0}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->n()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 2137
    :goto_0
    return v2

    .line 2129
    :cond_0
    iget v4, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->u:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_1

    .line 2130
    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->getWidth()I

    move-result v4

    sub-int/2addr v4, v0

    int-to-float v4, v4

    invoke-direct {p0}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->m()I

    move-result v5

    int-to-float v5, v5

    div-float v2, v4, v5

    .line 2131
    .local v2, "minScale":F
    mul-float v4, v2, v6

    invoke-static {v4, v6}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 2132
    .local v1, "maxScale":F
    invoke-virtual {p0, v1}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->setMaxScale(F)V

    goto :goto_0

    .line 2134
    .end local v1    # "maxScale":F
    .end local v2    # "minScale":F
    :cond_1
    iget v4, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->u:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_2

    iget v4, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->r:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-lez v4, :cond_2

    .line 2135
    iget v2, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->r:F

    goto :goto_0

    .line 2137
    :cond_2
    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->getWidth()I

    move-result v4

    sub-int/2addr v4, v0

    int-to-float v4, v4

    invoke-direct {p0}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->m()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->getHeight()I

    move-result v5

    sub-int/2addr v5, v3

    int-to-float v5, v5

    invoke-direct {p0}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->n()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v2

    goto :goto_0
.end method

.method static synthetic o(Lcom/davemorrissey/labs/subscaleview/GestureImageView;)Lcom/davemorrissey/labs/subscaleview/GestureImageView$a;
    .locals 1
    .param p0, "x0"    # Lcom/davemorrissey/labs/subscaleview/GestureImageView;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->af:Lcom/davemorrissey/labs/subscaleview/GestureImageView$a;

    return-object v0
.end method

.method private setGestureDetector(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 586
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/davemorrissey/labs/subscaleview/GestureImageView$2;

    invoke-direct {v1, p0, p1}, Lcom/davemorrissey/labs/subscaleview/GestureImageView$2;-><init>(Lcom/davemorrissey/labs/subscaleview/GestureImageView;Landroid/content/Context;)V

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->Q:Landroid/view/GestureDetector;

    .line 638
    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 3
    .param p1, "vxy"    # Landroid/graphics/PointF;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 2001
    iget v0, p1, Landroid/graphics/PointF;->x:F

    iget v1, p1, Landroid/graphics/PointF;->y:F

    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2}, Landroid/graphics/PointF;-><init>()V

    invoke-direct {p0, v0, v1, v2}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->a(FFLandroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;I)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "orientation"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x1

    .line 342
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 343
    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->d()V

    .line 355
    :goto_0
    return-void

    .line 348
    :cond_0
    iput-boolean v2, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->au:Z

    .line 3305
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 3309
    packed-switch p2, :pswitch_data_0

    .line 3320
    :cond_1
    :pswitch_0
    const/4 v1, 0x0

    iput v1, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->as:I

    .line 4075
    :goto_1
    if-nez p1, :cond_2

    .line 4076
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "Uri must not be null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3311
    :pswitch_1
    const/16 v1, 0x5a

    iput v1, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->as:I

    goto :goto_1

    .line 3314
    :pswitch_2
    const/16 v1, 0xb4

    iput v1, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->as:I

    goto :goto_1

    .line 3317
    :pswitch_3
    const/16 v1, 0x10e

    iput v1, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->as:I

    goto :goto_1

    .line 4084
    :cond_2
    new-instance v0, Livv;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, v1}, Livv;-><init>(Landroid/net/Uri;)V

    .line 4133
    .local v0, "imageSource":Livv;
    iput-boolean v2, v0, Livv;->b:Z

    .line 354
    invoke-virtual {p0, v0}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->setImage(Livv;)V

    goto :goto_0

    .line 3309
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 381
    invoke-direct {p0}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->h()Z

    move-result v0

    if-nez v0, :cond_0

    .line 382
    invoke-super {p0}, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView;->a()Z

    move-result v0

    .line 388
    :goto_0
    return v0

    .line 385
    :cond_0
    iget-boolean v0, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->M:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->O:Z

    if-eqz v0, :cond_2

    .line 386
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 388
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final b(Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 4
    .param p1, "sxy"    # Landroid/graphics/PointF;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 2049
    iget v1, p1, Landroid/graphics/PointF;->x:F

    iget v2, p1, Landroid/graphics/PointF;->y:F

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    .line 50977
    iget-object v3, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->C:Landroid/graphics/PointF;

    if-nez v3, :cond_0

    .line 50978
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 50980
    :cond_0
    invoke-direct {p0, v1}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->c(F)F

    move-result v1

    invoke-direct {p0, v2}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->d(F)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 394
    invoke-direct {p0}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->h()Z

    move-result v0

    if-nez v0, :cond_0

    .line 395
    invoke-super {p0}, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView;->b()Z

    move-result v0

    .line 401
    :goto_0
    return v0

    .line 398
    :cond_0
    iget-boolean v0, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->M:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->O:Z

    if-eqz v0, :cond_2

    .line 399
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 401
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 407
    invoke-super {p0}, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView;->c()V

    .line 408
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->a(Z)V

    .line 409
    return-void
.end method

.method public final d()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 1975
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->a(Z)V

    .line 1976
    iput-object v1, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->ak:Landroid/graphics/Paint;

    .line 1977
    iput-object v1, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->al:Landroid/graphics/Paint;

    .line 1978
    iput-object v1, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->am:Landroid/graphics/Paint;

    .line 1979
    return-void
.end method

.method public final getAppliedOrientation()I
    .locals 1

    .prologue
    .line 2422
    invoke-direct {p0}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->getRequiredRotation()I

    move-result v0

    return v0
.end method

.method public final getCenter()Landroid/graphics/PointF;
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 2319
    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->getWidth()I

    move-result v2

    div-int/lit8 v0, v2, 0x2

    .line 2320
    .local v0, "mX":I
    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->getHeight()I

    move-result v2

    div-int/lit8 v1, v2, 0x2

    .line 2321
    .local v1, "mY":I
    int-to-float v2, v0

    int-to-float v3, v1

    .line 50993
    new-instance v4, Landroid/graphics/PointF;

    invoke-direct {v4}, Landroid/graphics/PointF;-><init>()V

    invoke-direct {p0, v2, v3, v4}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->a(FFLandroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v2

    .line 2321
    return-object v2
.end method

.method public getMaxScale()F
    .locals 1

    .prologue
    .line 2287
    iget v0, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->q:F

    return v0
.end method

.method public final getMinScale()F
    .locals 1

    .prologue
    .line 2294
    invoke-direct {p0}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->o()F

    move-result v0

    return v0
.end method

.method public final getOrientation()I
    .locals 1

    .prologue
    .line 2414
    iget v0, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->p:I

    return v0
.end method

.method public final getSHeight()I
    .locals 1

    .prologue
    .line 2406
    iget v0, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->I:I

    return v0
.end method

.method public final getSWidth()I
    .locals 1

    .prologue
    .line 2398
    iget v0, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->H:I

    return v0
.end method

.method public final getScale()F
    .locals 1

    .prologue
    .line 2328
    iget v0, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->A:F

    return v0
.end method

.method public final getState()Lcom/davemorrissey/labs/subscaleview/ImageViewState;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 2430
    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->C:Landroid/graphics/PointF;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->H:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->I:I

    if-lez v0, :cond_0

    .line 2431
    new-instance v0, Lcom/davemorrissey/labs/subscaleview/ImageViewState;

    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->getScale()F

    move-result v1

    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->getCenter()Landroid/graphics/PointF;

    move-result-object v2

    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->getOrientation()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/davemorrissey/labs/subscaleview/ImageViewState;-><init>(FLandroid/graphics/PointF;I)V

    .line 2433
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 28
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 998
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->au:Z

    if-nez v2, :cond_1

    .line 999
    invoke-super/range {p0 .. p1}, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 1152
    :cond_0
    :goto_0
    return-void

    .line 19229
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->ak:Landroid/graphics/Paint;

    if-nez v2, :cond_2

    .line 19230
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->ak:Landroid/graphics/Paint;

    .line 19231
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->ak:Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 19232
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->ak:Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 19233
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->ak:Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setDither(Z)V

    .line 19235
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->al:Landroid/graphics/Paint;

    if-nez v2, :cond_3

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->o:Z

    if-eqz v2, :cond_3

    .line 19236
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->al:Landroid/graphics/Paint;

    .line 19237
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->al:Landroid/graphics/Paint;

    const/high16 v3, 0x41900000    # 18.0f

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 19238
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->al:Landroid/graphics/Paint;

    const v3, -0xff01

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 19239
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->al:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1005
    :cond_3
    move-object/from16 v0, p0

    iget v2, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->H:I

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget v2, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->I:I

    if-eqz v2, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->getWidth()I

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->getHeight()I

    move-result v2

    if-nez v2, :cond_5

    .line 1006
    :cond_4
    invoke-super/range {p0 .. p1}, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView;->onDraw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 1011
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->n:Ljava/util/Map;

    if-nez v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->R:Livx;

    if-eqz v2, :cond_6

    .line 19901
    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x200

    const/16 v6, 0x200

    invoke-direct {v2, v3, v6}, Landroid/graphics/Point;-><init>(II)V

    .line 1012
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->a(Landroid/graphics/Point;)V

    .line 1018
    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->h()Z

    move-result v2

    if-nez v2, :cond_7

    .line 1019
    invoke-super/range {p0 .. p1}, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView;->onDraw(Landroid/graphics/Canvas;)V

    goto/16 :goto_0

    .line 1024
    :cond_7
    invoke-direct/range {p0 .. p0}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->j()V

    .line 1027
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->af:Lcom/davemorrissey/labs/subscaleview/GestureImageView$a;

    if-eqz v2, :cond_a

    .line 1028
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->af:Lcom/davemorrissey/labs/subscaleview/GestureImageView$a;

    .line 20850
    iget-wide v6, v6, Lcom/davemorrissey/labs/subscaleview/GestureImageView$a;->k:J

    .line 1028
    sub-long v4, v2, v6

    .line 1029
    .local v4, "scaleElapsed":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->af:Lcom/davemorrissey/labs/subscaleview/GestureImageView$a;

    .line 21850
    iget-wide v2, v2, Lcom/davemorrissey/labs/subscaleview/GestureImageView$a;->h:J

    .line 1029
    cmp-long v2, v4, v2

    if-lez v2, :cond_e

    const/16 v16, 0x1

    .line 1030
    .local v16, "finished":Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->af:Lcom/davemorrissey/labs/subscaleview/GestureImageView$a;

    .line 22850
    iget-wide v2, v2, Lcom/davemorrissey/labs/subscaleview/GestureImageView$a;->h:J

    .line 1030
    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    .line 1031
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->af:Lcom/davemorrissey/labs/subscaleview/GestureImageView$a;

    .line 23850
    iget v3, v2, Lcom/davemorrissey/labs/subscaleview/GestureImageView$a;->j:I

    .line 1031
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->af:Lcom/davemorrissey/labs/subscaleview/GestureImageView$a;

    .line 24850
    iget v6, v2, Lcom/davemorrissey/labs/subscaleview/GestureImageView$a;->a:F

    .line 1031
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->af:Lcom/davemorrissey/labs/subscaleview/GestureImageView$a;

    .line 25850
    iget v2, v2, Lcom/davemorrissey/labs/subscaleview/GestureImageView$a;->b:F

    .line 1031
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->af:Lcom/davemorrissey/labs/subscaleview/GestureImageView$a;

    .line 26850
    iget v7, v7, Lcom/davemorrissey/labs/subscaleview/GestureImageView$a;->a:F

    .line 1031
    sub-float v7, v2, v7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->af:Lcom/davemorrissey/labs/subscaleview/GestureImageView$a;

    .line 27850
    iget-wide v8, v2, Lcom/davemorrissey/labs/subscaleview/GestureImageView$a;->h:J

    move-object/from16 v2, p0

    .line 1031
    invoke-direct/range {v2 .. v9}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->a(IJFFJ)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->A:F

    .line 1034
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->af:Lcom/davemorrissey/labs/subscaleview/GestureImageView$a;

    .line 28850
    iget v3, v2, Lcom/davemorrissey/labs/subscaleview/GestureImageView$a;->j:I

    .line 1034
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->af:Lcom/davemorrissey/labs/subscaleview/GestureImageView$a;

    .line 29850
    iget-object v2, v2, Lcom/davemorrissey/labs/subscaleview/GestureImageView$a;->f:Landroid/graphics/PointF;

    .line 1034
    iget v6, v2, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->af:Lcom/davemorrissey/labs/subscaleview/GestureImageView$a;

    .line 30850
    iget-object v2, v2, Lcom/davemorrissey/labs/subscaleview/GestureImageView$a;->g:Landroid/graphics/PointF;

    .line 1034
    iget v2, v2, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->af:Lcom/davemorrissey/labs/subscaleview/GestureImageView$a;

    .line 31850
    iget-object v7, v7, Lcom/davemorrissey/labs/subscaleview/GestureImageView$a;->f:Landroid/graphics/PointF;

    .line 1034
    iget v7, v7, Landroid/graphics/PointF;->x:F

    sub-float v7, v2, v7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->af:Lcom/davemorrissey/labs/subscaleview/GestureImageView$a;

    .line 32850
    iget-wide v8, v2, Lcom/davemorrissey/labs/subscaleview/GestureImageView$a;->h:J

    move-object/from16 v2, p0

    .line 1034
    invoke-direct/range {v2 .. v9}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->a(IJFFJ)F

    move-result v24

    .line 1035
    .local v24, "vFocusNowX":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->af:Lcom/davemorrissey/labs/subscaleview/GestureImageView$a;

    .line 33850
    iget v3, v2, Lcom/davemorrissey/labs/subscaleview/GestureImageView$a;->j:I

    .line 1035
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->af:Lcom/davemorrissey/labs/subscaleview/GestureImageView$a;

    .line 34850
    iget-object v2, v2, Lcom/davemorrissey/labs/subscaleview/GestureImageView$a;->f:Landroid/graphics/PointF;

    .line 1035
    iget v6, v2, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->af:Lcom/davemorrissey/labs/subscaleview/GestureImageView$a;

    .line 35850
    iget-object v2, v2, Lcom/davemorrissey/labs/subscaleview/GestureImageView$a;->g:Landroid/graphics/PointF;

    .line 1035
    iget v2, v2, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->af:Lcom/davemorrissey/labs/subscaleview/GestureImageView$a;

    .line 36850
    iget-object v7, v7, Lcom/davemorrissey/labs/subscaleview/GestureImageView$a;->f:Landroid/graphics/PointF;

    .line 1035
    iget v7, v7, Landroid/graphics/PointF;->y:F

    sub-float v7, v2, v7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->af:Lcom/davemorrissey/labs/subscaleview/GestureImageView$a;

    .line 37850
    iget-wide v8, v2, Lcom/davemorrissey/labs/subscaleview/GestureImageView$a;->h:J

    move-object/from16 v2, p0

    .line 1035
    invoke-direct/range {v2 .. v9}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->a(IJFFJ)F

    move-result v25

    .line 1037
    .local v25, "vFocusNowY":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->C:Landroid/graphics/PointF;

    iget v3, v2, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->af:Lcom/davemorrissey/labs/subscaleview/GestureImageView$a;

    .line 38850
    iget-object v6, v6, Lcom/davemorrissey/labs/subscaleview/GestureImageView$a;->d:Landroid/graphics/PointF;

    .line 1037
    iget v6, v6, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->c(F)F

    move-result v6

    sub-float v6, v6, v24

    sub-float/2addr v3, v6

    iput v3, v2, Landroid/graphics/PointF;->x:F

    .line 1038
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->C:Landroid/graphics/PointF;

    iget v3, v2, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->af:Lcom/davemorrissey/labs/subscaleview/GestureImageView$a;

    .line 39850
    iget-object v6, v6, Lcom/davemorrissey/labs/subscaleview/GestureImageView$a;->d:Landroid/graphics/PointF;

    .line 1038
    iget v6, v6, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->d(F)F

    move-result v6

    sub-float v6, v6, v25

    sub-float/2addr v3, v6

    iput v3, v2, Landroid/graphics/PointF;->y:F

    .line 1041
    if-nez v16, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->af:Lcom/davemorrissey/labs/subscaleview/GestureImageView$a;

    .line 40850
    iget v2, v2, Lcom/davemorrissey/labs/subscaleview/GestureImageView$a;->a:F

    .line 1041
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->af:Lcom/davemorrissey/labs/subscaleview/GestureImageView$a;

    .line 41850
    iget v3, v3, Lcom/davemorrissey/labs/subscaleview/GestureImageView$a;->b:F

    .line 1041
    cmpl-float v2, v2, v3

    if-nez v2, :cond_f

    :cond_8
    const/4 v2, 0x1

    :goto_2
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->c(Z)V

    .line 1042
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->b(Z)V

    .line 1043
    if-eqz v16, :cond_9

    .line 1044
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->af:Lcom/davemorrissey/labs/subscaleview/GestureImageView$a;

    .line 1046
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->invalidate()V

    .line 1049
    .end local v4    # "scaleElapsed":J
    .end local v16    # "finished":Z
    .end local v24    # "vFocusNowX":F
    .end local v25    # "vFocusNowY":F
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->n:Ljava/util/Map;

    if-eqz v2, :cond_1d

    invoke-direct/range {p0 .. p0}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->g()Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 1052
    move-object/from16 v0, p0

    iget v2, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->m:I

    invoke-direct/range {p0 .. p0}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->k()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v18

    .line 1055
    .local v18, "sampleSize":I
    const/16 v17, 0x0

    .line 1056
    .local v17, "hasMissingTiles":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->n:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/util/Map$Entry;

    .line 1057
    .local v20, "tileMapEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/List<Lcom/davemorrissey/labs/subscaleview/GestureImageView$f;>;>;"
    invoke-interface/range {v20 .. v20}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move/from16 v0, v18

    if-ne v2, v0, :cond_b

    .line 1058
    invoke-interface/range {v20 .. v20}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_c
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/davemorrissey/labs/subscaleview/GestureImageView$f;

    .line 42836
    .local v19, "tile":Lcom/davemorrissey/labs/subscaleview/GestureImageView$f;
    move-object/from16 v0, v19

    iget-boolean v6, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView$f;->e:Z

    .line 1059
    if-eqz v6, :cond_c

    .line 43836
    move-object/from16 v0, v19

    iget-boolean v6, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView$f;->d:Z

    .line 1059
    if-nez v6, :cond_d

    .line 44836
    move-object/from16 v0, v19

    iget-object v6, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView$f;->c:Landroid/graphics/Bitmap;

    .line 1059
    if-nez v6, :cond_c

    .line 1060
    :cond_d
    const/16 v17, 0x1

    goto :goto_3

    .line 1029
    .end local v17    # "hasMissingTiles":Z
    .end local v18    # "sampleSize":I
    .end local v19    # "tile":Lcom/davemorrissey/labs/subscaleview/GestureImageView$f;
    .end local v20    # "tileMapEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/List<Lcom/davemorrissey/labs/subscaleview/GestureImageView$f;>;>;"
    .restart local v4    # "scaleElapsed":J
    :cond_e
    const/16 v16, 0x0

    goto/16 :goto_1

    .line 1041
    .restart local v16    # "finished":Z
    .restart local v24    # "vFocusNowX":F
    .restart local v25    # "vFocusNowY":F
    :cond_f
    const/4 v2, 0x0

    goto/16 :goto_2

    .line 1067
    .end local v4    # "scaleElapsed":J
    .end local v16    # "finished":Z
    .end local v24    # "vFocusNowX":F
    .end local v25    # "vFocusNowY":F
    .restart local v17    # "hasMissingTiles":Z
    .restart local v18    # "sampleSize":I
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->n:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_11
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/util/Map$Entry;

    .line 1068
    .restart local v20    # "tileMapEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/List<Lcom/davemorrissey/labs/subscaleview/GestureImageView$f;>;>;"
    invoke-interface/range {v20 .. v20}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move/from16 v0, v18

    if-eq v2, v0, :cond_12

    if-eqz v17, :cond_11

    .line 1069
    :cond_12
    invoke-interface/range {v20 .. v20}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_13
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_11

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/davemorrissey/labs/subscaleview/GestureImageView$f;

    .line 45836
    .restart local v19    # "tile":Lcom/davemorrissey/labs/subscaleview/GestureImageView$f;
    move-object/from16 v0, v19

    iget-object v6, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView$f;->a:Landroid/graphics/Rect;

    .line 46836
    move-object/from16 v0, v19

    iget-object v7, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView$f;->f:Landroid/graphics/Rect;

    .line 47081
    iget v8, v6, Landroid/graphics/Rect;->left:I

    int-to-float v8, v8

    .line 47082
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->c(F)F

    move-result v8

    float-to-int v8, v8

    iget v9, v6, Landroid/graphics/Rect;->top:I

    int-to-float v9, v9

    .line 47083
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->d(F)F

    move-result v9

    float-to-int v9, v9

    iget v10, v6, Landroid/graphics/Rect;->right:I

    int-to-float v10, v10

    .line 47084
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->c(F)F

    move-result v10

    float-to-int v10, v10

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v6

    .line 47085
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->d(F)F

    move-result v6

    float-to-int v6, v6

    .line 47081
    invoke-virtual {v7, v8, v9, v10, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 47836
    move-object/from16 v0, v19

    iget-boolean v6, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView$f;->d:Z

    .line 1071
    if-nez v6, :cond_1b

    .line 48836
    move-object/from16 v0, v19

    iget-object v6, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView$f;->c:Landroid/graphics/Bitmap;

    .line 1071
    if-eqz v6, :cond_1b

    .line 1072
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->am:Landroid/graphics/Paint;

    if-eqz v6, :cond_14

    .line 49836
    move-object/from16 v0, v19

    iget-object v6, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView$f;->f:Landroid/graphics/Rect;

    .line 1073
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->am:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v7}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1075
    :cond_14
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->ao:Landroid/graphics/Matrix;

    if-nez v6, :cond_15

    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->ao:Landroid/graphics/Matrix;

    .line 1076
    :cond_15
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->ao:Landroid/graphics/Matrix;

    invoke-virtual {v6}, Landroid/graphics/Matrix;->reset()V

    .line 1077
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->aq:[F

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 50836
    move-object/from16 v0, v19

    iget-object v9, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView$f;->c:Landroid/graphics/Bitmap;

    .line 1077
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    int-to-float v9, v9

    const/4 v10, 0x0

    .line 50837
    move-object/from16 v0, v19

    iget-object v11, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView$f;->c:Landroid/graphics/Bitmap;

    .line 1077
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    int-to-float v11, v11

    .line 50838
    move-object/from16 v0, v19

    iget-object v12, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView$f;->c:Landroid/graphics/Bitmap;

    .line 1077
    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    int-to-float v12, v12

    const/4 v13, 0x0

    .line 50839
    move-object/from16 v0, v19

    iget-object v14, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView$f;->c:Landroid/graphics/Bitmap;

    .line 1077
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    int-to-float v14, v14

    invoke-static/range {v6 .. v14}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->a([FFFFFFFFF)V

    .line 1078
    invoke-direct/range {p0 .. p0}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->getRequiredRotation()I

    move-result v6

    if-nez v6, :cond_18

    .line 1079
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->ar:[F

    .line 50840
    move-object/from16 v0, v19

    iget-object v7, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView$f;->f:Landroid/graphics/Rect;

    .line 1079
    iget v7, v7, Landroid/graphics/Rect;->left:I

    int-to-float v7, v7

    .line 50841
    move-object/from16 v0, v19

    iget-object v8, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView$f;->f:Landroid/graphics/Rect;

    .line 1079
    iget v8, v8, Landroid/graphics/Rect;->top:I

    int-to-float v8, v8

    .line 50842
    move-object/from16 v0, v19

    iget-object v9, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView$f;->f:Landroid/graphics/Rect;

    .line 1079
    iget v9, v9, Landroid/graphics/Rect;->right:I

    int-to-float v9, v9

    .line 50843
    move-object/from16 v0, v19

    iget-object v10, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView$f;->f:Landroid/graphics/Rect;

    .line 1079
    iget v10, v10, Landroid/graphics/Rect;->top:I

    int-to-float v10, v10

    .line 50844
    move-object/from16 v0, v19

    iget-object v11, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView$f;->f:Landroid/graphics/Rect;

    .line 1079
    iget v11, v11, Landroid/graphics/Rect;->right:I

    int-to-float v11, v11

    .line 50845
    move-object/from16 v0, v19

    iget-object v12, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView$f;->f:Landroid/graphics/Rect;

    .line 1079
    iget v12, v12, Landroid/graphics/Rect;->bottom:I

    int-to-float v12, v12

    .line 50846
    move-object/from16 v0, v19

    iget-object v13, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView$f;->f:Landroid/graphics/Rect;

    .line 1079
    iget v13, v13, Landroid/graphics/Rect;->left:I

    int-to-float v13, v13

    .line 50847
    move-object/from16 v0, v19

    iget-object v14, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView$f;->f:Landroid/graphics/Rect;

    .line 1079
    iget v14, v14, Landroid/graphics/Rect;->bottom:I

    int-to-float v14, v14

    invoke-static/range {v6 .. v14}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->a([FFFFFFFFF)V

    .line 1087
    :cond_16
    :goto_5
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->ao:Landroid/graphics/Matrix;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->aq:[F

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->ar:[F

    const/4 v10, 0x0

    const/4 v11, 0x4

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Matrix;->setPolyToPoly([FI[FII)Z

    .line 50872
    move-object/from16 v0, v19

    iget-object v6, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView$f;->c:Landroid/graphics/Bitmap;

    .line 1088
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->ao:Landroid/graphics/Matrix;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->ak:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v7, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 1089
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->o:Z

    if-eqz v6, :cond_17

    .line 50873
    move-object/from16 v0, v19

    iget-object v6, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView$f;->f:Landroid/graphics/Rect;

    .line 1090
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->al:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v7}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 50877
    :cond_17
    :goto_6
    move-object/from16 v0, v19

    iget-boolean v6, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView$f;->e:Z

    .line 1095
    if-eqz v6, :cond_13

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->o:Z

    if-eqz v6, :cond_13

    .line 1096
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "ISS "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50878
    move-object/from16 v0, v19

    iget v7, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView$f;->b:I

    .line 1096
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " RECT "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 50879
    move-object/from16 v0, v19

    iget-object v7, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView$f;->a:Landroid/graphics/Rect;

    .line 1096
    iget v7, v7, Landroid/graphics/Rect;->top:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 50880
    move-object/from16 v0, v19

    iget-object v7, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView$f;->a:Landroid/graphics/Rect;

    .line 1096
    iget v7, v7, Landroid/graphics/Rect;->left:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 50881
    move-object/from16 v0, v19

    iget-object v7, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView$f;->a:Landroid/graphics/Rect;

    .line 1096
    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 50882
    move-object/from16 v0, v19

    iget-object v7, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView$f;->a:Landroid/graphics/Rect;

    .line 1096
    iget v7, v7, Landroid/graphics/Rect;->right:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 50883
    move-object/from16 v0, v19

    iget-object v7, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView$f;->f:Landroid/graphics/Rect;

    .line 1096
    iget v7, v7, Landroid/graphics/Rect;->left:I

    add-int/lit8 v7, v7, 0x5

    int-to-float v7, v7

    .line 50884
    move-object/from16 v0, v19

    iget-object v8, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView$f;->f:Landroid/graphics/Rect;

    .line 1096
    iget v8, v8, Landroid/graphics/Rect;->top:I

    add-int/lit8 v8, v8, 0xf

    int-to-float v8, v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->al:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v7, v8, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_4

    .line 1080
    :cond_18
    invoke-direct/range {p0 .. p0}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->getRequiredRotation()I

    move-result v6

    const/16 v7, 0x5a

    if-ne v6, v7, :cond_19

    .line 1081
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->ar:[F

    .line 50848
    move-object/from16 v0, v19

    iget-object v7, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView$f;->f:Landroid/graphics/Rect;

    .line 1081
    iget v7, v7, Landroid/graphics/Rect;->right:I

    int-to-float v7, v7

    .line 50849
    move-object/from16 v0, v19

    iget-object v8, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView$f;->f:Landroid/graphics/Rect;

    .line 1081
    iget v8, v8, Landroid/graphics/Rect;->top:I

    int-to-float v8, v8

    .line 50850
    move-object/from16 v0, v19

    iget-object v9, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView$f;->f:Landroid/graphics/Rect;

    .line 1081
    iget v9, v9, Landroid/graphics/Rect;->right:I

    int-to-float v9, v9

    .line 50851
    move-object/from16 v0, v19

    iget-object v10, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView$f;->f:Landroid/graphics/Rect;

    .line 1081
    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    int-to-float v10, v10

    .line 50852
    move-object/from16 v0, v19

    iget-object v11, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView$f;->f:Landroid/graphics/Rect;

    .line 1081
    iget v11, v11, Landroid/graphics/Rect;->left:I

    int-to-float v11, v11

    .line 50853
    move-object/from16 v0, v19

    iget-object v12, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView$f;->f:Landroid/graphics/Rect;

    .line 1081
    iget v12, v12, Landroid/graphics/Rect;->bottom:I

    int-to-float v12, v12

    .line 50854
    move-object/from16 v0, v19

    iget-object v13, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView$f;->f:Landroid/graphics/Rect;

    .line 1081
    iget v13, v13, Landroid/graphics/Rect;->left:I

    int-to-float v13, v13

    .line 50855
    move-object/from16 v0, v19

    iget-object v14, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView$f;->f:Landroid/graphics/Rect;

    .line 1081
    iget v14, v14, Landroid/graphics/Rect;->top:I

    int-to-float v14, v14

    invoke-static/range {v6 .. v14}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->a([FFFFFFFFF)V

    goto/16 :goto_5

    .line 1082
    :cond_19
    invoke-direct/range {p0 .. p0}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->getRequiredRotation()I

    move-result v6

    const/16 v7, 0xb4

    if-ne v6, v7, :cond_1a

    .line 1083
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->ar:[F

    .line 50856
    move-object/from16 v0, v19

    iget-object v7, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView$f;->f:Landroid/graphics/Rect;

    .line 1083
    iget v7, v7, Landroid/graphics/Rect;->right:I

    int-to-float v7, v7

    .line 50857
    move-object/from16 v0, v19

    iget-object v8, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView$f;->f:Landroid/graphics/Rect;

    .line 1083
    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    int-to-float v8, v8

    .line 50858
    move-object/from16 v0, v19

    iget-object v9, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView$f;->f:Landroid/graphics/Rect;

    .line 1083
    iget v9, v9, Landroid/graphics/Rect;->left:I

    int-to-float v9, v9

    .line 50859
    move-object/from16 v0, v19

    iget-object v10, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView$f;->f:Landroid/graphics/Rect;

    .line 1083
    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    int-to-float v10, v10

    .line 50860
    move-object/from16 v0, v19

    iget-object v11, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView$f;->f:Landroid/graphics/Rect;

    .line 1083
    iget v11, v11, Landroid/graphics/Rect;->left:I

    int-to-float v11, v11

    .line 50861
    move-object/from16 v0, v19

    iget-object v12, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView$f;->f:Landroid/graphics/Rect;

    .line 1083
    iget v12, v12, Landroid/graphics/Rect;->top:I

    int-to-float v12, v12

    .line 50862
    move-object/from16 v0, v19

    iget-object v13, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView$f;->f:Landroid/graphics/Rect;

    .line 1083
    iget v13, v13, Landroid/graphics/Rect;->right:I

    int-to-float v13, v13

    .line 50863
    move-object/from16 v0, v19

    iget-object v14, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView$f;->f:Landroid/graphics/Rect;

    .line 1083
    iget v14, v14, Landroid/graphics/Rect;->top:I

    int-to-float v14, v14

    invoke-static/range {v6 .. v14}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->a([FFFFFFFFF)V

    goto/16 :goto_5

    .line 1084
    :cond_1a
    invoke-direct/range {p0 .. p0}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->getRequiredRotation()I

    move-result v6

    const/16 v7, 0x10e

    if-ne v6, v7, :cond_16

    .line 1085
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->ar:[F

    .line 50864
    move-object/from16 v0, v19

    iget-object v7, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView$f;->f:Landroid/graphics/Rect;

    .line 1085
    iget v7, v7, Landroid/graphics/Rect;->left:I

    int-to-float v7, v7

    .line 50865
    move-object/from16 v0, v19

    iget-object v8, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView$f;->f:Landroid/graphics/Rect;

    .line 1085
    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    int-to-float v8, v8

    .line 50866
    move-object/from16 v0, v19

    iget-object v9, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView$f;->f:Landroid/graphics/Rect;

    .line 1085
    iget v9, v9, Landroid/graphics/Rect;->left:I

    int-to-float v9, v9

    .line 50867
    move-object/from16 v0, v19

    iget-object v10, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView$f;->f:Landroid/graphics/Rect;

    .line 1085
    iget v10, v10, Landroid/graphics/Rect;->top:I

    int-to-float v10, v10

    .line 50868
    move-object/from16 v0, v19

    iget-object v11, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView$f;->f:Landroid/graphics/Rect;

    .line 1085
    iget v11, v11, Landroid/graphics/Rect;->right:I

    int-to-float v11, v11

    .line 50869
    move-object/from16 v0, v19

    iget-object v12, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView$f;->f:Landroid/graphics/Rect;

    .line 1085
    iget v12, v12, Landroid/graphics/Rect;->top:I

    int-to-float v12, v12

    .line 50870
    move-object/from16 v0, v19

    iget-object v13, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView$f;->f:Landroid/graphics/Rect;

    .line 1085
    iget v13, v13, Landroid/graphics/Rect;->right:I

    int-to-float v13, v13

    .line 50871
    move-object/from16 v0, v19

    iget-object v14, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView$f;->f:Landroid/graphics/Rect;

    .line 1085
    iget v14, v14, Landroid/graphics/Rect;->bottom:I

    int-to-float v14, v14

    invoke-static/range {v6 .. v14}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->a([FFFFFFFFF)V

    goto/16 :goto_5

    .line 50874
    :cond_1b
    move-object/from16 v0, v19

    iget-boolean v6, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView$f;->d:Z

    .line 1092
    if-eqz v6, :cond_17

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->o:Z

    if-eqz v6, :cond_17

    .line 1093
    const-string/jumbo v6, "LOADING"

    .line 50875
    move-object/from16 v0, v19

    iget-object v7, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView$f;->f:Landroid/graphics/Rect;

    .line 1093
    iget v7, v7, Landroid/graphics/Rect;->left:I

    add-int/lit8 v7, v7, 0x5

    int-to-float v7, v7

    .line 50876
    move-object/from16 v0, v19

    iget-object v8, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView$f;->f:Landroid/graphics/Rect;

    .line 1093
    iget v8, v8, Landroid/graphics/Rect;->top:I

    add-int/lit8 v8, v8, 0x23

    int-to-float v8, v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->al:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v7, v8, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_6

    .line 1102
    .end local v19    # "tile":Lcom/davemorrissey/labs/subscaleview/GestureImageView$f;
    .end local v20    # "tileMapEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/List<Lcom/davemorrissey/labs/subscaleview/GestureImageView$f;>;>;"
    :cond_1c
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->o:Z

    if-eqz v2, :cond_0

    .line 1103
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Scale: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "%.2f"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v8, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->A:F

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/high16 v3, 0x40a00000    # 5.0f

    const/high16 v6, 0x41700000    # 15.0f

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->al:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v6, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1104
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Translate: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "%.2f"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->C:Landroid/graphics/PointF;

    iget v8, v8, Landroid/graphics/PointF;->x:F

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "%.2f"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->C:Landroid/graphics/PointF;

    iget v8, v8, Landroid/graphics/PointF;->y:F

    .line 1105
    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/high16 v3, 0x40a00000    # 5.0f

    const/high16 v6, 0x420c0000    # 35.0f

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->al:Landroid/graphics/Paint;

    .line 1104
    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v6, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1106
    invoke-virtual/range {p0 .. p0}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->getCenter()Landroid/graphics/PointF;

    move-result-object v15

    .line 1107
    .local v15, "center":Landroid/graphics/PointF;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Source center: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "%.2f"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget v8, v15, Landroid/graphics/PointF;->x:F

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "%.2f"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget v8, v15, Landroid/graphics/PointF;->y:F

    .line 1108
    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/high16 v3, 0x40a00000    # 5.0f

    const/high16 v6, 0x425c0000    # 55.0f

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->al:Landroid/graphics/Paint;

    .line 1107
    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v6, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1110
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->af:Lcom/davemorrissey/labs/subscaleview/GestureImageView$a;

    if-eqz v2, :cond_0

    .line 1111
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->af:Lcom/davemorrissey/labs/subscaleview/GestureImageView$a;

    .line 50885
    iget-object v2, v2, Lcom/davemorrissey/labs/subscaleview/GestureImageView$a;->c:Landroid/graphics/PointF;

    .line 1111
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->b(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v23

    .line 1112
    .local v23, "vCenterStart":Landroid/graphics/PointF;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->af:Lcom/davemorrissey/labs/subscaleview/GestureImageView$a;

    .line 50886
    iget-object v2, v2, Lcom/davemorrissey/labs/subscaleview/GestureImageView$a;->e:Landroid/graphics/PointF;

    .line 1112
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->b(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v22

    .line 1113
    .local v22, "vCenterEndRequested":Landroid/graphics/PointF;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->af:Lcom/davemorrissey/labs/subscaleview/GestureImageView$a;

    .line 50887
    iget-object v2, v2, Lcom/davemorrissey/labs/subscaleview/GestureImageView$a;->d:Landroid/graphics/PointF;

    .line 1113
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->b(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v21

    .line 1114
    .local v21, "vCenterEnd":Landroid/graphics/PointF;
    move-object/from16 v0, v23

    iget v2, v0, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, v23

    iget v3, v0, Landroid/graphics/PointF;->y:F

    const/high16 v6, 0x41200000    # 10.0f

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->al:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v6, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1115
    move-object/from16 v0, v22

    iget v2, v0, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, v22

    iget v3, v0, Landroid/graphics/PointF;->y:F

    const/high16 v6, 0x41a00000    # 20.0f

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->al:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v6, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1116
    move-object/from16 v0, v21

    iget v2, v0, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, v21

    iget v3, v0, Landroid/graphics/PointF;->y:F

    const/high16 v6, 0x41c80000    # 25.0f

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->al:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v6, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1117
    invoke-virtual/range {p0 .. p0}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual/range {p0 .. p0}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    const/high16 v6, 0x41f00000    # 30.0f

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->al:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v6, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 1121
    .end local v15    # "center":Landroid/graphics/PointF;
    .end local v17    # "hasMissingTiles":Z
    .end local v18    # "sampleSize":I
    .end local v21    # "vCenterEnd":Landroid/graphics/PointF;
    .end local v22    # "vCenterEndRequested":Landroid/graphics/PointF;
    .end local v23    # "vCenterStart":Landroid/graphics/PointF;
    :cond_1d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->k:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    .line 1123
    move-object/from16 v0, p0

    iget v0, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->A:F

    move/from16 v26, v0

    .local v26, "xScale":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->A:F

    move/from16 v27, v0

    .line 1124
    .local v27, "yScale":F
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->l:Z

    if-eqz v2, :cond_1e

    .line 1125
    move-object/from16 v0, p0

    iget v2, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->A:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->H:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->k:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v3, v6

    mul-float v26, v2, v3

    .line 1126
    move-object/from16 v0, p0

    iget v2, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->A:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->I:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->k:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v3, v6

    mul-float v27, v2, v3

    .line 1129
    :cond_1e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->ao:Landroid/graphics/Matrix;

    if-nez v2, :cond_1f

    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->ao:Landroid/graphics/Matrix;

    .line 1130
    :cond_1f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->ao:Landroid/graphics/Matrix;

    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    .line 1131
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->ao:Landroid/graphics/Matrix;

    move/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 1132
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->ao:Landroid/graphics/Matrix;

    invoke-virtual/range {p0 .. p0}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->getOrientation()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 1133
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->ao:Landroid/graphics/Matrix;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->C:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->C:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v3, v6}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1135
    invoke-virtual/range {p0 .. p0}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->getOrientation()I

    move-result v2

    const/16 v3, 0xb4

    if-ne v2, v3, :cond_23

    .line 1136
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->ao:Landroid/graphics/Matrix;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->A:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->H:I

    int-to-float v6, v6

    mul-float/2addr v3, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->A:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->I:I

    int-to-float v7, v7

    mul-float/2addr v6, v7

    invoke-virtual {v2, v3, v6}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1143
    :cond_20
    :goto_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->am:Landroid/graphics/Paint;

    if-eqz v2, :cond_22

    .line 1144
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->ap:Landroid/graphics/RectF;

    if-nez v2, :cond_21

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->ap:Landroid/graphics/RectF;

    .line 1145
    :cond_21
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->ap:Landroid/graphics/RectF;

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->H:I

    int-to-float v7, v7

    move-object/from16 v0, p0

    iget v8, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->I:I

    int-to-float v8, v8

    invoke-virtual {v2, v3, v6, v7, v8}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1146
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->ao:Landroid/graphics/Matrix;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->ap:Landroid/graphics/RectF;

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 1147
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->ap:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->am:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 1149
    :cond_22
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->k:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->ao:Landroid/graphics/Matrix;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->ak:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 1137
    :cond_23
    invoke-virtual/range {p0 .. p0}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->getOrientation()I

    move-result v2

    const/16 v3, 0x5a

    if-ne v2, v3, :cond_24

    .line 1138
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->ao:Landroid/graphics/Matrix;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->A:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->I:I

    int-to-float v6, v6

    mul-float/2addr v3, v6

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v6}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_7

    .line 1139
    :cond_24
    invoke-virtual/range {p0 .. p0}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->getOrientation()I

    move-result v2

    const/16 v3, 0x10e

    if-ne v2, v3, :cond_20

    .line 1140
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->ao:Landroid/graphics/Matrix;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->A:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->H:I

    int-to-float v7, v7

    mul-float/2addr v6, v7

    invoke-virtual {v2, v3, v6}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto/16 :goto_7
.end method

.method protected onMeasure(II)V
    .locals 12
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/high16 v10, 0x40000000    # 2.0f

    const/4 v4, 0x1

    const/4 v8, 0x0

    .line 664
    invoke-direct {p0}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->h()Z

    move-result v9

    if-nez v9, :cond_0

    .line 665
    invoke-super {p0, p1, p2}, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView;->onMeasure(II)V

    .line 690
    :goto_0
    return-void

    .line 669
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v7

    .line 670
    .local v7, "widthSpecMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 671
    .local v1, "heightSpecMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 672
    .local v3, "parentWidth":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 673
    .local v2, "parentHeight":I
    if-eq v7, v10, :cond_2

    move v5, v4

    .line 674
    .local v5, "resizeWidth":Z
    :goto_1
    if-eq v1, v10, :cond_3

    .line 675
    .local v4, "resizeHeight":Z
    :goto_2
    move v6, v3

    .line 676
    .local v6, "width":I
    move v0, v2

    .line 677
    .local v0, "height":I
    iget v8, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->H:I

    if-lez v8, :cond_1

    iget v8, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->I:I

    if-lez v8, :cond_1

    .line 678
    if-eqz v5, :cond_4

    if-eqz v4, :cond_4

    .line 679
    invoke-direct {p0}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->m()I

    move-result v6

    .line 680
    invoke-direct {p0}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->n()I

    move-result v0

    .line 687
    :cond_1
    :goto_3
    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->getSuggestedMinimumWidth()I

    move-result v8

    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 688
    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->getSuggestedMinimumHeight()I

    move-result v8

    invoke-static {v0, v8}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 689
    invoke-virtual {p0, v6, v0}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->setMeasuredDimension(II)V

    goto :goto_0

    .end local v0    # "height":I
    .end local v4    # "resizeHeight":Z
    .end local v5    # "resizeWidth":Z
    .end local v6    # "width":I
    :cond_2
    move v5, v8

    .line 673
    goto :goto_1

    .restart local v5    # "resizeWidth":Z
    :cond_3
    move v4, v8

    .line 674
    goto :goto_2

    .line 681
    .restart local v0    # "height":I
    .restart local v4    # "resizeHeight":Z
    .restart local v6    # "width":I
    :cond_4
    if-eqz v4, :cond_5

    .line 682
    invoke-direct {p0}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->n()I

    move-result v8

    int-to-double v8, v8

    invoke-direct {p0}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->m()I

    move-result v10

    int-to-double v10, v10

    div-double/2addr v8, v10

    int-to-double v10, v3

    mul-double/2addr v8, v10

    double-to-int v0, v8

    goto :goto_3

    .line 683
    :cond_5
    if-eqz v5, :cond_1

    .line 684
    invoke-direct {p0}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->m()I

    move-result v8

    int-to-double v8, v8

    invoke-direct {p0}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->n()I

    move-result v10

    int-to-double v10, v10

    div-double/2addr v8, v10

    int-to-double v10, v2

    mul-double/2addr v8, v10

    double-to-int v6, v8

    goto :goto_3
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 645
    invoke-direct {p0}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->h()Z

    move-result v1

    if-nez v1, :cond_1

    .line 646
    invoke-super {p0, p1, p2, p3, p4}, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView;->onSizeChanged(IIII)V

    .line 656
    :cond_0
    :goto_0
    return-void

    .line 650
    :cond_1
    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->getCenter()Landroid/graphics/PointF;

    move-result-object v0

    .line 651
    .local v0, "sCenter":Landroid/graphics/PointF;
    iget-boolean v1, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->ag:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 652
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->af:Lcom/davemorrissey/labs/subscaleview/GestureImageView$a;

    .line 653
    iget v1, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->A:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->E:Ljava/lang/Float;

    .line 654
    iput-object v0, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->F:Landroid/graphics/PointF;

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 30
    .param p1, "event"    # Landroid/view/MotionEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 697
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->au:Z

    move/from16 v25, v0

    if-nez v25, :cond_0

    .line 698
    invoke-super/range {p0 .. p1}, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v25

    .line 945
    :goto_0
    return v25

    .line 702
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->af:Lcom/davemorrissey/labs/subscaleview/GestureImageView$a;

    move-object/from16 v25, v0

    if-eqz v25, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->af:Lcom/davemorrissey/labs/subscaleview/GestureImageView$a;

    move-object/from16 v25, v0

    .line 16850
    move-object/from16 v0, v25

    iget-boolean v0, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView$a;->i:Z

    move/from16 v25, v0

    .line 702
    if-nez v25, :cond_1

    .line 703
    invoke-virtual/range {p0 .. p0}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v25

    const/16 v26, 0x1

    invoke-interface/range {v25 .. v26}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 704
    invoke-direct/range {p0 .. p1}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->a(Landroid/view/MotionEvent;)V

    .line 705
    const/16 v25, 0x1

    goto :goto_0

    .line 707
    :cond_1
    const/16 v25, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->af:Lcom/davemorrissey/labs/subscaleview/GestureImageView$a;

    .line 711
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->C:Landroid/graphics/PointF;

    move-object/from16 v25, v0

    if-nez v25, :cond_2

    .line 712
    invoke-direct/range {p0 .. p1}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->a(Landroid/view/MotionEvent;)V

    .line 713
    const/16 v25, 0x1

    goto :goto_0

    .line 716
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->O:Z

    move/from16 v25, v0

    if-nez v25, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->Q:Landroid/view/GestureDetector;

    move-object/from16 v25, v0

    if-eqz v25, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->Q:Landroid/view/GestureDetector;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v25

    if-eqz v25, :cond_4

    .line 717
    :cond_3
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->M:Z

    .line 718
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->N:Z

    .line 719
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->P:I

    .line 720
    invoke-direct/range {p0 .. p1}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->a(Landroid/view/MotionEvent;)V

    .line 721
    const/16 v25, 0x1

    goto :goto_0

    .line 724
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->D:Landroid/graphics/PointF;

    move-object/from16 v25, v0

    if-nez v25, :cond_5

    .line 725
    new-instance v25, Landroid/graphics/PointF;

    const/16 v26, 0x0

    const/16 v27, 0x0

    invoke-direct/range {v25 .. v27}, Landroid/graphics/PointF;-><init>(FF)V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->D:Landroid/graphics/PointF;

    .line 727
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->V:Landroid/graphics/PointF;

    move-object/from16 v25, v0

    if-nez v25, :cond_6

    .line 728
    new-instance v25, Landroid/graphics/PointF;

    const/16 v26, 0x0

    const/16 v27, 0x0

    invoke-direct/range {v25 .. v27}, Landroid/graphics/PointF;-><init>(FF)V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->V:Landroid/graphics/PointF;

    .line 731
    :cond_6
    const/4 v5, 0x0

    .line 732
    .local v5, "consumed":Z
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v16

    .line 733
    .local v16, "touchCount":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v25

    sparse-switch v25, :sswitch_data_0

    .line 942
    :cond_7
    :goto_1
    if-nez v5, :cond_8

    .line 943
    invoke-direct/range {p0 .. p1}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->a(Landroid/view/MotionEvent;)V

    .line 945
    :cond_8
    const/16 v25, 0x1

    goto/16 :goto_0

    .line 737
    :sswitch_0
    const/16 v25, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->af:Lcom/davemorrissey/labs/subscaleview/GestureImageView$a;

    .line 738
    invoke-virtual/range {p0 .. p0}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v25

    const/16 v26, 0x1

    invoke-interface/range {v25 .. v26}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 739
    move-object/from16 v0, p0

    iget v0, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->P:I

    move/from16 v25, v0

    move/from16 v0, v25

    move/from16 v1, v16

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->P:I

    .line 740
    const/16 v25, 0x2

    move/from16 v0, v16

    move/from16 v1, v25

    if-lt v0, v1, :cond_d

    .line 741
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->w:Z

    move/from16 v25, v0

    if-eqz v25, :cond_c

    .line 743
    const/16 v25, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v25

    const/16 v26, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v26

    const/16 v27, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v27

    const/16 v28, 0x1

    .line 744
    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v28

    .line 743
    invoke-static/range {v25 .. v28}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->a(FFFF)F

    move-result v7

    .line 745
    .local v7, "distance":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->A:F

    move/from16 v25, v0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->B:F

    .line 746
    move-object/from16 v0, p0

    iput v7, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->W:F

    .line 747
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->D:Landroid/graphics/PointF;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->C:Landroid/graphics/PointF;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->C:Landroid/graphics/PointF;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v27, v0

    invoke-virtual/range {v25 .. v27}, Landroid/graphics/PointF;->set(FF)V

    .line 748
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->V:Landroid/graphics/PointF;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v26

    const/16 v27, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v27

    add-float v26, v26, v27

    const/high16 v27, 0x40000000    # 2.0f

    div-float v26, v26, v27

    const/16 v27, 0x0

    .line 749
    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v27

    const/16 v28, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v28

    add-float v27, v27, v28

    const/high16 v28, 0x40000000    # 2.0f

    div-float v27, v27, v28

    .line 748
    invoke-virtual/range {v25 .. v27}, Landroid/graphics/PointF;->set(FF)V

    .line 755
    .end local v7    # "distance":F
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->aj:Landroid/os/Handler;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    invoke-virtual/range {v25 .. v26}, Landroid/os/Handler;->removeMessages(I)V

    .line 765
    :cond_9
    :goto_3
    :sswitch_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->P:I

    move/from16 v25, v0

    if-lez v25, :cond_b

    .line 766
    const/16 v25, 0x2

    move/from16 v0, v16

    move/from16 v1, v25

    if-lt v0, v1, :cond_11

    .line 768
    const/16 v25, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v25

    const/16 v26, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v26

    const/16 v27, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v27

    const/16 v28, 0x1

    .line 769
    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v28

    .line 768
    invoke-static/range {v25 .. v28}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->a(FFFF)F

    move-result v19

    .line 770
    .local v19, "vDistEnd":F
    const/16 v25, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v25

    const/16 v26, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v26

    add-float v25, v25, v26

    const/high16 v26, 0x40000000    # 2.0f

    div-float v17, v25, v26

    .line 771
    .local v17, "vCenterEndX":F
    const/16 v25, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v25

    const/16 v26, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v26

    add-float v25, v25, v26

    const/high16 v26, 0x40000000    # 2.0f

    div-float v18, v25, v26

    .line 773
    .local v18, "vCenterEndY":F
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->w:Z

    move/from16 v25, v0

    if-eqz v25, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->V:Landroid/graphics/PointF;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->V:Landroid/graphics/PointF;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v26, v0

    .line 774
    move/from16 v0, v25

    move/from16 v1, v17

    move/from16 v2, v26

    move/from16 v3, v18

    invoke-static {v0, v1, v2, v3}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->a(FFFF)F

    move-result v25

    const/high16 v26, 0x40a00000    # 5.0f

    cmpl-float v25, v25, v26

    if-gtz v25, :cond_a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->W:F

    move/from16 v25, v0

    sub-float v25, v19, v25

    .line 775
    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(F)F

    move-result v25

    const/high16 v26, 0x40a00000    # 5.0f

    cmpl-float v25, v25, v26

    if-gtz v25, :cond_a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->N:Z

    move/from16 v25, v0

    if-eqz v25, :cond_b

    .line 777
    :cond_a
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->M:Z

    .line 778
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->N:Z

    .line 779
    const/4 v5, 0x1

    .line 781
    move-object/from16 v0, p0

    iget v0, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->q:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->W:F

    move/from16 v26, v0

    div-float v26, v19, v26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->B:F

    move/from16 v27, v0

    mul-float v26, v26, v27

    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->min(FF)F

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->A:F

    .line 783
    move-object/from16 v0, p0

    iget v0, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->A:F

    move/from16 v25, v0

    invoke-direct/range {p0 .. p0}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->o()F

    move-result v26

    cmpg-float v25, v25, v26

    if-gtz v25, :cond_e

    .line 785
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->W:F

    .line 786
    invoke-direct/range {p0 .. p0}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->o()F

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->B:F

    .line 787
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->V:Landroid/graphics/PointF;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 788
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->D:Landroid/graphics/PointF;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->C:Landroid/graphics/PointF;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 808
    :goto_4
    const/16 v25, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->c(Z)V

    .line 809
    const/16 v25, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->b(Z)V

    .line 894
    .end local v17    # "vCenterEndX":F
    .end local v18    # "vCenterEndY":F
    .end local v19    # "vDistEnd":F
    :cond_b
    :goto_5
    if-eqz v5, :cond_7

    .line 895
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->aj:Landroid/os/Handler;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    invoke-virtual/range {v25 .. v26}, Landroid/os/Handler;->removeMessages(I)V

    .line 896
    invoke-virtual/range {p0 .. p0}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->invalidate()V

    goto/16 :goto_1

    .line 752
    :cond_c
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->P:I

    goto/16 :goto_2

    .line 756
    :cond_d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->O:Z

    move/from16 v25, v0

    if-nez v25, :cond_9

    .line 758
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->D:Landroid/graphics/PointF;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->C:Landroid/graphics/PointF;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->C:Landroid/graphics/PointF;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v27, v0

    invoke-virtual/range {v25 .. v27}, Landroid/graphics/PointF;->set(FF)V

    .line 759
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->V:Landroid/graphics/PointF;

    move-object/from16 v25, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v26

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v27

    invoke-virtual/range {v25 .. v27}, Landroid/graphics/PointF;->set(FF)V

    .line 762
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->aj:Landroid/os/Handler;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v27

    move/from16 v0, v27

    int-to-long v0, v0

    move-wide/from16 v28, v0

    move-object/from16 v0, v25

    move/from16 v1, v26

    move-wide/from16 v2, v28

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_3

    .line 789
    .restart local v17    # "vCenterEndX":F
    .restart local v18    # "vCenterEndY":F
    .restart local v19    # "vDistEnd":F
    :cond_e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->v:Z

    move/from16 v25, v0

    if-eqz v25, :cond_f

    .line 792
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->V:Landroid/graphics/PointF;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->D:Landroid/graphics/PointF;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v26, v0

    sub-float v21, v25, v26

    .line 793
    .local v21, "vLeftStart":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->V:Landroid/graphics/PointF;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->D:Landroid/graphics/PointF;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v26, v0

    sub-float v23, v25, v26

    .line 794
    .local v23, "vTopStart":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->A:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->B:F

    move/from16 v26, v0

    div-float v25, v25, v26

    mul-float v20, v21, v25

    .line 795
    .local v20, "vLeftNow":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->A:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->B:F

    move/from16 v26, v0

    div-float v25, v25, v26

    mul-float v22, v23, v25

    .line 796
    .local v22, "vTopNow":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->C:Landroid/graphics/PointF;

    move-object/from16 v25, v0

    sub-float v26, v17, v20

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Landroid/graphics/PointF;->x:F

    .line 797
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->C:Landroid/graphics/PointF;

    move-object/from16 v25, v0

    sub-float v26, v18, v22

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Landroid/graphics/PointF;->y:F

    goto/16 :goto_4

    .line 798
    .end local v20    # "vLeftNow":F
    .end local v21    # "vLeftStart":F
    .end local v22    # "vTopNow":F
    .end local v23    # "vTopStart":F
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->G:Landroid/graphics/PointF;

    move-object/from16 v25, v0

    if-eqz v25, :cond_10

    .line 800
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->C:Landroid/graphics/PointF;

    move-object/from16 v25, v0

    invoke-virtual/range {p0 .. p0}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->getWidth()I

    move-result v26

    div-int/lit8 v26, v26, 0x2

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->A:F

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->G:Landroid/graphics/PointF;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v28, v0

    mul-float v27, v27, v28

    sub-float v26, v26, v27

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Landroid/graphics/PointF;->x:F

    .line 801
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->C:Landroid/graphics/PointF;

    move-object/from16 v25, v0

    invoke-virtual/range {p0 .. p0}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->getHeight()I

    move-result v26

    div-int/lit8 v26, v26, 0x2

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->A:F

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->G:Landroid/graphics/PointF;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v28, v0

    mul-float v27, v27, v28

    sub-float v26, v26, v27

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Landroid/graphics/PointF;->y:F

    goto/16 :goto_4

    .line 804
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->C:Landroid/graphics/PointF;

    move-object/from16 v25, v0

    invoke-virtual/range {p0 .. p0}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->getWidth()I

    move-result v26

    div-int/lit8 v26, v26, 0x2

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->A:F

    move/from16 v27, v0

    invoke-direct/range {p0 .. p0}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->m()I

    move-result v28

    div-int/lit8 v28, v28, 0x2

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    mul-float v27, v27, v28

    sub-float v26, v26, v27

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Landroid/graphics/PointF;->x:F

    .line 805
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->C:Landroid/graphics/PointF;

    move-object/from16 v25, v0

    invoke-virtual/range {p0 .. p0}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->getHeight()I

    move-result v26

    div-int/lit8 v26, v26, 0x2

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->A:F

    move/from16 v27, v0

    invoke-direct/range {p0 .. p0}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->n()I

    move-result v28

    div-int/lit8 v28, v28, 0x2

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    mul-float v27, v27, v28

    sub-float v26, v26, v27

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Landroid/graphics/PointF;->y:F

    goto/16 :goto_4

    .line 811
    .end local v17    # "vCenterEndX":F
    .end local v18    # "vCenterEndY":F
    .end local v19    # "vDistEnd":F
    :cond_11
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->O:Z

    move/from16 v25, v0

    if-eqz v25, :cond_1a

    .line 814
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->V:Landroid/graphics/PointF;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v25, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v26

    sub-float v25, v25, v26

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(F)F

    move-result v25

    const/high16 v26, 0x40000000    # 2.0f

    mul-float v25, v25, v26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->aa:F

    move/from16 v26, v0

    add-float v6, v25, v26

    .line 817
    .local v6, "dist":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->ac:F

    move/from16 v25, v0

    const/high16 v26, -0x40800000    # -1.0f

    cmpl-float v25, v25, v26

    if-nez v25, :cond_12

    .line 818
    move-object/from16 v0, p0

    iput v6, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->ac:F

    .line 819
    :cond_12
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->ad:Landroid/graphics/PointF;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v26, v0

    cmpl-float v25, v25, v26

    if-lez v25, :cond_16

    const/4 v11, 0x1

    .line 820
    .local v11, "isUpwards":Z
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->ad:Landroid/graphics/PointF;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v27

    invoke-virtual/range {v25 .. v27}, Landroid/graphics/PointF;->set(FF)V

    .line 822
    const/high16 v25, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->ac:F

    move/from16 v26, v0

    div-float v26, v6, v26

    sub-float v25, v25, v26

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(F)F

    move-result v25

    const/high16 v26, 0x3f000000    # 0.5f

    mul-float v15, v25, v26

    .line 824
    .local v15, "spanDiff":F
    const v25, 0x3cf5c28f    # 0.03f

    cmpl-float v25, v15, v25

    if-gtz v25, :cond_13

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->ae:Z

    move/from16 v25, v0

    if-eqz v25, :cond_15

    .line 825
    :cond_13
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->ae:Z

    .line 827
    const/high16 v14, 0x3f800000    # 1.0f

    .line 828
    .local v14, "multiplier":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->ac:F

    move/from16 v25, v0

    const/16 v26, 0x0

    cmpl-float v25, v25, v26

    if-lez v25, :cond_14

    .line 829
    if-eqz v11, :cond_17

    const/high16 v25, 0x3f800000    # 1.0f

    add-float v14, v25, v15

    .line 833
    :cond_14
    :goto_7
    invoke-direct/range {p0 .. p0}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->o()F

    move-result v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->q:F

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->A:F

    move/from16 v27, v0

    mul-float v27, v27, v14

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->min(FF)F

    move-result v26

    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->max(FF)F

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->A:F

    .line 835
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->v:Z

    move/from16 v25, v0

    if-eqz v25, :cond_18

    .line 836
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->V:Landroid/graphics/PointF;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->D:Landroid/graphics/PointF;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v26, v0

    sub-float v21, v25, v26

    .line 837
    .restart local v21    # "vLeftStart":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->V:Landroid/graphics/PointF;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->D:Landroid/graphics/PointF;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v26, v0

    sub-float v23, v25, v26

    .line 838
    .restart local v23    # "vTopStart":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->A:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->B:F

    move/from16 v26, v0

    div-float v25, v25, v26

    mul-float v20, v21, v25

    .line 839
    .restart local v20    # "vLeftNow":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->A:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->B:F

    move/from16 v26, v0

    div-float v25, v25, v26

    mul-float v22, v23, v25

    .line 840
    .restart local v22    # "vTopNow":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->C:Landroid/graphics/PointF;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->V:Landroid/graphics/PointF;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v26, v0

    sub-float v26, v26, v20

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Landroid/graphics/PointF;->x:F

    .line 841
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->C:Landroid/graphics/PointF;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->V:Landroid/graphics/PointF;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v26, v0

    sub-float v26, v26, v22

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Landroid/graphics/PointF;->y:F

    .line 853
    .end local v14    # "multiplier":F
    .end local v20    # "vLeftNow":F
    .end local v21    # "vLeftStart":F
    .end local v22    # "vTopNow":F
    .end local v23    # "vTopStart":F
    :cond_15
    :goto_8
    move-object/from16 v0, p0

    iput v6, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->ac:F

    .line 855
    const/16 v25, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->c(Z)V

    .line 856
    const/16 v25, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->b(Z)V

    .line 858
    const/4 v5, 0x1

    .line 859
    goto/16 :goto_5

    .line 819
    .end local v11    # "isUpwards":Z
    .end local v15    # "spanDiff":F
    :cond_16
    const/4 v11, 0x0

    goto/16 :goto_6

    .line 829
    .restart local v11    # "isUpwards":Z
    .restart local v14    # "multiplier":F
    .restart local v15    # "spanDiff":F
    :cond_17
    const/high16 v25, 0x3f800000    # 1.0f

    sub-float v14, v25, v15

    goto/16 :goto_7

    .line 842
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->G:Landroid/graphics/PointF;

    move-object/from16 v25, v0

    if-eqz v25, :cond_19

    .line 844
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->C:Landroid/graphics/PointF;

    move-object/from16 v25, v0

    invoke-virtual/range {p0 .. p0}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->getWidth()I

    move-result v26

    div-int/lit8 v26, v26, 0x2

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->A:F

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->G:Landroid/graphics/PointF;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v28, v0

    mul-float v27, v27, v28

    sub-float v26, v26, v27

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Landroid/graphics/PointF;->x:F

    .line 845
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->C:Landroid/graphics/PointF;

    move-object/from16 v25, v0

    invoke-virtual/range {p0 .. p0}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->getHeight()I

    move-result v26

    div-int/lit8 v26, v26, 0x2

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->A:F

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->G:Landroid/graphics/PointF;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v28, v0

    mul-float v27, v27, v28

    sub-float v26, v26, v27

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Landroid/graphics/PointF;->y:F

    goto/16 :goto_8

    .line 848
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->C:Landroid/graphics/PointF;

    move-object/from16 v25, v0

    invoke-virtual/range {p0 .. p0}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->getWidth()I

    move-result v26

    div-int/lit8 v26, v26, 0x2

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->A:F

    move/from16 v27, v0

    invoke-direct/range {p0 .. p0}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->m()I

    move-result v28

    div-int/lit8 v28, v28, 0x2

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    mul-float v27, v27, v28

    sub-float v26, v26, v27

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Landroid/graphics/PointF;->x:F

    .line 849
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->C:Landroid/graphics/PointF;

    move-object/from16 v25, v0

    invoke-virtual/range {p0 .. p0}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->getHeight()I

    move-result v26

    div-int/lit8 v26, v26, 0x2

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->A:F

    move/from16 v27, v0

    invoke-direct/range {p0 .. p0}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->n()I

    move-result v28

    div-int/lit8 v28, v28, 0x2

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    mul-float v27, v27, v28

    sub-float v26, v26, v27

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Landroid/graphics/PointF;->y:F

    goto/16 :goto_8

    .line 859
    .end local v6    # "dist":F
    .end local v11    # "isUpwards":Z
    .end local v14    # "multiplier":F
    .end local v15    # "spanDiff":F
    :cond_1a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->M:Z

    move/from16 v25, v0

    if-nez v25, :cond_b

    .line 862
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->V:Landroid/graphics/PointF;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v26, v0

    sub-float v25, v25, v26

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(F)F

    move-result v8

    .line 863
    .local v8, "dx":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->V:Landroid/graphics/PointF;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v26, v0

    sub-float v25, v25, v26

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(F)F

    move-result v9

    .line 864
    .local v9, "dy":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->av:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    cmpl-float v25, v8, v25

    if-gtz v25, :cond_1b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->av:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    cmpl-float v25, v9, v25

    if-gtz v25, :cond_1b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->N:Z

    move/from16 v25, v0

    if-eqz v25, :cond_b

    .line 865
    :cond_1b
    const/4 v5, 0x1

    .line 866
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->C:Landroid/graphics/PointF;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->D:Landroid/graphics/PointF;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v26, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->V:Landroid/graphics/PointF;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v28, v0

    sub-float v27, v27, v28

    add-float v26, v26, v27

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Landroid/graphics/PointF;->x:F

    .line 867
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->C:Landroid/graphics/PointF;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->D:Landroid/graphics/PointF;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v26, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->V:Landroid/graphics/PointF;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v28, v0

    sub-float v27, v27, v28

    add-float v26, v26, v27

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Landroid/graphics/PointF;->y:F

    .line 869
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->C:Landroid/graphics/PointF;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v12, v0, Landroid/graphics/PointF;->x:F

    .line 870
    .local v12, "lastX":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->C:Landroid/graphics/PointF;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v13, v0, Landroid/graphics/PointF;->y:F

    .line 871
    .local v13, "lastY":F
    const/16 v25, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->c(Z)V

    .line 872
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->C:Landroid/graphics/PointF;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v25, v0

    cmpl-float v25, v12, v25

    if-eqz v25, :cond_1f

    const/4 v4, 0x1

    .line 873
    .local v4, "atXEdge":Z
    :goto_9
    if-eqz v4, :cond_20

    cmpl-float v25, v8, v9

    if-lez v25, :cond_20

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->N:Z

    move/from16 v25, v0

    if-nez v25, :cond_20

    const/4 v10, 0x1

    .line 874
    .local v10, "edgeXSwipe":Z
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->C:Landroid/graphics/PointF;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v25, v0

    cmpl-float v25, v13, v25

    if-nez v25, :cond_21

    const/high16 v25, 0x41700000    # 15.0f

    cmpl-float v25, v9, v25

    if-lez v25, :cond_21

    const/16 v24, 0x1

    .line 875
    .local v24, "yPan":Z
    :goto_b
    if-nez v10, :cond_22

    if-eqz v4, :cond_1c

    if-nez v24, :cond_1c

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->N:Z

    move/from16 v25, v0

    if-eqz v25, :cond_22

    .line 876
    :cond_1c
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->N:Z

    .line 884
    :cond_1d
    :goto_c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->v:Z

    move/from16 v25, v0

    if-nez v25, :cond_1e

    .line 885
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->C:Landroid/graphics/PointF;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->D:Landroid/graphics/PointF;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Landroid/graphics/PointF;->x:F

    .line 886
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->C:Landroid/graphics/PointF;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->D:Landroid/graphics/PointF;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Landroid/graphics/PointF;->y:F

    .line 887
    invoke-virtual/range {p0 .. p0}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v25

    const/16 v26, 0x0

    invoke-interface/range {v25 .. v26}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 890
    :cond_1e
    const/16 v25, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->b(Z)V

    goto/16 :goto_5

    .line 872
    .end local v4    # "atXEdge":Z
    .end local v10    # "edgeXSwipe":Z
    .end local v24    # "yPan":Z
    :cond_1f
    const/4 v4, 0x0

    goto/16 :goto_9

    .line 873
    .restart local v4    # "atXEdge":Z
    :cond_20
    const/4 v10, 0x0

    goto :goto_a

    .line 874
    .restart local v10    # "edgeXSwipe":Z
    :cond_21
    const/16 v24, 0x0

    goto :goto_b

    .line 877
    .restart local v24    # "yPan":Z
    :cond_22
    const/high16 v25, 0x40a00000    # 5.0f

    cmpl-float v25, v8, v25

    if-lez v25, :cond_1d

    .line 879
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->P:I

    .line 880
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->aj:Landroid/os/Handler;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    invoke-virtual/range {v25 .. v26}, Landroid/os/Handler;->removeMessages(I)V

    .line 881
    invoke-virtual/range {p0 .. p0}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v25

    const/16 v26, 0x0

    invoke-interface/range {v25 .. v26}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_c

    .line 902
    .end local v4    # "atXEdge":Z
    .end local v8    # "dx":F
    .end local v9    # "dy":F
    .end local v10    # "edgeXSwipe":Z
    .end local v12    # "lastX":F
    .end local v13    # "lastY":F
    .end local v24    # "yPan":Z
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->aj:Landroid/os/Handler;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    invoke-virtual/range {v25 .. v26}, Landroid/os/Handler;->removeMessages(I)V

    .line 903
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->O:Z

    move/from16 v25, v0

    if-eqz v25, :cond_23

    .line 904
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->O:Z

    .line 905
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->ae:Z

    move/from16 v25, v0

    if-nez v25, :cond_23

    .line 906
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->ab:Landroid/graphics/PointF;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->V:Landroid/graphics/PointF;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->a(Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    .line 909
    :cond_23
    move-object/from16 v0, p0

    iget v0, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->P:I

    move/from16 v25, v0

    if-lez v25, :cond_28

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->M:Z

    move/from16 v25, v0

    if-nez v25, :cond_24

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->N:Z

    move/from16 v25, v0

    if-eqz v25, :cond_28

    .line 910
    :cond_24
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->M:Z

    move/from16 v25, v0

    if-eqz v25, :cond_25

    const/16 v25, 0x2

    move/from16 v0, v16

    move/from16 v1, v25

    if-ne v0, v1, :cond_25

    .line 912
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->N:Z

    .line 913
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->D:Landroid/graphics/PointF;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->C:Landroid/graphics/PointF;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->C:Landroid/graphics/PointF;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v27, v0

    invoke-virtual/range {v25 .. v27}, Landroid/graphics/PointF;->set(FF)V

    .line 914
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v25

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_2a

    .line 915
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->V:Landroid/graphics/PointF;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v26

    const/16 v27, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v27

    invoke-virtual/range {v25 .. v27}, Landroid/graphics/PointF;->set(FF)V

    .line 920
    :cond_25
    :goto_d
    const/16 v25, 0x3

    move/from16 v0, v16

    move/from16 v1, v25

    if-ge v0, v1, :cond_26

    .line 922
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->M:Z

    .line 924
    :cond_26
    const/16 v25, 0x2

    move/from16 v0, v16

    move/from16 v1, v25

    if-ge v0, v1, :cond_27

    .line 926
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->N:Z

    .line 927
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->P:I

    .line 930
    :cond_27
    const/16 v25, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->b(Z)V

    .line 932
    :cond_28
    const/16 v25, 0x1

    move/from16 v0, v16

    move/from16 v1, v25

    if-ne v0, v1, :cond_29

    .line 933
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->M:Z

    .line 934
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->N:Z

    .line 935
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->P:I

    .line 938
    :cond_29
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->aj:Landroid/os/Handler;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    invoke-virtual/range {v25 .. v26}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_1

    .line 917
    :cond_2a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->V:Landroid/graphics/PointF;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v26

    const/16 v27, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v27

    invoke-virtual/range {v25 .. v27}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_d

    .line 733
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_2
        0x2 -> :sswitch_1
        0x3 -> :sswitch_3
        0x5 -> :sswitch_0
        0x6 -> :sswitch_2
        0x105 -> :sswitch_0
        0x106 -> :sswitch_2
    .end sparse-switch
.end method

.method public final setBitmapDecoderClass(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Livw;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 2221
    .local p1, "bitmapDecoderClass":Ljava/lang/Class;, "Ljava/lang/Class<+Livw;>;"
    if-nez p1, :cond_0

    .line 2222
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Decoder class cannot be set to null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2224
    :cond_0
    iput-object p1, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->U:Ljava/lang/Class;

    .line 2225
    return-void
.end method

.method public final setDebug(Z)V
    .locals 0
    .param p1, "debug"    # Z

    .prologue
    .line 2528
    iput-boolean p1, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->o:Z

    .line 2529
    return-void
.end method

.method public final setDoubleTapZoomScale(F)V
    .locals 0
    .param p1, "doubleTapZoomScale"    # F

    .prologue
    .line 2510
    iput p1, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->y:F

    .line 2511
    return-void
.end method

.method public final setDoubleTapZoomStyle(I)V
    .locals 3
    .param p1, "doubleTapZoomStyle"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 2518
    sget-object v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->g:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2519
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Invalid zoom style: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2521
    :cond_0
    iput p1, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->z:I

    .line 2522
    return-void
.end method

.method public final setImage(Livv;)V
    .locals 6
    .param p1, "imageSource"    # Livv;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 432
    .line 4474
    if-nez p1, :cond_0

    .line 4475
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "imageSource must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4478
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->a(Z)V

    .line 11196
    const/4 v0, 0x0

    .line 4508
    iput-object v0, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->K:Landroid/graphics/Rect;

    .line 12172
    iget-object v4, p1, Livv;->a:Landroid/net/Uri;

    .line 4510
    if-nez v4, :cond_1

    .line 13184
    :cond_1
    iget-boolean v0, p1, Livv;->b:Z

    .line 4513
    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->K:Landroid/graphics/Rect;

    if-eqz v0, :cond_3

    .line 4515
    :cond_2
    new-instance v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView$h;

    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->T:Ljava/lang/Class;

    invoke-direct {v0, p0, v1, v2, v4}, Lcom/davemorrissey/labs/subscaleview/GestureImageView$h;-><init>(Lcom/davemorrissey/labs/subscaleview/GestureImageView;Landroid/content/Context;Ljava/lang/Class;Landroid/net/Uri;)V

    .line 4516
    new-array v1, v5, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/davemorrissey/labs/subscaleview/GestureImageView$h;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 4517
    :goto_0
    return-void

    .line 4519
    :cond_3
    new-instance v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView$c;

    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->U:Ljava/lang/Class;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/davemorrissey/labs/subscaleview/GestureImageView$c;-><init>(Lcom/davemorrissey/labs/subscaleview/GestureImageView;Landroid/content/Context;Ljava/lang/Class;Landroid/net/Uri;Z)V

    .line 4520
    new-array v1, v5, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/davemorrissey/labs/subscaleview/GestureImageView$c;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public final setMaxScale(F)V
    .locals 0
    .param p1, "maxScale"    # F

    .prologue
    .line 2261
    iput p1, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->q:F

    .line 2262
    return-void
.end method

.method public final setMaximumDpi(I)V
    .locals 4
    .param p1, "dpi"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 2278
    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 2279
    .local v1, "metrics":Landroid/util/DisplayMetrics;
    iget v2, v1, Landroid/util/DisplayMetrics;->xdpi:F

    iget v3, v1, Landroid/util/DisplayMetrics;->ydpi:F

    add-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float v0, v2, v3

    .line 2280
    .local v0, "averageDpi":F
    int-to-float v2, p1

    div-float v2, v0, v2

    invoke-virtual {p0, v2}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->setMinScale(F)V

    .line 2281
    return-void
.end method

.method public final setMinScale(F)V
    .locals 0
    .param p1, "minScale"    # F

    .prologue
    .line 2269
    iput p1, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->r:F

    .line 2270
    return-void
.end method

.method public final setMinimumScaleType(I)V
    .locals 3
    .param p1, "scaleType"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 2245
    sget-object v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->j:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2246
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Invalid scale type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2248
    :cond_0
    iput p1, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->u:I

    .line 50991
    iget-boolean v0, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->ag:Z

    .line 2249
    if-eqz v0, :cond_1

    .line 2250
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->c(Z)V

    .line 2251
    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->invalidate()V

    .line 2253
    :cond_1
    return-void
.end method

.method public setMinimumTileDpi(I)V
    .locals 4
    .param p1, "minimumTileDpi"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 2306
    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 2307
    .local v1, "metrics":Landroid/util/DisplayMetrics;
    iget v2, v1, Landroid/util/DisplayMetrics;->xdpi:F

    iget v3, v1, Landroid/util/DisplayMetrics;->ydpi:F

    add-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float v0, v2, v3

    .line 2308
    .local v0, "averageDpi":F
    int-to-float v2, p1

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->s:I

    .line 50992
    iget-boolean v2, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->ag:Z

    .line 2309
    if-eqz v2, :cond_0

    .line 2310
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->a(Z)V

    .line 2311
    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->invalidate()V

    .line 2313
    :cond_0
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "onClickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 2541
    iput-object p1, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->a:Landroid/view/View$OnClickListener;

    .line 2542
    return-void
.end method

.method public setOnImageEventListener(Lcom/davemorrissey/labs/subscaleview/GestureImageView$d;)V
    .locals 0
    .param p1, "onImageEventListener"    # Lcom/davemorrissey/labs/subscaleview/GestureImageView$d;

    .prologue
    .line 2548
    iput-object p1, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->ai:Lcom/davemorrissey/labs/subscaleview/GestureImageView$d;

    .line 2549
    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 0
    .param p1, "onLongClickListener"    # Landroid/view/View$OnLongClickListener;

    .prologue
    .line 2536
    iput-object p1, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->b:Landroid/view/View$OnLongClickListener;

    .line 2537
    return-void
.end method

.method public final setOrientation(I)V
    .locals 3
    .param p1, "orientation"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 418
    sget-object v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->f:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 419
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Invalid orientation: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 421
    :cond_0
    iput p1, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->p:I

    .line 422
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->a(Z)V

    .line 423
    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->invalidate()V

    .line 424
    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->requestLayout()V

    .line 425
    return-void
.end method

.method public setOriginalMode(Z)V
    .locals 0
    .param p1, "mode"    # Z

    .prologue
    .line 358
    iput-boolean p1, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->au:Z

    .line 359
    return-void
.end method

.method public final setPanEnabled(Z)V
    .locals 4
    .param p1, "panEnabled"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 2475
    iput-boolean p1, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->v:Z

    .line 2476
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->C:Landroid/graphics/PointF;

    if-eqz v0, :cond_0

    .line 2477
    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->C:Landroid/graphics/PointF;

    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->A:F

    invoke-direct {p0}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->m()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 2478
    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->C:Landroid/graphics/PointF;

    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->A:F

    invoke-direct {p0}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->n()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/PointF;->y:F

    .line 50994
    iget-boolean v0, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->ag:Z

    .line 2479
    if-eqz v0, :cond_0

    .line 2480
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->b(Z)V

    .line 2481
    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->invalidate()V

    .line 2484
    :cond_0
    return-void
.end method

.method public final setPanLimit(I)V
    .locals 3
    .param p1, "panLimit"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 2231
    sget-object v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->i:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2232
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Invalid pan limit: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2234
    :cond_0
    iput p1, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->t:I

    .line 50990
    iget-boolean v0, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->ag:Z

    .line 2235
    if-eqz v0, :cond_1

    .line 2236
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->c(Z)V

    .line 2237
    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->invalidate()V

    .line 2239
    :cond_1
    return-void
.end method

.method public final setQuickScaleEnabled(Z)V
    .locals 0
    .param p1, "quickScaleEnabled"    # Z

    .prologue
    .line 2461
    iput-boolean p1, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->x:Z

    .line 2462
    return-void
.end method

.method public final setRegionDecoderClass(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Livx;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 2208
    .local p1, "regionDecoderClass":Ljava/lang/Class;, "Ljava/lang/Class<+Livx;>;"
    if-nez p1, :cond_0

    .line 2209
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Decoder class cannot be set to null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2211
    :cond_0
    iput-object p1, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->T:Ljava/lang/Class;

    .line 2212
    return-void
.end method

.method public final setTileBackgroundColor(I)V
    .locals 2
    .param p1, "tileBgColor"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 2492
    invoke-super {p0, p1}, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView;->setTileBackgroundColor(I)V

    .line 2493
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-nez v0, :cond_0

    .line 2494
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->am:Landroid/graphics/Paint;

    .line 2500
    :goto_0
    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->invalidate()V

    .line 2501
    return-void

    .line 2496
    :cond_0
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->am:Landroid/graphics/Paint;

    .line 2497
    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->am:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 2498
    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->am:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0
.end method

.method public final setZoomEnabled(Z)V
    .locals 0
    .param p1, "zoomEnabled"    # Z

    .prologue
    .line 2447
    iput-boolean p1, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->w:Z

    .line 2448
    return-void
.end method
