.class public Lcom/alibaba/alimei/restfulapi/parser/WebmailHttpResponseParser;
.super Lcom/alibaba/alimei/restfulapi/parser/TextHttpResponseParser;
.source "WebmailHttpResponseParser.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/alibaba/alimei/restfulapi/parser/TextHttpResponseParser",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    .local p0, "this":Lcom/alibaba/alimei/restfulapi/parser/WebmailHttpResponseParser;, "Lcom/alibaba/alimei/restfulapi/parser/WebmailHttpResponseParser<TT;>;"
    invoke-direct {p0}, Lcom/alibaba/alimei/restfulapi/parser/TextHttpResponseParser;-><init>()V

    return-void
.end method


# virtual methods
.method public handleHttpResponseAsText(Ljava/lang/String;Ljava/lang/Object;Lcom/alibaba/alimei/restfulapi/support/TypeInfo;)Ljava/lang/Object;
    .locals 12
    .param p1, "responseContent"    # Ljava/lang/String;
    .param p2, "requestReference"    # Ljava/lang/Object;
    .param p3, "typeInfo"    # Lcom/alibaba/alimei/restfulapi/support/TypeInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Lcom/alibaba/alimei/restfulapi/support/TypeInfo;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/alimei/restfulapi/exception/ServiceException;,
            Lcom/alibaba/alimei/restfulapi/exception/NetworkException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 27
    .local p0, "this":Lcom/alibaba/alimei/restfulapi/parser/WebmailHttpResponseParser;, "Lcom/alibaba/alimei/restfulapi/parser/WebmailHttpResponseParser<TT;>;"
    new-instance v5, Lcom/google/gson/JsonParser;

    invoke-direct {v5}, Lcom/google/gson/JsonParser;-><init>()V

    .line 28
    .local v5, "parser":Lcom/google/gson/JsonParser;
    invoke-virtual {v5, p1}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    .line 29
    .local v2, "element":Lcom/google/gson/JsonElement;
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v4

    .line 30
    .local v4, "object":Lcom/google/gson/JsonObject;
    const-string/jumbo v10, "resultCode"

    invoke-virtual {v4, v10}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 31
    const-string/jumbo v10, "resultCode"

    invoke-virtual {v4, v10}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/gson/JsonElement;->getAsJsonPrimitive()Lcom/google/gson/JsonPrimitive;

    move-result-object v0

    .line 33
    .local v0, "code":Lcom/google/gson/JsonPrimitive;
    const/4 v7, 0x0

    .line 34
    .local v7, "resultCode":I
    invoke-virtual {v0}, Lcom/google/gson/JsonPrimitive;->isNumber()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 35
    invoke-virtual {v0}, Lcom/google/gson/JsonPrimitive;->getAsInt()I

    move-result v7

    .line 45
    :cond_0
    :goto_0
    const/16 v10, 0xc8

    if-ne v10, v7, :cond_5

    .line 47
    const-class v10, Lcom/alibaba/alimei/restfulapi/service/RpcCallback$Void;

    invoke-virtual {p3}, Lcom/alibaba/alimei/restfulapi/support/TypeInfo;->getRawType()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 48
    invoke-static {}, Lcom/alibaba/alimei/restfulapi/service/RpcCallback$Void;->instance()Lcom/alibaba/alimei/restfulapi/service/RpcCallback$Void;

    move-result-object v6

    .line 69
    .end local v0    # "code":Lcom/google/gson/JsonPrimitive;
    .end local v7    # "resultCode":I
    :cond_1
    :goto_1
    return-object v6

    .line 37
    .restart local v0    # "code":Lcom/google/gson/JsonPrimitive;
    .restart local v7    # "resultCode":I
    :cond_2
    invoke-virtual {v0}, Lcom/google/gson/JsonPrimitive;->getAsString()Ljava/lang/String;

    move-result-object v1

    .line 38
    .local v1, "codeStr":Ljava/lang/String;
    const-string/jumbo v10, "success"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 39
    const/16 v7, 0xc8

    goto :goto_0

    .line 40
    :cond_3
    const-string/jumbo v10, "RequestSignCheckFail"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 41
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    goto :goto_0

    .line 52
    .end local v1    # "codeStr":Ljava/lang/String;
    :cond_4
    invoke-virtual {p0, v4}, Lcom/alibaba/alimei/restfulapi/parser/WebmailHttpResponseParser;->onHandleResponseData(Lcom/google/gson/JsonElement;)Ljava/lang/Object;

    move-result-object v6

    .line 53
    .local v6, "result":Ljava/lang/Object;, "TT;"
    if-nez v6, :cond_1

    .line 57
    invoke-virtual {p0, v4, p3}, Lcom/alibaba/alimei/restfulapi/parser/WebmailHttpResponseParser;->handleResponseData(Lcom/google/gson/JsonElement;Lcom/alibaba/alimei/restfulapi/support/TypeInfo;)Ljava/lang/Object;

    move-result-object v6

    goto :goto_1

    .line 59
    .end local v6    # "result":Ljava/lang/Object;, "TT;"
    :cond_5
    const/4 v8, 0x0

    .line 60
    .local v8, "resultMsg":Ljava/lang/String;
    const-string/jumbo v10, "resultMsg"

    invoke-virtual {v4, v10}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 61
    const-string/jumbo v10, "resultMsg"

    invoke-virtual {v4, v10}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    .line 62
    .local v3, "msg":Lcom/google/gson/JsonElement;
    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v8

    .line 64
    .end local v3    # "msg":Lcom/google/gson/JsonElement;
    :cond_6
    new-instance v9, Lcom/alibaba/alimei/restfulapi/exception/ServiceException;

    invoke-direct {v9, v7, v8}, Lcom/alibaba/alimei/restfulapi/exception/ServiceException;-><init>(ILjava/lang/String;)V

    .line 65
    .local v9, "serviceException":Lcom/alibaba/alimei/restfulapi/exception/ServiceException;
    invoke-static {v4}, Lcom/alibaba/alimei/restfulapi/parser/WebmailHttpResponseParser;->parseErrorData(Lcom/google/gson/JsonObject;)Lcom/alibaba/alimei/restfulapi/response/data/ErrorData;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/alibaba/alimei/restfulapi/exception/ServiceException;->setErrorData(Lcom/alibaba/alimei/restfulapi/response/data/ErrorData;)V

    .line 66
    throw v9

    .line 69
    .end local v0    # "code":Lcom/google/gson/JsonPrimitive;
    .end local v7    # "resultCode":I
    .end local v8    # "resultMsg":Ljava/lang/String;
    .end local v9    # "serviceException":Lcom/alibaba/alimei/restfulapi/exception/ServiceException;
    :cond_7
    invoke-virtual {p0, v2, p3}, Lcom/alibaba/alimei/restfulapi/parser/WebmailHttpResponseParser;->handleResponseData(Lcom/google/gson/JsonElement;Lcom/alibaba/alimei/restfulapi/support/TypeInfo;)Ljava/lang/Object;

    move-result-object v6

    goto :goto_1
.end method
