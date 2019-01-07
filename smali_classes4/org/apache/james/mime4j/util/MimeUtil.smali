.class public final Lorg/apache/james/mime4j/util/MimeUtil;
.super Ljava/lang/Object;
.source "MimeUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/james/mime4j/util/MimeUtil$Rfc822DateFormat;
    }
.end annotation


# static fields
.field private static final a:Ljava/util/Random;

.field private static b:I

.field private static final c:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/text/DateFormat;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 110
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lorg/apache/james/mime4j/util/MimeUtil;->a:Ljava/util/Random;

    .line 113
    const/4 v0, 0x0

    sput v0, Lorg/apache/james/mime4j/util/MimeUtil;->b:I

    .line 330
    new-instance v0, Lorg/apache/james/mime4j/util/MimeUtil$1;

    invoke-direct {v0}, Lorg/apache/james/mime4j/util/MimeUtil$1;-><init>()V

    sput-object v0, Lorg/apache/james/mime4j/util/MimeUtil;->c:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    return-void
.end method

.method public static a(Ljava/lang/String;I)Ljava/lang/String;
    .locals 8
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "usedCharacters"    # I

    .prologue
    const/16 v7, 0x4c

    const/4 v6, 0x0

    .line 253
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 254
    .local v1, "length":I
    add-int/lit8 v5, v1, 0x0

    if-gt v5, v7, :cond_0

    .line 264
    .end local p0    # "s":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 257
    .restart local p0    # "s":Ljava/lang/String;
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 259
    .local v3, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .line 260
    .local v0, "lastLineBreak":I
    invoke-static {p0, v6}, Lorg/apache/james/mime4j/util/MimeUtil;->b(Ljava/lang/String;I)I

    move-result v4

    .line 262
    .local v4, "wspIdx":I
    :goto_1
    if-ne v4, v1, :cond_1

    .line 263
    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 267
    :cond_1
    add-int/lit8 v5, v4, 0x1

    invoke-static {p0, v5}, Lorg/apache/james/mime4j/util/MimeUtil;->b(Ljava/lang/String;I)I

    move-result v2

    .line 269
    .local v2, "nextWspIdx":I
    sub-int v5, v2, v0

    if-le v5, v7, :cond_2

    .line 270
    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-virtual {p0, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    const-string/jumbo v5, "\r\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    move v0, v4

    .line 275
    :cond_2
    move v4, v2

    .line 276
    goto :goto_1
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 1
    .param p0, "pMimeType"    # Ljava/lang/String;

    .prologue
    .line 131
    if-eqz p0, :cond_0

    const-string/jumbo v0, "message/rfc822"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "pType1"    # Ljava/lang/String;
    .param p1, "pType2"    # Ljava/lang/String;

    .prologue
    .line 124
    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;I)I
    .locals 4
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "fromIndex"    # I

    .prologue
    .line 317
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 318
    .local v2, "len":I
    move v1, p1

    .local v1, "index":I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 319
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 320
    .local v0, "c":C
    const/16 v3, 0x20

    if-eq v0, v3, :cond_0

    const/16 v3, 0x9

    if-ne v0, v3, :cond_1

    .line 323
    .end local v0    # "c":C
    .end local v1    # "index":I
    :cond_0
    :goto_1
    return v1

    .line 318
    .restart local v0    # "c":C
    .restart local v1    # "index":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0    # "c":C
    :cond_2
    move v1, v2

    .line 323
    goto :goto_1
.end method

.method public static b(Ljava/lang/String;)Z
    .locals 2
    .param p0, "pMimeType"    # Ljava/lang/String;

    .prologue
    .line 138
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "multipart/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static c(Ljava/lang/String;)Z
    .locals 1
    .param p0, "pTransferEncoding"    # Ljava/lang/String;

    .prologue
    .line 145
    const-string/jumbo v0, "base64"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static d(Ljava/lang/String;)Z
    .locals 1
    .param p0, "pTransferEncoding"    # Ljava/lang/String;

    .prologue
    .line 152
    const-string/jumbo v0, "quoted-printable"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static e(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const/16 v8, 0xd

    const/16 v7, 0xa

    .line 287
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 288
    .local v2, "length":I
    const/4 v1, 0x0

    .local v1, "idx":I
    :goto_0
    if-ge v1, v2, :cond_4

    .line 289
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 290
    .local v0, "c":C
    if-eq v0, v8, :cond_0

    if-ne v0, v7, :cond_5

    .line 1299
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 1300
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1302
    if-lez v1, :cond_1

    .line 1303
    const/4 v3, 0x0

    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1306
    :cond_1
    add-int/lit8 v3, v1, 0x1

    :goto_1
    if-ge v3, v4, :cond_3

    .line 1307
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 1308
    if-eq v6, v8, :cond_2

    if-eq v6, v7, :cond_2

    .line 1309
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1306
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1313
    :cond_3
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 295
    .end local v0    # "c":C
    .end local p0    # "s":Ljava/lang/String;
    :cond_4
    return-object p0

    .line 288
    .restart local v0    # "c":C
    .restart local p0    # "s":Ljava/lang/String;
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
