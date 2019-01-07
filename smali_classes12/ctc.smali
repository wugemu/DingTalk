.class public final Lctc;
.super Ljava/lang/Object;
.source "SampleConverterImpl.java"

# interfaces
.implements Lcom/alibaba/doraemon/audio/SampleConverter;


# instance fields
.field private a:I

.field private b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput v0, p0, Lctc;->a:I

    .line 15
    iput v0, p0, Lctc;->b:I

    return-void
.end method


# virtual methods
.method public final convertTo(Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 7
    .param p1, "integer"    # Ljava/lang/Integer;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, 0x2

    .line 24
    const-wide/high16 v2, 0x403a000000000000L    # 26.0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    div-int/lit8 v4, v4, 0x78

    int-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->log(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4020000000000000L    # 8.0

    invoke-static {v4, v5}, Ljava/lang/Math;->log(D)D

    move-result-wide v4

    div-double/2addr v2, v4

    double-to-int v1, v2

    .line 25
    .local v1, "sample":I
    if-ge v1, v6, :cond_0

    .line 26
    const/4 v1, 0x2

    .line 28
    :cond_0
    const/16 v2, 0x64

    if-le v1, v2, :cond_1

    .line 29
    const/16 v1, 0x64

    .line 31
    :cond_1
    move v0, v1

    .line 32
    .local v0, "newSample":I
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_3

    .line 33
    iget v2, p0, Lctc;->a:I

    if-le v2, v6, :cond_2

    .line 34
    iget v2, p0, Lctc;->a:I

    iget v3, p0, Lctc;->b:I

    add-int/2addr v2, v3

    div-int/lit8 v0, v2, 0x2

    .line 36
    :cond_2
    if-ge v0, v6, :cond_3

    .line 37
    const/4 v0, 0x2

    .line 40
    :cond_3
    iget v2, p0, Lctc;->a:I

    iput v2, p0, Lctc;->b:I

    .line 41
    iput v0, p0, Lctc;->a:I

    .line 42
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    return-object v2
.end method
