.class public final Lcom/alibaba/alimei/restfulapi/spi/http/HttpRequestBuilderHelper;
.super Ljava/lang/Object;
.source "HttpRequestBuilderHelper.java"


# static fields
.field private static final DEVICE_ID:Ljava/lang/String; = "did"

.field private static final FINGER_PRINT:Ljava/lang/String; = "fp"

.field private static final LANGUAGE:Ljava/lang/String; = "lang"

.field public static final SEPERATOR:Ljava/lang/String; = "/"

.field private static final SESSION_ID:Ljava/lang/String; = "sid"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    return-void
.end method

.method public static addNameAndVer(Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;Ljava/util/List;)V
    .locals 11
    .param p0, "method"    # Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;
    .param p1, "request"    # Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;",
            "Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 205
    .local p2, "pairs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    invoke-static {}, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->getConfiguration()Lcom/alibaba/alimei/restfulapi/ApiConfiguration;

    move-result-object v2

    .line 207
    .local v2, "config":Lcom/alibaba/alimei/restfulapi/ApiConfiguration;
    if-eqz v2, :cond_0

    if-eqz p2, :cond_0

    .line 208
    invoke-interface {v2}, Lcom/alibaba/alimei/restfulapi/ApiConfiguration;->getDingtalkSessionId()Ljava/lang/String;

    move-result-object v7

    .line 209
    .local v7, "sid":Ljava/lang/String;
    invoke-interface {v2}, Lcom/alibaba/alimei/restfulapi/ApiConfiguration;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    .line 211
    .local v3, "did":Ljava/lang/String;
    new-instance v8, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v9, "did"

    invoke-direct {v8, v9, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    new-instance v8, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v9, "sid"

    invoke-direct {v8, v9, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 213
    new-instance v8, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v9, "lang"

    invoke-interface {v2}, Lcom/alibaba/alimei/restfulapi/ApiConfiguration;->getLanguage()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    .end local v3    # "did":Ljava/lang/String;
    .end local v7    # "sid":Ljava/lang/String;
    :cond_0
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 217
    new-instance v8, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v9, "fp"

    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;->getFp()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 220
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;->isShouldHandleSign()Z

    move-result v8

    if-nez v8, :cond_3

    .line 251
    :cond_2
    :goto_0
    return-void

    .line 223
    :cond_3
    if-eqz p2, :cond_2

    .line 229
    invoke-interface {v2}, Lcom/alibaba/alimei/restfulapi/ApiConfiguration;->getAppName()Ljava/lang/String;

    move-result-object v0

    .line 230
    .local v0, "appname":Ljava/lang/String;
    invoke-interface {v2}, Lcom/alibaba/alimei/restfulapi/ApiConfiguration;->getAppVersion()Ljava/lang/String;

    move-result-object v1

    .line 233
    .local v1, "appver":Ljava/lang/String;
    const/4 v4, 0x0

    .line 234
    .local v4, "hasAppName":Z
    const/4 v5, 0x0

    .line 236
    .local v5, "hasAppVer":Z
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_4
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/http/NameValuePair;

    .line 237
    .local v6, "pair":Lorg/apache/http/NameValuePair;
    invoke-interface {v6}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "appname"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 238
    const/4 v4, 0x1

    .line 240
    :cond_5
    invoke-interface {v6}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "appver"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 241
    const/4 v5, 0x1

    goto :goto_1

    .line 245
    .end local v6    # "pair":Lorg/apache/http/NameValuePair;
    :cond_6
    if-nez v4, :cond_7

    .line 246
    new-instance v8, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v9, "appname"

    invoke-direct {v8, v9, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 248
    :cond_7
    if-nez v5, :cond_2

    .line 249
    new-instance v8, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v9, "appver"

    invoke-direct {v8, v9, v1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static final buildGeneralHttpPost(Ljava/lang/String;Lcom/alibaba/alimei/restfulapi/spi/http/HttpClientFactory;Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;)Lorg/apache/http/client/methods/HttpPost;
    .locals 7
    .param p0, "accountName"    # Ljava/lang/String;
    .param p1, "clientFactory"    # Lcom/alibaba/alimei/restfulapi/spi/http/HttpClientFactory;
    .param p2, "mOpenApiMethods"    # Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;
    .param p3, "request"    # Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 107
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 110
    .local v4, "sb":Ljava/lang/StringBuilder;
    invoke-static {p0, p1, v4, p2}, Lcom/alibaba/alimei/restfulapi/spi/http/HttpRequestBuilderHelper;->handleHostPrefix(Ljava/lang/String;Lcom/alibaba/alimei/restfulapi/spi/http/HttpClientFactory;Ljava/lang/StringBuilder;Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;)V

    .line 112
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 113
    .local v3, "result":Ljava/lang/String;
    invoke-static {}, Lcom/alibaba/alimei/restfulapi/support/ARFLogger;->isLogI()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 114
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "buildHttpPost final url--->> "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/alibaba/alimei/restfulapi/support/ARFLogger;->i(Ljava/lang/String;)I

    .line 116
    :cond_0
    new-instance v2, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v2, v3}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 118
    .local v2, "post":Lorg/apache/http/client/methods/HttpPost;
    invoke-virtual {p3}, Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;->buildRequestNameValuePairs()Ljava/util/List;

    move-result-object v1

    .line 120
    .local v1, "pairs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    invoke-static {p2, p3, v1}, Lcom/alibaba/alimei/restfulapi/spi/http/HttpRequestBuilderHelper;->addNameAndVer(Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;Ljava/util/List;)V

    .line 121
    invoke-static {p2, v1}, Lcom/alibaba/alimei/restfulapi/spi/http/HttpRequestBuilderHelper;->sign(Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;Ljava/util/List;)V

    .line 124
    new-instance v0, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    invoke-static {}, Lcom/alibaba/alimei/restfulapi/support/Settings;->getDefaultCharset()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v1, v5}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 125
    .local v0, "formEntity":Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    invoke-static {}, Lcom/alibaba/alimei/restfulapi/support/ARFLogger;->isLogI()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 126
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "buildHttpPost formEntity NameValuePairs--->> "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/alibaba/alimei/restfulapi/support/ARFLogger;->i(Ljava/lang/String;)I

    .line 128
    :cond_1
    invoke-virtual {v2, v0}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 129
    return-object v2
.end method

.method public static final buildHttpPost(Ljava/lang/String;Lcom/alibaba/alimei/restfulapi/spi/http/HttpClientFactory;Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;Ljava/util/Map;)Lorg/apache/http/client/methods/HttpPost;
    .locals 24
    .param p0, "accountName"    # Ljava/lang/String;
    .param p1, "clientFactory"    # Lcom/alibaba/alimei/restfulapi/spi/http/HttpClientFactory;
    .param p2, "mOpenApiMethods"    # Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;
    .param p3, "request"    # Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/alibaba/alimei/restfulapi/spi/http/HttpClientFactory;",
            "Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;",
            "Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/alimei/restfulapi/spi/FileWrapper;",
            ">;)",
            "Lorg/apache/http/client/methods/HttpPost;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 137
    .local p4, "files":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/alimei/restfulapi/spi/FileWrapper;>;"
    :try_start_0
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    .line 140
    .local v21, "sb":Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    move-object/from16 v3, p2

    invoke-static {v0, v1, v2, v3}, Lcom/alibaba/alimei/restfulapi/spi/http/HttpRequestBuilderHelper;->handleHostPrefix(Ljava/lang/String;Lcom/alibaba/alimei/restfulapi/spi/http/HttpClientFactory;Ljava/lang/StringBuilder;Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;)V

    .line 142
    invoke-virtual/range {p3 .. p3}, Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;->buildRequestNameValuePairs()Ljava/util/List;

    move-result-object v18

    .line 144
    .local v18, "pairs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/alibaba/alimei/restfulapi/spi/http/HttpRequestBuilderHelper;->addNameAndVer(Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;Ljava/util/List;)V

    .line 145
    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/alibaba/alimei/restfulapi/spi/http/HttpRequestBuilderHelper;->sign(Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;Ljava/util/List;)V

    .line 147
    const-string/jumbo v7, "?"

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    if-eqz v18, :cond_0

    .line 149
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lorg/apache/http/NameValuePair;

    .line 150
    .local v17, "pair":Lorg/apache/http/NameValuePair;
    invoke-interface/range {v17 .. v17}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    const-string/jumbo v8, "="

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    invoke-interface/range {v17 .. v17}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    const-string/jumbo v8, "&"

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 197
    .end local v17    # "pair":Lorg/apache/http/NameValuePair;
    .end local v18    # "pairs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .end local v21    # "sb":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v7

    const/16 v19, 0x0

    :goto_1
    return-object v19

    .line 156
    .restart local v18    # "pairs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .restart local v21    # "sb":Ljava/lang/StringBuilder;
    :cond_0
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 157
    .local v20, "result":Ljava/lang/String;
    const/4 v7, 0x0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    .line 158
    invoke-static {}, Lcom/alibaba/alimei/restfulapi/support/ARFLogger;->isLogI()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 159
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "buildHttpPost final url--->> "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/alibaba/alimei/restfulapi/support/ARFLogger;->i(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    :cond_1
    const/16 v22, 0x0

    .line 164
    .local v22, "url":Ljava/net/URL;
    :try_start_1
    new-instance v23, Ljava/net/URL;

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_0

    .end local v22    # "url":Ljava/net/URL;
    .local v23, "url":Ljava/net/URL;
    move-object/from16 v22, v23

    .line 169
    .end local v23    # "url":Ljava/net/URL;
    .restart local v22    # "url":Ljava/net/URL;
    :goto_2
    :try_start_2
    new-instance v4, Ljava/net/URI;

    invoke-virtual/range {v22 .. v22}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v22 .. v22}, Ljava/net/URL;->getUserInfo()Ljava/lang/String;

    move-result-object v6

    .line 170
    invoke-virtual/range {v22 .. v22}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v22 .. v22}, Ljava/net/URL;->getPort()I

    move-result v8

    invoke-virtual/range {v22 .. v22}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v9

    .line 171
    invoke-virtual/range {v22 .. v22}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-direct/range {v4 .. v11}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    .local v4, "serverUri":Ljava/net/URI;
    new-instance v19, Lorg/apache/http/client/methods/HttpPost;

    move-object/from16 v0, v19

    invoke-direct {v0, v4}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/net/URI;)V

    .line 174
    .local v19, "post":Lorg/apache/http/client/methods/HttpPost;
    new-instance v5, Lcom/alibaba/alimei/restfulapi/spi/http/entity/SimpleMultipartEntity;

    invoke-direct {v5}, Lcom/alibaba/alimei/restfulapi/spi/http/entity/SimpleMultipartEntity;-><init>()V

    .line 175
    .local v5, "multipartEntity":Lcom/alibaba/alimei/restfulapi/spi/http/entity/SimpleMultipartEntity;
    const/4 v12, 0x0

    .line 176
    .local v12, "currentIndex":I
    invoke-interface/range {p4 .. p4}, Ljava/util/Map;->size()I

    move-result v7

    add-int/lit8 v16, v7, -0x1

    .line 177
    .local v16, "lastIndex":I
    invoke-interface/range {p4 .. p4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .line 178
    .local v15, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_3
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 179
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 180
    .local v6, "keyName":Ljava/lang/String;
    move-object/from16 v0, p4

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/alibaba/alimei/restfulapi/spi/FileWrapper;

    .line 181
    .local v14, "file":Lcom/alibaba/alimei/restfulapi/spi/FileWrapper;
    iget-object v7, v14, Lcom/alibaba/alimei/restfulapi/spi/FileWrapper;->inputStream:Ljava/io/InputStream;

    if-eqz v7, :cond_2

    .line 182
    move/from16 v0, v16

    if-ne v12, v0, :cond_3

    const/4 v10, 0x1

    .line 183
    .local v10, "isLast":Z
    :goto_4
    iget-object v7, v14, Lcom/alibaba/alimei/restfulapi/spi/FileWrapper;->contentType:Ljava/lang/String;

    if-eqz v7, :cond_4

    .line 184
    invoke-virtual {v14}, Lcom/alibaba/alimei/restfulapi/spi/FileWrapper;->getFileName()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v14, Lcom/alibaba/alimei/restfulapi/spi/FileWrapper;->inputStream:Ljava/io/InputStream;

    iget-object v9, v14, Lcom/alibaba/alimei/restfulapi/spi/FileWrapper;->contentType:Ljava/lang/String;

    invoke-virtual/range {v5 .. v10}, Lcom/alibaba/alimei/restfulapi/spi/http/entity/SimpleMultipartEntity;->addPart(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Z)V

    .line 189
    .end local v10    # "isLast":Z
    :cond_2
    :goto_5
    add-int/lit8 v12, v12, 0x1

    .line 190
    goto :goto_3

    .line 165
    .end local v4    # "serverUri":Ljava/net/URI;
    .end local v5    # "multipartEntity":Lcom/alibaba/alimei/restfulapi/spi/http/entity/SimpleMultipartEntity;
    .end local v6    # "keyName":Ljava/lang/String;
    .end local v12    # "currentIndex":I
    .end local v14    # "file":Lcom/alibaba/alimei/restfulapi/spi/FileWrapper;
    .end local v15    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v16    # "lastIndex":I
    .end local v19    # "post":Lorg/apache/http/client/methods/HttpPost;
    :catch_1
    move-exception v13

    .line 166
    .local v13, "e":Ljava/net/MalformedURLException;
    invoke-virtual {v13}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_2

    .line 182
    .end local v13    # "e":Ljava/net/MalformedURLException;
    .restart local v4    # "serverUri":Ljava/net/URI;
    .restart local v5    # "multipartEntity":Lcom/alibaba/alimei/restfulapi/spi/http/entity/SimpleMultipartEntity;
    .restart local v6    # "keyName":Ljava/lang/String;
    .restart local v12    # "currentIndex":I
    .restart local v14    # "file":Lcom/alibaba/alimei/restfulapi/spi/FileWrapper;
    .restart local v15    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v16    # "lastIndex":I
    .restart local v19    # "post":Lorg/apache/http/client/methods/HttpPost;
    :cond_3
    const/4 v10, 0x0

    goto :goto_4

    .line 186
    .restart local v10    # "isLast":Z
    :cond_4
    invoke-virtual {v14}, Lcom/alibaba/alimei/restfulapi/spi/FileWrapper;->getFileName()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v14, Lcom/alibaba/alimei/restfulapi/spi/FileWrapper;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v5, v6, v7, v8, v10}, Lcom/alibaba/alimei/restfulapi/spi/http/entity/SimpleMultipartEntity;->addPart(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Z)V

    goto :goto_5

    .line 192
    .end local v6    # "keyName":Ljava/lang/String;
    .end local v10    # "isLast":Z
    .end local v14    # "file":Lcom/alibaba/alimei/restfulapi/spi/FileWrapper;
    :cond_5
    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V
    :try_end_2
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1
.end method

