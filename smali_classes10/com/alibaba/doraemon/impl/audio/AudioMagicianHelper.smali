.class public Lcom/alibaba/doraemon/impl/audio/AudioMagicianHelper;
.super Ljava/lang/Object;
.source "AudioMagicianHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static convertToNormalByDefault(Lcom/alibaba/doraemon/audio/AudioMagicianEx$CustomMediaType;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "targetMediaType"    # Lcom/alibaba/doraemon/audio/AudioMagicianEx$CustomMediaType;
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 53
    invoke-static {p1}, Lcom/alibaba/doraemon/impl/audio/AudioMagicianHelper;->parseToFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, "fileName":Ljava/lang/String;
    sget-object v1, Lcom/alibaba/doraemon/audio/AudioMagicianEx$CustomMediaType;->OPUS_OGG:Lcom/alibaba/doraemon/audio/AudioMagicianEx$CustomMediaType;

    if-ne p0, v1, :cond_0

    .line 55
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".ogg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 57
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".amr"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static isLocalFile(Ljava/lang/String;)Z
    .locals 3
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 112
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 113
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 114
    .local v0, "scheme":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "file"

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "content"

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static parseCustomMediaType(Ljava/lang/String;)Lcom/alibaba/doraemon/audio/AudioMagicianEx$CustomMediaType;
    .locals 2
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 74
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 75
    const/4 v1, 0x0

    .line 79
    :goto_0
    return-object v1

    .line 78
    :cond_0
    invoke-static {p0}, Lcom/alibaba/doraemon/audio/opus/Utils;->getExtention(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 79
    .local v0, "extension":Ljava/lang/String;
    invoke-static {p0, v0}, Lcom/alibaba/doraemon/impl/audio/AudioMagicianHelper;->parseToCustomMediaTypeByDefault(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/doraemon/audio/AudioMagicianEx$CustomMediaType;

    move-result-object v1

    goto :goto_0
.end method

.method private static parseToCustomMediaTypeByDefault(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/doraemon/audio/AudioMagicianEx$CustomMediaType;
    .locals 1
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "extension"    # Ljava/lang/String;

    .prologue
    .line 99
    const-string/jumbo v0, "ogg"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    sget-object v0, Lcom/alibaba/doraemon/audio/AudioMagicianEx$CustomMediaType;->OPUS_OGG:Lcom/alibaba/doraemon/audio/AudioMagicianEx$CustomMediaType;

    .line 102
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/alibaba/doraemon/audio/AudioMagicianEx$CustomMediaType;->COMMON:Lcom/alibaba/doraemon/audio/AudioMagicianEx$CustomMediaType;

    goto :goto_0
.end method

.method public static parseToCustomUrl(Ljava/lang/String;Lcom/alibaba/doraemon/audio/AudioMagicianEx$CustomMediaType;)Ljava/lang/String;
    .locals 1
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "targetMediaType"    # Lcom/alibaba/doraemon/audio/AudioMagicianEx$CustomMediaType;

    .prologue
    .line 25
    invoke-static {p0}, Lcom/alibaba/doraemon/impl/audio/AudioMagicianHelper;->parseCustomMediaType(Ljava/lang/String;)Lcom/alibaba/doraemon/audio/AudioMagicianEx$CustomMediaType;

    move-result-object v0

    .line 26
    .local v0, "customMediaType":Lcom/alibaba/doraemon/audio/AudioMagicianEx$CustomMediaType;
    if-eqz v0, :cond_0

    if-nez p1, :cond_2

    .line 27
    :cond_0
    const/4 p0, 0x0

    .line 32
    .end local p0    # "url":Ljava/lang/String;
    :cond_1
    :goto_0
    return-object p0

    .line 29
    .restart local p0    # "url":Ljava/lang/String;
    :cond_2
    if-eq v0, p1, :cond_1

    .line 32
    invoke-static {p1, p0}, Lcom/alibaba/doraemon/impl/audio/AudioMagicianHelper;->convertToNormalByDefault(Lcom/alibaba/doraemon/audio/AudioMagicianEx$CustomMediaType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static parseToFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 62
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 63
    const-string/jumbo v1, ""

    .line 69
    :goto_0
    return-object v1

    .line 65
    :cond_0
    const/16 v1, 0x2e

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 66
    .local v0, "i":I
    if-lez v0, :cond_1

    .line 67
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 69
    :cond_1
    const-string/jumbo v1, ""

    goto :goto_0
.end method
