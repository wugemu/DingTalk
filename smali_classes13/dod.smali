.class public final Ldod;
.super Ljava/lang/Object;
.source "ScaleHeightSpan.java"

# interfaces
.implements Landroid/text/style/LineHeightSpan;


# instance fields
.field private a:F


# direct methods
.method public constructor <init>(F)V
    .locals 1
    .param p1, "scale"    # F

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const v0, 0x3dcccccd    # 0.1f

    iput v0, p0, Ldod;->a:F

    .line 16
    return-void
.end method


# virtual methods
.method public final chooseHeight(Ljava/lang/CharSequence;IIIILandroid/graphics/Paint$FontMetricsInt;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "spanstartv"    # I
    .param p5, "v"    # I
    .param p6, "fm"    # Landroid/graphics/Paint$FontMetricsInt;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 20
    iget v0, p6, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    int-to-float v0, v0

    iget v1, p0, Ldod;->a:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p6, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 21
    iget v0, p6, Landroid/graphics/Paint$FontMetricsInt;->top:I

    int-to-float v0, v0

    iget v1, p0, Ldod;->a:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p6, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 22
    iget v0, p6, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    int-to-float v0, v0

    iget v1, p0, Ldod;->a:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p6, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 23
    iget v0, p6, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    int-to-float v0, v0

    iget v1, p0, Ldod;->a:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p6, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 24
    return-void
.end method
