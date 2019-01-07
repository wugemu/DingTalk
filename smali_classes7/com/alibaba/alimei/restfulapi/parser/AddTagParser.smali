.class public Lcom/alibaba/alimei/restfulapi/parser/AddTagParser;
.super Lcom/alibaba/alimei/restfulapi/parser/HttpResponseParser;
.source "AddTagParser.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/alimei/restfulapi/parser/HttpResponseParser",
        "<",
        "Lcom/alibaba/alimei/restfulapi/response/data/AddTagResult;",
        ">;"
    }
.end annotation


# static fields
.field public static final STATUS_1200:I = 0x4b0

.field public static final STATUS_2003:I = 0x7d3

.field public static parser:Lcom/alibaba/alimei/restfulapi/parser/AddTagParser;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    new-instance v0, Lcom/alibaba/alimei/restfulapi/parser/AddTagParser;

    invoke-direct {v0}, Lcom/alibaba/alimei/restfulapi/parser/AddTagParser;-><init>()V

    sput-object v0, Lcom/alibaba/alimei/restfulapi/parser/AddTagParser;->parser:Lcom/alibaba/alimei/restfulapi/parser/AddTagParser;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alibaba/alimei/restfulapi/parser/HttpResponseParser;-><init>(Z)V

    .line 32
    return-void
.end method


# virtual methods
.method public final ennableHandleResponseIncludeStatus(Z)V
    .locals 1
    .param p1, "status"    # Z

    .prologue
    .line 36
    const/4 v0, 0x0

    invoke-super {p0, v0}, Lcom/alibaba/alimei/restfulapi/parser/HttpResponseParser;->ennableHandleResponseIncludeStatus(Z)V

    .line 37
    return-void
.end method

.method public handleHttpResponseAsText(Ljava/lang/String;Ljava/lang/Object;Lcom/alibaba/alimei/restfulapi/support/TypeInfo;)Lcom/alibaba/alimei/restfulapi/response/data/AddTagResult;
    .locals 11
    .param p1, "responseContent"    # Ljava/lang/String;
    .param p2, "requestReference"    # Ljava/lang/Object;
    .param p3, "typeInfo"    # Lcom/alibaba/alimei/restfulapi/support/TypeInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/alimei/restfulapi/exception/ServiceException;,
            Lcom/alibaba/alimei/restfulapi/exception/NetworkException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 57
    new-instance v2, Lcom/google/gson/JsonParser;

    invoke-direct {v2}, Lcom/google/gson/JsonParser;-><init>()V

    .line 58
    .local v2, "parser":Lcom/google/gson/JsonParser;
    invoke-virtual {v2, p1}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    .line 59
    .local v1, "element":Lcom/google/gson/JsonElement;
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->isJsonObject()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 60
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v6

    .line 61
    .local v6, "resultOject":Lcom/google/gson/JsonObject;
    const-string/jumbo v8, "resultCode"

    invoke-virtual {v6, v8}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v4

    .line 62
    .local v4, "resultCode":I
    const/16 v8, 0xc8

    if-ne v8, v4, :cond_1

    .line 64
    const-string/jumbo v8, "data"

    invoke-virtual {v6, v8}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    .line 65
    .local v0, "dataElement":Lcom/google/gson/JsonElement;
    invoke-static {}, Lcom/alibaba/alimei/restfulapi/parser/AddTagParser;->gsonInstance()Lcom/google/gson/Gson;

    move-result-object v8

    const-class v9, Lcom/alibaba/alimei/restfulapi/response/data/AddTagResult;

    invoke-virtual {v8, v0, v9}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/alimei/restfulapi/response/data/AddTagResult;

    .line 67
    .local v3, "result":Lcom/alibaba/alimei/restfulapi/response/data/AddTagResult;
    if-eqz v3, :cond_0

    .line 70
    .end local v3    # "result":Lcom/alibaba/alimei/restfulapi/response/data/AddTagResult;
    :goto_0
    return-object v3

    .restart local v3    # "result":Lcom/alibaba/alimei/restfulapi/response/data/AddTagResult;
    :cond_0
    new-instance v3, Lcom/alibaba/alimei/restfulapi/response/data/AddTagResult;

    .end local v3    # "result":Lcom/alibaba/alimei/restfulapi/response/data/AddTagResult;
    invoke-direct {v3}, Lcom/alibaba/alimei/restfulapi/response/data/AddTagResult;-><init>()V

    goto :goto_0

    .line 74
    .end local v0    # "dataElement":Lcom/google/gson/JsonElement;
    :cond_1
    const-string/jumbo v5, ""

    .line 75
    .local v5, "resultMsg":Ljava/lang/String;
    const-string/jumbo v8, "resultMsg"

    invoke-virtual {v6, v8}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 76
    const-string/jumbo v8, "resultMsg"

    invoke-virtual {v6, v8}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v5

    .line 78
    :cond_2
    new-instance v7, Lcom/alibaba/alimei/restfulapi/exception/ServiceException;

    invoke-direct {v7, v4, v5}, Lcom/alibaba/alimei/restfulapi/exception/ServiceException;-><init>(ILjava/lang/String;)V

    .line 79
    .local v7, "serviceException":Lcom/alibaba/alimei/restfulapi/exception/ServiceException;
    invoke-static {v6}, Lcom/alibaba/alimei/restfulapi/parser/AddTagParser;->parseErrorData(Lcom/google/gson/JsonObject;)Lcom/alibaba/alimei/restfulapi/response/data/ErrorData;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/alibaba/alimei/restfulapi/exception/ServiceException;->setErrorData(Lcom/alibaba/alimei/restfulapi/response/data/ErrorData;)V

    .line 80
    throw v7

    .line 83
    .end local v4    # "resultCode":I
    .end local v5    # "resultMsg":Ljava/lang/String;
    .end local v6    # "resultOject":Lcom/google/gson/JsonObject;
    .end local v7    # "serviceException":Lcom/alibaba/alimei/restfulapi/exception/ServiceException;
    :cond_3
    new-instance v8, Lcom/alibaba/alimei/restfulapi/exception/ServiceException;

    const/4 v9, 0x0

    const-string/jumbo v10, "\u670d\u52a1\u5668\u7aef\u8fd4\u56de\u7684\u6570\u636e\u683c\u5f0f\u51fa\u9519"

    invoke-direct {v8, v9, v10}, Lcom/alibaba/alimei/restfulapi/exception/ServiceException;-><init>(ILjava/lang/String;)V

    throw v8
