.class public abstract Lcom/alibaba/alimei/restfulapi/parser/itemsupdate/AbsItemsUpdateResponseParser;
.super Lcom/alibaba/alimei/restfulapi/parser/HttpResponseParser;
.source "AbsItemsUpdateResponseParser.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/alibaba/alimei/restfulapi/parser/HttpResponseParser",
        "<TT;>;"
    }
.end annotation


# static fields
.field public static final STATUS_1200:I = 0x4b0


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    .local p0, "this":Lcom/alibaba/alimei/restfulapi/parser/itemsupdate/AbsItemsUpdateResponseParser;, "Lcom/alibaba/alimei/restfulapi/parser/itemsupdate/AbsItemsUpdateResponseParser<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alibaba/alimei/restfulapi/parser/HttpResponseParser;-><init>(Z)V

    .line 29
    return-void
.end method


# virtual methods
.method public final ennableHandleResponseIncludeStatus(Z)V
    .locals 1
    .param p1, "status"    # Z

    .prologue
    .line 33
    .local p0, "this":Lcom/alibaba/alimei/restfulapi/parser/itemsupdate/AbsItemsUpdateResponseParser;, "Lcom/alibaba/alimei/restfulapi/parser/itemsupdate/AbsItemsUpdateResponseParser<TT;>;"
    const/4 v0, 0x0

    invoke-super {p0, v0}, Lcom/alibaba/alimei/restfulapi/parser/HttpResponseParser;->ennableHandleResponseIncludeStatus(Z)V

    .line 34
    return-void
.end method

.method protected abstract handleCalendarsResult(Ljava/lang/Object;Lcom/google/gson/JsonElement;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/gson/JsonElement;",
            ")V"
        }
    .end annotation
.end method

.method protected abstract handleContactsResult(Ljava/lang/Object;Lcom/google/gson/JsonElement;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/gson/JsonElement;",
            ")V"
        }
    .end annotation
.end method

