.class public Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpRequestBuilderHelper;
.super Ljava/lang/Object;
.source "OKHttpRequestBuilderHelper.java"


# static fields
.field private static final DEVICE_ID:Ljava/lang/String; = "did"

.field private static final FINGER_PRINT:Ljava/lang/String; = "fp"

.field private static final LANGUAGE:Ljava/lang/String; = "lang"

.field public static final SEPERATOR:Ljava/lang/String; = "/"

.field private static final SESSION_ID:Ljava/lang/String; = "sid"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getHost(Ljava/lang/String;Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpFactory;Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;)Ljava/lang/String;
    .locals 4
    .param p0, "accountName"    # Ljava/lang/String;
    .param p1, "okHttpFactory"    # Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpFactory;
    .param p2, "openApiMethods"    # Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;

    .prologue
    .line 27
    if-nez p2, :cond_0

    .line 28
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "illegal argument openApiMethod is null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 32
    :cond_0
    iget v2, p2, Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;->domainType:I

    invoke-static {p0, v2}, Lcom/alibaba/alimei/restfulapi/support/Settings;->getHostUrl(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 33
    .local v0, "url":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v1, v0

    .line 52
    .end local v0    # "url":Ljava/lang/String;
    .local v1, "url":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 49
    .end local v1    # "url":Ljava/lang/String;
    .restart local v0    # "url":Ljava/lang/String;
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 50
    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_2
    move-object v1, v0

    .line 52
    .end local v0    # "url":Ljava/lang/String;
    .restart local v1    # "url":Ljava/lang/String;
    goto :goto_0
.end method

.method public static final handleHostPrefix(Ljava/lang/String;Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpFactory;Ljava/lang/StringBuilder;Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;)V
    .locals 3
    .param p0, "accountName"    # Ljava/lang/String;
    .param p1, "okHttpFactory"    # Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpFactory;
    .param p2, "hostPrefix"    # Ljava/lang/StringBuilder;
    .param p3, "openApiMethods"    # Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;

    .prologue
    .line 63
    invoke-static {p0, p1, p3}, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpRequestBuilderHelper;->getHost(Ljava/lang/String;Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpFactory;Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    if-nez p3, :cond_0

    .line 66
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "illegal argument openApiMethod is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 69
    :cond_0
    invoke-virtual {p3}, Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;->getDefaultMethodName()Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, "path":Ljava/lang/String;
    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 71
    const-string/jumbo v1, "/"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    :cond_1
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    return-void
.end method
