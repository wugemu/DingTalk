.class public final Ldxa;
.super Ljava/lang/Object;
.source "NumberKit.java"


# static fields
.field private static final a:[Ljava/lang/String;

.field private static final b:[Ljava/lang/String;

.field private static final c:[Ljava/lang/String;

.field private static final d:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 8
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, ""

    aput-object v1, v0, v3

    const-string/jumbo v1, "i"

    aput-object v1, v0, v4

    const-string/jumbo v1, "ii"

    aput-object v1, v0, v5

    const-string/jumbo v1, "iii"

    aput-object v1, v0, v6

    const-string/jumbo v1, "iv"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, "v"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "vi"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "vii"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "viii"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "ix"

    aput-object v2, v0, v1

    sput-object v0, Ldxa;->a:[Ljava/lang/String;

    .line 9
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, ""

    aput-object v1, v0, v3

    const-string/jumbo v1, "x"

    aput-object v1, v0, v4

    const-string/jumbo v1, "xx"

    aput-object v1, v0, v5

    const-string/jumbo v1, "xxx"

    aput-object v1, v0, v6

    const-string/jumbo v1, "xl"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, "l"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "lx"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "lxx"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "lxxx"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "xc"

    aput-object v2, v0, v1

    sput-object v0, Ldxa;->b:[Ljava/lang/String;

    .line 10
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, ""

    aput-object v1, v0, v3

    const-string/jumbo v1, "c"

    aput-object v1, v0, v4

    const-string/jumbo v1, "cc"

    aput-object v1, v0, v5

    const-string/jumbo v1, "ccc"

    aput-object v1, v0, v6

    const-string/jumbo v1, "cd"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, "d"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "dc"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "dcc"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "dccc"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "cm"

    aput-object v2, v0, v1

    sput-object v0, Ldxa;->c:[Ljava/lang/String;

    .line 11
    new-array v0, v7, [Ljava/lang/String;

    const-string/jumbo v1, ""

    aput-object v1, v0, v3

    const-string/jumbo v1, "m"

    aput-object v1, v0, v4

    const-string/jumbo v1, "mm"

    aput-object v1, v0, v5

    const-string/jumbo v1, "mmm"

    aput-object v1, v0, v6

    sput-object v0, Ldxa;->d:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(I)Ljava/lang/String;
    .locals 7
    .param p0, "num"    # I

    .prologue
    .line 16
    :goto_0
    const/16 v4, 0x1384    # 7.001E-42f

    if-le p0, v4, :cond_0

    .line 17
    add-int/lit16 p0, p0, -0x1384

    goto :goto_0

    .line 19
    :cond_0
    sget-object v4, Ldxa;->d:[Ljava/lang/String;

    div-int/lit16 v5, p0, 0x3e8

    aget-object v3, v4, v5

    .line 20
    .local v3, "th":Ljava/lang/String;
    rem-int/lit16 p0, p0, 0x3e8

    .line 21
    sget-object v4, Ldxa;->c:[Ljava/lang/String;

    div-int/lit8 v5, p0, 0x64

    aget-object v1, v4, v5

    .line 22
    .local v1, "hu":Ljava/lang/String;
    rem-int/lit8 p0, p0, 0x64

    .line 23
    sget-object v4, Ldxa;->b:[Ljava/lang/String;

    div-int/lit8 v5, p0, 0xa

    aget-object v2, v4, v5

    .line 24
    .local v2, "te":Ljava/lang/String;
    rem-int/lit8 p0, p0, 0xa

    .line 25
    sget-object v4, Ldxa;->a:[Ljava/lang/String;

    aget-object v0, v4, p0

    .line 26
    .local v0, "di":Ljava/lang/String;
    const-string/jumbo v4, "%s%s%s%s"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    const/4 v6, 0x1

    aput-object v1, v5, v6

    const/4 v6, 0x2

    aput-object v2, v5, v6

    const/4 v6, 0x3

    aput-object v0, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static b(I)Ljava/lang/String;
    .locals 5
    .param p0, "num"    # I

    .prologue
    .line 30
    div-int/lit8 v0, p0, 0x1a

    .line 31
    .local v0, "a":I
    rem-int/lit8 v1, p0, 0x1a

    .line 32
    .local v1, "b":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/16 v3, 0x1a

    if-le v0, v3, :cond_0

    .line 34
    add-int/lit8 v3, v0, -0x1

    invoke-static {v3}, Ldxa;->b(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, v1, 0x61

    int-to-char v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 40
    :goto_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 35
    :cond_0
    if-nez v0, :cond_1

    .line 36
    add-int/lit8 v3, v1, 0x61

    int-to-char v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 38
    :cond_1
    add-int/lit8 v3, v0, 0x61

    int-to-char v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, v1, 0x61

    int-to-char v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
