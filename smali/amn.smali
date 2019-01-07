.class public Lamn;
.super Ljava/lang/Object;
.source "Base64_2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lamn$a;
    }
.end annotation


# static fields
.field static final synthetic a:Z

.field private static final b:[B

.field private static final c:[B

.field private static final d:[B

.field private static final e:[B

.field private static final f:[B

.field private static final g:[B


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/16 v2, 0x100

    const/16 v1, 0x40

    .line 171
    const-class v0, Lamn;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lamn;->a:Z

    .line 259
    new-array v0, v1, [B

    fill-array-data v0, :array_0

    sput-object v0, Lamn;->b:[B

    .line 278
    new-array v0, v2, [B

    fill-array-data v0, :array_1

    sput-object v0, Lamn;->c:[B

    .line 335
    new-array v0, v1, [B

    fill-array-data v0, :array_2

    sput-object v0, Lamn;->d:[B

    .line 353
    new-array v0, v2, [B

    fill-array-data v0, :array_3

    sput-object v0, Lamn;->e:[B

    .line 413
    new-array v0, v1, [B

    fill-array-data v0, :array_4

    sput-object v0, Lamn;->f:[B

    .line 431
    const/16 v0, 0x101

    new-array v0, v0, [B

    fill-array-data v0, :array_5

    sput-object v0, Lamn;->g:[B

    return-void

    .line 171
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 259
    .line 278
    .line 335
    .line 353
    .line 413
    .line 431
    :array_0
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2bt
        0x2ft
    .end array-data

    :array_1
    .array-data 1
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x5t
        -0x5t
        -0x9t
        -0x9t
        -0x5t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x5t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        0x3et
        -0x9t
        -0x9t
        -0x9t
        0x3ft
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x3at
        0x3bt
        0x3ct
        0x3dt
        -0x9t
        -0x9t
        -0x9t
        -0x1t
        -0x9t
        -0x9t
        -0x9t
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        0xat
        0xbt
        0xct
        0xdt
        0xet
        0xft
        0x10t
        0x11t
        0x12t
        0x13t
        0x14t
        0x15t
        0x16t
        0x17t
        0x18t
        0x19t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        0x1at
        0x1bt
        0x1ct
        0x1dt
        0x1et
        0x1ft
        0x20t
        0x21t
        0x22t
        0x23t
        0x24t
        0x25t
        0x26t
        0x27t
        0x28t
        0x29t
        0x2at
        0x2bt
        0x2ct
        0x2dt
        0x2et
        0x2ft
        0x30t
        0x31t
        0x32t
        0x33t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
    .end array-data

    :array_2
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2dt
        0x5ft
    .end array-data

    :array_3
    .array-data 1
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x5t
        -0x5t
        -0x9t
        -0x9t
        -0x5t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x5t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        0x3et
        -0x9t
        -0x9t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x3at
        0x3bt
        0x3ct
        0x3dt
        -0x9t
        -0x9t
        -0x9t
        -0x1t
        -0x9t
        -0x9t
        -0x9t
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        0xat
        0xbt
        0xct
        0xdt
        0xet
        0xft
        0x10t
        0x11t
        0x12t
        0x13t
        0x14t
        0x15t
        0x16t
        0x17t
        0x18t
        0x19t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        0x3ft
        -0x9t
        0x1at
        0x1bt
        0x1ct
        0x1dt
        0x1et
        0x1ft
        0x20t
        0x21t
        0x22t
        0x23t
        0x24t
        0x25t
        0x26t
        0x27t
        0x28t
        0x29t
        0x2at
        0x2bt
        0x2ct
        0x2dt
        0x2et
        0x2ft
        0x30t
        0x31t
        0x32t
        0x33t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
    .end array-data

    :array_4
    .array-data 1
        0x2dt
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x5ft
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
    .end array-data

    :array_5
    .array-data 1
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x5t
        -0x5t
        -0x9t
        -0x9t
        -0x5t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x5t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        0x0t
        -0x9t
        -0x9t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        0xat
        -0x9t
        -0x9t
        -0x9t
        -0x1t
        -0x9t
        -0x9t
        -0x9t
        0xbt
        0xct
        0xdt
        0xet
        0xft
        0x10t
        0x11t
        0x12t
        0x13t
        0x14t
        0x15t
        0x16t
        0x17t
        0x18t
        0x19t
        0x1at
        0x1bt
        0x1ct
        0x1dt
        0x1et
        0x1ft
        0x20t
        0x21t
        0x22t
        0x23t
        0x24t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        0x25t
        -0x9t
        0x26t
        0x27t
        0x28t
        0x29t
        0x2at
        0x2bt
        0x2ct
        0x2dt
        0x2et
        0x2ft
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x3at
        0x3bt
        0x3ct
        0x3dt
        0x3et
        0x3ft
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 520
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 521
    return-void
.end method

.method static synthetic a([BI[BII)I
    .locals 1
    .param p0, "x0"    # [B
    .param p1, "x1"    # I
    .param p2, "x2"    # [B
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .prologue
    const/4 v0, 0x0

    .line 171
    invoke-static {p0, v0, p2, v0, p4}, Lamn;->b([BI[BII)I

    move-result v0

    return v0
.end method

.method private static a([BIII)Ljava/lang/String;
    .locals 3
    .param p0, "source"    # [B
    .param p1, "off"    # I
    .param p2, "len"    # I
    .param p3, "options"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 915
    invoke-static {p0, v1, p2, v1}, Lamn;->b([BIII)[B

    move-result-object v0

    .line 919
    .local v0, "encoded":[B
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string/jumbo v2, "US-ASCII"

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 922
    :goto_0
    return-object v1

    :catch_0
    move-exception v1

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    goto :goto_0
.end method

.method static synthetic a(I)[B
    .locals 1
    .param p0, "x0"    # I

    .prologue
    .line 171
    invoke-static {p0}, Lamn;->b(I)[B

    move-result-object v0

    return-object v0
.end method

.method public static a([B)[B
    .locals 14
    .param p0, "source"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x4

    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v2, 0x0

    .line 1207
    array-length v6, p0

    .line 2243
    if-nez p0, :cond_0

    .line 2244
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "Cannot decode null source array."

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2246
    :cond_0
    add-int/lit8 v1, v6, 0x0

    array-length v3, p0

    if-le v1, v3, :cond_1

    .line 2247
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Source array with length %d cannot have offset of %d and process %d bytes."

    new-array v4, v13, [Ljava/lang/Object;

    array-length v5, p0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v11

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v12

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2253
    :cond_1
    if-nez v6, :cond_2

    .line 2254
    new-array v0, v2, [B

    .line 1213
    .local v0, "decoded":[B
    :goto_0
    return-object v0

    .line 2255
    .end local v0    # "decoded":[B
    :cond_2
    if-ge v6, v4, :cond_3

    .line 2256
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Base64-encoded string must have at least four characters, but length specified was "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2261
    :cond_3
    invoke-static {v2}, Lamn;->b(I)[B

    move-result-object v7

    .line 2263
    mul-int/lit8 v1, v6, 0x3

    div-int/lit8 v1, v1, 0x4

    .line 2264
    new-array v8, v1, [B

    .line 2267
    new-array v9, v4, [B

    move v5, v2

    move v3, v2

    move v4, v2

    .line 2273
    :goto_1
    add-int/lit8 v1, v6, 0x0

    if-ge v5, v1, :cond_8

    .line 2275
    aget-byte v1, p0, v5

    and-int/lit16 v1, v1, 0xff

    aget-byte v1, v7, v1

    .line 2280
    const/4 v10, -0x5

    if-lt v1, v10, :cond_4

    .line 2281
    const/4 v10, -0x1

    if-lt v1, v10, :cond_7

    .line 2282
    add-int/lit8 v1, v3, 0x1

    aget-byte v10, p0, v5

    aput-byte v10, v9, v3

    .line 2283
    if-le v1, v13, :cond_6

    .line 2284
    invoke-static {v9, v2, v8, v4, v2}, Lamn;->b([BI[BII)I

    move-result v1

    add-int/2addr v1, v4

    .line 2289
    aget-byte v3, p0, v5

    const/16 v4, 0x3d

    if-ne v3, v4, :cond_5

    .line 2304
    :goto_2
    new-array v0, v1, [B

    .line 2305
    invoke-static {v8, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 2297
    :cond_4
    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v3, "Bad Base64 input character decimal %d in array position %d"

    new-array v4, v12, [Ljava/lang/Object;

    aget-byte v6, p0, v5

    and-int/lit16 v6, v6, 0xff

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v11

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    move v3, v1

    move v1, v2

    .line 2273
    :goto_3
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    move v4, v3

    move v3, v1

    goto :goto_1

    :cond_6
    move v3, v4

    goto :goto_3

    :cond_7
    move v1, v3

    move v3, v4

    goto :goto_3

    :cond_8
    move v1, v4

    goto :goto_2
.end method

.method private static a([BII[BII)[B
    .locals 6
    .param p0, "source"    # [B
    .param p1, "srcOffset"    # I
    .param p2, "numSigBytes"    # I
    .param p3, "destination"    # [B
    .param p4, "destOffset"    # I
    .param p5, "options"    # I

    .prologue
    const/16 v5, 0x3d

    const/4 v2, 0x0

    .line 573
    .line 1492
    and-int/lit8 v3, p5, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_1

    .line 1493
    sget-object v0, Lamn;->d:[B

    .line 587
    .local v0, "ALPHABET":[B
    :goto_0
    if-lez p2, :cond_3

    aget-byte v3, p0, p1

    shl-int/lit8 v3, v3, 0x18

    ushr-int/lit8 v3, v3, 0x8

    move v4, v3

    :goto_1
    const/4 v3, 0x1

    if-le p2, v3, :cond_4

    add-int/lit8 v3, p1, 0x1

    aget-byte v3, p0, v3

    shl-int/lit8 v3, v3, 0x18

    ushr-int/lit8 v3, v3, 0x10

    :goto_2
    or-int/2addr v3, v4

    const/4 v4, 0x2

    if-le p2, v4, :cond_0

    add-int/lit8 v2, p1, 0x2

    aget-byte v2, p0, v2

    shl-int/lit8 v2, v2, 0x18

    ushr-int/lit8 v2, v2, 0x18

    :cond_0
    or-int v1, v3, v2

    .line 591
    .local v1, "inBuff":I
    packed-switch p2, :pswitch_data_0

    .line 614
    :goto_3
    return-object p3

    .line 1494
    .end local v0    # "ALPHABET":[B
    .end local v1    # "inBuff":I
    :cond_1
    and-int/lit8 v3, p5, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_2

    .line 1495
    sget-object v0, Lamn;->f:[B

    goto :goto_0

    .line 1497
    :cond_2
    sget-object v0, Lamn;->b:[B

    goto :goto_0

    .restart local v0    # "ALPHABET":[B
    :cond_3
    move v4, v2

    .line 587
    goto :goto_1

    :cond_4
    move v3, v2

    goto :goto_2

    .line 593
    .restart local v1    # "inBuff":I
    :pswitch_0
    ushr-int/lit8 v2, v1, 0x12

    aget-byte v2, v0, v2

    aput-byte v2, p3, p4

    .line 594
    add-int/lit8 v2, p4, 0x1

    ushr-int/lit8 v3, v1, 0xc

    and-int/lit8 v3, v3, 0x3f

    aget-byte v3, v0, v3

    aput-byte v3, p3, v2

    .line 595
    add-int/lit8 v2, p4, 0x2

    ushr-int/lit8 v3, v1, 0x6

    and-int/lit8 v3, v3, 0x3f

    aget-byte v3, v0, v3

    aput-byte v3, p3, v2

    .line 596
    add-int/lit8 v2, p4, 0x3

    and-int/lit8 v3, v1, 0x3f

    aget-byte v3, v0, v3

    aput-byte v3, p3, v2

    goto :goto_3

    .line 600
    :pswitch_1
    ushr-int/lit8 v2, v1, 0x12

    aget-byte v2, v0, v2

    aput-byte v2, p3, p4

    .line 601
    add-int/lit8 v2, p4, 0x1

    ushr-int/lit8 v3, v1, 0xc

    and-int/lit8 v3, v3, 0x3f

    aget-byte v3, v0, v3

    aput-byte v3, p3, v2

    .line 602
    add-int/lit8 v2, p4, 0x2

    ushr-int/lit8 v3, v1, 0x6

    and-int/lit8 v3, v3, 0x3f

    aget-byte v3, v0, v3

    aput-byte v3, p3, v2

    .line 603
    add-int/lit8 v2, p4, 0x3

    aput-byte v5, p3, v2

    goto :goto_3

    .line 607
    :pswitch_2
    ushr-int/lit8 v2, v1, 0x12

    aget-byte v2, v0, v2

    aput-byte v2, p3, p4

    .line 608
    add-int/lit8 v2, p4, 0x1

    ushr-int/lit8 v3, v1, 0xc

    and-int/lit8 v3, v3, 0x3f

    aget-byte v3, v0, v3

    aput-byte v3, p3, v2

    .line 609
    add-int/lit8 v2, p4, 0x2

    aput-byte v5, p3, v2

    .line 610
    add-int/lit8 v2, p4, 0x3

    aput-byte v5, p3, v2

    goto :goto_3

    .line 591
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic a([B[BII)[B
    .locals 6
    .param p0, "x0"    # [B
    .param p1, "x1"    # [B
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    const/4 v1, 0x0

    .line 171
    move-object v0, p1

    move v2, p2

    move-object v3, p0

    move v4, v1

    move v5, p3

    .line 2541
    invoke-static/range {v0 .. v5}, Lamn;->a([BII[BII)[B

    .line 171
    return-object p0
.end method

.method private static b([BI[BII)I
    .locals 8
    .param p0, "source"    # [B
    .param p1, "srcOffset"    # I
    .param p2, "destination"    # [B
    .param p3, "destOffset"    # I
    .param p4, "options"    # I

    .prologue
    const/16 v6, 0x3d

    const/4 v7, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 1121
    if-nez p0, :cond_0

    .line 1122
    new-instance v2, Ljava/lang/NullPointerException;

    const-string/jumbo v3, "Source array was null."

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1124
    :cond_0
    if-nez p2, :cond_1

    .line 1125
    new-instance v2, Ljava/lang/NullPointerException;

    const-string/jumbo v3, "Destination array was null."

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1127
    :cond_1
    if-ltz p1, :cond_2

    add-int/lit8 v4, p1, 0x3

    array-length v5, p0

    if-lt v4, v5, :cond_3

    .line 1128
    :cond_2
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "Source array with length %d cannot have offset of %d and still process four bytes."

    new-array v3, v3, [Ljava/lang/Object;

    array-length v6, p0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v7

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v2

    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1133
    :cond_3
    if-ltz p3, :cond_4

    add-int/lit8 v4, p3, 0x2

    array-length v5, p2

    if-lt v4, v5, :cond_5

    .line 1134
    :cond_4
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "Destination array with length %d cannot have offset of %d and still store three bytes."

    new-array v3, v3, [Ljava/lang/Object;

    array-length v6, p2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v7

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v2

    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1140
    :cond_5
    invoke-static {p4}, Lamn;->b(I)[B

    move-result-object v0

    .line 1143
    .local v0, "DECODABET":[B
    add-int/lit8 v4, p1, 0x2

    aget-byte v4, p0, v4

    if-ne v4, v6, :cond_6

    .line 1148
    aget-byte v3, p0, p1

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x12

    add-int/lit8 v4, p1, 0x1

    aget-byte v4, p0, v4

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0xc

    or-int v1, v3, v4

    .line 1151
    .local v1, "outBuff":I
    ushr-int/lit8 v3, v1, 0x10

    int-to-byte v3, v3

    aput-byte v3, p2, p3

    .line 1188
    :goto_0
    return v2

    .line 1156
    .end local v1    # "outBuff":I
    :cond_6
    add-int/lit8 v2, p1, 0x3

    aget-byte v2, p0, v2

    if-ne v2, v6, :cond_7

    .line 1162
    aget-byte v2, p0, p1

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x12

    add-int/lit8 v4, p1, 0x1

    aget-byte v4, p0, v4

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0xc

    or-int/2addr v2, v4

    add-int/lit8 v4, p1, 0x2

    aget-byte v4, p0, v4

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x6

    or-int v1, v2, v4

    .line 1166
    .restart local v1    # "outBuff":I
    ushr-int/lit8 v2, v1, 0x10

    int-to-byte v2, v2

    aput-byte v2, p2, p3

    .line 1167
    add-int/lit8 v2, p3, 0x1

    ushr-int/lit8 v4, v1, 0x8

    int-to-byte v4, v4

    aput-byte v4, p2, v2

    move v2, v3

    .line 1168
    goto :goto_0

    .line 1179
    .end local v1    # "outBuff":I
    :cond_7
    aget-byte v2, p0, p1

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x12

    add-int/lit8 v3, p1, 0x1

    aget-byte v3, p0, v3

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0xc

    or-int/2addr v2, v3

    add-int/lit8 v3, p1, 0x2

    aget-byte v3, p0, v3

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x6

    or-int/2addr v2, v3

    add-int/lit8 v3, p1, 0x3

    aget-byte v3, p0, v3

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    or-int v1, v2, v3

    .line 1184
    .restart local v1    # "outBuff":I
    shr-int/lit8 v2, v1, 0x10

    int-to-byte v2, v2

    aput-byte v2, p2, p3

    .line 1185
    add-int/lit8 v2, p3, 0x1

    shr-int/lit8 v3, v1, 0x8

    int-to-byte v3, v3

    aput-byte v3, p2, v2

    .line 1186
    add-int/lit8 v2, p3, 0x2

    int-to-byte v3, v1

    aput-byte v3, p2, v2

    .line 1188
    const/4 v2, 0x3

    goto :goto_0
.end method

.method public static b([B)Ljava/lang/String;
    .locals 1
    .param p0, "source"    # [B

    .prologue
    .line 1217
    if-eqz p0, :cond_0

    array-length v0, p0

    if-lez v0, :cond_0

    .line 1218
    invoke-static {p0}, Lamn;->c([B)Ljava/lang/String;

    move-result-object v0

    .line 1220
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method private static final b(I)[B
    .locals 2
    .param p0, "options"    # I

    .prologue
    .line 508
    and-int/lit8 v0, p0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    .line 509
    sget-object v0, Lamn;->e:[B

    .line 513
    :goto_0
    return-object v0

    .line 510
    :cond_0
    and-int/lit8 v0, p0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_1

    .line 511
    sget-object v0, Lamn;->g:[B

    goto :goto_0

    .line 513
    :cond_1
    sget-object v0, Lamn;->c:[B

    goto :goto_0
.end method

.method private static b([BIII)[B
    .locals 23
    .param p0, "source"    # [B
    .param p1, "off"    # I
    .param p2, "len"    # I
    .param p3, "options"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 969
    if-nez p0, :cond_0

    .line 970
    new-instance v4, Ljava/lang/NullPointerException;

    const-string/jumbo v5, "Cannot serialize a null array."

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 973
    :cond_0
    if-gez p1, :cond_1

    .line 974
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Cannot have negative offset: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 978
    :cond_1
    if-gez p2, :cond_2

    .line 979
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Cannot have length offset: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 983
    :cond_2
    add-int v4, p1, p2

    move-object/from16 v0, p0

    array-length v5, v0

    if-le v4, v5, :cond_3

    .line 984
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "Cannot have offset of %d and length of %d with array of length %d"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v6, v9

    const/4 v9, 0x1

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v6, v9

    const/4 v9, 0x2

    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 991
    :cond_3
    and-int/lit8 v4, p3, 0x2

    if-eqz v4, :cond_4

    .line 992
    const/4 v12, 0x0

    .line 993
    .local v12, "baos":Ljava/io/ByteArrayOutputStream;
    const/16 v18, 0x0

    .line 994
    .local v18, "gzos":Ljava/util/zip/GZIPOutputStream;
    const/4 v10, 0x0

    .line 998
    .local v10, "b64os":Lamn$a;
    :try_start_0
    new-instance v13, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v13}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 999
    .end local v12    # "baos":Ljava/io/ByteArrayOutputStream;
    .local v13, "baos":Ljava/io/ByteArrayOutputStream;
    :try_start_1
    new-instance v11, Lamn$a;

    or-int/lit8 v4, p3, 0x1

    invoke-direct {v11, v13, v4}, Lamn$a;-><init>(Ljava/io/OutputStream;I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1000
    .end local v10    # "b64os":Lamn$a;
    .local v11, "b64os":Lamn$a;
    :try_start_2
    new-instance v19, Ljava/util/zip/GZIPOutputStream;

    move-object/from16 v0, v19

    invoke-direct {v0, v11}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1002
    .end local v18    # "gzos":Ljava/util/zip/GZIPOutputStream;
    .local v19, "gzos":Ljava/util/zip/GZIPOutputStream;
    :try_start_3
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/zip/GZIPOutputStream;->write([BII)V

    .line 1003
    invoke-virtual/range {v19 .. v19}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_9
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 1012
    :try_start_4
    invoke-virtual/range {v19 .. v19}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 1016
    :goto_0
    :try_start_5
    invoke-virtual {v11}, Lamn$a;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 1020
    :goto_1
    :try_start_6
    invoke-virtual {v13}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 1025
    :goto_2
    invoke-virtual {v13}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v17

    .line 1081
    .end local v11    # "b64os":Lamn$a;
    .end local v13    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v19    # "gzos":Ljava/util/zip/GZIPOutputStream;
    :goto_3
    return-object v17

    .line 1005
    .restart local v10    # "b64os":Lamn$a;
    .restart local v12    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v18    # "gzos":Ljava/util/zip/GZIPOutputStream;
    :catch_0
    move-exception v8

    .line 1008
    .local v8, "e":Ljava/io/IOException;
    :goto_4
    :try_start_7
    throw v8
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1011
    .end local v8    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 1012
    :goto_5
    :try_start_8
    invoke-virtual/range {v18 .. v18}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    .line 1016
    :goto_6
    :try_start_9
    invoke-virtual {v10}, Lamn$a;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    .line 1020
    :goto_7
    :try_start_a
    invoke-virtual {v12}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6

    .line 1022
    :goto_8
    throw v4

    .line 1030
    .end local v10    # "b64os":Lamn$a;
    .end local v12    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v18    # "gzos":Ljava/util/zip/GZIPOutputStream;
    :cond_4
    and-int/lit8 v4, p3, 0x8

    if-eqz v4, :cond_7

    const/4 v14, 0x1

    .line 1039
    .local v14, "breakLines":Z
    :goto_9
    div-int/lit8 v4, p2, 0x3

    mul-int/lit8 v5, v4, 0x4

    rem-int/lit8 v4, p2, 0x3

    if-lez v4, :cond_8

    const/4 v4, 0x4

    :goto_a
    add-int v16, v5, v4

    .line 1042
    .local v16, "encLen":I
    if-eqz v14, :cond_5

    .line 1043
    div-int/lit8 v4, v16, 0x4c

    add-int v16, v16, v4

    .line 1046
    :cond_5
    move/from16 v0, v16

    new-array v7, v0, [B

    .line 1048
    .local v7, "outBuff":[B
    const/4 v15, 0x0

    .line 1049
    .local v15, "d":I
    const/4 v8, 0x0

    .line 1050
    .local v8, "e":I
    add-int/lit8 v20, p2, -0x2

    .line 1051
    .local v20, "len2":I
    const/16 v21, 0x0

    .line 1052
    .local v21, "lineLength":I
    :goto_b
    move/from16 v0, v20

    if-ge v15, v0, :cond_9

    .line 1053
    add-int v5, v15, p1

    const/4 v6, 0x3

    move-object/from16 v4, p0

    move/from16 v9, p3

    invoke-static/range {v4 .. v9}, Lamn;->a([BII[BII)[B

    .line 1055
    add-int/lit8 v21, v21, 0x4

    .line 1056
    if-eqz v14, :cond_6

    const/16 v4, 0x4c

    move/from16 v0, v21

    if-lt v0, v4, :cond_6

    .line 1057
    add-int/lit8 v4, v8, 0x4

    const/16 v5, 0xa

    aput-byte v5, v7, v4

    .line 1058
    add-int/lit8 v8, v8, 0x1

    .line 1059
    const/16 v21, 0x0

    .line 1052
    :cond_6
    add-int/lit8 v15, v15, 0x3

    add-int/lit8 v8, v8, 0x4

    goto :goto_b

    .line 1030
    .end local v7    # "outBuff":[B
    .end local v8    # "e":I
    .end local v14    # "breakLines":Z
    .end local v15    # "d":I
    .end local v16    # "encLen":I
    .end local v20    # "len2":I
    .end local v21    # "lineLength":I
    :cond_7
    const/4 v14, 0x0

    goto :goto_9

    .line 1039
    .restart local v14    # "breakLines":Z
    :cond_8
    const/4 v4, 0x0

    goto :goto_a

    .line 1063
    .restart local v7    # "outBuff":[B
    .restart local v8    # "e":I
    .restart local v15    # "d":I
    .restart local v16    # "encLen":I
    .restart local v20    # "len2":I
    .restart local v21    # "lineLength":I
    :cond_9
    move/from16 v0, p2

    if-ge v15, v0, :cond_a

    .line 1064
    add-int v5, v15, p1

    sub-int v6, p2, v15

    move-object/from16 v4, p0

    move/from16 v9, p3

    invoke-static/range {v4 .. v9}, Lamn;->a([BII[BII)[B

    .line 1065
    add-int/lit8 v8, v8, 0x4

    .line 1069
    :cond_a
    array-length v4, v7

    add-int/lit8 v4, v4, -0x1

    if-gt v8, v4, :cond_b

    .line 1074
    new-array v0, v8, [B

    move-object/from16 v17, v0

    .line 1075
    .local v17, "finalOut":[B
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v17

    invoke-static {v7, v4, v0, v5, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_3

    .end local v17    # "finalOut":[B
    :cond_b
    move-object/from16 v17, v7

    .line 1081
    goto/16 :goto_3

    .end local v7    # "outBuff":[B
    .end local v8    # "e":I
    .end local v14    # "breakLines":Z
    .end local v15    # "d":I
    .end local v16    # "encLen":I
    .end local v20    # "len2":I
    .end local v21    # "lineLength":I
    .restart local v11    # "b64os":Lamn$a;
    .restart local v13    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v19    # "gzos":Ljava/util/zip/GZIPOutputStream;
    :catch_1
    move-exception v4

    goto/16 :goto_0

    :catch_2
    move-exception v4

    goto/16 :goto_1

    .line 1023
    :catch_3
    move-exception v4

    goto/16 :goto_2

    .end local v11    # "b64os":Lamn$a;
    .end local v13    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v19    # "gzos":Ljava/util/zip/GZIPOutputStream;
    .restart local v10    # "b64os":Lamn$a;
    .restart local v12    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v18    # "gzos":Ljava/util/zip/GZIPOutputStream;
    :catch_4
    move-exception v5

    goto/16 :goto_6

    :catch_5
    move-exception v5

    goto/16 :goto_7

    :catch_6
    move-exception v5

    goto/16 :goto_8

    .line 1011
    .end local v12    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v13    # "baos":Ljava/io/ByteArrayOutputStream;
    :catchall_1
    move-exception v4

    move-object v12, v13

    .end local v13    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v12    # "baos":Ljava/io/ByteArrayOutputStream;
    goto/16 :goto_5

    .end local v10    # "b64os":Lamn$a;
    .end local v12    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v11    # "b64os":Lamn$a;
    .restart local v13    # "baos":Ljava/io/ByteArrayOutputStream;
    :catchall_2
    move-exception v4

    move-object v10, v11

    .end local v11    # "b64os":Lamn$a;
    .restart local v10    # "b64os":Lamn$a;
    move-object v12, v13

    .end local v13    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v12    # "baos":Ljava/io/ByteArrayOutputStream;
    goto/16 :goto_5

    .end local v10    # "b64os":Lamn$a;
    .end local v12    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v18    # "gzos":Ljava/util/zip/GZIPOutputStream;
    .restart local v11    # "b64os":Lamn$a;
    .restart local v13    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v19    # "gzos":Ljava/util/zip/GZIPOutputStream;
    :catchall_3
    move-exception v4

    move-object v10, v11

    .end local v11    # "b64os":Lamn$a;
    .restart local v10    # "b64os":Lamn$a;
    move-object/from16 v18, v19

    .end local v19    # "gzos":Ljava/util/zip/GZIPOutputStream;
    .restart local v18    # "gzos":Ljava/util/zip/GZIPOutputStream;
    move-object v12, v13

    .end local v13    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v12    # "baos":Ljava/io/ByteArrayOutputStream;
    goto/16 :goto_5

    .line 1005
    .end local v12    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v13    # "baos":Ljava/io/ByteArrayOutputStream;
    :catch_7
    move-exception v8

    move-object v12, v13

    .end local v13    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v12    # "baos":Ljava/io/ByteArrayOutputStream;
    goto/16 :goto_4

    .end local v10    # "b64os":Lamn$a;
    .end local v12    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v11    # "b64os":Lamn$a;
    .restart local v13    # "baos":Ljava/io/ByteArrayOutputStream;
    :catch_8
    move-exception v8

    move-object v10, v11

    .end local v11    # "b64os":Lamn$a;
    .restart local v10    # "b64os":Lamn$a;
    move-object v12, v13

    .end local v13    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v12    # "baos":Ljava/io/ByteArrayOutputStream;
    goto/16 :goto_4

    .end local v10    # "b64os":Lamn$a;
    .end local v12    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v18    # "gzos":Ljava/util/zip/GZIPOutputStream;
    .restart local v11    # "b64os":Lamn$a;
    .restart local v13    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v19    # "gzos":Ljava/util/zip/GZIPOutputStream;
    :catch_9
    move-exception v8

    move-object v10, v11

    .end local v11    # "b64os":Lamn$a;
    .restart local v10    # "b64os":Lamn$a;
    move-object/from16 v18, v19

    .end local v19    # "gzos":Ljava/util/zip/GZIPOutputStream;
    .restart local v18    # "gzos":Ljava/util/zip/GZIPOutputStream;
    move-object v12, v13

    .end local v13    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v12    # "baos":Ljava/io/ByteArrayOutputStream;
    goto/16 :goto_4
.end method

.method private static c([B)Ljava/lang/String;
    .locals 5
    .param p0, "source"    # [B

    .prologue
    .line 797
    const/4 v0, 0x0

    .line 799
    .local v0, "encoded":Ljava/lang/String;
    const/4 v2, 0x0

    :try_start_0
    array-length v3, p0

    const/4 v4, 0x0

    invoke-static {p0, v2, v3, v4}, Lamn;->a([BIII)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 803
    :cond_0
    sget-boolean v2, Lamn;->a:Z

    if-nez v2, :cond_1

    if-nez v0, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 800
    :catch_0
    move-exception v1

    .line 801
    .local v1, "ex":Ljava/io/IOException;
    sget-boolean v2, Lamn;->a:Z

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 804
    .end local v1    # "ex":Ljava/io/IOException;
    :cond_1
    return-object v0
.end method
