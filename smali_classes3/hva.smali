.class public final Lhva;
.super Ljava/lang/Object;
.source "RC4.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhva$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    return-void
.end method

.method public static a(Ljava/lang/String;)Lhva$a;
    .locals 9
    .param p0, "pPrivateKey"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/16 v8, 0x100

    const/4 v7, 0x0

    .line 32
    if-eqz p0, :cond_2

    .line 33
    new-instance v3, Lhva$a;

    invoke-direct {v3, v7}, Lhva$a;-><init>(B)V

    .line 37
    .local v3, "lRC4Key":Lhva$a;
    const/4 v0, 0x0

    .local v0, "counter":I
    :goto_0
    if-ge v0, v8, :cond_0

    .line 38
    iget-object v6, v3, Lhva$a;->a:[I

    aput v0, v6, v0

    .line 37
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 40
    :cond_0
    iput v7, v3, Lhva$a;->b:I

    .line 41
    iput v7, v3, Lhva$a;->c:I

    .line 42
    const/4 v1, 0x0

    .line 43
    .local v1, "index1":I
    const/4 v2, 0x0

    .line 45
    .local v2, "index2":I
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v8, :cond_1

    .line 46
    :try_start_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    iget-object v7, v3, Lhva$a;->a:[I

    aget v7, v7, v0

    add-int/2addr v6, v7

    add-int/2addr v6, v2

    rem-int/lit16 v2, v6, 0x100

    .line 47
    iget-object v6, v3, Lhva$a;->a:[I

    aget v4, v6, v0

    .line 48
    .local v4, "swapInt":I
    iget-object v6, v3, Lhva$a;->a:[I

    iget-object v7, v3, Lhva$a;->a:[I

    aget v7, v7, v2

    aput v7, v6, v0

    .line 49
    iget-object v6, v3, Lhva$a;->a:[I

    aput v4, v6, v2

    .line 50
    add-int/lit8 v6, v1, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    rem-int v1, v6, v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 53
    .end local v4    # "swapInt":I
    :catch_0
    move-exception v6

    move-object v3, v5

    .line 57
    .end local v0    # "counter":I
    .end local v1    # "index1":I
    .end local v2    # "index2":I
    .end local v3    # "lRC4Key":Lhva$a;
    :cond_1
    :goto_2
    return-object v3

    :cond_2
    move-object v3, v5

    goto :goto_2
.end method
