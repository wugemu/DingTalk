.class public Lcom/alibaba/alimei/restfulapi/v2/parser/SyncNoteResponseParser;
.super Lcom/alibaba/alimei/restfulapi/parser/TextHttpResponseParser;
.source "SyncNoteResponseParser.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/alimei/restfulapi/parser/TextHttpResponseParser",
        "<",
        "Lcom/alibaba/alimei/restfulapi/v2/response/SyncNoteResult;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/alibaba/alimei/restfulapi/parser/TextHttpResponseParser;-><init>()V

    .line 15
    return-void
.end method


# virtual methods
.method protected onHandleResponseData(Lcom/google/gson/JsonElement;)Lcom/alibaba/alimei/restfulapi/v2/response/SyncNoteResult;
    .locals 6
    .param p1, "data"    # Lcom/google/gson/JsonElement;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 18
    invoke-static {p1}, Lcom/alibaba/alimei/restfulapi/v2/parser/SyncNoteResponseParser;->getV2SyncResultFirsrtItemsJsonElement(Lcom/google/gson/JsonElement;)Lcom/google/gson/JsonElement;

    move-result-object v1

    .line 20
    .local v1, "resultElement":Lcom/google/gson/JsonElement;
    if-eqz v1, :cond_0

    .line 21
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "\\n"

    const-string/jumbo v5, "<br>"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 22
    .local v2, "resultElementStr":Ljava/lang/String;
    new-instance v3, Lcom/google/gson/JsonParser;

    invoke-direct {v3}, Lcom/google/gson/JsonParser;-><init>()V

    invoke-virtual {v3, v2}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    .line 23
    invoke-static {}, Lcom/alibaba/alimei/restfulapi/v2/parser/SyncNoteResponseParser;->gsonInstance()Lcom/google/gson/Gson;

    move-result-object v3

    const-class v4, Lcom/alibaba/alimei/restfulapi/v2/response/SyncNoteResult;

    invoke-virtual {v3, v1, v4}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/restfulapi/v2/response/SyncNoteResult;

    .line 27
    .end local v2    # "resultElementStr":Ljava/lang/String;
    .local v0, "mSyncResult":Lcom/alibaba/alimei/restfulapi/v2/response/SyncNoteResult;
    :goto_0
    return-object v0

    .line 25
    .end local v0    # "mSyncResult":Lcom/alibaba/alimei/restfulapi/v2/response/SyncNoteResult;
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "mSyncResult":Lcom/alibaba/alimei/restfulapi/v2/response/SyncNoteResult;
    goto :goto_0
.end method

.method protected bridge synthetic onHandleResponseData(Lcom/google/gson/JsonElement;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0, p1}, Lcom/alibaba/alimei/restfulapi/v2/parser/SyncNoteResponseParser;->onHandleResponseData(Lcom/google/gson/JsonElement;)Lcom/alibaba/alimei/restfulapi/v2/response/SyncNoteResult;

    move-result-object v0

    return-object v0
.end method
