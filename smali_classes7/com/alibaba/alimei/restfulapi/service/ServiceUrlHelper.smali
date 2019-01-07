.class public final Lcom/alibaba/alimei/restfulapi/service/ServiceUrlHelper;
.super Ljava/lang/Object;
.source "ServiceUrlHelper.java"


# static fields
.field private static final BIZTYPE_FILE:Ljava/lang/String; = "file"

.field private static final BIZTYPE_MAIL:Ljava/lang/String; = "mail"

.field private static final MARK_A:Ljava/lang/String; = "&"

.field private static final MARK_E:Ljava/lang/String; = "="

.field private static final MARK_P:Ljava/lang/String; = "."

.field private static final MARK_Q:Ljava/lang/String; = "?"

.field private static final PARAM_ACCESSTOKEN:Ljava/lang/String; = "accesstoken"

.field private static final PARAM_ATTACHID:Ljava/lang/String; = "attachid"

.field private static final PARAM_ATTACHNAME:Ljava/lang/String; = "attachname"

.field private static final PARAM_BIZID:Ljava/lang/String; = "bizid"

.field private static final PARAM_BIZTYPE:Ljava/lang/String; = "biztype"

.field private static final PARAM_DATA:Ljava/lang/String; = "data"

.field private static final PARAM_FORMAT:Ljava/lang/String; = "format"

.field private static final PARAM_OBJECTID:Ljava/lang/String; = "objectid"

.field private static final PARAM_RULE:Ljava/lang/String; = "rule"

.field private static final PARAM_TOKEN:Ljava/lang/String; = "token"

.field private static final PARAM_VERSION:Ljava/lang/String; = "version"

.field public static final UTF_8:Ljava/lang/String; = "UTF-8"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    return-void
.end method

