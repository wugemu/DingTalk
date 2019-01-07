.class final Livo;
.super Ljava/lang/Object;
.source "Base64Util.java"


# instance fields
.field final a:[C

.field final b:[I


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 5
    .param p1, "alphabet"    # Ljava/lang/String;

    .prologue
    const/16 v4, 0x80

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    iput-object v2, p0, Livo;->a:[C

    .line 69
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x40

    if-eq v2, v3, :cond_0

    .line 70
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "alphabet has incorrect length (should be 64, not "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 72
    :cond_0
    new-array v2, v4, [I

    iput-object v2, p0, Livo;->b:[I

    .line 73
    iget-object v2, p0, Livo;->b:[I

    const/4 v3, -0x1

    invoke-static {v2, v3}, Ljava/util/Arrays;->fill([II)V

    .line 74
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Livo;->a:[C

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 75
    iget-object v2, p0, Livo;->a:[C

    aget-char v0, v2, v1

    .line 76
    .local v0, "ch":C
    if-lt v0, v4, :cond_1

    .line 77
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "invalid character in alphabet: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 78
    :cond_1
    iget-object v2, p0, Livo;->b:[I

    aput v1, v2, v0

    .line 74
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 80
    .end local v0    # "ch":C
    :cond_2
    return-void
.end method
