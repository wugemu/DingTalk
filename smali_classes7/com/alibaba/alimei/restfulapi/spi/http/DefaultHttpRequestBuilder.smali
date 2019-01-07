.class public Lcom/alibaba/alimei/restfulapi/spi/http/DefaultHttpRequestBuilder;
.super Ljava/lang/Object;
.source "DefaultHttpRequestBuilder.java"

# interfaces
.implements Lcom/alibaba/alimei/restfulapi/spi/HttpRequestBuilder;


# static fields
.field public static DefaultBuilder:Lcom/alibaba/alimei/restfulapi/spi/http/DefaultHttpRequestBuilder; = null

.field public static final MARK_A:Ljava/lang/String; = "&"

.field public static final MARK_E:Ljava/lang/String; = "="

.field public static final MARK_Q:Ljava/lang/String; = "?"

.field public static final MARK_S:Ljava/lang/String; = "/"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    new-instance v0, Lcom/alibaba/alimei/restfulapi/spi/http/DefaultHttpRequestBuilder;

    invoke-direct {v0}, Lcom/alibaba/alimei/restfulapi/spi/http/DefaultHttpRequestBuilder;-><init>()V

    sput-object v0, Lcom/alibaba/alimei/restfulapi/spi/http/DefaultHttpRequestBuilder;->DefaultBuilder:Lcom/alibaba/alimei/restfulapi/spi/http/DefaultHttpRequestBuilder;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    return-void
.end method


