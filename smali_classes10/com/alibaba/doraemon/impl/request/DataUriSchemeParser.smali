.class public Lcom/alibaba/doraemon/impl/request/DataUriSchemeParser;
.super Ljava/lang/Object;
.source "DataUriSchemeParser.java"


# static fields
.field public static final BASE64URL_CHARSET:Ljava/lang/String; = "base64url"

.field public static final BASE64_CHATSET:Ljava/lang/String; = "base64"

.field public static final DEFAULT_CHARSET:Ljava/lang/String; = "us-ascii"

.field public static final DEFAULT_MIME_TYPE:Ljava/lang/String; = "text/plain"

.field public static final KEY_CHARSET:Ljava/lang/String; = "charset"

.field public static final PROTOCOL_PREFIX:Ljava/lang/String; = "data:"


# instance fields
.field private mAllowMissingComma:Z

.field private mAllowOtherLaxities:Z

.field private mAllowSlashesAfterColon:Z

.field private mData:[B

.field private mIsDataParsed:Z

.field private mIsPrefixParsed:Z

.field private mMimeType:Ljava/lang/String;

.field private mParameters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mParseIndex:I

.field private final mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput v0, p0, Lcom/alibaba/doraemon/impl/request/DataUriSchemeParser;->mParseIndex:I

    .line 32
    iput-boolean v0, p0, Lcom/alibaba/doraemon/impl/request/DataUriSchemeParser;->mIsPrefixParsed:Z

    .line 34
    iput-boolean v0, p0, Lcom/alibaba/doraemon/impl/request/DataUriSchemeParser;->mAllowMissingComma:Z

    .line 36
    iput-boolean v0, p0, Lcom/alibaba/doraemon/impl/request/DataUriSchemeParser;->mAllowSlashesAfterColon:Z

    .line 37
    iput-boolean v0, p0, Lcom/alibaba/doraemon/impl/request/DataUriSchemeParser;->mAllowOtherLaxities:Z

    .line 41
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/request/DataUriSchemeParser;->mParameters:Ljava/util/Map;

    .line 44
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "url cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    :cond_0
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/request/DataUriSchemeParser;->mUrl:Ljava/lang/String;

    .line 48
    return-void
.end method

.method private allowOtherLaxities(Z)Lcom/alibaba/doraemon/impl/request/DataUriSchemeParser;
    .locals 0
    .param p1, "allowOtherLaxities"    # Z

    .prologue
    .line 137
    invoke-direct {p0}, Lcom/alibaba/doraemon/impl/request/DataUriSchemeParser;->assertPrefixNotParsed()V

    .line 138
    iput-boolean p1, p0, Lcom/alibaba/doraemon/impl/request/DataUriSchemeParser;->mAllowOtherLaxities:Z

    .line 139
    return-object p0
.end method

.method private assertPrefixNotParsed()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 143
    iget-boolean v0, p0, Lcom/alibaba/doraemon/impl/request/DataUriSchemeParser;->mIsPrefixParsed:Z

    if-eqz v0, :cond_0

    .line 144
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Operation not permitted after parsing"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 146
    :cond_0
    return-void
.end method

.method private assertPrefixParsed()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 149
    iget-boolean v0, p0, Lcom/alibaba/doraemon/impl/request/DataUriSchemeParser;->mIsPrefixParsed:Z

    if-nez v0, :cond_0

    .line 150
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Operation not permitted before parsing"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 152
    :cond_0
    return-void
.end method

.method private checkNoParamValue(Ljava/lang/String;)V
    .locals 4
    .param p1, "param"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 287
    iget-boolean v1, p0, Lcom/alibaba/doraemon/impl/request/DataUriSchemeParser;->mAllowOtherLaxities:Z

    if-eqz v1, :cond_1

    .line 294
    :cond_0
    return-void

    .line 290
    :cond_1
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/request/DataUriSchemeParser;->mParameters:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 291
    .local v0, "value":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 292
    new-instance v1, Ljava/net/MalformedURLException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " parameter must not take a value ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") in mData: URL"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private nextSemiOrComma()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 211
    invoke-direct {p0}, Lcom/alibaba/doraemon/impl/request/DataUriSchemeParser;->remainder()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x3b

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 212
    .local v1, "semi":I
    invoke-direct {p0}, Lcom/alibaba/doraemon/impl/request/DataUriSchemeParser;->remainder()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x2c

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 213
    .local v0, "comma":I
    if-gez v1, :cond_0

    if-gez v0, :cond_0

    .line 214
    new-instance v2, Ljava/net/MalformedURLException;

    const-string/jumbo v3, "Missing required \',\' in mData: URL"

    invoke-direct {v2, v3}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 216
    :cond_0
    if-gez v1, :cond_1

    .line 222
    .end local v0    # "comma":I
    :goto_0
    return v0

    .line 219
    .restart local v0    # "comma":I
    :cond_1
    if-gez v0, :cond_2

    move v0, v1

    .line 220
    goto :goto_0

    .line 222
    :cond_2
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0
.end method

