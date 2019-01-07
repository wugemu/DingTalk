.class public Lcn/com/chinatelecom/gateway/lib/a/b;
.super Ljava/lang/Object;
.source "Base64Utils.java"


# static fields
.field private static a:Ljava/lang/String;

.field private static b:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const-class v0, Lcn/com/chinatelecom/gateway/lib/a/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/com/chinatelecom/gateway/lib/a/b;->a:Ljava/lang/String;

    .line 12
    const/16 v0, 0x80

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcn/com/chinatelecom/gateway/lib/a/b;->b:[B

    return-void

    :array_0
    .array-data 1
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0x3et
        -0x1t
        -0x1t
        -0x1t
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
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
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
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
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
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)[B
    .locals 10

    .prologue
    const/16 v9, 0x3d

    const/4 v2, 0x0

    const/4 v8, -0x1

    .line 1035
    :try_start_0
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 1037
    const-string/jumbo v0, "US-ASCII"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    .line 1038
    array-length v5, v4

    move v0, v2

    .line 1041
    :goto_0
    if-ge v0, v5, :cond_9

    :cond_0
    move v1, v0

    .line 1043
    sget-object v6, Lcn/com/chinatelecom/gateway/lib/a/b;->b:[B

    add-int/lit8 v0, v1, 0x1

    aget-byte v1, v4, v1

    aget-byte v6, v6, v1

    .line 1044
    if-ge v0, v5, :cond_1

    if-eq v6, v8, :cond_0

    .line 1045
    :cond_1
    if-eq v6, v8, :cond_9

    :cond_2
    move v1, v0

    .line 1049
    sget-object v7, Lcn/com/chinatelecom/gateway/lib/a/b;->b:[B

    add-int/lit8 v0, v1, 0x1

    aget-byte v1, v4, v1

    aget-byte v7, v7, v1

    .line 1050
    if-ge v0, v5, :cond_3

    if-eq v7, v8, :cond_2

    .line 1051
    :cond_3
    if-eq v7, v8, :cond_9

    .line 1053
    shl-int/lit8 v1, v6, 0x2

    and-int/lit8 v6, v7, 0x30

    ushr-int/lit8 v6, v6, 0x4

    or-int/2addr v1, v6

    int-to-char v1, v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_4
    move v1, v0

    .line 1056
    add-int/lit8 v0, v1, 0x1

    aget-byte v1, v4, v1

    .line 1057
    if-ne v1, v9, :cond_5

    .line 1058
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "iso8859-1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 1068
    :goto_1
    return-object v0

    .line 1059
    :cond_5
    sget-object v6, Lcn/com/chinatelecom/gateway/lib/a/b;->b:[B

    aget-byte v6, v6, v1

    .line 1060
    if-ge v0, v5, :cond_6

    if-eq v6, v8, :cond_4

    .line 1061
    :cond_6
    if-eq v6, v8, :cond_9

    .line 1063
    and-int/lit8 v1, v7, 0xf

    shl-int/lit8 v1, v1, 0x4

    and-int/lit8 v7, v6, 0x3c

    ushr-int/lit8 v7, v7, 0x2

    or-int/2addr v1, v7

    int-to-char v1, v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1066
    :goto_2
    add-int/lit8 v1, v0, 0x1

    aget-byte v0, v4, v0

    .line 1067
    if-ne v0, v9, :cond_7

    .line 1068
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "iso8859-1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_1

    .line 1069
    :cond_7
    sget-object v7, Lcn/com/chinatelecom/gateway/lib/a/b;->b:[B

    aget-byte v0, v7, v0

    .line 1070
    if-ge v1, v5, :cond_8

    if-eq v0, v8, :cond_a

    .line 1071
    :cond_8
    if-eq v0, v8, :cond_9

    .line 1073
    and-int/lit8 v6, v6, 0x3

    shl-int/lit8 v6, v6, 0x6

    or-int/2addr v0, v6

    int-to-char v0, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v0, v1

    goto :goto_0

    .line 1075
    :cond_9
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "iso8859-1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_1

    .line 28
    :catch_0
    move-exception v0

    .line 29
    sget-object v1, Lcn/com/chinatelecom/gateway/lib/a/b;->a:Ljava/lang/String;

    const-string/jumbo v3, "When decode() ,throws exception"

    invoke-static {v1, v3, v0}, Lcn/com/chinatelecom/gateway/lib/CtAuth;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 31
    new-array v0, v2, [B

    goto :goto_1

    :cond_a
    move v0, v1

    goto :goto_2
.end method
