.class public final Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer;
.super Ljava/lang/Object;
.source "Shimmer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer$c;,
        Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer$a;,
        Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer$b;,
        Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer$Direction;,
        Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer$Shape;
    }
.end annotation


# instance fields
.field final a:[F

.field final b:[I

.field final c:Landroid/graphics/RectF;

.field d:I

.field e:I
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation
.end field

.field f:I
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation
.end field

.field g:I

.field h:I

.field i:I

.field j:F

.field k:F

.field l:F

.field m:F

.field n:F

.field o:Z

.field p:Z

.field q:Z

.field r:I

.field s:I

.field t:J

.field u:J


# direct methods
.method constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v4, -0x1

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-array v0, v5, [F

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer;->a:[F

    .line 60
    new-array v0, v5, [I

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer;->b:[I

    .line 61
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer;->c:Landroid/graphics/RectF;

    .line 63
    iput v1, p0, Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer;->d:I

    .line 64
    iput v4, p0, Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer;->e:I

    .line 66
    const v0, 0x4cffffff    # 1.3421772E8f

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer;->f:I

    .line 68
    iput v1, p0, Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer;->g:I

    .line 69
    iput v1, p0, Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer;->h:I

    .line 70
    iput v1, p0, Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer;->i:I

    .line 72
    iput v3, p0, Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer;->j:F

    .line 73
    iput v3, p0, Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer;->k:F

    .line 74
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer;->l:F

    .line 75
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer;->m:F

    .line 76
    const/high16 v0, 0x41a00000    # 20.0f

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer;->n:F

    .line 78
    iput-boolean v2, p0, Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer;->o:Z

    .line 79
    iput-boolean v2, p0, Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer;->p:Z

    .line 80
    iput-boolean v2, p0, Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer;->q:Z

    .line 82
    iput v4, p0, Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer;->r:I

    .line 83
    iput v2, p0, Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer;->s:I

    .line 84
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer;->t:J

    .line 87
    return-void
.end method


# virtual methods
.method final a(I)I
    .locals 2
    .param p1, "width"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 90
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer;->h:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer;->h:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer;->j:F

    int-to-float v1, p1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto :goto_0
.end method

.method final b(I)I
    .locals 2
    .param p1, "height"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 94
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer;->i:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer;->i:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer;->k:F

    int-to-float v1, p1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto :goto_0
.end method