.end method

.method public bridge synthetic handleHttpResponseAsText(Ljava/lang/String;Ljava/lang/Object;Lcom/alibaba/alimei/restfulapi/support/TypeInfo;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/alimei/restfulapi/exception/ServiceException;,
            Lcom/alibaba/alimei/restfulapi/exception/NetworkException;
        }
    .end annotation

    .prologue
    .line 19
    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/alimei/restfulapi/parser/AddTagParser;->handleHttpResponseAsText(Ljava/lang/String;Ljava/lang/Object;Lcom/alibaba/alimei/restfulapi/support/TypeInfo;)Lcom/alibaba/alimei/restfulapi/response/data/AddTagResult;

    move-result-object v0

    return-object v0
.end method

.method public handleHttpResponseIncludeStatus(Lkne;Ljava/lang/Object;Lcom/alibaba/alimei/restfulapi/support/TypeInfo;)Lcom/alibaba/alimei/restfulapi/response/data/AddTagResult;
    .locals 3
    .param p1, "response"    # Lkne;
    .param p2, "requestResultReference"    # Ljava/lang/Object;
    .param p3, "typeInfo"    # Lcom/alibaba/alimei/restfulapi/support/TypeInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/alimei/restfulapi/exception/ServiceException;,
            Lcom/alibaba/alimei/restfulapi/exception/NetworkException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 49
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " do not support handleHttpResponseIncludeStatus"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public handleHttpResponseIncludeStatus(Lorg/apache/http/HttpResponse;Ljava/lang/Object;Lcom/alibaba/alimei/restfulapi/support/TypeInfo;)Lcom/alibaba/alimei/restfulapi/response/data/AddTagResult;
    .locals 3
    .param p1, "response"    # Lorg/apache/http/HttpResponse;
    .param p2, "requestResultReference"    # Ljava/lang/Object;
    .param p3, "typeInfo"    # Lcom/alibaba/alimei/restfulapi/support/TypeInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/alimei/restfulapi/exception/ServiceException;,
            Lcom/alibaba/alimei/restfulapi/exception/NetworkException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 43
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " do not support handleHttpResponseIncludeStatus"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic handleHttpResponseIncludeStatus(Lkne;Ljava/lang/Object;Lcom/alibaba/alimei/restfulapi/support/TypeInfo;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/alimei/restfulapi/exception/ServiceException;,
            Lcom/alibaba/alimei/restfulapi/exception/NetworkException;
        }
    .end annotation

    .prologue
    .line 19
    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/alimei/restfulapi/parser/AddTagParser;->handleHttpResponseIncludeStatus(Lkne;Ljava/lang/Object;Lcom/alibaba/alimei/restfulapi/support/TypeInfo;)Lcom/alibaba/alimei/restfulapi/response/data/AddTagResult;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic handleHttpResponseIncludeStatus(Lorg/apache/http/HttpResponse;Ljava/lang/Object;Lcom/alibaba/alimei/restfulapi/support/TypeInfo;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/alimei/restfulapi/exception/ServiceException;,
            Lcom/alibaba/alimei/restfulapi/exception/NetworkException;
        }
    .end annotation

    .prologue
    .line 19
    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/alimei/restfulapi/parser/AddTagParser;->handleHttpResponseIncludeStatus(Lorg/apache/http/HttpResponse;Ljava/lang/Object;Lcom/alibaba/alimei/restfulapi/support/TypeInfo;)Lcom/alibaba/alimei/restfulapi/response/data/AddTagResult;

    move-result-object v0

    return-object v0
.end method
