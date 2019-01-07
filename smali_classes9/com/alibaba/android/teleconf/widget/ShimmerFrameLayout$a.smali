.class final Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$a;
.super Ljava/lang/Object;
.source "ShimmerFrameLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field public a:Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$MaskAngle;

.field public b:F

.field public c:F

.field public d:I

.field public e:I

.field public f:F

.field public g:F

.field public h:F

.field public i:Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$MaskShape;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()[I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 69
    sget-object v0, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$3;->a:[I

    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$a;->i:Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$MaskShape;

    invoke-virtual {v1}, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$MaskShape;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 72
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    .line 74
    :goto_0
    return-object v0

    :pswitch_0
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    goto :goto_0

    .line 69
    .line 72
    .line 74
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 4
        0x0
        -0x1000000
        -0x1000000
        0x0
    .end array-data

    :array_1
    .array-data 4
        -0x1000000
        -0x1000000
        0x0
    .end array-data
.end method

.method public final b()[F
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/high16 v5, 0x40000000    # 2.0f

    const/high16 v4, 0x3f800000    # 1.0f

    .line 84
    sget-object v0, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$3;->a:[I

    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$a;->i:Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$MaskShape;

    invoke-virtual {v1}, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$MaskShape;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 87
    const/4 v0, 0x4

    new-array v0, v0, [F

    iget v1, p0, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$a;->f:F

    sub-float v1, v4, v1

    iget v2, p0, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$a;->c:F

    sub-float/2addr v1, v2

    div-float/2addr v1, v5

    .line 88
    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    aput v1, v0, v6

    iget v1, p0, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$a;->f:F

    sub-float v1, v4, v1

    div-float/2addr v1, v5

    .line 89
    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    aput v1, v0, v7

    const/4 v1, 0x2

    iget v2, p0, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$a;->f:F

    add-float/2addr v2, v4

    div-float/2addr v2, v5

    .line 90
    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x3

    iget v2, p0, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$a;->f:F

    add-float/2addr v2, v4

    iget v3, p0, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$a;->c:F

    add-float/2addr v2, v3

    div-float/2addr v2, v5

    .line 91
    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v2

    aput v2, v0, v1

    .line 96
    :goto_0
    return-object v0

    .line 93
    :pswitch_0
    const/4 v0, 0x3

    new-array v0, v0, [F

    aput v3, v0, v6

    iget v1, p0, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$a;->f:F

    .line 95
    invoke-static {v1, v4}, Ljava/lang/Math;->min(FF)F

    move-result v1

    aput v1, v0, v7

    const/4 v1, 0x2

    iget v2, p0, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$a;->f:F

    iget v3, p0, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$a;->c:F

    add-float/2addr v2, v3

    .line 96
    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v2

    aput v2, v0, v1

    goto :goto_0

    .line 84
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