.method private static final encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "source"    # Ljava/lang/String;

    .prologue
    .line 145
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 146
    const-string/jumbo v0, ""

    .line 157
    :goto_0
    return-object v0

    .line 148
    :cond_0
    move-object v0, p0

    .line 150
    .local v0, "result":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v1, "UTF-8"

    invoke-static {p0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 154
    :goto_1
    :try_start_1
    const-string/jumbo v1, "+"

    const-string/jumbo v2, "%20"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public static final generateDentryFilePreviewUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "token"    # Ljava/lang/String;
    .param p1, "spaceId"    # Ljava/lang/String;
    .param p2, "filePath"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 314
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 315
    .local v0, "sb":Ljava/lang/StringBuilder;
    sget-object v1, Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;->METHOD_SPACE_PREVIEW_SINGLE_IMAGE:Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;

    invoke-static {v2, v2, v0, v1}, Lcom/alibaba/alimei/restfulapi/spi/http/HttpRequestBuilderHelper;->handleHostPrefix(Ljava/lang/String;Lcom/alibaba/alimei/restfulapi/spi/http/HttpClientFactory;Ljava/lang/StringBuilder;Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;)V

    .line 316
    const-string/jumbo v1, "?biztype"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "file"

    invoke-static {v2}, Lcom/alibaba/alimei/restfulapi/service/ServiceUrlHelper;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 318
    const-string/jumbo v1, "&token"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/alibaba/alimei/restfulapi/service/ServiceUrlHelper;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    :cond_0
    const-string/jumbo v1, "&bizid"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/alibaba/alimei/restfulapi/service/ServiceUrlHelper;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    const-string/jumbo v1, "&objectid"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Lcom/alibaba/alimei/restfulapi/service/ServiceUrlHelper;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static final generateDentryImageViewUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "token"    # Ljava/lang/String;
    .param p1, "spaceId"    # Ljava/lang/String;
    .param p2, "filePath"    # Ljava/lang/String;

    .prologue
    const/4 v4, -0x1

    .line 168
    const/4 v3, 0x0

    const/16 v6, 0x64

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, v4

    invoke-static/range {v0 .. v6}, Lcom/alibaba/alimei/restfulapi/service/ServiceUrlHelper;->generateDentryImageViewUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final generateDentryImageViewUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "token"    # Ljava/lang/String;
    .param p1, "spaceId"    # Ljava/lang/String;
    .param p2, "filePath"    # Ljava/lang/String;
    .param p3, "imageFormat"    # Ljava/lang/String;

    .prologue
    const/4 v4, -0x1

    .line 183
    const/16 v6, 0x64

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, v4

    invoke-static/range {v0 .. v6}, Lcom/alibaba/alimei/restfulapi/service/ServiceUrlHelper;->generateDentryImageViewUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final generateDentryImageViewUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;
    .locals 7
    .param p0, "token"    # Ljava/lang/String;
    .param p1, "spaceId"    # Ljava/lang/String;
    .param p2, "filePath"    # Ljava/lang/String;
    .param p3, "imageFormat"    # Ljava/lang/String;
    .param p4, "width"    # I
    .param p5, "height"    # I

    .prologue
    .line 199
    const/16 v6, 0x64

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v6}, Lcom/alibaba/alimei/restfulapi/service/ServiceUrlHelper;->generateDentryImageViewUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final generateDentryImageViewUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)Ljava/lang/String;
    .locals 8
    .param p0, "token"    # Ljava/lang/String;
    .param p1, "spaceId"    # Ljava/lang/String;
    .param p2, "filePath"    # Ljava/lang/String;
    .param p3, "imageFormat"    # Ljava/lang/String;
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "percentageQuality"    # I

    .prologue
    .line 233
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-static/range {v0 .. v7}, Lcom/alibaba/alimei/restfulapi/service/ServiceUrlHelper;->generateDentryImageViewUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final generateDentryImageViewUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "token"    # Ljava/lang/String;
    .param p1, "spaceId"    # Ljava/lang/String;
    .param p2, "filePath"    # Ljava/lang/String;
    .param p3, "imageFormat"    # Ljava/lang/String;
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "percentageQuality"    # I
    .param p7, "version"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 249
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 250
    .local v0, "sb":Ljava/lang/StringBuilder;
    sget-object v1, Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;->METHOD_SPACE_PREVIEW_SINGLE_IMAGE:Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;

    invoke-static {v2, v2, v0, v1}, Lcom/alibaba/alimei/restfulapi/spi/http/HttpRequestBuilderHelper;->handleHostPrefix(Ljava/lang/String;Lcom/alibaba/alimei/restfulapi/spi/http/HttpClientFactory;Ljava/lang/StringBuilder;Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;)V

    .line 251
    const-string/jumbo v1, "?biztype"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "file"

    invoke-static {v2}, Lcom/alibaba/alimei/restfulapi/service/ServiceUrlHelper;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 253
    const-string/jumbo v1, "&token"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/alibaba/alimei/restfulapi/service/ServiceUrlHelper;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    :cond_0
    const-string/jumbo v1, "&bizid"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/alibaba/alimei/restfulapi/service/ServiceUrlHelper;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    const-string/jumbo v1, "&objectid"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Lcom/alibaba/alimei/restfulapi/service/ServiceUrlHelper;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    const-string/jumbo v1, "&rule"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p3, p4, p5, p6}, Lcom/alibaba/alimei/restfulapi/service/ServiceUrlHelper;->getImageRule(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/alimei/restfulapi/service/ServiceUrlHelper;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    invoke-static {p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 261
    const-string/jumbo v1, "&version"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static final generateDentrySrcImageUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "token"    # Ljava/lang/String;
    .param p1, "spaceId"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "extension"    # Ljava/lang/String;

    .prologue
    .line 203
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/alibaba/alimei/restfulapi/service/ServiceUrlHelper;->generateDentrySrcImageUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final generateDentrySrcImageUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "token"    # Ljava/lang/String;
    .param p1, "spaceId"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "extension"    # Ljava/lang/String;
    .param p4, "version"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 215
    .local v0, "sb":Ljava/lang/StringBuilder;
    sget-object v1, Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;->METHOD_DENTRY_ATTACHMENT_DOWNLOAD:Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;

    invoke-static {v2, v2, v0, v1}, Lcom/alibaba/alimei/restfulapi/spi/http/HttpRequestBuilderHelper;->handleHostPrefix(Ljava/lang/String;Lcom/alibaba/alimei/restfulapi/spi/http/HttpClientFactory;Ljava/lang/StringBuilder;Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;)V

    .line 216
    const-string/jumbo v1, "?biztype"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "file"

    invoke-static {v2}, Lcom/alibaba/alimei/restfulapi/service/ServiceUrlHelper;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 218
    const-string/jumbo v1, "&token"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/alibaba/alimei/restfulapi/service/ServiceUrlHelper;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    :cond_0
    const-string/jumbo v1, "&bizid"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/alibaba/alimei/restfulapi/service/ServiceUrlHelper;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    const-string/jumbo v1, "&objectid"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Lcom/alibaba/alimei/restfulapi/service/ServiceUrlHelper;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 223
    const-string/jumbo v1, "&format"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "=."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p3}, Lcom/alibaba/alimei/restfulapi/service/ServiceUrlHelper;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    :cond_1
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 226
    const-string/jumbo v1, "&version"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static generateMailAttachmentDownloadUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "accountName"    # Ljava/lang/String;
    .param p1, "token"    # Ljava/lang/String;
    .param p2, "mailServerId"    # Ljava/lang/String;
    .param p3, "fileId"    # Ljava/lang/String;
    .param p4, "fileName"    # Ljava/lang/String;
    .param p5, "fileType"    # Ljava/lang/String;

    .prologue
    .line 336
    new-instance v1, Lcom/alibaba/alimei/restfulapi/request/data/AttachmentDownloadRequestData;

    invoke-direct {v1, p2, p3, p4, p5}, Lcom/alibaba/alimei/restfulapi/request/data/AttachmentDownloadRequestData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    .local v1, "requestData":Lcom/alibaba/alimei/restfulapi/request/data/AttachmentDownloadRequestData;
    invoke-virtual {v1}, Lcom/alibaba/alimei/restfulapi/request/data/AttachmentDownloadRequestData;->toJson()Ljava/lang/String;

    move-result-object v0

    .line 338
    .local v0, "data":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 339
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    sget-object v4, Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;->METHOD_ATTACHMENT:Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;

    invoke-static {p0, v3, v2, v4}, Lcom/alibaba/alimei/restfulapi/spi/http/HttpRequestBuilderHelper;->handleHostPrefix(Ljava/lang/String;Lcom/alibaba/alimei/restfulapi/spi/http/HttpClientFactory;Ljava/lang/StringBuilder;Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;)V

    .line 340
    const-string/jumbo v3, "?accesstoken"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Lcom/alibaba/alimei/restfulapi/service/ServiceUrlHelper;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    const-string/jumbo v3, "&data"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lcom/alibaba/alimei/restfulapi/service/ServiceUrlHelper;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static final generateMailImageUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "accountName"    # Ljava/lang/String;
    .param p1, "token"    # Ljava/lang/String;
    .param p2, "mailid"    # Ljava/lang/String;
    .param p3, "attachid"    # Ljava/lang/String;
    .param p4, "attachname"    # Ljava/lang/String;
    .param p5, "bizType"    # Ljava/lang/String;

    .prologue
    const/4 v7, -0x1

    .line 56
    const/4 v5, 0x0

    const/16 v9, 0x64

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    move v8, v7

    invoke-static/range {v0 .. v9}, Lcom/alibaba/alimei/restfulapi/service/ServiceUrlHelper;->generateMailImageUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final generateMailImageUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "accountName"    # Ljava/lang/String;
    .param p1, "token"    # Ljava/lang/String;
    .param p2, "mailid"    # Ljava/lang/String;
    .param p3, "attachid"    # Ljava/lang/String;
    .param p4, "attachname"    # Ljava/lang/String;
    .param p5, "imageFormat"    # Ljava/lang/String;
    .param p6, "bizType"    # Ljava/lang/String;

    .prologue
    .line 70
    const/4 v7, -0x1

    const/4 v8, -0x1

    const/16 v9, 0x64

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    invoke-static/range {v0 .. v9}, Lcom/alibaba/alimei/restfulapi/service/ServiceUrlHelper;->generateMailImageUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final generateMailImageUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;
    .locals 10
    .param p0, "accountName"    # Ljava/lang/String;
    .param p1, "token"    # Ljava/lang/String;
    .param p2, "mailid"    # Ljava/lang/String;
    .param p3, "attachid"    # Ljava/lang/String;
    .param p4, "attachname"    # Ljava/lang/String;
    .param p5, "imageFormat"    # Ljava/lang/String;
    .param p6, "bizType"    # Ljava/lang/String;
    .param p7, "width"    # I
    .param p8, "height"    # I

    .prologue
    .line 86
    const/4 v7, -0x1

    const/4 v8, -0x1

    const/16 v9, 0x64

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    invoke-static/range {v0 .. v9}, Lcom/alibaba/alimei/restfulapi/service/ServiceUrlHelper;->generateMailImageUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final generateMailImageUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)Ljava/lang/String;
    .locals 3
    .param p0, "accountName"    # Ljava/lang/String;
    .param p1, "token"    # Ljava/lang/String;
    .param p2, "mailid"    # Ljava/lang/String;
    .param p3, "attachid"    # Ljava/lang/String;
    .param p4, "attachname"    # Ljava/lang/String;
    .param p5, "imageFormat"    # Ljava/lang/String;
    .param p6, "bizType"    # Ljava/lang/String;
    .param p7, "width"    # I
    .param p8, "height"    # I
    .param p9, "percentageQuality"    # I

    .prologue
    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 104
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    sget-object v2, Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;->METHOD_PREVIEW_SINGLE_IMAGE:Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;

    invoke-static {p0, v1, v0, v2}, Lcom/alibaba/alimei/restfulapi/spi/http/HttpRequestBuilderHelper;->handleHostPrefix(Ljava/lang/String;Lcom/alibaba/alimei/restfulapi/spi/http/HttpClientFactory;Ljava/lang/StringBuilder;Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;)V

    .line 105
    const-string/jumbo v1, "?biztype"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p6}, Lcom/alibaba/alimei/restfulapi/service/ServiceUrlHelper;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 107
    const-string/jumbo v1, "&token"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/alibaba/alimei/restfulapi/service/ServiceUrlHelper;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    :cond_0
    const-string/jumbo v1, "&attachname"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p4}, Lcom/alibaba/alimei/restfulapi/service/ServiceUrlHelper;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    const-string/jumbo v1, "&attachid"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p3}, Lcom/alibaba/alimei/restfulapi/service/ServiceUrlHelper;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    const-string/jumbo v1, "&objectid"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Lcom/alibaba/alimei/restfulapi/service/ServiceUrlHelper;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    const-string/jumbo v1, "&rule"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p5, p7, p8, p9}, Lcom/alibaba/alimei/restfulapi/service/ServiceUrlHelper;->getImageRule(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/alimei/restfulapi/service/ServiceUrlHelper;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static final generateMailVideoUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;
    .locals 3
    .param p0, "accountName"    # Ljava/lang/String;
    .param p1, "token"    # Ljava/lang/String;
    .param p2, "mailId"    # Ljava/lang/String;
    .param p3, "attachId"    # Ljava/lang/String;
    .param p4, "attachName"    # Ljava/lang/String;
    .param p5, "width"    # I
    .param p6, "height"    # I

    .prologue
    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 131
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    sget-object v2, Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;->METHOD_PREVIEW_SINGLE_IMAGE:Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;

    invoke-static {p0, v1, v0, v2}, Lcom/alibaba/alimei/restfulapi/spi/http/HttpRequestBuilderHelper;->handleHostPrefix(Ljava/lang/String;Lcom/alibaba/alimei/restfulapi/spi/http/HttpClientFactory;Ljava/lang/StringBuilder;Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;)V

    .line 132
    const-string/jumbo v1, "?biztype"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "mail"

    invoke-static {v2}, Lcom/alibaba/alimei/restfulapi/service/ServiceUrlHelper;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 134
    const-string/jumbo v1, "&token"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/alibaba/alimei/restfulapi/service/ServiceUrlHelper;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    :cond_0
    const-string/jumbo v1, "&attachname"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p4}, Lcom/alibaba/alimei/restfulapi/service/ServiceUrlHelper;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    const-string/jumbo v1, "&attachid"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p3}, Lcom/alibaba/alimei/restfulapi/service/ServiceUrlHelper;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    const-string/jumbo v1, "&objectid"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Lcom/alibaba/alimei/restfulapi/service/ServiceUrlHelper;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    const-string/jumbo v1, "&rule"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p5, p6}, Lcom/alibaba/alimei/restfulapi/service/ServiceUrlHelper;->getVideoRule(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/alimei/restfulapi/service/ServiceUrlHelper;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static final getImageRule(Ljava/lang/String;III)Ljava/lang/String;
    .locals 3
    .param p0, "imageFormat"    # Ljava/lang/String;
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "percentageQuality"    # I

    .prologue
    .line 268
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 269
    .local v0, "rule":Ljava/lang/StringBuilder;
    if-lez p3, :cond_3

    const/16 v1, 0x64

    if-gt p3, v1, :cond_3

    .line 270
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "Q"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    :goto_0
    if-lez p1, :cond_0

    if-lez p2, :cond_0

    .line 276
    const-string/jumbo v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "w"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    const-string/jumbo v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "h"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    :cond_0
    const-string/jumbo v1, "_1c_1e"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 283
    const-string/jumbo p0, "jpg"

    .line 285
    :cond_1
    const-string/jumbo v1, "."

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 286
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 288
    :cond_2
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 272
    :cond_3
    const-string/jumbo v1, "100Q"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private static getVideoRule(II)Ljava/lang/String;
    .locals 3
    .param p0, "width"    # I
    .param p1, "height"    # I

    .prologue
    .line 293
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 294
    .local v0, "rule":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "video/snapshot,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    const-string/jumbo v1, "t_1000,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    const-string/jumbo v1, "f_jpg,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    if-lez p0, :cond_0

    if-lez p1, :cond_0

    .line 299
    const-string/jumbo v1, "w_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    const-string/jumbo v1, "h_0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