# virtual methods
.method public buildAttachmentHttpPost(Ljava/lang/String;Lcom/alibaba/alimei/restfulapi/spi/http/HttpClientFactory;Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;Ljava/util/Map;Lcom/alibaba/alimei/restfulapi/spi/http/entity/listener/OnProgressListener;)Lorg/apache/http/client/methods/HttpPost;
    .locals 28
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "clientFactory"    # Lcom/alibaba/alimei/restfulapi/spi/http/HttpClientFactory;
    .param p3, "mOpenApiMethods"    # Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;
    .param p4, "request"    # Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;
    .param p6, "listener"    # Lcom/alibaba/alimei/restfulapi/spi/http/entity/listener/OnProgressListener;
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
            "Ljava/io/File;",
            ">;",
            "Lcom/alibaba/alimei/restfulapi/spi/http/entity/listener/OnProgressListener;",
            ")",
            "Lorg/apache/http/client/methods/HttpPost;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 217
    .local p5, "files":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/io/File;>;"
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    .line 220
    .local v18, "sb":Ljava/lang/StringBuilder;
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v18

    move-object/from16 v3, p3

    invoke-static {v0, v1, v2, v3}, Lcom/alibaba/alimei/restfulapi/spi/http/HttpRequestBuilderHelper;->handleHostPrefix(Ljava/lang/String;Lcom/alibaba/alimei/restfulapi/spi/http/HttpClientFactory;Ljava/lang/StringBuilder;Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;)V

    .line 223
    new-instance v13, Lcom/alibaba/alimei/restfulapi/spi/http/entity/MyMultipartEntity;

    invoke-direct {v13}, Lcom/alibaba/alimei/restfulapi/spi/http/entity/MyMultipartEntity;-><init>()V

    .line 226
    .local v13, "multipartEntity":Lcom/alibaba/alimei/restfulapi/spi/http/entity/MyMultipartEntity;
    invoke-virtual/range {p4 .. p4}, Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;->buildRequestNameValuePairs()Ljava/util/List;

    move-result-object v15

    .line 228
    .local v15, "pairs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-static {v0, v1, v15}, Lcom/alibaba/alimei/restfulapi/spi/http/HttpRequestBuilderHelper;->addNameAndVer(Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;Ljava/util/List;)V

    .line 229
    move-object/from16 v0, p3

    invoke-static {v0, v15}, Lcom/alibaba/alimei/restfulapi/spi/http/HttpRequestBuilderHelper;->sign(Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;Ljava/util/List;)V

    .line 230
    const/4 v10, 0x0

    .line 231
    .local v10, "isChunked":Z
    const-wide/16 v20, 0x0

    .line 232
    .local v20, "start":J
    const-wide/16 v6, 0x0

    .line 233
    .local v6, "end":J
    const-string/jumbo v22, ""

    .line 234
    .local v22, "token":Ljava/lang/String;
    if-eqz v15, :cond_5

    .line 235
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v24

    :cond_0
    :goto_0
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_5

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/apache/http/NameValuePair;

    .line 236
    .local v14, "pair":Lorg/apache/http/NameValuePair;
    invoke-virtual/range {p3 .. p3}, Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;->getDefaultMethodName()Ljava/lang/String;

    move-result-object v25

    const-string/jumbo v26, "/attachment/mupload"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_4

    .line 237
    const/4 v10, 0x1

    .line 238
    invoke-interface {v14}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v25

    const-string/jumbo v26, "rangeStart"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_1

    .line 239
    invoke-interface {v14}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v20

    goto :goto_0

    .line 240
    :cond_1
    invoke-interface {v14}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v25

    const-string/jumbo v26, "rangeEnd"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_2

    .line 241
    invoke-interface {v14}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    goto :goto_0

    .line 242
    :cond_2
    invoke-interface {v14}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v25

    const-string/jumbo v26, "uploadid"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_3

    .line 243
    invoke-interface {v14}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v25

    const-string/jumbo v26, "UTF-8"

    invoke-static/range {v25 .. v26}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 244
    .local v23, "uploadId":Ljava/lang/String;
    new-instance v25, Ljava/lang/StringBuilder;

    const-string/jumbo v26, "?uploadid="

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v25

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 245
    .end local v23    # "uploadId":Ljava/lang/String;
    :cond_3
    invoke-interface {v14}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v25

    const-string/jumbo v26, "token"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_0

    .line 246
    invoke-interface {v14}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v22

    goto/16 :goto_0

    .line 250
    :cond_4
    invoke-interface {v14}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v25

    new-instance v26, Lorg/apache/http/entity/mime/content/StringBody;

    invoke-interface {v14}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v27

    invoke-direct/range {v26 .. v27}, Lorg/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v13, v0, v1}, Lcom/alibaba/alimei/restfulapi/spi/http/entity/MyMultipartEntity;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    goto/16 :goto_0

    .line 256
    .end local v14    # "pair":Lorg/apache/http/NameValuePair;
    :cond_5
    invoke-interface/range {p5 .. p5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .line 259
    .local v11, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_7

    .line 260
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 261
    .local v12, "keyName":Ljava/lang/String;
    move-object/from16 v0, p5

    invoke-interface {v0, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/io/File;

    .line 262
    .local v8, "file":Ljava/io/File;
    if-eqz v10, :cond_6

    .line 263
    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 265
    .local v9, "inputStream":Ljava/io/FileInputStream;
    sub-long v24, v6, v20

    move-wide/from16 v0, v24

    long-to-int v0, v0

    move/from16 v19, v0

    .line 266
    .local v19, "size":I
    move/from16 v0, v19

    new-array v4, v0, [B

    .line 268
    .local v4, "bytes":[B
    :try_start_0
    move-wide/from16 v0, v20

    invoke-virtual {v9, v0, v1}, Ljava/io/FileInputStream;->skip(J)J

    .line 269
    const/16 v24, 0x0

    array-length v0, v4

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v9, v4, v0, v1}, Ljava/io/FileInputStream;->read([BII)I

    .line 271
    new-instance v24, Lorg/apache/http/entity/mime/content/ByteArrayBody;

    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-direct {v0, v4, v1}, Lorg/apache/http/entity/mime/content/ByteArrayBody;-><init>([BLjava/lang/String;)V

    move-object/from16 v0, v24

    invoke-virtual {v13, v12, v0}, Lcom/alibaba/alimei/restfulapi/spi/http/entity/MyMultipartEntity;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    .line 272
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 273
    :catch_0
    move-exception v5

    .line 274
    .local v5, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 278
    .end local v4    # "bytes":[B
    .end local v5    # "e":Ljava/io/IOException;
    .end local v9    # "inputStream":Ljava/io/FileInputStream;
    .end local v19    # "size":I
    :cond_6
    new-instance v24, Lcom/alibaba/alimei/restfulapi/spi/http/entity/ProgressFileBody;

    move-object/from16 v0, v24

    move-object/from16 v1, p6

    invoke-direct {v0, v8, v1}, Lcom/alibaba/alimei/restfulapi/spi/http/entity/ProgressFileBody;-><init>(Ljava/io/File;Lcom/alibaba/alimei/restfulapi/spi/http/entity/listener/OnProgressListener;)V

    move-object/from16 v0, v24

    invoke-virtual {v13, v12, v0}, Lcom/alibaba/alimei/restfulapi/spi/http/entity/MyMultipartEntity;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    goto :goto_1

    .line 287
    .end local v8    # "file":Ljava/io/File;
    .end local v12    # "keyName":Ljava/lang/String;
    :cond_7
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 288
    .local v17, "result":Ljava/lang/String;
    invoke-static {}, Lcom/alibaba/alimei/restfulapi/support/ARFLogger;->isLogI()Z

    move-result v24

    if-eqz v24, :cond_8

    .line 289
    const-string/jumbo v24, "buildAttachmentHttpPost host url--->> "

    invoke-static/range {v24 .. v24}, Lcom/alibaba/alimei/restfulapi/support/ARFLogger;->i(Ljava/lang/String;)I

    .line 290
    invoke-static/range {v17 .. v17}, Lcom/alibaba/alimei/restfulapi/support/ARFLogger;->i(Ljava/lang/String;)I

    .line 292
    :cond_8
    new-instance v16, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct/range {v16 .. v17}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 293
    .local v16, "post":Lorg/apache/http/client/methods/HttpPost;
    if-eqz v10, :cond_9

    .line 294
    const-string/jumbo v24, "NDPartition"

    new-instance v25, Ljava/lang/StringBuilder;

    const-string/jumbo v26, "bytes="

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v25

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, "-"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-wide/16 v26, 0x1

    sub-long v26, v6, v26

    invoke-virtual/range {v25 .. v27}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    const-string/jumbo v24, "Cookie"

    new-instance v25, Ljava/lang/StringBuilder;

    const-string/jumbo v26, "token="

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v25

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    move-object/from16 v0, p3

    iget v0, v0, Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;->domainType:I

    move/from16 v24, v0

    const/16 v25, 0xfa0

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_9

    .line 298
    invoke-static {}, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->getConfiguration()Lcom/alibaba/alimei/restfulapi/ApiConfiguration;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Lcom/alibaba/alimei/restfulapi/ApiConfiguration;->getDevEnvironment()I

    move-result v24

    sget v25, Lcom/alibaba/alimei/restfulapi/constant/Constant;->DEV_DAILY:I

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_9

    .line 300
    const-string/jumbo v24, "Cookie"

    new-instance v25, Ljava/lang/StringBuilder;

    const-string/jumbo v26, "ds_daily="

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v25

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    :cond_9
    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 305
    return-object v16
.end method

.method public buildFeedbackHttpPost(Ljava/lang/String;Lcom/alibaba/alimei/restfulapi/spi/http/HttpClientFactory;Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;Ljava/util/Map;)Lorg/apache/http/client/methods/HttpPost;
    .locals 1
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "clientFactory"    # Lcom/alibaba/alimei/restfulapi/spi/http/HttpClientFactory;
    .param p3, "mOpenApiMethods"    # Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;
    .param p4, "request"    # Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;
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
            Ljava/io/UnsupportedEncodingException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 310
    .local p5, "files":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/alimei/restfulapi/spi/FileWrapper;>;"
    invoke-static {p1, p2, p3, p4, p5}, Lcom/alibaba/alimei/restfulapi/spi/http/HttpRequestBuilderHelper;->buildHttpPost(Ljava/lang/String;Lcom/alibaba/alimei/restfulapi/spi/http/HttpClientFactory;Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;Ljava/util/Map;)Lorg/apache/http/client/methods/HttpPost;

    move-result-object v0

    .line 311
    .local v0, "post":Lorg/apache/http/client/methods/HttpPost;
    return-object v0
.end method

.method public buildHttpGet(Ljava/lang/String;Lcom/alibaba/alimei/restfulapi/spi/http/HttpClientFactory;Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;)Lorg/apache/http/client/methods/HttpGet;
    .locals 3
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "clientFactory"    # Lcom/alibaba/alimei/restfulapi/spi/http/HttpClientFactory;
    .param p3, "mOpenApiMethods"    # Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;
    .param p4, "request"    # Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 80
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/alibaba/alimei/restfulapi/spi/http/DefaultHttpRequestBuilder;->buildHttpGetUrl(Ljava/lang/String;Lcom/alibaba/alimei/restfulapi/spi/http/HttpClientFactory;Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;)Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, "result":Ljava/lang/String;
    invoke-static {}, Lcom/alibaba/alimei/restfulapi/support/ARFLogger;->isLogI()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 83
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "buildHttpGet \u8bf7\u6c42\u5730\u5740\uff08\u5305\u62ec\u53c2\u6570\uff0c\u672a\u7f16\u7801\uff09 --->> "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/alibaba/alimei/restfulapi/support/Settings;->getDefaultCharset()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/alimei/restfulapi/support/ARFLogger;->i(Ljava/lang/String;)I

    .line 85
    :cond_0
    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v1, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method public buildHttpGetUrl(Ljava/lang/String;Lcom/alibaba/alimei/restfulapi/spi/http/HttpClientFactory;Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;)Ljava/lang/String;
    .locals 8
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "clientFactory"    # Lcom/alibaba/alimei/restfulapi/spi/http/HttpClientFactory;
    .param p3, "mOpenApiMethods"    # Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;
    .param p4, "request"    # Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 90
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 93
    .local v3, "sb":Ljava/lang/StringBuilder;
    invoke-static {p1, p2, v3, p3}, Lcom/alibaba/alimei/restfulapi/spi/http/HttpRequestBuilderHelper;->handleHostPrefix(Ljava/lang/String;Lcom/alibaba/alimei/restfulapi/spi/http/HttpClientFactory;Ljava/lang/StringBuilder;Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;)V

    .line 96
    invoke-virtual {p4}, Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;->buildRequestNameValuePairs()Ljava/util/List;

    move-result-object v2

    .line 98
    .local v2, "pairs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    invoke-static {p3, p4, v2}, Lcom/alibaba/alimei/restfulapi/spi/http/HttpRequestBuilderHelper;->addNameAndVer(Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;Ljava/util/List;)V

    .line 99
    invoke-static {p3, v2}, Lcom/alibaba/alimei/restfulapi/spi/http/HttpRequestBuilderHelper;->sign(Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;Ljava/util/List;)V

    .line 101
    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_2

    .line 102
    const-string/jumbo v6, "?"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    .line 104
    .local v4, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_2

    .line 105
    if-eqz v0, :cond_0

    .line 106
    const-string/jumbo v6, "&"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    :cond_0
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/http/NameValuePair;

    .line 109
    .local v1, "pair":Lorg/apache/http/NameValuePair;
    invoke-interface {v1}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    const-string/jumbo v6, "="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    invoke-interface {v1}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 112
    invoke-interface {v1}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/alibaba/alimei/restfulapi/support/Settings;->getDefaultCharset()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 113
    .local v5, "value":Ljava/lang/String;
    const-string/jumbo v6, "+"

    const-string/jumbo v7, "%20"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 114
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .end local v5    # "value":Ljava/lang/String;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 119
    .end local v0    # "i":I
    .end local v1    # "pair":Lorg/apache/http/NameValuePair;
    .end local v4    # "size":I
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method public buildHttpHost(Ljava/lang/String;Lcom/alibaba/alimei/restfulapi/spi/http/HttpClientFactory;Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;)Ljava/lang/String;
    .locals 2
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "clientFactory"    # Lcom/alibaba/alimei/restfulapi/spi/http/HttpClientFactory;
    .param p3, "mOpenApiMethods"    # Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 316
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 319
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-static {p1, p2, v0, p3}, Lcom/alibaba/alimei/restfulapi/spi/http/HttpRequestBuilderHelper;->handleHostPrefix(Ljava/lang/String;Lcom/alibaba/alimei/restfulapi/spi/http/HttpClientFactory;Ljava/lang/StringBuilder;Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;)V

    .line 320
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public buildHttpPost(Ljava/lang/String;Lcom/alibaba/alimei/restfulapi/spi/http/HttpClientFactory;Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;)Lorg/apache/http/client/methods/HttpPost;
    .locals 1
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "clientFactory"    # Lcom/alibaba/alimei/restfulapi/spi/http/HttpClientFactory;
    .param p3, "mOpenApiMethods"    # Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;
    .param p4, "request"    # Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 126
    invoke-static {p1, p2, p3, p4}, Lcom/alibaba/alimei/restfulapi/spi/http/HttpRequestBuilderHelper;->buildGeneralHttpPost(Ljava/lang/String;Lcom/alibaba/alimei/restfulapi/spi/http/HttpClientFactory;Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;)Lorg/apache/http/client/methods/HttpPost;

    move-result-object v0

    return-object v0
.end method

.method public buildHttpPostBody(Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;)[B
    .locals 11
    .param p1, "request"    # Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;
    .param p2, "mOpenApiMethods"    # Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v7, 0x0

    const/16 v10, 0x400

    .line 325
    if-nez p1, :cond_0

    move-object v1, v7

    .line 379
    :goto_0
    return-object v1

    .line 329
    :cond_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 330
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 332
    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;->buildRequestNameValuePairs()Ljava/util/List;

    move-result-object v6

    .line 334
    .local v6, "pairs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    invoke-static {p2, p1, v6}, Lcom/alibaba/alimei/restfulapi/spi/http/HttpRequestBuilderHelper;->addNameAndVer(Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;Ljava/util/List;)V

    .line 335
    invoke-static {p2, v6}, Lcom/alibaba/alimei/restfulapi/spi/http/HttpRequestBuilderHelper;->sign(Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;Ljava/util/List;)V

    .line 359
    new-instance v4, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    invoke-static {}, Lcom/alibaba/alimei/restfulapi/support/Settings;->getDefaultCharset()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v6, v8}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 360
    .local v4, "formEntity":Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    invoke-static {}, Lcom/alibaba/alimei/restfulapi/support/ARFLogger;->isLogI()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 361
    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "buildHttpPost formEntity NameValuePairs--->> "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/alibaba/alimei/restfulapi/support/ARFLogger;->i(Ljava/lang/String;)I

    .line 364
    :cond_1
    new-instance v0, Lorg/apache/http/util/ByteArrayBuffer;

    invoke-direct {v0, v10}, Lorg/apache/http/util/ByteArrayBuffer;-><init>(I)V

    .line 365
    .local v0, "buffer":Lorg/apache/http/util/ByteArrayBuffer;
    new-array v1, v10, [B

    .line 367
    .local v1, "bytes":[B
    :try_start_0
    invoke-virtual {v4}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;->getContent()Ljava/io/InputStream;

    move-result-object v5

    .line 369
    .local v5, "inputStream":Ljava/io/InputStream;
    :goto_1
    const/4 v8, 0x0

    const/16 v9, 0x400

    invoke-virtual {v5, v1, v8, v9}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    .local v2, "count":I
    if-lez v2, :cond_2

    .line 370
    const/4 v8, 0x0

    invoke-virtual {v0, v1, v8, v2}, Lorg/apache/http/util/ByteArrayBuffer;->append([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 376
    .end local v2    # "count":I
    .end local v5    # "inputStream":Ljava/io/InputStream;
    :catch_0
    move-exception v3

    .line 377
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    move-object v1, v7

    .line 379
    goto :goto_0

    .line 372
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v2    # "count":I
    .restart local v5    # "inputStream":Ljava/io/InputStream;
    :cond_2
    :try_start_1
    invoke-virtual {v0}, Lorg/apache/http/util/ByteArrayBuffer;->toByteArray()[B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    .line 375
    goto :goto_0
.end method

.method public buildMultipartHttpPost(Ljava/lang/String;Lcom/alibaba/alimei/restfulapi/spi/http/HttpClientFactory;Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;Ljava/util/Map;)Lorg/apache/http/client/methods/HttpPost;
    .locals 19
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "clientFactory"    # Lcom/alibaba/alimei/restfulapi/spi/http/HttpClientFactory;
    .param p3, "mOpenApiMethods"    # Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;
    .param p4, "request"    # Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;
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
            Ljava/io/UnsupportedEncodingException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 162
    .local p5, "files":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/alimei/restfulapi/spi/FileWrapper;>;"
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    .line 164
    .local v18, "sb":Ljava/lang/StringBuilder;
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v18

    move-object/from16 v3, p3

    invoke-static {v0, v1, v2, v3}, Lcom/alibaba/alimei/restfulapi/spi/http/HttpRequestBuilderHelper;->handleHostPrefix(Ljava/lang/String;Lcom/alibaba/alimei/restfulapi/spi/http/HttpClientFactory;Ljava/lang/StringBuilder;Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;)V

    .line 166
    new-instance v4, Lcom/alibaba/alimei/restfulapi/spi/http/entity/SimpleMultipartEntity;

    invoke-direct {v4}, Lcom/alibaba/alimei/restfulapi/spi/http/entity/SimpleMultipartEntity;-><init>()V

    .line 169
    .local v4, "multipartEntity":Lcom/alibaba/alimei/restfulapi/spi/http/entity/SimpleMultipartEntity;
    invoke-virtual/range {p4 .. p4}, Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;->buildRequestNameValuePairs()Ljava/util/List;

    move-result-object v15

    .line 171
    .local v15, "pairs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-static {v0, v1, v15}, Lcom/alibaba/alimei/restfulapi/spi/http/HttpRequestBuilderHelper;->addNameAndVer(Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;Ljava/util/List;)V

    .line 172
    move-object/from16 v0, p3

    invoke-static {v0, v15}, Lcom/alibaba/alimei/restfulapi/spi/http/HttpRequestBuilderHelper;->sign(Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;Ljava/util/List;)V

    .line 174
    if-eqz v15, :cond_0

    .line 175
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/apache/http/NameValuePair;

    .line 176
    .local v14, "pair":Lorg/apache/http/NameValuePair;
    invoke-interface {v14}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v14}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Lcom/alibaba/alimei/restfulapi/spi/http/entity/SimpleMultipartEntity;->addPart(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 179
    .end local v14    # "pair":Lorg/apache/http/NameValuePair;
    :cond_0
    invoke-static {}, Lcom/alibaba/alimei/restfulapi/support/ARFLogger;->isLogI()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 180
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "buildMultipartHttpPost \u8ddf\u968f\u9644\u4ef6\u4e00\u8d77\u4e0a\u4f20\u7684\u53c2\u6570\u4fe1\u606f--->> "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/alibaba/alimei/restfulapi/support/ARFLogger;->i(Ljava/lang/String;)I

    .line 184
    :cond_1
    const/4 v10, 0x0

    .line 185
    .local v10, "currentIndex":I
    invoke-interface/range {p5 .. p5}, Ljava/util/Map;->size()I

    move-result v6

    add-int/lit8 v13, v6, -0x1

    .line 186
    .local v13, "lastIndex":I
    invoke-interface/range {p5 .. p5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .line 187
    .local v12, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 188
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 189
    .local v5, "keyName":Ljava/lang/String;
    move-object/from16 v0, p5

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/alibaba/alimei/restfulapi/spi/FileWrapper;

    .line 190
    .local v11, "file":Lcom/alibaba/alimei/restfulapi/spi/FileWrapper;
    iget-object v6, v11, Lcom/alibaba/alimei/restfulapi/spi/FileWrapper;->inputStream:Ljava/io/InputStream;

    if-eqz v6, :cond_2

    .line 191
    if-ne v10, v13, :cond_3

    const/4 v9, 0x1

    .line 192
    .local v9, "isLast":Z
    :goto_2
    iget-object v6, v11, Lcom/alibaba/alimei/restfulapi/spi/FileWrapper;->contentType:Ljava/lang/String;

    if-eqz v6, :cond_4

    .line 193
    invoke-virtual {v11}, Lcom/alibaba/alimei/restfulapi/spi/FileWrapper;->getFileName()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v11, Lcom/alibaba/alimei/restfulapi/spi/FileWrapper;->inputStream:Ljava/io/InputStream;

    iget-object v8, v11, Lcom/alibaba/alimei/restfulapi/spi/FileWrapper;->contentType:Ljava/lang/String;

    invoke-virtual/range {v4 .. v9}, Lcom/alibaba/alimei/restfulapi/spi/http/entity/SimpleMultipartEntity;->addPart(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Z)V

    .line 198
    .end local v9    # "isLast":Z
    :cond_2
    :goto_3
    add-int/lit8 v10, v10, 0x1

    .line 199
    goto :goto_1

    .line 191
    :cond_3
    const/4 v9, 0x0

    goto :goto_2

    .line 195
    .restart local v9    # "isLast":Z
    :cond_4
    invoke-virtual {v11}, Lcom/alibaba/alimei/restfulapi/spi/FileWrapper;->getFileName()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v11, Lcom/alibaba/alimei/restfulapi/spi/FileWrapper;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v4, v5, v6, v7, v9}, Lcom/alibaba/alimei/restfulapi/spi/http/entity/SimpleMultipartEntity;->addPart(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Z)V

    goto :goto_3

    .line 201
    .end local v5    # "keyName":Ljava/lang/String;
    .end local v9    # "isLast":Z
    .end local v11    # "file":Lcom/alibaba/alimei/restfulapi/spi/FileWrapper;
    :cond_5
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 202
    .local v17, "result":Ljava/lang/String;
    invoke-static {}, Lcom/alibaba/alimei/restfulapi/support/ARFLogger;->isLogI()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 203
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "buildMultipartHttpPost host url--->> "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/alibaba/alimei/restfulapi/support/ARFLogger;->i(Ljava/lang/String;)I

    .line 205
    :cond_6
    new-instance v16, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct/range {v16 .. v17}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 206
    .local v16, "post":Lorg/apache/http/client/methods/HttpPost;
    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 207
    return-object v16
.end method

.method public buildWebmailHttpPost(Ljava/lang/String;Lcom/alibaba/alimei/restfulapi/spi/http/HttpClientFactory;Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;)Lorg/apache/http/client/methods/HttpPost;
    .locals 7
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "clientFactory"    # Lcom/alibaba/alimei/restfulapi/spi/http/HttpClientFactory;
    .param p3, "mOpenApiMethods"    # Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;
    .param p4, "request"    # Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 131
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 134
    .local v4, "sb":Ljava/lang/StringBuilder;
    invoke-static {p1, p2, v4, p3}, Lcom/alibaba/alimei/restfulapi/spi/http/HttpRequestBuilderHelper;->handleHostPrefix(Ljava/lang/String;Lcom/alibaba/alimei/restfulapi/spi/http/HttpClientFactory;Ljava/lang/StringBuilder;Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;)V

    .line 136
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 137
    .local v3, "result":Ljava/lang/String;
    invoke-static {}, Lcom/alibaba/alimei/restfulapi/support/ARFLogger;->isLogI()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 138
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "buildWebmailHttpPost final url--->> "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/alibaba/alimei/restfulapi/support/ARFLogger;->i(Ljava/lang/String;)I

    .line 140
    :cond_0
    new-instance v2, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v2, v3}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 141
    .local v2, "post":Lorg/apache/http/client/methods/HttpPost;
    const-string/jumbo v5, "Accept"

    const-string/jumbo v6, "application/json"

    invoke-virtual {v2, v5, v6}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    invoke-virtual {p4}, Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;->buildRequestNameValuePairs()Ljava/util/List;

    move-result-object v1

    .line 145
    .local v1, "pairs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    invoke-static {p3, v1}, Lcom/alibaba/alimei/restfulapi/spi/http/HttpRequestBuilderHelper;->newSign(Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;Ljava/util/List;)V

    .line 148
    new-instance v0, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    invoke-static {}, Lcom/alibaba/alimei/restfulapi/support/Settings;->getDefaultCharset()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v1, v5}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 149
    .local v0, "formEntity":Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    invoke-static {}, Lcom/alibaba/alimei/restfulapi/support/ARFLogger;->isLogI()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 150
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "buildHttpPost formEntity NameValuePairs--->> "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/alibaba/alimei/restfulapi/support/ARFLogger;->i(Ljava/lang/String;)I

    .line 152
    :cond_1
    invoke-virtual {v2, v0}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 153
    return-object v2
.end method
