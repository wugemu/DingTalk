.class public final Lkps;
.super Ljava/lang/Object;
.source "Hex.java"


# static fields
.field public static final a:Ljava/nio/charset/Charset;

.field private static final b:[C

.field private static final c:[C


# instance fields
.field private final d:Ljava/nio/charset/Charset;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x10

    .line 45
    sget-object v0, Lkpp;->f:Ljava/nio/charset/Charset;

    sput-object v0, Lkps;->a:Ljava/nio/charset/Charset;

    .line 57
    new-array v0, v1, [C

    fill-array-data v0, :array_0

    sput-object v0, Lkps;->b:[C

    .line 63
    new-array v0, v1, [C

    fill-array-data v0, :array_1

    sput-object v0, Lkps;->c:[C

    return-void

    .line 57
    .line 63
    nop

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
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data

    :array_1
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

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 190
    sget-object v0, Lkps;->a:Ljava/nio/charset/Charset;

    iput-object v0, p0, Lkps;->d:Ljava/nio/charset/Charset;

    .line 191
    return-void
.end method

.method public static a([B)[C
    .locals 7
    .param p0, "data"    # [B

    .prologue
    const/4 v0, 0x0

    .line 109
    .line 1125
    sget-object v2, Lkps;->b:[C

    .line 1141
    array-length v3, p0

    .line 1142
    shl-int/lit8 v1, v3, 0x1

    new-array v4, v1, [C

    move v1, v0

    .line 1144
    :goto_0
    if-ge v1, v3, :cond_0

    .line 1145
    add-int/lit8 v5, v0, 0x1

    aget-byte v6, p0, v1

    and-int/lit16 v6, v6, 0xf0

    ushr-int/lit8 v6, v6, 0x4

    aget-char v6, v2, v6

    aput-char v6, v4, v0

    .line 1146
    add-int/lit8 v0, v5, 0x1

    aget-byte v6, p0, v1

    and-int/lit8 v6, v6, 0xf

    aget-char v6, v2, v6

    aput-char v6, v4, v5

    .line 1144
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 109
    :cond_0
    return-object v4
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 332
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "[charsetName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lkps;->d:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
