.class public abstract Lcom/alibaba/alimei/restfulapi/parser/HttpResponseParser;
.super Ljava/lang/Object;
.source "HttpResponseParser.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final KEY_DATA:Ljava/lang/String; = "data"

.field public static final KEY_calendars:Ljava/lang/String; = "calendars"

.field public static final KEY_contacts:Ljava/lang/String; = "contacts"

.field public static final KEY_errorData:Ljava/lang/String; = "errorData"

.field public static final KEY_mails:Ljava/lang/String; = "mails"

.field public static final KEY_resultCode:Ljava/lang/String; = "resultCode"

.field public static final KEY_resultMsg:Ljava/lang/String; = "resultMsg"

.field public static final STATUS_OK:I = 0xc8


# instance fields
.field private isHandleResponseIncludeStatus:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 1
    .param p1, "isHandleResponseIncludeStatus"    # Z

    .prologue
    .line 37
    .local p0, "this":Lcom/alibaba/alimei/restfulapi/parser/HttpResponseParser;, "Lcom/alibaba/alimei/restfulapi/parser/HttpResponseParser<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/alimei/restfulapi/parser/HttpResponseParser;->isHandleResponseIncludeStatus:Z

    .line 38
    iput-boolean p1, p0, Lcom/alibaba/alimei/restfulapi/parser/HttpResponseParser;->isHandleResponseIncludeStatus:Z

    .line 39
    return-void
.end method

.method public static gsonInstance()Lcom/google/gson/Gson;
    .locals 1

    .prologue
    .line 109
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    return-object v0
.end method

.method public static parseErrorData(Lcom/google/gson/JsonObject;)Lcom/alibaba/alimei/restfulapi/response/data/ErrorData;
    .locals 4
    .param p0, "resultOject"    # Lcom/google/gson/JsonObject;

    .prologue
    .line 113
    const-string/jumbo v2, "errorData"

    invoke-virtual {p0, v2}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 115
    :try_start_0
    const-string/jumbo v2, "errorData"

    invoke-virtual {p0, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v1

    .line 116
    .local v1, "errorDataElement":Lcom/google/gson/JsonObject;
    invoke-static {}, Lcom/alibaba/alimei/restfulapi/parser/HttpResponseParser;->gsonInstance()Lcom/google/gson/Gson;

    move-result-object v2

    const-class v3, Lcom/alibaba/alimei/restfulapi/response/data/ErrorData;

    invoke-virtual {v2, v1, v3}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/restfulapi/response/data/ErrorData;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    .end local v1    # "errorDataElement":Lcom/google/gson/JsonObject;
    :goto_0
    return-object v0

    :catch_0
    move-exception v2

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public ennableHandleResponseIncludeStatus(Z)V
    .locals 0
    .param p1, "status"    # Z

    .prologue
    .line 51
    .local p0, "this":Lcom/alibaba/alimei/restfulapi/parser/HttpResponseParser;, "Lcom/alibaba/alimei/restfulapi/parser/HttpResponseParser<TT;>;"
    iput-boolean p1, p0, Lcom/alibaba/alimei/restfulapi/parser/HttpResponseParser;->isHandleResponseIncludeStatus:Z

    .line 52
    return-void
.end method

.method public abstract handleHttpResponseAsText(Ljava/lang/String;Ljava/lang/Object;Lcom/alibaba/alimei/restfulapi/support/TypeInfo;)Ljava/lang/Object;
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
.end method

.method public handleHttpResponseIncludeStatus(I[BLjava/lang/Object;Lcom/alibaba/alimei/restfulapi/support/TypeInfo;)Ljava/lang/Object;
    .locals 1
    .param p1, "statusCode"    # I
    .param p2, "body"    # [B
    .param p3, "requestResultReference"    # Ljava/lang/Object;
    .param p4, "typeInfo"    # Lcom/alibaba/alimei/restfulapi/support/TypeInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[B",
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

    .prologue
    .line 78
    .local p0, "this":Lcom/alibaba/alimei/restfulapi/parser/HttpResponseParser;, "Lcom/alibaba/alimei/restfulapi/parser/HttpResponseParser<TT;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract handleHttpResponseIncludeStatus(Lkne;Ljava/lang/Object;Lcom/alibaba/alimei/restfulapi/support/TypeInfo;)Ljava/lang/Object;
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
.end method

.method public abstract handleHttpResponseIncludeStatus(Lorg/apache/http/HttpResponse;Ljava/lang/Object;Lcom/alibaba/alimei/restfulapi/support/TypeInfo;)Ljava/lang/Object;
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
.end method

.method public isHandleResponseIncludeStatus()Z
    .locals 1

    .prologue
    .line 47
    .local p0, "this":Lcom/alibaba/alimei/restfulapi/parser/HttpResponseParser;, "Lcom/alibaba/alimei/restfulapi/parser/HttpResponseParser<TT;>;"
    iget-boolean v0, p0, Lcom/alibaba/alimei/restfulapi/parser/HttpResponseParser;->isHandleResponseIncludeStatus:Z

    return v0
.end method

.method public isReleaseHttpConnection()Z
    .locals 1

    .prologue
    .line 105
    .local p0, "this":Lcom/alibaba/alimei/restfulapi/parser/HttpResponseParser;, "Lcom/alibaba/alimei/restfulapi/parser/HttpResponseParser<TT;>;"
    const/4 v0, 0x0

    return v0
.end method