.method public handleHttpResponseAsText(Ljava/lang/String;Ljava/lang/Object;Lcom/alibaba/alimei/restfulapi/support/TypeInfo;)Ljava/lang/Object;
    .locals 11
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

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 54
    .local p0, "this":Lcom/alibaba/alimei/restfulapi/parser/itemsupdate/AbsItemsUpdateResponseParser;, "Lcom/alibaba/alimei/restfulapi/parser/itemsupdate/AbsItemsUpdateResponseParser<TT;>;"
    new-instance v2, Lcom/google/gson/JsonParser;

    invoke-direct {v2}, Lcom/google/gson/JsonParser;-><init>()V

    .line 55
    .local v2, "parser":Lcom/google/gson/JsonParser;
    invoke-virtual {v2, p1}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    .line 56
    .local v1, "element":Lcom/google/gson/JsonElement;
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->isJsonObject()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 57
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v6

    .line 58
    .local v6, "resultOject":Lcom/google/gson/JsonObject;
    const-string/jumbo v8, "resultCode"

    invoke-virtual {v6, v8}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v4

    .line 59
    .local v4, "resultCode":I
    const/16 v8, 0xc8

    if-eq v8, v4, :cond_0

    const/16 v8, 0x4b0

    if-ne v8, v4, :cond_4

    .line 62
    :cond_0
    invoke-virtual {p0, v4}, Lcom/alibaba/alimei/restfulapi/parser/itemsupdate/AbsItemsUpdateResponseParser;->newResultByWholeStatus(I)Ljava/lang/Object;

    move-result-object v3

    .line 64
    .local v3, "result":Ljava/lang/Object;, "TT;"
    const-string/jumbo v8, "data"

    invoke-virtual {v6, v8}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v0

    .line 66
    .local v0, "dataElement":Lcom/google/gson/JsonObject;
    const-string/jumbo v8, "mails"

    invoke-virtual {v0, v8}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 67
    const-string/jumbo v8, "mails"

    invoke-virtual {v0, v8}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v8

    invoke-virtual {p0, v3, v8}, Lcom/alibaba/alimei/restfulapi/parser/itemsupdate/AbsItemsUpdateResponseParser;->handleMailsResult(Ljava/lang/Object;Lcom/google/gson/JsonElement;)V

    .line 70
    :cond_1
    const-string/jumbo v8, "calendars"

    invoke-virtual {v0, v8}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 71
    const-string/jumbo v8, "calendars"

    invoke-virtual {v0, v8}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v8

    invoke-virtual {p0, v3, v8}, Lcom/alibaba/alimei/restfulapi/parser/itemsupdate/AbsItemsUpdateResponseParser;->handleCalendarsResult(Ljava/lang/Object;Lcom/google/gson/JsonElement;)V

    .line 75
    :cond_2
    const-string/jumbo v8, "contacts"

    invoke-virtual {v0, v8}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 76
    const-string/jumbo v8, "contacts"

    invoke-virtual {v0, v8}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v8

    invoke-virtual {p0, v3, v8}, Lcom/alibaba/alimei/restfulapi/parser/itemsupdate/AbsItemsUpdateResponseParser;->handleContactsResult(Ljava/lang/Object;Lcom/google/gson/JsonElement;)V

    .line 79
    :cond_3
    return-object v3

    .line 82
    .end local v0    # "dataElement":Lcom/google/gson/JsonObject;
    .end local v3    # "result":Ljava/lang/Object;, "TT;"
    :cond_4
    const-string/jumbo v5, ""

    .line 83
    .local v5, "resultMsg":Ljava/lang/String;
    const-string/jumbo v8, "resultMsg"

    invoke-virtual {v6, v8}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 84
    const-string/jumbo v8, "resultMsg"

    invoke-virtual {v6, v8}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v5

    .line 86
    :cond_5
    new-instance v7, Lcom/alibaba/alimei/restfulapi/exception/ServiceException;

    invoke-direct {v7, v4, v5}, Lcom/alibaba/alimei/restfulapi/exception/ServiceException;-><init>(ILjava/lang/String;)V

    .line 87
    .local v7, "serviceException":Lcom/alibaba/alimei/restfulapi/exception/ServiceException;
    invoke-static {v6}, Lcom/alibaba/alimei/restfulapi/parser/itemsupdate/AbsItemsUpdateResponseParser;->parseErrorData(Lcom/google/gson/JsonObject;)Lcom/alibaba/alimei/restfulapi/response/data/ErrorData;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/alibaba/alimei/restfulapi/exception/ServiceException;->setErrorData(Lcom/alibaba/alimei/restfulapi/response/data/ErrorData;)V

    .line 88
    throw v7

    .line 91
    .end local v4    # "resultCode":I
    .end local v5    # "resultMsg":Ljava/lang/String;
    .end local v6    # "resultOject":Lcom/google/gson/JsonObject;
    .end local v7    # "serviceException":Lcom/alibaba/alimei/restfulapi/exception/ServiceException;
    :cond_6
    new-instance v8, Lcom/alibaba/alimei/restfulapi/exception/ServiceException;

    const/4 v9, 0x0

    const-string/jumbo v10, "\u670d\u52a1\u5668\u7aef\u8fd4\u56de\u7684\u6570\u636e\u683c\u5f0f\u51fa\u9519"

    invoke-direct {v8, v9, v10}, Lcom/alibaba/alimei/restfulapi/exception/ServiceException;-><init>(ILjava/lang/String;)V

    throw v8
.end method

.method public handleHttpResponseIncludeStatus(Lkne;Ljava/lang/Object;Lcom/alibaba/alimei/restfulapi/support/TypeInfo;)Ljava/lang/Object;
    .locals 3
    .param p1, "response"    # Lkne;
    .param p2, "requestResultReference"    # Ljava/lang/Object;
    .param p3, "typeInfo"    # Lcom/alibaba/alimei/restfulapi/support/TypeInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkne;",
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

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 46
    .local p0, "this":Lcom/alibaba/alimei/restfulapi/parser/itemsupdate/AbsItemsUpdateResponseParser;, "Lcom/alibaba/alimei/restfulapi/parser/itemsupdate/AbsItemsUpdateResponseParser<TT;>;"
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

.method public handleHttpResponseIncludeStatus(Lorg/apache/http/HttpResponse;Ljava/lang/Object;Lcom/alibaba/alimei/restfulapi/support/TypeInfo;)Ljava/lang/Object;
    .locals 3
    .param p1, "response"    # Lorg/apache/http/HttpResponse;
    .param p2, "requestResultReference"    # Ljava/lang/Object;
    .param p3, "typeInfo"    # Lcom/alibaba/alimei/restfulapi/support/TypeInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/HttpResponse;",
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

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 40
    .local p0, "this":Lcom/alibaba/alimei/restfulapi/parser/itemsupdate/AbsItemsUpdateResponseParser;, "Lcom/alibaba/alimei/restfulapi/parser/itemsupdate/AbsItemsUpdateResponseParser<TT;>;"
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

.method protected abstract handleMailsResult(Ljava/lang/Object;Lcom/google/gson/JsonElement;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/gson/JsonElement;",
            ")V"
        }
    .end annotation
.end method

.method protected abstract newResultByWholeStatus(I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation
.end method
