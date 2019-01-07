.class public final Lknz;
.super Ljava/lang/Object;
.source "HttpHeaders.java"


# static fields
.field private static final a:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-string/jumbo v0, " +([^ \"=]*)=(:?\"([^\"]*)\"|([^ \"=]*)) *(:?,|$)"

    .line 44
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lknz;->a:Ljava/util/regex/Pattern;

    .line 43
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    return-void
.end method

.method public static a(Ljava/lang/String;I)I
    .locals 2
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "pos"    # I

    .prologue
    .line 249
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge p1, v1, :cond_1

    .line 250
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 251
    .local v0, "c":C
    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_1

    .line 249
    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 255
    .end local v0    # "c":C
    :cond_1
    return p1
.end method

.method public static a(Ljava/lang/String;ILjava/lang/String;)I
    .locals 2
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "pos"    # I
    .param p2, "characters"    # Ljava/lang/String;

    .prologue
    .line 236
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 237
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 236
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 241
    :cond_0
    return p1
.end method

.method private static a(Ljava/lang/String;)J
    .locals 3
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const-wide/16 v0, -0x1

    .line 58
    if-nez p0, :cond_0

    .line 62
    :goto_0
    return-wide v0

    .line 60
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    goto :goto_0

    .line 62
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static a(Lkne;)J
    .locals 2
    .param p0, "response"    # Lkne;

    .prologue
    .line 50
    .line 1136
    iget-object v0, p0, Lkne;->f:Lkmv;

    .line 2054
    const-string/jumbo v1, "Content-Length"

    invoke-virtual {v0, v1}, Lkmv;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lknz;->a(Ljava/lang/String;)J

    move-result-wide v0

    .line 50
    return-wide v0
.end method

.method public static a(Lkmp;Lkmw;Lkmv;)V
    .locals 2
    .param p0, "cookieJar"    # Lkmp;
    .param p1, "url"    # Lkmw;
    .param p2, "headers"    # Lkmv;

    .prologue
    .line 199
    sget-object v1, Lkmp;->a:Lkmp;

    if-ne p0, v1, :cond_1

    .line 205
    :cond_0
    :goto_0
    return-void

    .line 201
    :cond_1
    invoke-static {p1, p2}, Lkmo;->a(Lkmw;Lkmv;)Ljava/util/List;

    move-result-object v0

    .line 202
    .local v0, "cookies":Ljava/util/List;, "Ljava/util/List<Lkmo;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 204
    invoke-interface {p0}, Lkmp;->a()V

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;I)I
    .locals 4
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "defaultValue"    # I

    .prologue
    .line 264
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 265
    .local v0, "seconds":J
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 266
    const p1, 0x7fffffff

    .line 273
    .end local v0    # "seconds":J
    .end local p1    # "defaultValue":I
    :goto_0
    return p1

    .line 267
    .restart local v0    # "seconds":J
    .restart local p1    # "defaultValue":I
    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_1

    .line 268
    const/4 p1, 0x0

    goto :goto_0

    .line 270
    :cond_1
    long-to-int p1, v0

    goto :goto_0

    .line 273
    .end local v0    # "seconds":J
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static b(Lkne;)Z
    .locals 8
    .param p0, "response"    # Lkne;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 210
    .line 2086
    iget-object v3, p0, Lkne;->a:Lknc;

    .line 3053
    iget-object v3, v3, Lknc;->b:Ljava/lang/String;

    .line 210
    const-string/jumbo v4, "HEAD"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 228
    :cond_0
    :goto_0
    return v1

    .line 3098
    :cond_1
    iget v0, p0, Lkne;->c:I

    .line 215
    .local v0, "responseCode":I
    const/16 v3, 0x64

    if-lt v0, v3, :cond_2

    const/16 v3, 0xc8

    if-lt v0, v3, :cond_3

    :cond_2
    const/16 v3, 0xcc

    if-eq v0, v3, :cond_3

    const/16 v3, 0x130

    if-eq v0, v3, :cond_3

    move v1, v2

    .line 218
    goto :goto_0

    .line 223
    :cond_3
    invoke-static {p0}, Lknz;->a(Lkne;)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v3, v4, v6

    if-nez v3, :cond_4

    const-string/jumbo v3, "chunked"

    const-string/jumbo v4, "Transfer-Encoding"

    .line 224
    invoke-virtual {p0, v4}, Lkne;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_4
    move v1, v2

    .line 225
    goto :goto_0
.end method
