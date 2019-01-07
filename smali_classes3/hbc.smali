.class public final Lhbc;
.super Ljava/lang/Object;
.source "ResizeOptions.java"


# instance fields
.field public final a:I

.field public final b:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput p1, p0, Lhbc;->a:I

    .line 34
    iput p2, p0, Lhbc;->b:I

    .line 35
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lhbc;->a:I

    if-lez v0, :cond_0

    iget v0, p0, Lhbc;->b:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 50
    if-ne p1, p0, :cond_1

    .line 57
    :cond_0
    :goto_0
    return v1

    .line 53
    :cond_1
    instance-of v3, p1, Lhbc;

    if-nez v3, :cond_2

    move v1, v2

    .line 54
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 56
    check-cast v0, Lhbc;

    .line 57
    .local v0, "that":Lhbc;
    iget v3, p0, Lhbc;->a:I

    iget v4, v0, Lhbc;->a:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Lhbc;->b:I

    iget v4, v0, Lhbc;->b:I

    if-eq v3, v4, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 43
    iget v0, p0, Lhbc;->a:I

    iget v1, p0, Lhbc;->b:I

    .line 1106
    add-int/lit8 v0, v0, 0x1f

    .line 1107
    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v1

    .line 43
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 63
    const/4 v0, 0x0

    const-string/jumbo v1, "%dx%d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lhbc;->a:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lhbc;->b:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
