.class public Lcom/alibaba/alimei/restfulapi/parser/migrate/MigrateParse;
.super Lcom/alibaba/alimei/restfulapi/parser/TextHttpResponseParser;
.source "MigrateParse.java"


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
    .line 16
    .local p0, "this":Lcom/alibaba/alimei/restfulapi/parser/migrate/MigrateParse;, "Lcom/alibaba/alimei/restfulapi/parser/migrate/MigrateParse<TT;>;"
    invoke-direct {p0}, Lcom/alibaba/alimei/restfulapi/parser/TextHttpResponseParser;-><init>()V

    .line 17
    return-void
.end method


# virtual methods
.method public handleHttpResponseAsText(Ljava/lang/String;Ljava/lang/Object;Lcom/alibaba/alimei/restfulapi/support/TypeInfo;)Ljava/lang/Object;
    .locals 3
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

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 27
    .local p0, "this":Lcom/alibaba/alimei/restfulapi/parser/migrate/MigrateParse;, "Lcom/alibaba/alimei/restfulapi/parser/migrate/MigrateParse<TT;>;"
    :try_start_0
    invoke-virtual {p0, p1, p3}, Lcom/alibaba/alimei/restfulapi/parser/migrate/MigrateParse;->handleResponseData(Ljava/lang/String;Lcom/alibaba/alimei/restfulapi/support/TypeInfo;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 31
    .local v1, "t":Ljava/lang/Object;, "TT;"
    return-object v1

    .line 28
    .end local v1    # "t":Ljava/lang/Object;, "TT;"
    :catch_0
    move-exception v0

    .line 29
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Lcom/alibaba/alimei/restfulapi/exception/NetworkException;

    invoke-direct {v2, v0}, Lcom/alibaba/alimei/restfulapi/exception/NetworkException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method protected onHandleResponseData(Lcom/google/gson/JsonElement;)Ljava/lang/Object;
    .locals 1
    .param p1, "data"    # Lcom/google/gson/JsonElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/JsonElement;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 20
    .local p0, "this":Lcom/alibaba/alimei/restfulapi/parser/migrate/MigrateParse;, "Lcom/alibaba/alimei/restfulapi/parser/migrate/MigrateParse<TT;>;"
    invoke-super {p0, p1}, Lcom/alibaba/alimei/restfulapi/parser/TextHttpResponseParser;->onHandleResponseData(Lcom/google/gson/JsonElement;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