.method private static digestByMD5(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 3
    .param p0, "strData"    # Ljava/lang/String;
    .param p1, "upperCase"    # Z

    .prologue
    .line 416
    :try_start_0
    const-string/jumbo v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1, p1}, Lcom/alibaba/alimei/restfulapi/spi/http/HttpRequestBuilderHelper;->digestByMD5([BZ)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 417
    :catch_0
    move-exception v0

    .line 418
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Error while encode string into bytes"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static digestByMD5([BZ)Ljava/lang/String;
    .locals 5
    .param p0, "dataBytes"    # [B
    .param p1, "upperCase"    # Z

    .prologue
    .line 432
    :try_start_0
    const-string/jumbo v3, "MD5"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 433
    .local v2, "messageDigest":Ljava/security/MessageDigest;
    invoke-virtual {v2}, Ljava/security/MessageDigest;->reset()V

    .line 434
    invoke-virtual {v2, p0}, Ljava/security/MessageDigest;->update([B)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 439
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 440
    .local v0, "digestBytes":[B
    invoke-static {v0, p1}, Lcom/alibaba/alimei/restfulapi/spi/http/HttpRequestBuilderHelper;->toHexStr([BZ)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 435
    .end local v0    # "digestBytes":[B
    .end local v2    # "messageDigest":Ljava/security/MessageDigest;
    :catch_0
    move-exception v1

    .line 436
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "Error while digest using md5"

    invoke-direct {v3, v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public static final getHost(Ljava/lang/String;Lcom/alibaba/alimei/restfulapi/spi/http/HttpClientFactory;Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;)Ljava/lang/String;
    .locals 6
    .param p0, "accountName"    # Ljava/lang/String;
    .param p1, "clientFactory"    # Lcom/alibaba/alimei/restfulapi/spi/http/HttpClientFactory;
    .param p2, "mOpenApiMethods"    # Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;

    .prologue
    .line 61
    iget v4, p2, Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;->domainType:I

    invoke-static {p0, v4}, Lcom/alibaba/alimei/restfulapi/support/Settings;->getHostUrl(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 62
    .local v2, "url":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v3, v2

    .line 78
    .end local v2    # "url":Ljava/lang/String;
    .local v3, "url":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 66
    .end local v3    # "url":Ljava/lang/String;
    .restart local v2    # "url":Ljava/lang/String;
    :cond_0
    if-eqz p1, :cond_1

    invoke-static {p2}, Lcom/alibaba/alimei/restfulapi/support/Settings;->isHttpDnsSwitchOn(Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 67
    iget v4, p2, Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;->domainType:I

    invoke-static {v4}, Lcom/alibaba/alimei/restfulapi/support/Settings;->getHostName(I)Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, "hostName":Ljava/lang/String;
    invoke-interface {p1, v0, p2}, Lcom/alibaba/alimei/restfulapi/spi/http/HttpClientFactory;->getIpByHttpDns(Ljava/lang/String;Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;)Ljava/lang/String;

    move-result-object v1

    .line 69
    .local v1, "ip":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 70
    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 75
    .end local v0    # "hostName":Ljava/lang/String;
    .end local v1    # "ip":Ljava/lang/String;
    :cond_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string/jumbo v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 76
    const/4 v4, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :cond_2
    move-object v3, v2

    .line 78
    .end local v2    # "url":Ljava/lang/String;
    .restart local v3    # "url":Ljava/lang/String;
    goto :goto_0
.end method

.method public static final handleHostPrefix(Ljava/lang/String;Lcom/alibaba/alimei/restfulapi/spi/http/HttpClientFactory;Ljava/lang/StringBuilder;Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;)V
    .locals 2
    .param p0, "accountName"    # Ljava/lang/String;
    .param p1, "clientFactory"    # Lcom/alibaba/alimei/restfulapi/spi/http/HttpClientFactory;
    .param p2, "hostPrefix"    # Ljava/lang/StringBuilder;
    .param p3, "mOpenApiMethods"    # Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;

    .prologue
    .line 88
    invoke-static {p0, p1, p3}, Lcom/alibaba/alimei/restfulapi/spi/http/HttpRequestBuilderHelper;->getHost(Ljava/lang/String;Lcom/alibaba/alimei/restfulapi/spi/http/HttpClientFactory;Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    invoke-virtual {p3}, Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;->getDefaultMethodName()Ljava/lang/String;

    move-result-object v0

    .line 90
    .local v0, "path":Ljava/lang/String;
    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 91
    const-string/jumbo v1, "/"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    :cond_0
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    return-void
.end method

.method public static newSign(Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;Ljava/util/List;)V
    .locals 26
    .param p0, "method"    # Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 320
    .local p1, "pairs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;->domainType:I

    move/from16 v22, v0

    const/16 v23, 0x3e8

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;->domainType:I

    move/from16 v22, v0

    const/16 v23, 0xbb8

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;->domainType:I

    move/from16 v22, v0

    const/16 v23, 0x1f40

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_1

    .line 406
    :cond_0
    :goto_0
    return-void

    .line 326
    :cond_1
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 327
    .local v9, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/http/NameValuePair;>;"
    const/4 v6, 0x0

    .line 328
    .local v6, "dataPayload":Ljava/lang/String;
    const/4 v4, 0x0

    .line 329
    .local v4, "at":Ljava/lang/String;
    :cond_2
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_7

    .line 330
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/http/NameValuePair;

    .line 331
    .local v10, "kv":Lorg/apache/http/NameValuePair;
    invoke-interface {v10}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v22

    const-string/jumbo v23, "accesstoken"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_3

    .line 332
    invoke-interface {v10}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 333
    invoke-interface {v9}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 334
    :cond_3
    invoke-interface {v10}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v22

    const-string/jumbo v23, "appname"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_4

    .line 335
    invoke-interface {v9}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 336
    :cond_4
    invoke-interface {v10}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v22

    const-string/jumbo v23, "appkey"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_5

    .line 337
    invoke-interface {v9}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 338
    :cond_5
    invoke-interface {v10}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v22

    const-string/jumbo v23, "appver"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_6

    .line 339
    invoke-interface {v9}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 340
    :cond_6
    invoke-interface {v10}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v22

    const-string/jumbo v23, "data"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_2

    .line 341
    invoke-interface {v10}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v6

    .line 342
    invoke-interface {v9}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 346
    .end local v10    # "kv":Lorg/apache/http/NameValuePair;
    :cond_7
    if-eqz v4, :cond_8

    .line 347
    new-instance v22, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v23, "accessToken"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-direct {v0, v1, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 350
    :cond_8
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v22

    add-int/lit8 v16, v22, -0x1

    .line 352
    .local v16, "startOffet":I
    invoke-static {}, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->getConfiguration()Lcom/alibaba/alimei/restfulapi/ApiConfiguration;

    move-result-object v5

    .line 353
    .local v5, "config":Lcom/alibaba/alimei/restfulapi/ApiConfiguration;
    invoke-interface {v5}, Lcom/alibaba/alimei/restfulapi/ApiConfiguration;->getAppName()Ljava/lang/String;

    move-result-object v22

    if-eqz v22, :cond_9

    .line 354
    new-instance v22, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v23, "appName"

    invoke-interface {v5}, Lcom/alibaba/alimei/restfulapi/ApiConfiguration;->getAppName()Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v22 .. v24}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 356
    :cond_9
    invoke-interface {v5}, Lcom/alibaba/alimei/restfulapi/ApiConfiguration;->getAppVersion()Ljava/lang/String;

    move-result-object v22

    if-eqz v22, :cond_a

    .line 357
    new-instance v22, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v23, "appVer"

    invoke-interface {v5}, Lcom/alibaba/alimei/restfulapi/ApiConfiguration;->getAppVersion()Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v22 .. v24}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 359
    :cond_a
    invoke-interface {v5}, Lcom/alibaba/alimei/restfulapi/ApiConfiguration;->getClientId()Ljava/lang/String;

    move-result-object v22

    if-eqz v22, :cond_b

    .line 360
    new-instance v22, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v23, "clientId"

    invoke-interface {v5}, Lcom/alibaba/alimei/restfulapi/ApiConfiguration;->getClientId()Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v22 .. v24}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 362
    :cond_b
    if-eqz v6, :cond_c

    .line 363
    new-instance v22, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v23, "data"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-direct {v0, v1, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 365
    :cond_c
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v12

    .line 366
    .local v12, "nonce":Ljava/lang/String;
    new-instance v22, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v23, "nonce"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-direct {v0, v1, v12}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 368
    new-instance v22, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v23, "sdkVer"

    const-string/jumbo v24, "0.0.1"

    invoke-direct/range {v22 .. v24}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 370
    new-instance v22, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v23, "signVer"

    const-string/jumbo v24, "1"

    invoke-direct/range {v22 .. v24}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 372
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    sget-wide v24, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->sTimestampDiff:J

    add-long v20, v22, v24

    .line 373
    .local v20, "timestamp":J
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/16 v24, 0x3e8

    div-long v24, v20, v24

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 374
    .local v19, "timestampStr":Ljava/lang/String;
    new-instance v22, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v23, "timestamp"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 376
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    .line 377
    .local v17, "str4SignBuilder":Ljava/lang/StringBuilder;
    move/from16 v8, v16

    .local v8, "i":I
    :goto_2
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v22

    move/from16 v0, v22

    if-ge v8, v0, :cond_d

    .line 378
    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/http/NameValuePair;

    .line 379
    .restart local v10    # "kv":Lorg/apache/http/NameValuePair;
    invoke-interface {v10}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-interface {v10}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 382
    .end local v10    # "kv":Lorg/apache/http/NameValuePair;
    :cond_d
    invoke-interface {v5}, Lcom/alibaba/alimei/restfulapi/ApiConfiguration;->getClientSecret()Ljava/lang/String;

    move-result-object v13

    .line 383
    .local v13, "secret":Ljava/lang/String;
    if-eqz v13, :cond_0

    .line 384
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 385
    .local v15, "signKey":Ljava/lang/String;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 387
    .local v18, "str4sign":Ljava/lang/String;
    invoke-static {}, Lcom/alibaba/alimei/restfulapi/support/ARFLogger;->isLogI()Z

    move-result v22

    if-eqz v22, :cond_e

    .line 388
    const-string/jumbo v22, "string 4 sign:"

    invoke-static/range {v22 .. v22}, Lcom/alibaba/alimei/restfulapi/support/ARFLogger;->i(Ljava/lang/String;)I

    .line 389
    invoke-static/range {v18 .. v18}, Lcom/alibaba/alimei/restfulapi/support/ARFLogger;->i(Ljava/lang/String;)I

    .line 393
    :cond_e
    :try_start_0
    const-string/jumbo v22, "HmacSHA1"

    invoke-static/range {v22 .. v22}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v11

    .line 394
    .local v11, "mac":Ljavax/crypto/Mac;
    new-instance v22, Ljavax/crypto/spec/SecretKeySpec;

    const-string/jumbo v23, "UTF-8"

    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v23

    invoke-virtual {v11}, Ljavax/crypto/Mac;->getAlgorithm()Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v22 .. v24}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 396
    new-instance v14, Ljava/lang/String;

    const-string/jumbo v22, "UTF-8"

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v22

    const/16 v23, 0x2

    invoke-static/range {v22 .. v23}, Lhv;->c([BI)[B

    move-result-object v22

    const-string/jumbo v23, "UTF-8"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-direct {v14, v0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 397
    .local v14, "sign":Ljava/lang/String;
    invoke-static {}, Lcom/alibaba/alimei/restfulapi/support/ARFLogger;->isLogI()Z

    move-result v22

    if-eqz v22, :cond_f

    .line 398
    new-instance v22, Ljava/lang/StringBuilder;

    const-string/jumbo v23, "sign result is "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/alibaba/alimei/restfulapi/support/ARFLogger;->i(Ljava/lang/String;)I

    .line 401
    :cond_f
    new-instance v22, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v23, "sign"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-direct {v0, v1, v14}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 402
    .end local v11    # "mac":Ljavax/crypto/Mac;
    .end local v14    # "sign":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 403
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public static sign(Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;Ljava/util/List;)V
    .locals 20
    .param p0, "method"    # Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 254
    .local p1, "paris":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;->isShouldHandleSign()Z

    move-result v16

    if-nez v16, :cond_0

    .line 311
    :goto_0
    return-void

    .line 257
    :cond_0
    if-nez p1, :cond_1

    .line 258
    const-string/jumbo v16, "\u8bf7\u6c42\u7684\u53c2\u6570\u4e3aNULL, \u4e0d\u5728\u8fdb\u884c\u7b7e\u540d\u6821\u9a8c"

    invoke-static/range {v16 .. v16}, Lcom/alibaba/alimei/restfulapi/support/ARFLogger;->i(Ljava/lang/String;)I

    goto :goto_0

    .line 263
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    sget-wide v18, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->sTimestampDiff:J

    add-long v14, v16, v18

    .line 264
    .local v14, "timestamp":J
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v13

    .line 265
    .local v13, "timeKey":Ljava/lang/String;
    new-instance v16, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v17, "timeKey"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v13}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 266
    new-instance v16, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v17, "timestamp"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v16 .. v18}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 268
    new-instance v16, Lcom/alibaba/alimei/restfulapi/spi/http/HttpRequestBuilderHelper$1;

    invoke-direct/range {v16 .. v16}, Lcom/alibaba/alimei/restfulapi/spi/http/HttpRequestBuilderHelper$1;-><init>()V

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 274
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 275
    .local v9, "sb":Ljava/lang/StringBuilder;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v16

    move/from16 v0, v16

    if-ge v6, v0, :cond_3

    .line 276
    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lorg/apache/http/NameValuePair;

    invoke-interface/range {v16 .. v16}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    const-string/jumbo v16, "="

    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lorg/apache/http/NameValuePair;

    invoke-interface/range {v16 .. v16}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v16

    add-int/lit8 v16, v16, -0x1

    move/from16 v0, v16

    if-eq v6, v0, :cond_2

    .line 280
    const-string/jumbo v16, "&"

    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 284
    :cond_3
    invoke-static {}, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->getConfiguration()Lcom/alibaba/alimei/restfulapi/ApiConfiguration;

    move-result-object v3

    .line 285
    .local v3, "config":Lcom/alibaba/alimei/restfulapi/ApiConfiguration;
    invoke-interface {v3}, Lcom/alibaba/alimei/restfulapi/ApiConfiguration;->getAppKey()Ljava/lang/String;

    move-result-object v2

    .line 287
    .local v2, "appkey":Ljava/lang/String;
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    invoke-static/range {v16 .. v17}, Lcom/alibaba/alimei/restfulapi/spi/http/HttpRequestBuilderHelper;->digestByMD5(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v12

    .line 288
    .local v12, "signFactor":Ljava/lang/String;
    const-string/jumbo v11, ""

    .line 290
    .local v11, "sign":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v16, "hmacmd5"

    invoke-static/range {v16 .. v16}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v8

    .line 291
    .local v8, "mac":Ljavax/crypto/Mac;
    new-instance v7, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v16

    invoke-virtual {v8}, Ljavax/crypto/Mac;->getAlgorithm()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v7, v0, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 292
    .local v7, "keySpec":Ljavax/crypto/spec/SecretKeySpec;
    invoke-virtual {v8, v7}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 293
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 294
    .local v10, "sbstr":Ljava/lang/String;
    invoke-static {}, Lcom/alibaba/alimei/restfulapi/support/ARFLogger;->isLogI()Z

    move-result v16

    if-eqz v16, :cond_4

    .line 295
    const-string/jumbo v16, "hmacmd5 \u524d\u7684\u5185\u5bb9:"

    invoke-static/range {v16 .. v16}, Lcom/alibaba/alimei/restfulapi/support/ARFLogger;->i(Ljava/lang/String;)I

    .line 296
    invoke-static {v10}, Lcom/alibaba/alimei/restfulapi/support/ARFLogger;->i(Ljava/lang/String;)I

    .line 298
    :cond_4
    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v4

    .line 299
    .local v4, "data":[B
    invoke-static {v4}, Lcom/alibaba/alimei/restfulapi/spi/http/HttpRequestBuilderHelper;->toHexStr([B)Ljava/lang/String;

    move-result-object v11

    .line 300
    invoke-static {}, Lcom/alibaba/alimei/restfulapi/support/ARFLogger;->isLogI()Z

    move-result v16

    if-eqz v16, :cond_5

    .line 301
    const-string/jumbo v16, "hmacmd5 \u540e\u7684\u7ed3\u679c:"

    invoke-static/range {v16 .. v16}, Lcom/alibaba/alimei/restfulapi/support/ARFLogger;->i(Ljava/lang/String;)I

    .line 302
    invoke-static {v11}, Lcom/alibaba/alimei/restfulapi/support/ARFLogger;->i(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1

    .line 309
    .end local v4    # "data":[B
    .end local v7    # "keySpec":Ljavax/crypto/spec/SecretKeySpec;
    .end local v8    # "mac":Ljavax/crypto/Mac;
    .end local v10    # "sbstr":Ljava/lang/String;
    :cond_5
    :goto_2
    new-instance v16, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v17, "sign"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v11}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 304
    :catch_0
    move-exception v5

    .line 305
    .local v5, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v5}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_2

    .line 306
    .end local v5    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v5

    .line 307
    .local v5, "e":Ljava/security/InvalidKeyException;
    invoke-virtual {v5}, Ljava/security/InvalidKeyException;->printStackTrace()V

    goto :goto_2
.end method

.method public static toHexStr([B)Ljava/lang/String;
    .locals 1
    .param p0, "bytes"    # [B

    .prologue
    .line 450
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/alibaba/alimei/restfulapi/spi/http/HttpRequestBuilderHelper;->toHexStr([BZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toHexStr([BZ)Ljava/lang/String;
    .locals 5
    .param p0, "bytes"    # [B
    .param p1, "upperCase"    # Z

    .prologue
    .line 461
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 462
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_2

    .line 463
    aget-byte v3, p0, v1

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 464
    .local v0, "hex":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 465
    const-string/jumbo v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 467
    :cond_0
    if-eqz p1, :cond_1

    .line 468
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 462
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 470
    :cond_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 473
    .end local v0    # "hex":Ljava/lang/String;
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
