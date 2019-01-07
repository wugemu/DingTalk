.class public final Lagd;
.super Ljava/lang/Object;
.source "AttachmentUtilities.java"


# static fields
.field public static final a:[Ljava/lang/String;

.field public static final b:[Ljava/lang/String;

.field public static final c:[Ljava/lang/String;

.field public static final d:[Ljava/lang/String;

.field public static final e:[Ljava/lang/String;

.field public static final f:[Ljava/lang/String;

.field public static final g:[Ljava/lang/String;

.field public static final h:[Ljava/lang/String;

.field public static final i:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 23
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "*/*"

    aput-object v1, v0, v3

    sput-object v0, Lagd;->a:[Ljava/lang/String;

    .line 32
    new-array v0, v2, [Ljava/lang/String;

    const-string/jumbo v1, "image/*"

    aput-object v1, v0, v3

    const-string/jumbo v1, "video/*"

    aput-object v1, v0, v4

    sput-object v0, Lagd;->b:[Ljava/lang/String;

    .line 43
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "image/*"

    aput-object v1, v0, v3

    sput-object v0, Lagd;->c:[Ljava/lang/String;

    .line 50
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "*/*"

    aput-object v1, v0, v3

    sput-object v0, Lagd;->d:[Ljava/lang/String;

    .line 56
    new-array v0, v3, [Ljava/lang/String;

    sput-object v0, Lagd;->e:[Ljava/lang/String;

    .line 61
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "*/*"

    aput-object v1, v0, v3

    sput-object v0, Lagd;->f:[Ljava/lang/String;

    .line 67
    new-array v0, v3, [Ljava/lang/String;

    sput-object v0, Lagd;->g:[Ljava/lang/String;

    .line 74
    const/16 v0, 0x24

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "ade"

    aput-object v1, v0, v3

    const-string/jumbo v1, "adp"

    aput-object v1, v0, v4

    const-string/jumbo v1, "bat"

    aput-object v1, v0, v2

    const/4 v1, 0x3

    const-string/jumbo v2, "chm"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "cmd"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "com"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "cpl"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "dll"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "exe"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "hta"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "ins"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "isp"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "jse"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "lib"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "mde"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string/jumbo v2, "msc"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string/jumbo v2, "msp"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string/jumbo v2, "mst"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string/jumbo v2, "pif"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string/jumbo v2, "scr"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string/jumbo v2, "sct"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string/jumbo v2, "shb"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string/jumbo v2, "sys"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string/jumbo v2, "vb"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string/jumbo v2, "vbe"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string/jumbo v2, "vbs"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string/jumbo v2, "vxd"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string/jumbo v2, "wsc"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string/jumbo v2, "wsf"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string/jumbo v2, "wsh"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string/jumbo v2, "zip"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string/jumbo v2, "gz"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string/jumbo v2, "z"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string/jumbo v2, "tar"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string/jumbo v2, "tgz"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string/jumbo v2, "bz2"

    aput-object v2, v0, v1

    sput-object v0, Lagd;->h:[Ljava/lang/String;

    .line 88
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "apk"

    aput-object v1, v0, v3

    sput-object v0, Lagd;->i:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;J)Ljava/io/File;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "accountId"    # J

    .prologue
    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".db_att"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 205
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 206
    .local v0, "scheme":Ljava/lang/String;
    const-string/jumbo v1, "content"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 207
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 214
    :goto_0
    return-object v1

    .line 208
    :cond_0
    const-string/jumbo v1, "file"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 209
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-static {v1, v2}, Lagd;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 212
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Unable to determine MIME type for uri="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lzb;->d(Ljava/lang/String;)I

    .line 214
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 167
    const/4 v3, 0x0

    .line 1224
    .local v3, "resultType":Ljava/lang/String;
    const/4 v0, 0x0

    .line 1225
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1226
    const/16 v4, 0x2e

    invoke-virtual {p0, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    .line 1227
    if-lez v4, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ge v4, v5, :cond_0

    .line 1228
    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 169
    .local v0, "fileExtension":Ljava/lang/String;
    :cond_0
    const-string/jumbo v4, "text/plain"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    .line 171
    .local v2, "isTextPlain":Z
    const-string/jumbo v4, "eml"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 172
    const-string/jumbo v3, "message/rfc822"

    .line 192
    :cond_1
    :goto_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 193
    if-eqz v2, :cond_9

    const-string/jumbo v3, "text/plain"

    .line 195
    :cond_2
    :goto_1
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 174
    :cond_3
    if-nez v2, :cond_4

    const-string/jumbo v4, "application/octet-stream"

    .line 175
    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_4
    const/4 v1, 0x1

    .line 177
    .local v1, "isGenericType":Z
    :goto_2
    if-nez v1, :cond_5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 178
    :cond_5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 180
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 181
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 183
    if-eqz v2, :cond_7

    move-object v3, p1

    :goto_3
    goto :goto_0

    .line 175
    .end local v1    # "isGenericType":Z
    :cond_6
    const/4 v1, 0x0

    goto :goto_2

    .line 183
    .restart local v1    # "isGenericType":Z
    :cond_7
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "application/"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    .line 187
    :cond_8
    move-object v3, p1

    goto :goto_0

    .line 193
    .end local v1    # "isGenericType":Z
    :cond_9
    const-string/jumbo v3, "application/octet-stream"

    goto :goto_1
.end method
