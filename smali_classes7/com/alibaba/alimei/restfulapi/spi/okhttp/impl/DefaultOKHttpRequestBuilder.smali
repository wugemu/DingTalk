.class public Lcom/alibaba/alimei/restfulapi/spi/okhttp/impl/DefaultOKHttpRequestBuilder;
.super Ljava/lang/Object;
.source "DefaultOKHttpRequestBuilder.java"

# interfaces
.implements Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpRequestBuilder;


# static fields
.field public static final GET:Ljava/lang/String; = "GET"

.field public static final MARK_A:Ljava/lang/String; = "&"

.field public static final MARK_E:Ljava/lang/String; = "="

.field public static final MARK_Q:Ljava/lang/String; = "?"

.field public static final MARK_S:Ljava/lang/String; = "/"

.field public static final POST:Ljava/lang/String; = "POST"

.field private static final TAG:Ljava/lang/String; = "DefaultOKHttpRequestBuilder"

.field public static final defaultBuilder:Lcom/alibaba/alimei/restfulapi/spi/okhttp/impl/DefaultOKHttpRequestBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    new-instance v0, Lcom/alibaba/alimei/restfulapi/spi/okhttp/impl/DefaultOKHttpRequestBuilder;

    invoke-direct {v0}, Lcom/alibaba/alimei/restfulapi/spi/okhttp/impl/DefaultOKHttpRequestBuilder;-><init>()V

    sput-object v0, Lcom/alibaba/alimei/restfulapi/spi/okhttp/impl/DefaultOKHttpRequestBuilder;->defaultBuilder:Lcom/alibaba/alimei/restfulapi/spi/okhttp/impl/DefaultOKHttpRequestBuilder;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    return-void
.end method


