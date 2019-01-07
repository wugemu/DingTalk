.class public Lcom/alibaba/alimei/restfulapi/parser/UpdateOrRemoveTagParser;
.super Lcom/alibaba/alimei/restfulapi/parser/HttpResponseParser;
.source "UpdateOrRemoveTagParser.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/alimei/restfulapi/parser/HttpResponseParser",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field public static final parser:Lcom/alibaba/alimei/restfulapi/parser/UpdateOrRemoveTagParser;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    new-instance v0, Lcom/alibaba/alimei/restfulapi/parser/UpdateOrRemoveTagParser;

    invoke-direct {v0}, Lcom/alibaba/alimei/restfulapi/parser/UpdateOrRemoveTagParser;-><init>()V

    sput-object v0, Lcom/alibaba/alimei/restfulapi/parser/UpdateOrRemoveTagParser;->parser:Lcom/alibaba/alimei/restfulapi/parser/UpdateOrRemoveTagParser;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alibaba/alimei/restfulapi/parser/HttpResponseParser;-><init>(Z)V

    .line 26
    return-void
.end method


# virtual methods
.method public handleHttpResponseAsText(Ljava/lang/String;Ljava/lang/Object;Lcom/alibaba/alimei/restfulapi/support/TypeInfo;)Ljava/lang/Boolean;
    .locals 9
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

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 42
    new-instance v1, Lcom/google/gson/JsonParser;

    invoke-direct {v1}, Lcom/google/gson/JsonParser;-><init>()V

    .line 43
    .local v1, "parser":Lcom/google/gson/JsonParser;
    invoke-virtual {v1, p1}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    .line 44
    .local v0, "element":Lcom/google/gson/JsonElement;
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->isJsonObject()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 45
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v4

    .line 46
    .local v4, "resultOject":Lcom/google/gson/JsonObject;
    const-string/jumbo v6, "resultCode"

    invoke-virtual {v4, v6}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v2

    .line 47
    .local v2, "resultCode":I
    const/16 v6, 0xc8

    if-ne v6, v2, :cond_0

    .line 48
    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    return-object v6

    .line 51
    :cond_0
    const-string/jumbo v3, ""

    .line 52
    .local v3, "resultMsg":Ljava/lang/String;
    const-string/jumbo v6, "resultMsg"

    invoke-virtual {v4, v6}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 53
    const-string/jumbo v6, "resultMsg"

    invoke-virtual {v4, v6}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v3

    .line 55
    :cond_1
    new-instance v5, Lcom/alibaba/alimei/restfulapi/exception/ServiceException;

    invoke-direct {v5, v2, v3}, Lcom/alibaba/alimei/restfulapi/exception/ServiceException;-><init>(ILjava/lang/String;)V

    .line 56
    .local v5, "serviceException":Lcom/alibaba/alimei/restfulapi/exception/ServiceException;
    invoke-static {v4}, Lcom/alibaba/alimei/restfulapi/parser/UpdateOrRemoveTagParser;->parseErrorData(Lcom/google/gson/JsonObject;)Lcom/alibaba/alimei/restfulapi/response/data/ErrorData;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/alibaba/alimei/restfulapi/exception/ServiceException;->setErrorData(Lcom/alibaba/alimei/restfulapi/response/data/ErrorData;)V

    .line 57
    throw v5

    .line 60
    .end local v2    # "resultCode":I
    .end local v3    # "resultMsg":Ljava/lang/String;
    .end local v4    # "resultOject":Lcom/google/gson/JsonObject;
    .end local v5    # "serviceException":Lcom/alibaba/alimei/restfulapi/exception/ServiceException;
    :cond_2
    new-instance v6, Lcom/alibaba/alimei/restfulapi/exception/ServiceException;

    const/4 v7, 0x0

    const-string/jumbo v8, "error type returned from server"

    invoke-direct {v6, v7, v8}, Lcom/alibaba/alimei/restfulapi/exception/ServiceException;-><init>(ILjava/lang/String;)V

    throw v6
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
    .line 20
    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/alimei/restfulapi/parser/UpdateOrRemoveTagParser;->handleHttpResponseAsText(Ljava/lang/String;Ljava/lang/Object;Lcom/alibaba/alimei/restfulapi/support/TypeInfo;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public handleHttpResponseIncludeStatus(Lkne;Ljava/lang/Object;Lcom/alibaba/alimei/restfulapi/support/TypeInfo;)Ljava/lang/Boolean;
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
    .line 36
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

.method public handleHttpResponseIncludeStatus(Lorg/apache/http/HttpResponse;Ljava/lang/Object;Lcom/alibaba/alimei/restfulapi/support/TypeInfo;)Ljava/lang/Boolean;
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
    .line 30
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
    .line 20
    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/alimei/restfulapi/parser/UpdateOrRemoveTagParser;->handleHttpResponseIncludeStatus(Lkne;Ljava/lang/Object;Lcom/alibaba/alimei/restfulapi/support/TypeInfo;)Ljava/lang/Boolean;

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
    .line 20
    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/alimei/restfulapi/parser/UpdateOrRemoveTagParser;->handleHttpResponseIncludeStatus(Lorg/apache/http/HttpResponse;Ljava/lang/Object;Lcom/alibaba/alimei/restfulapi/support/TypeInfo;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
