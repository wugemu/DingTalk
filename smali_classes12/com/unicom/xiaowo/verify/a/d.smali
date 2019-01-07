.class public final Lcom/unicom/xiaowo/verify/a/d;
.super Ljava/lang/Object;
.source "StringUtil.java"


# static fields
.field private static final a:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/unicom/xiaowo/verify/a/d;->a:[C

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method public static a([B)Ljava/lang/String;
    .locals 5

    .prologue
    .line 15
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    .line 16
    :cond_0
    const-string/jumbo v0, ""

    .line 22
    :goto_0
    return-object v0

    .line 18
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    const/4 v0, 0x0

    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_2

    .line 20
    sget-object v2, Lcom/unicom/xiaowo/verify/a/d;->a:[C

    aget-byte v3, p0, v0

    shr-int/lit8 v3, v3, 0x4

    and-int/lit8 v3, v3, 0xf

    aget-char v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/unicom/xiaowo/verify/a/d;->a:[C

    aget-byte v4, p0, v0

    and-int/lit8 v4, v4, 0xf

    aget-char v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 19
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 22
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)[B
    .locals 7

    .prologue
    const/16 v6, 0x10

    .line 30
    if-nez p0, :cond_0

    .line 31
    const/4 v0, 0x0

    .line 44
    :goto_0
    return-object v0

    .line 33
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    .line 34
    array-length v0, v3

    div-int/lit8 v4, v0, 0x2

    .line 35
    new-array v1, v4, [B

    .line 36
    const/4 v0, 0x0

    move v2, v0

    :goto_1
    if-ge v2, v4, :cond_2

    .line 37
    mul-int/lit8 v0, v2, 0x2

    aget-char v0, v3, v0

    invoke-static {v0, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v0

    .line 38
    mul-int/lit8 v5, v2, 0x2

    add-int/lit8 v5, v5, 0x1

    aget-char v5, v3, v5

    invoke-static {v5, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    .line 39
    shl-int/lit8 v0, v0, 0x4

    or-int/2addr v0, v5

    .line 40
    const/16 v5, 0x7f

    if-le v0, v5, :cond_1

    .line 41
    add-int/lit16 v0, v0, -0x100

    .line 42
    :cond_1
    int-to-byte v0, v0

    aput-byte v0, v1, v2

    .line 36
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 44
    goto :goto_0
.end method