# virtual methods
.method public buildHttpGetUrl(Ljava/lang/String;Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpFactory;Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;)Ljava/lang/String;
    .locals 10
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "httpFactory"    # Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpFactory;
    .param p3, "openApiMethods"    # Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;
    .param p4, "request"    # Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 54
    if-nez p4, :cond_0

    .line 55
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "illegal argument for serviceRequest is null"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 57
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    .local v3, "sb":Ljava/lang/StringBuilder;
    invoke-static {p1, p2, v3, p3}, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpRequestBuilderHelper;->handleHostPrefix(Ljava/lang/String;Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpFactory;Ljava/lang/StringBuilder;Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;)V

    .line 61
    invoke-virtual {p4}, Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;->buildRequestNameValuePairs()Ljava/util/List;

    move-result-object v2

    .line 63
    .local v2, "pairs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    invoke-static {p3, p4, v2}, Lcom/alibaba/alimei/restfulapi/spi/http/HttpRequestBuilderHelper;->addNameAndVer(Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;Ljava/util/List;)V

    .line 64
    invoke-static {p3, v2}, Lcom/alibaba/alimei/restfulapi/spi/http/HttpRequestBuilderHelper;->sign(Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;Ljava/util/List;)V

    .line 66
    if-eqz v2, :cond_5

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_5

    .line 67
    const-string/jumbo v5, "?"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    const/4 v0, 0x0

    .line 69
    .local v0, "hasAdd":Z
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/http/NameValuePair;

    .line 70
    .local v1, "pair":Lorg/apache/http/NameValuePair;
    if-eqz v1, :cond_1

    .line 74
    invoke-interface {v1}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    const-string/jumbo v6, "="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    invoke-interface {v1}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 77
    invoke-interface {v1}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/alibaba/alimei/restfulapi/support/Settings;->getDefaultCharset()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 78
    .local v4, "value":Ljava/lang/String;
    if-nez v4, :cond_2

    .line 79
    const-string/jumbo v6, "DefaultOKHttpRequestBuilder"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string/jumbo v9, "error param for url: "

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v7}, Lcom/alibaba/alimei/restfulapi/utils/StringUtils;->getAppendString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/alibaba/alimei/restfulapi/support/RFTraceUtils;->trace(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 82
    :cond_2
    const-string/jumbo v6, "+"

    const-string/jumbo v7, "%20"

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 83
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .end local v4    # "value":Ljava/lang/String;
    :cond_3
    const-string/jumbo v6, "&"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    const/4 v0, 0x1

    .line 87
    goto :goto_0

    .line 88
    .end local v1    # "pair":Lorg/apache/http/NameValuePair;
    :cond_4
    if-eqz v0, :cond_5

    .line 89
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 93
    .end local v0    # "hasAdd":Z
    :cond_5
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public buildHttpPost(Ljava/lang/String;Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpFactory;Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;)Lknc;
    .locals 14
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "httpFactory"    # Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpFactory;
    .param p3, "openApiMethods"    # Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;
    .param p4, "serviceRequest"    # Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 98
    if-nez p4, :cond_0

    .line 99
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v10, "illegal argument for serviceRequest is null"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 101
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 102
    .local v7, "sb":Ljava/lang/StringBuilder;
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-static {p1, v0, v7, v1}, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpRequestBuilderHelper;->handleHostPrefix(Ljava/lang/String;Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpFactory;Ljava/lang/StringBuilder;Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;)V

    .line 105
    invoke-virtual/range {p4 .. p4}, Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;->buildRequestNameValuePairs()Ljava/util/List;

    move-result-object v5

    .line 107
    .local v5, "pairs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-static {v0, v1, v5}, Lcom/alibaba/alimei/restfulapi/spi/http/HttpRequestBuilderHelper;->addNameAndVer(Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;Ljava/util/List;)V

    .line 108
    move-object/from16 v0, p3

    invoke-static {v0, v5}, Lcom/alibaba/alimei/restfulapi/spi/http/HttpRequestBuilderHelper;->sign(Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;Ljava/util/List;)V

    .line 110
    new-instance v6, Lknc$a;

    invoke-direct {v6}, Lknc$a;-><init>()V

    .line 111
    .local v6, "reqBuilder":Lknc$a;
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Lknc$a;->a(Ljava/lang/String;)Lknc$a;

    .line 113
    if-eqz v5, :cond_5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_5

    .line 114
    new-instance v2, Lkmt$a;

    invoke-direct {v2}, Lkmt$a;-><init>()V

    .line 115
    .local v2, "bodyBuilder":Lkmt$a;
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_1
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/http/NameValuePair;

    .line 116
    .local v4, "pair":Lorg/apache/http/NameValuePair;
    if-eqz v4, :cond_1

    .line 119
    invoke-interface {v4}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v3

    .line 120
    .local v3, "name":Ljava/lang/String;
    invoke-interface {v4}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v8

    .line 121
    .local v8, "value":Ljava/lang/String;
    if-nez v3, :cond_2

    .line 122
    const-string/jumbo v10, "DefaultOKHttpRequestBuilder"

    const-string/jumbo v11, "buildHttpPost name is null"

    invoke-static {v10, v11}, Lcom/alibaba/alimei/restfulapi/support/RFTraceUtils;->trace(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 126
    :cond_2
    if-nez v8, :cond_3

    .line 127
    const-string/jumbo v10, "DefaultOKHttpRequestBuilder"

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    const-string/jumbo v13, "buildHttpPost name: "

    aput-object v13, v11, v12

    const/4 v12, 0x1

    aput-object v3, v11, v12

    const/4 v12, 0x2

    const-string/jumbo v13, ", value is null: "

    aput-object v13, v11, v12

    invoke-static {v11}, Lcom/alibaba/alimei/restfulapi/utils/StringUtils;->getAppendString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/alibaba/alimei/restfulapi/support/RFTraceUtils;->trace(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 131
    :cond_3
    invoke-virtual {v2, v3, v8}, Lkmt$a;->a(Ljava/lang/String;Ljava/lang/String;)Lkmt$a;

    goto :goto_0

    .line 134
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "pair":Lorg/apache/http/NameValuePair;
    .end local v8    # "value":Ljava/lang/String;
    :cond_4
    const-string/jumbo v9, "POST"

    invoke-virtual {v2}, Lkmt$a;->a()Lkmt;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Lknc$a;->a(Ljava/lang/String;Lknd;)Lknc$a;

    .line 137
    .end local v2    # "bodyBuilder":Lkmt$a;
    :cond_5
    invoke-virtual {v6}, Lknc$a;->a()Lknc;

    move-result-object v9

    return-object v9
.end method

.method public buildHttpPostWithFile(Ljava/lang/String;Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpFactory;Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;Ljava/util/Map;Lcom/alibaba/alimei/restfulapi/spi/http/entity/listener/OnProgressListener;)Lknc;
    .locals 19
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "httpFactory"    # Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpFactory;
    .param p3, "openApiMethods"    # Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;
    .param p4, "serviceRequest"    # Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;
    .param p6, "listener"    # Lcom/alibaba/alimei/restfulapi/spi/http/entity/listener/OnProgressListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpFactory;",
            "Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;",
            "Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/alimei/restfulapi/spi/FileWrapper;",
            ">;",
            "Lcom/alibaba/alimei/restfulapi/spi/http/entity/listener/OnProgressListener;",
            ")",
            "Lknc;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 142
    .local p5, "files":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/alimei/restfulapi/spi/FileWrapper;>;"
    if-nez p4, :cond_0

    .line 143
    new-instance v14, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v15, "illegal argument for serviceRequest is null"

    invoke-direct {v14, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 145
    :cond_0
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 146
    .local v12, "sb":Ljava/lang/StringBuilder;
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-static {v0, v1, v12, v2}, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpRequestBuilderHelper;->handleHostPrefix(Ljava/lang/String;Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpFactory;Ljava/lang/StringBuilder;Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;)V

    .line 149
    invoke-virtual/range {p4 .. p4}, Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;->buildRequestNameValuePairs()Ljava/util/List;

    move-result-object v9

    .line 151
    .local v9, "pairs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-static {v0, v1, v9}, Lcom/alibaba/alimei/restfulapi/spi/http/HttpRequestBuilderHelper;->addNameAndVer(Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;Ljava/util/List;)V

    .line 152
    move-object/from16 v0, p3

    invoke-static {v0, v9}, Lcom/alibaba/alimei/restfulapi/spi/http/HttpRequestBuilderHelper;->sign(Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;Ljava/util/List;)V

    .line 154
    if-eqz v9, :cond_3

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_3

    .line 155
    const-string/jumbo v14, "?"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_1
    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_3

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/http/NameValuePair;

    .line 157
    .local v8, "pair":Lorg/apache/http/NameValuePair;
    if-eqz v8, :cond_1

    .line 161
    invoke-interface {v8}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    const-string/jumbo v15, "="

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    invoke-interface {v8}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_1

    .line 164
    invoke-interface {v8}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v15

    invoke-static {}, Lcom/alibaba/alimei/restfulapi/support/Settings;->getDefaultCharset()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 165
    .local v13, "value":Ljava/lang/String;
    if-nez v13, :cond_2

    .line 166
    const-string/jumbo v15, "DefaultOKHttpRequestBuilder"

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const-string/jumbo v18, "error param for url: "

    aput-object v18, v16, v17

    const/16 v17, 0x1

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-static/range {v16 .. v16}, Lcom/alibaba/alimei/restfulapi/utils/StringUtils;->getAppendString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/alibaba/alimei/restfulapi/support/RFTraceUtils;->trace(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 169
    :cond_2
    const-string/jumbo v15, "+"

    const-string/jumbo v16, "%20"

    move-object/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v13

    .line 170
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 175
    .end local v8    # "pair":Lorg/apache/http/NameValuePair;
    .end local v13    # "value":Ljava/lang/String;
    :cond_3
    new-instance v11, Lknc$a;

    invoke-direct {v11}, Lknc$a;-><init>()V

    .line 176
    .local v11, "reqBuilder":Lknc$a;
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Lknc$a;->a(Ljava/lang/String;)Lknc$a;

    .line 178
    if-eqz p5, :cond_6

    invoke-interface/range {p5 .. p5}, Ljava/util/Map;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_6

    .line 179
    invoke-interface/range {p5 .. p5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 180
    .local v5, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/alibaba/alimei/restfulapi/spi/FileWrapper;>;>;"
    new-instance v6, Lkmz$a;

    invoke-direct {v6}, Lkmz$a;-><init>()V

    .line 181
    .local v6, "mulBuilder":Lkmz$a;
    sget-object v14, Lkmz;->e:Lkmy;

    invoke-virtual {v6, v14}, Lkmz$a;->a(Lkmy;)Lkmz$a;

    .line 182
    :cond_4
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_5

    .line 183
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 184
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/alibaba/alimei/restfulapi/spi/FileWrapper;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 185
    .local v7, "name":Ljava/lang/String;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/alimei/restfulapi/spi/FileWrapper;

    .line 186
    .local v4, "fileWrapper":Lcom/alibaba/alimei/restfulapi/spi/FileWrapper;
    if-eqz v4, :cond_4

    .line 189
    new-instance v10, Lcom/alibaba/alimei/restfulapi/spi/okhttp/entity/InputStreamRequestBody;

    iget-object v14, v4, Lcom/alibaba/alimei/restfulapi/spi/FileWrapper;->inputStream:Ljava/io/InputStream;

    move-object/from16 v0, p6

    invoke-direct {v10, v14, v0}, Lcom/alibaba/alimei/restfulapi/spi/okhttp/entity/InputStreamRequestBody;-><init>(Ljava/io/InputStream;Lcom/alibaba/alimei/restfulapi/spi/http/entity/listener/OnProgressListener;)V

    .line 190
    .local v10, "reqBody":Lcom/alibaba/alimei/restfulapi/spi/okhttp/entity/InputStreamRequestBody;
    invoke-virtual {v4}, Lcom/alibaba/alimei/restfulapi/spi/FileWrapper;->getFileName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v6, v7, v14, v10}, Lkmz$a;->a(Ljava/lang/String;Ljava/lang/String;Lknd;)Lkmz$a;

    goto :goto_1

    .line 192
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/alibaba/alimei/restfulapi/spi/FileWrapper;>;"
    .end local v4    # "fileWrapper":Lcom/alibaba/alimei/restfulapi/spi/FileWrapper;
    .end local v7    # "name":Ljava/lang/String;
    .end local v10    # "reqBody":Lcom/alibaba/alimei/restfulapi/spi/okhttp/entity/InputStreamRequestBody;
    :cond_5
    const-string/jumbo v14, "POST"

    invoke-virtual {v6}, Lkmz$a;->a()Lkmz;

    move-result-object v15

    invoke-virtual {v11, v14, v15}, Lknc$a;->a(Ljava/lang/String;Lknd;)Lknc$a;

    .line 195
    .end local v5    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/alibaba/alimei/restfulapi/spi/FileWrapper;>;>;"
    .end local v6    # "mulBuilder":Lkmz$a;
    :cond_6
    invoke-virtual {v11}, Lknc$a;->a()Lknc;

    move-result-object v14

    return-object v14
.end method

.method public buildHttpPostWithFile2(Ljava/lang/String;Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpFactory;Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;Ljava/util/Map;Lcom/alibaba/alimei/restfulapi/spi/http/entity/listener/OnProgressListener;)Lknc;
    .locals 19
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "httpFactory"    # Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpFactory;
    .param p3, "openApiMethods"    # Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;
    .param p4, "serviceRequest"    # Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;
    .param p6, "listener"    # Lcom/alibaba/alimei/restfulapi/spi/http/entity/listener/OnProgressListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpFactory;",
            "Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;",
            "Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;",
            "Lcom/alibaba/alimei/restfulapi/spi/http/entity/listener/OnProgressListener;",
            ")",
            "Lknc;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 200
    .local p5, "files":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/io/File;>;"
    if-nez p4, :cond_0

    .line 201
    new-instance v14, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v15, "illegal argument for serviceRequest is null"

    invoke-direct {v14, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 203
    :cond_0
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 204
    .local v12, "sb":Ljava/lang/StringBuilder;
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-static {v0, v1, v12, v2}, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpRequestBuilderHelper;->handleHostPrefix(Ljava/lang/String;Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpFactory;Ljava/lang/StringBuilder;Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;)V

    .line 207
    invoke-virtual/range {p4 .. p4}, Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;->buildRequestNameValuePairs()Ljava/util/List;

    move-result-object v9

    .line 209
    .local v9, "pairs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-static {v0, v1, v9}, Lcom/alibaba/alimei/restfulapi/spi/http/HttpRequestBuilderHelper;->addNameAndVer(Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;Ljava/util/List;)V

    .line 210
    move-object/from16 v0, p3

    invoke-static {v0, v9}, Lcom/alibaba/alimei/restfulapi/spi/http/HttpRequestBuilderHelper;->sign(Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;Ljava/util/List;)V

    .line 212
    if-eqz v9, :cond_3

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_3

    .line 213
    const-string/jumbo v14, "?"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_1
    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_3

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/http/NameValuePair;

    .line 215
    .local v8, "pair":Lorg/apache/http/NameValuePair;
    if-eqz v8, :cond_1

    .line 219
    invoke-interface {v8}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    const-string/jumbo v15, "="

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    invoke-interface {v8}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_1

    .line 222
    invoke-interface {v8}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v15

    invoke-static {}, Lcom/alibaba/alimei/restfulapi/support/Settings;->getDefaultCharset()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 223
    .local v13, "value":Ljava/lang/String;
    if-nez v13, :cond_2

    .line 224
    const-string/jumbo v15, "DefaultOKHttpRequestBuilder"

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const-string/jumbo v18, "error param for url: "

    aput-object v18, v16, v17

    const/16 v17, 0x1

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-static/range {v16 .. v16}, Lcom/alibaba/alimei/restfulapi/utils/StringUtils;->getAppendString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/alibaba/alimei/restfulapi/support/RFTraceUtils;->trace(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 227
    :cond_2
    const-string/jumbo v15, "+"

    const-string/jumbo v16, "%20"

    move-object/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v13

    .line 228
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 233
    .end local v8    # "pair":Lorg/apache/http/NameValuePair;
    .end local v13    # "value":Ljava/lang/String;
    :cond_3
    new-instance v11, Lknc$a;

    invoke-direct {v11}, Lknc$a;-><init>()V

    .line 234
    .local v11, "reqBuilder":Lknc$a;
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Lknc$a;->a(Ljava/lang/String;)Lknc$a;

    .line 236
    if-eqz p5, :cond_6

    invoke-interface/range {p5 .. p5}, Ljava/util/Map;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_6

    .line 237
    invoke-interface/range {p5 .. p5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 238
    .local v5, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/io/File;>;>;"
    new-instance v6, Lkmz$a;

    invoke-direct {v6}, Lkmz$a;-><init>()V

    .line 239
    .local v6, "mulBuilder":Lkmz$a;
    sget-object v14, Lkmz;->e:Lkmy;

    invoke-virtual {v6, v14}, Lkmz$a;->a(Lkmy;)Lkmz$a;

    .line 240
    :cond_4
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_5

    .line 241
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 242
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/io/File;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 243
    .local v7, "name":Ljava/lang/String;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/File;

    .line 244
    .local v4, "file":Ljava/io/File;
    if-eqz v4, :cond_4

    .line 247
    new-instance v10, Lcom/alibaba/alimei/restfulapi/spi/okhttp/entity/FileRequestBody;

    move-object/from16 v0, p6

    invoke-direct {v10, v4, v0}, Lcom/alibaba/alimei/restfulapi/spi/okhttp/entity/FileRequestBody;-><init>(Ljava/io/File;Lcom/alibaba/alimei/restfulapi/spi/http/entity/listener/OnProgressListener;)V

    .line 248
    .local v10, "reqBody":Lcom/alibaba/alimei/restfulapi/spi/okhttp/entity/FileRequestBody;
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v6, v7, v14, v10}, Lkmz$a;->a(Ljava/lang/String;Ljava/lang/String;Lknd;)Lkmz$a;

    goto :goto_1

    .line 250
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/io/File;>;"
    .end local v4    # "file":Ljava/io/File;
    .end local v7    # "name":Ljava/lang/String;
    .end local v10    # "reqBody":Lcom/alibaba/alimei/restfulapi/spi/okhttp/entity/FileRequestBody;
    :cond_5
    const-string/jumbo v14, "POST"

    invoke-virtual {v6}, Lkmz$a;->a()Lkmz;

    move-result-object v15

    invoke-virtual {v11, v14, v15}, Lknc$a;->a(Ljava/lang/String;Lknd;)Lknc$a;

    .line 253
    .end local v5    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/io/File;>;>;"
    .end local v6    # "mulBuilder":Lkmz$a;
    :cond_6
    invoke-virtual {v11}, Lknc$a;->a()Lknc;

    move-result-object v14

    return-object v14
.end method

.method public buildWebmailHttpPost(Ljava/lang/String;Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpFactory;Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;)Lknc;
    .locals 9
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "okHttpFactory"    # Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpFactory;
    .param p3, "openApiMethods"    # Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;
    .param p4, "serviceRequest"    # Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 258
    if-nez p4, :cond_0

    .line 259
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v7, "illegal argument for serviceRequest is null"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 261
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 262
    .local v4, "sb":Ljava/lang/StringBuilder;
    invoke-static {p1, p2, v4, p3}, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpRequestBuilderHelper;->handleHostPrefix(Ljava/lang/String;Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpFactory;Ljava/lang/StringBuilder;Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;)V

    .line 264
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 265
    .local v5, "url":Ljava/lang/String;
    invoke-static {}, Lcom/alibaba/alimei/restfulapi/support/ARFLogger;->isLogI()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 266
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "buildWebmailHttpPost final url--->> "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/alibaba/alimei/restfulapi/support/ARFLogger;->i(Ljava/lang/String;)I

    .line 268
    :cond_1
    new-instance v3, Lknc$a;

    invoke-direct {v3}, Lknc$a;-><init>()V

    .line 269
    .local v3, "reqBuilder":Lknc$a;
    invoke-virtual {v3, v5}, Lknc$a;->a(Ljava/lang/String;)Lknc$a;

    .line 270
    const-string/jumbo v6, "Accept"

    const-string/jumbo v7, "application/json"

    invoke-virtual {v3, v6, v7}, Lknc$a;->b(Ljava/lang/String;Ljava/lang/String;)Lknc$a;

    .line 272
    invoke-virtual {p4}, Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;->buildRequestNameValuePairs()Ljava/util/List;

    move-result-object v2

    .line 274
    .local v2, "pairs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    invoke-static {p3, v2}, Lcom/alibaba/alimei/restfulapi/spi/http/HttpRequestBuilderHelper;->newSign(Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;Ljava/util/List;)V

    .line 276
    if-eqz v2, :cond_4

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_4

    .line 277
    new-instance v0, Lkmt$a;

    invoke-direct {v0}, Lkmt$a;-><init>()V

    .line 278
    .local v0, "bodyBuilder":Lkmt$a;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/http/NameValuePair;

    .line 279
    .local v1, "pair":Lorg/apache/http/NameValuePair;
    if-eqz v1, :cond_2

    .line 282
    invoke-interface {v1}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Lkmt$a;->a(Ljava/lang/String;Ljava/lang/String;)Lkmt$a;

    goto :goto_0

    .line 285
    .end local v1    # "pair":Lorg/apache/http/NameValuePair;
    :cond_3
    const-string/jumbo v6, "POST"

    invoke-virtual {v0}, Lkmt$a;->a()Lkmt;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lknc$a;->a(Ljava/lang/String;Lknd;)Lknc$a;

    .line 288
    .end local v0    # "bodyBuilder":Lkmt$a;
    :cond_4
    invoke-virtual {v3}, Lknc$a;->a()Lknc;

    move-result-object v6

    return-object v6
.end method