.method private nextUnescapedQuote()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 255
    const/4 v1, 0x0

    .line 256
    .local v1, "i":I
    invoke-direct {p0}, Lcom/alibaba/doraemon/impl/request/DataUriSchemeParser;->remainder()Ljava/lang/String;

    move-result-object v2

    .line 257
    .local v2, "r":Ljava/lang/String;
    const/4 v0, 0x0

    .line 258
    .local v0, "escaped":Z
    :goto_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 259
    if-eqz v0, :cond_1

    .line 260
    const/4 v0, 0x0

    .line 269
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 262
    :cond_1
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x22

    if-ne v3, v4, :cond_2

    .line 263
    return v1

    .line 265
    :cond_2
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x5c

    if-ne v3, v4, :cond_0

    .line 266
    const/4 v0, 0x1

    goto :goto_1

    .line 271
    :cond_3
    new-instance v3, Ljava/net/MalformedURLException;

    const-string/jumbo v4, "Unclosed double-quote in mData: URL"

    invoke-direct {v3, v4}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private parseData()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Ljava/net/MalformedURLException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 275
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/DataUriSchemeParser;->mParameters:Ljava/util/Map;

    const-string/jumbo v1, "base64"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 276
    const-string/jumbo v0, "base64"

    invoke-direct {p0, v0}, Lcom/alibaba/doraemon/impl/request/DataUriSchemeParser;->checkNoParamValue(Ljava/lang/String;)V

    .line 277
    invoke-direct {p0}, Lcom/alibaba/doraemon/impl/request/DataUriSchemeParser;->remainder()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lhv;->a(Ljava/lang/String;I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/request/DataUriSchemeParser;->mData:[B

    .line 284
    :goto_0
    return-void

    .line 278
    :cond_0
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/DataUriSchemeParser;->mParameters:Ljava/util/Map;

    const-string/jumbo v1, "base64url"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 279
    const-string/jumbo v0, "base64url"

    invoke-direct {p0, v0}, Lcom/alibaba/doraemon/impl/request/DataUriSchemeParser;->checkNoParamValue(Ljava/lang/String;)V

    .line 280
    invoke-direct {p0}, Lcom/alibaba/doraemon/impl/request/DataUriSchemeParser;->remainder()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lhv;->a(Ljava/lang/String;I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/request/DataUriSchemeParser;->mData:[B

    goto :goto_0

    .line 282
    :cond_1
    invoke-direct {p0}, Lcom/alibaba/doraemon/impl/request/DataUriSchemeParser;->remainder()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alibaba/doraemon/impl/request/DataUriSchemeParser;->getCharset()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alibaba/doraemon/impl/request/DataUriSchemeParser;->getCharset()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/request/DataUriSchemeParser;->mData:[B

    goto :goto_0
.end method

.method private parseMediaType()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 188
    invoke-direct {p0}, Lcom/alibaba/doraemon/impl/request/DataUriSchemeParser;->remainder()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-direct {p0}, Lcom/alibaba/doraemon/impl/request/DataUriSchemeParser;->remainder()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 202
    :cond_0
    :goto_0
    return-void

    .line 191
    :cond_1
    invoke-direct {p0}, Lcom/alibaba/doraemon/impl/request/DataUriSchemeParser;->remainder()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 192
    .local v2, "slash":I
    const/4 v5, -0x1

    if-ne v2, v5, :cond_2

    .line 193
    new-instance v5, Ljava/net/MalformedURLException;

    const-string/jumbo v6, "Missing required \'/\' in MIME type of mData: URL"

    invoke-direct {v5, v6}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 195
    :cond_2
    invoke-direct {p0, v2}, Lcom/alibaba/doraemon/impl/request/DataUriSchemeParser;->read(I)Ljava/lang/String;

    move-result-object v4

    .line 196
    .local v4, "type":Ljava/lang/String;
    const-string/jumbo v5, "/"

    const/4 v6, 0x0

    invoke-direct {p0, v5, v6}, Lcom/alibaba/doraemon/impl/request/DataUriSchemeParser;->skipRequired(Ljava/lang/String;Z)V

    .line 197
    invoke-direct {p0}, Lcom/alibaba/doraemon/impl/request/DataUriSchemeParser;->nextSemiOrComma()I

    move-result v1

    .line 198
    .local v1, "next":I
    invoke-direct {p0, v1}, Lcom/alibaba/doraemon/impl/request/DataUriSchemeParser;->read(I)Ljava/lang/String;

    move-result-object v3

    .line 199
    .local v3, "subtype":Ljava/lang/String;
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    .line 200
    .local v0, "ddStringBuilder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    invoke-virtual {v0, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v5

    const-string/jumbo v6, "/"

    invoke-virtual {v5, v6}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 201
    invoke-virtual {v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/alibaba/doraemon/impl/request/DataUriSchemeParser;->mMimeType:Ljava/lang/String;

    goto :goto_0
.end method

.method private parseParameterOrParameterValues()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 227
    :goto_0
    invoke-direct {p0}, Lcom/alibaba/doraemon/impl/request/DataUriSchemeParser;->remainder()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v7, ";"

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 228
    return-void

    .line 230
    :cond_0
    iget v5, p0, Lcom/alibaba/doraemon/impl/request/DataUriSchemeParser;->mParseIndex:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/alibaba/doraemon/impl/request/DataUriSchemeParser;->mParseIndex:I

    .line 231
    invoke-direct {p0}, Lcom/alibaba/doraemon/impl/request/DataUriSchemeParser;->remainder()Ljava/lang/String;

    move-result-object v5

    const/16 v7, 0x3d

    invoke-virtual {v5, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 233
    .local v0, "eq":I
    invoke-direct {p0}, Lcom/alibaba/doraemon/impl/request/DataUriSchemeParser;->nextSemiOrComma()I

    move-result v1

    .line 234
    .local v1, "nextSemiOrComma":I
    const/4 v5, -0x1

    if-eq v0, v5, :cond_1

    if-le v0, v1, :cond_2

    .line 235
    :cond_1
    invoke-direct {p0, v1}, Lcom/alibaba/doraemon/impl/request/DataUriSchemeParser;->read(I)Ljava/lang/String;

    move-result-object v4

    .line 236
    .local v4, "word":Ljava/lang/String;
    const/4 v3, 0x0

    .line 249
    .local v3, "value":Ljava/lang/String;
    :goto_1
    iget-object v8, p0, Lcom/alibaba/doraemon/impl/request/DataUriSchemeParser;->mParameters:Ljava/util/Map;

    if-nez v4, :cond_4

    move-object v7, v6

    :goto_2
    if-nez v3, :cond_5

    move-object v5, v6

    :goto_3
    invoke-interface {v8, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 238
    .end local v3    # "value":Ljava/lang/String;
    .end local v4    # "word":Ljava/lang/String;
    :cond_2
    invoke-direct {p0, v0}, Lcom/alibaba/doraemon/impl/request/DataUriSchemeParser;->read(I)Ljava/lang/String;

    move-result-object v4

    .line 239
    .restart local v4    # "word":Ljava/lang/String;
    invoke-direct {p0}, Lcom/alibaba/doraemon/impl/request/DataUriSchemeParser;->remainder()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v7, "\""

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 241
    iget v5, p0, Lcom/alibaba/doraemon/impl/request/DataUriSchemeParser;->mParseIndex:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/alibaba/doraemon/impl/request/DataUriSchemeParser;->mParseIndex:I

    .line 242
    invoke-direct {p0}, Lcom/alibaba/doraemon/impl/request/DataUriSchemeParser;->nextUnescapedQuote()I

    move-result v2

    .line 243
    .local v2, "nextUnescapedQuote":I
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "\""

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/alibaba/doraemon/impl/request/DataUriSchemeParser;->read(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 244
    .restart local v3    # "value":Ljava/lang/String;
    goto :goto_1

    .line 245
    .end local v2    # "nextUnescapedQuote":I
    .end local v3    # "value":Ljava/lang/String;
    :cond_3
    invoke-direct {p0}, Lcom/alibaba/doraemon/impl/request/DataUriSchemeParser;->nextSemiOrComma()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/alibaba/doraemon/impl/request/DataUriSchemeParser;->read(I)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "value":Ljava/lang/String;
    goto :goto_1

    .line 249
    :cond_4
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    move-object v7, v5

    goto :goto_2

    .line 250
    :cond_5
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    goto :goto_3
.end method

.method private parsePrefixChecked()Lcom/alibaba/doraemon/impl/request/DataUriSchemeParser;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Ljava/net/MalformedURLException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 163
    iget-boolean v0, p0, Lcom/alibaba/doraemon/impl/request/DataUriSchemeParser;->mIsPrefixParsed:Z

    if-eqz v0, :cond_0

    .line 184
    :goto_0
    return-object p0

    .line 167
    :cond_0
    const-string/jumbo v0, "data:"

    invoke-direct {p0, v0, v2}, Lcom/alibaba/doraemon/impl/request/DataUriSchemeParser;->skipOptional(Ljava/lang/String;Z)Z

    .line 168
    iget-boolean v0, p0, Lcom/alibaba/doraemon/impl/request/DataUriSchemeParser;->mAllowSlashesAfterColon:Z

    if-eqz v0, :cond_2

    .line 169
    :cond_1
    const-string/jumbo v0, "/"

    invoke-direct {p0, v0, v2}, Lcom/alibaba/doraemon/impl/request/DataUriSchemeParser;->skipOptional(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 174
    :cond_2
    iget-boolean v0, p0, Lcom/alibaba/doraemon/impl/request/DataUriSchemeParser;->mAllowMissingComma:Z

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/alibaba/doraemon/impl/request/DataUriSchemeParser;->remainder()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    .line 175
    const-string/jumbo v0, "text/plain"

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/request/DataUriSchemeParser;->mMimeType:Ljava/lang/String;

    .line 176
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/DataUriSchemeParser;->mParameters:Ljava/util/Map;

    const-string/jumbo v1, "charset"

    const-string/jumbo v2, "us-ascii"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    :goto_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/doraemon/impl/request/DataUriSchemeParser;->mIsPrefixParsed:Z

    goto :goto_0

    .line 178
    :cond_3
    invoke-direct {p0}, Lcom/alibaba/doraemon/impl/request/DataUriSchemeParser;->parseMediaType()V

    .line 179
    invoke-direct {p0}, Lcom/alibaba/doraemon/impl/request/DataUriSchemeParser;->parseParameterOrParameterValues()V

    .line 180
    const-string/jumbo v0, ","

    invoke-direct {p0, v0, v2}, Lcom/alibaba/doraemon/impl/request/DataUriSchemeParser;->skipRequired(Ljava/lang/String;Z)V

    goto :goto_1
.end method

.method private read(I)Ljava/lang/String;
    .locals 3
    .param p1, "next"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 205
    invoke-direct {p0}, Lcom/alibaba/doraemon/impl/request/DataUriSchemeParser;->remainder()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 206
    .local v0, "result":Ljava/lang/String;
    iget v1, p0, Lcom/alibaba/doraemon/impl/request/DataUriSchemeParser;->mParseIndex:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/alibaba/doraemon/impl/request/DataUriSchemeParser;->mParseIndex:I

    .line 207
    return-object v0
.end method

.method private remainder()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 297
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/DataUriSchemeParser;->mUrl:Ljava/lang/String;

    iget v1, p0, Lcom/alibaba/doraemon/impl/request/DataUriSchemeParser;->mParseIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private skipOptional(Ljava/lang/String;Z)Z
    .locals 4
    .param p1, "word"    # Ljava/lang/String;
    .param p2, "caseSensitive"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 301
    invoke-direct {p0}, Lcom/alibaba/doraemon/impl/request/DataUriSchemeParser;->remainder()Ljava/lang/String;

    move-result-object v1

    .line 302
    .local v1, "remain":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 304
    if-eqz p2, :cond_1

    .line 305
    invoke-virtual {v1, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    .line 309
    .local v0, "isMatched":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 310
    iget v2, p0, Lcom/alibaba/doraemon/impl/request/DataUriSchemeParser;->mParseIndex:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/alibaba/doraemon/impl/request/DataUriSchemeParser;->mParseIndex:I

    .line 314
    .end local v0    # "isMatched":Z
    :cond_0
    :goto_1
    return v0

    .line 307
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    .restart local v0    # "isMatched":Z
    goto :goto_0

    .line 314
    .end local v0    # "isMatched":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private skipRequired(Ljava/lang/String;Z)V
    .locals 5
    .param p1, "word"    # Ljava/lang/String;
    .param p2, "caseSensitive"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 318
    invoke-direct {p0}, Lcom/alibaba/doraemon/impl/request/DataUriSchemeParser;->remainder()Ljava/lang/String;

    move-result-object v1

    .line 319
    .local v1, "remain":Ljava/lang/String;
    const/4 v0, 0x0

    .line 320
    .local v0, "isMatched":Z
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 321
    if-eqz p2, :cond_1

    .line 322
    invoke-virtual {v1, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    .line 326
    :goto_0
    if-eqz v0, :cond_0

    .line 327
    iget v2, p0, Lcom/alibaba/doraemon/impl/request/DataUriSchemeParser;->mParseIndex:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/alibaba/doraemon/impl/request/DataUriSchemeParser;->mParseIndex:I

    .line 330
    :cond_0
    if-nez v0, :cond_2

    .line 331
    new-instance v2, Ljava/net/MalformedURLException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Missing required \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\' at position "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/alibaba/doraemon/impl/request/DataUriSchemeParser;->mParseIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " of mData: URL"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 324
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 333
    :cond_2
    return-void
.end method

.method public static toBytes(Ljava/lang/String;)[B
    .locals 1
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 57
    new-instance v0, Lcom/alibaba/doraemon/impl/request/DataUriSchemeParser;

    invoke-direct {v0, p0}, Lcom/alibaba/doraemon/impl/request/DataUriSchemeParser;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alibaba/doraemon/impl/request/DataUriSchemeParser;->lax()Lcom/alibaba/doraemon/impl/request/DataUriSchemeParser;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/doraemon/impl/request/DataUriSchemeParser;->parse()Lcom/alibaba/doraemon/impl/request/DataUriSchemeParser;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/doraemon/impl/request/DataUriSchemeParser;->getData()[B

    move-result-object v0

    return-object v0
.end method

.method public static toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 53
    new-instance v0, Lcom/alibaba/doraemon/impl/request/DataUriSchemeParser;

    invoke-direct {v0, p0}, Lcom/alibaba/doraemon/impl/request/DataUriSchemeParser;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alibaba/doraemon/impl/request/DataUriSchemeParser;->lax()Lcom/alibaba/doraemon/impl/request/DataUriSchemeParser;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/doraemon/impl/request/DataUriSchemeParser;->parse()Lcom/alibaba/doraemon/impl/request/DataUriSchemeParser;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/doraemon/impl/request/DataUriSchemeParser;->getDataAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public allowMissingComma(Z)Lcom/alibaba/doraemon/impl/request/DataUriSchemeParser;
    .locals 0
    .param p1, "allowMissingComma"    # Z

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/alibaba/doraemon/impl/request/DataUriSchemeParser;->assertPrefixNotParsed()V

    .line 126
    iput-boolean p1, p0, Lcom/alibaba/doraemon/impl/request/DataUriSchemeParser;->mAllowMissingComma:Z

    .line 127
    return-object p0
.end method

.method public allowSlashesAfterColon(Z)Lcom/alibaba/doraemon/impl/request/DataUriSchemeParser;
    .locals 0
    .param p1, "allowSlashesAfterColon"    # Z

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/alibaba/doraemon/impl/request/DataUriSchemeParser;->assertPrefixNotParsed()V

    .line 132
    iput-boolean p1, p0, Lcom/alibaba/doraemon/impl/request/DataUriSchemeParser;->mAllowSlashesAfterColon:Z

    .line 133
    return-object p0
.end method

.method public getCharset()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/alibaba/doraemon/impl/request/DataUriSchemeParser;->assertPrefixParsed()V

    .line 64
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/request/DataUriSchemeParser;->mParameters:Ljava/util/Map;

    const-string/jumbo v2, "base64"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 65
    const-string/jumbo v0, "base64"

    .line 71
    :cond_0
    :goto_0
    return-object v0

    .line 66
    :cond_1
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/request/DataUriSchemeParser;->mParameters:Ljava/util/Map;

    const-string/jumbo v2, "base64url"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 67
    const-string/jumbo v0, "base64url"

    goto :goto_0

    .line 69
    :cond_2
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/request/DataUriSchemeParser;->mParameters:Ljava/util/Map;

    const-string/jumbo v2, "charset"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 70
    .local v0, "charset":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 71
    const-string/jumbo v0, "us-ascii"

    goto :goto_0
.end method

.method public getData()[B
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/alibaba/doraemon/impl/request/DataUriSchemeParser;->assertPrefixParsed()V

    .line 89
    iget-boolean v1, p0, Lcom/alibaba/doraemon/impl/request/DataUriSchemeParser;->mIsDataParsed:Z

    if-nez v1, :cond_0

    .line 91
    :try_start_0
    invoke-direct {p0}, Lcom/alibaba/doraemon/impl/request/DataUriSchemeParser;->parseData()V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1

    .line 97
    :goto_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/alibaba/doraemon/impl/request/DataUriSchemeParser;->mIsDataParsed:Z

    .line 99
    :cond_0
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/request/DataUriSchemeParser;->mData:[B

    return-object v1

    .line 92
    :catch_0
    move-exception v0

    .line 93
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    .line 94
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v0

    .line 95
    .local v0, "e":Ljava/net/MalformedURLException;
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_0
.end method

.method public getDataAsInputStream()Ljava/io/ByteArrayInputStream;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/alibaba/doraemon/impl/request/DataUriSchemeParser;->getData()[B

    move-result-object v0

    .line 104
    .local v0, "bytes":[B
    if-eqz v0, :cond_0

    .line 105
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 107
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDataAsString()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/alibaba/doraemon/impl/request/DataUriSchemeParser;->getData()[B

    move-result-object v0

    .line 112
    .local v0, "data":[B
    if-eqz v0, :cond_0

    .line 113
    new-instance v1, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/alibaba/doraemon/impl/request/DataUriSchemeParser;->getCharset()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 115
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/alibaba/doraemon/impl/request/DataUriSchemeParser;->assertPrefixParsed()V

    .line 76
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/DataUriSchemeParser;->mMimeType:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/DataUriSchemeParser;->mMimeType:Ljava/lang/String;

    .line 79
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "text/plain"

    goto :goto_0
.end method

.method public getParameters()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/alibaba/doraemon/impl/request/DataUriSchemeParser;->assertPrefixParsed()V

    .line 84
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/DataUriSchemeParser;->mParameters:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public lax()Lcom/alibaba/doraemon/impl/request/DataUriSchemeParser;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x1

    .line 121
    invoke-virtual {p0, v1}, Lcom/alibaba/doraemon/impl/request/DataUriSchemeParser;->allowMissingComma(Z)Lcom/alibaba/doraemon/impl/request/DataUriSchemeParser;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/impl/request/DataUriSchemeParser;->allowSlashesAfterColon(Z)Lcom/alibaba/doraemon/impl/request/DataUriSchemeParser;

    move-result-object v0

    invoke-direct {v0, v1}, Lcom/alibaba/doraemon/impl/request/DataUriSchemeParser;->allowOtherLaxities(Z)Lcom/alibaba/doraemon/impl/request/DataUriSchemeParser;

    move-result-object v0

    return-object v0
.end method

.method public parse()Lcom/alibaba/doraemon/impl/request/DataUriSchemeParser;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 156
    :try_start_0
    invoke-direct {p0}, Lcom/alibaba/doraemon/impl/request/DataUriSchemeParser;->parsePrefixChecked()Lcom/alibaba/doraemon/impl/request/DataUriSchemeParser;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 157
    :catch_0
    move-exception v0

    .line 158
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
