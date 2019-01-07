.class public Lcom/alibaba/doraemon/impl/health/utils/UrlUtil;
.super Ljava/lang/Object;
.source "UrlUtil.java"


# static fields
.field private static mimeTypes:Ljava/util/Map;
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


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    .line 17
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/alibaba/doraemon/impl/health/utils/UrlUtil;->mimeTypes:Ljava/util/Map;

    .line 19
    invoke-static {}, Lcom/alibaba/doraemon/impl/health/utils/MimeTypeEnum;->values()[Lcom/alibaba/doraemon/impl/health/utils/MimeTypeEnum;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    .local v0, "type":Lcom/alibaba/doraemon/impl/health/utils/MimeTypeEnum;
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 20
    sget-object v4, Lcom/alibaba/doraemon/impl/health/utils/UrlUtil;->mimeTypes:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/alibaba/doraemon/impl/health/utils/MimeTypeEnum;->getSuffix()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/alibaba/doraemon/impl/health/utils/MimeTypeEnum;->getMimeType()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 22
    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 49
    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 57
    .end local p0    # "url":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 52
    .restart local p0    # "url":Ljava/lang/String;
    :cond_1
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 53
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {v1, p1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 54
    .local v2, "val":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 55
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 56
    .local v0, "builder":Landroid/net/Uri$Builder;
    invoke-virtual {v0, p1, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 57
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static getHost(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 106
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, ""

    .line 109
    :goto_0
    return-object v1

    .line 108
    :cond_0
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 109
    .local v0, "uri":Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 113
    invoke-static {p0}, Lcom/alibaba/doraemon/impl/health/utils/UrlUtil;->getSuffix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 114
    .local v1, "suffix":Ljava/lang/String;
    sget-object v2, Lcom/alibaba/doraemon/impl/health/utils/UrlUtil;->mimeTypes:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 115
    .local v0, "mimeType":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 116
    const-string/jumbo v0, ""

    .line 118
    .end local v0    # "mimeType":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public static getParamMap(Ljava/lang/String;)Ljava/util/Map;
    .locals 11
    .param p0, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 61
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v1, 0x0

    .line 79
    :cond_0
    return-object v1

    .line 62
    :cond_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 63
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v6, "?"

    invoke-virtual {p0, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 64
    .local v0, "indexSep":I
    const/4 v6, -0x1

    if-eq v0, v6, :cond_0

    .line 65
    add-int/lit8 v6, v0, 0x1

    invoke-virtual {p0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 66
    .local v4, "qStr":Ljava/lang/String;
    const-string/jumbo v6, "#"

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 67
    const-string/jumbo v6, "#"

    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v4, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 69
    :cond_2
    const-string/jumbo v6, "&"

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 70
    .local v3, "paramsTmp":[Ljava/lang/String;
    array-length v8, v3

    move v6, v7

    :goto_0
    if-ge v6, v8, :cond_0

    aget-object v2, v3, v6

    .line 71
    .local v2, "p":Ljava/lang/String;
    const-string/jumbo v9, "="

    invoke-virtual {v2, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 72
    .local v5, "sp":[Ljava/lang/String;
    array-length v9, v5

    const/4 v10, 0x2

    if-ge v9, v10, :cond_3

    .line 73
    aget-object v9, v5, v7

    const-string/jumbo v10, ""

    invoke-interface {v1, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 75
    :cond_3
    aget-object v9, v5, v7

    const/4 v10, 0x1

    aget-object v10, v5, v10

    invoke-interface {v1, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public static getParamVal(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 83
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 84
    :cond_0
    const/4 v1, 0x0

    .line 87
    :goto_0
    return-object v1

    .line 86
    :cond_1
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 87
    .local v0, "uri":Landroid/net/Uri;
    invoke-virtual {v0, p1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 136
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v0, ""

    .line 144
    :cond_0
    :goto_0
    return-object v0

    .line 138
    :cond_1
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 140
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 141
    .local v0, "path":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 144
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public static getSuffix(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 91
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, ""

    .line 102
    :goto_0
    return-object v3

    .line 93
    :cond_0
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 95
    .local v2, "uri":Landroid/net/Uri;
    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 96
    .local v0, "path":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 97
    const-string/jumbo v3, "."

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 98
    .local v1, "start":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_1

    .line 99
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 102
    .end local v1    # "start":I
    :cond_1
    const-string/jumbo v3, ""

    goto :goto_0
.end method

.method public static isHtml(Ljava/lang/String;)Z
    .locals 5
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 36
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "??"

    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 45
    :cond_0
    :goto_0
    return v2

    .line 37
    :cond_1
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 38
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 39
    .local v0, "path":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 40
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "."

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/alibaba/doraemon/impl/health/utils/MimeTypeEnum;->HTM:Lcom/alibaba/doraemon/impl/health/utils/MimeTypeEnum;

    invoke-virtual {v4}, Lcom/alibaba/doraemon/impl/health/utils/MimeTypeEnum;->getSuffix()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "."

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/alibaba/doraemon/impl/health/utils/MimeTypeEnum;->HTML:Lcom/alibaba/doraemon/impl/health/utils/MimeTypeEnum;

    invoke-virtual {v4}, Lcom/alibaba/doraemon/impl/health/utils/MimeTypeEnum;->getSuffix()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 41
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string/jumbo v3, "/"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 42
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static isImg(Ljava/lang/String;)Z
    .locals 2
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 30
    invoke-static {p0}, Lcom/alibaba/doraemon/impl/health/utils/UrlUtil;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 31
    .local v0, "mimeType":Ljava/lang/String;
    const-string/jumbo v1, "image"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public static isRes(Ljava/lang/String;)Z
    .locals 2
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 25
    invoke-static {p0}, Lcom/alibaba/doraemon/impl/health/utils/UrlUtil;->getSuffix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 26
    .local v0, "suffix":Ljava/lang/String;
    sget-object v1, Lcom/alibaba/doraemon/impl/health/utils/MimeTypeEnum;->JS:Lcom/alibaba/doraemon/impl/health/utils/MimeTypeEnum;

    invoke-virtual {v1}, Lcom/alibaba/doraemon/impl/health/utils/MimeTypeEnum;->getSuffix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/alibaba/doraemon/impl/health/utils/MimeTypeEnum;->CSS:Lcom/alibaba/doraemon/impl/health/utils/MimeTypeEnum;

    invoke-virtual {v1}, Lcom/alibaba/doraemon/impl/health/utils/MimeTypeEnum;->getSuffix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static simplifyUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 123
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 124
    const-string/jumbo p0, ""

    .line 131
    .end local p0    # "url":Ljava/lang/String;
    .local v0, "qm":I
    :cond_0
    :goto_0
    return-object p0

    .line 126
    .end local v0    # "qm":I
    .restart local p0    # "url":Ljava/lang/String;
    :cond_1
    const/16 v1, 0x3f

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 127
    .restart local v0    # "qm":I
    if-lez v0, :cond_0

    .line 128
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method
