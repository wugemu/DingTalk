.class public Lcom/alibaba/alimei/restfulapi/parser/itemssync/SetFolderPushSettingsResponseParser;
.super Lcom/alibaba/alimei/restfulapi/parser/TextHttpResponseParser;
.source "SetFolderPushSettingsResponseParser.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/alimei/restfulapi/parser/TextHttpResponseParser",
        "<",
        "Lcom/alibaba/alimei/restfulapi/response/data/SetFolderPushSettingsResult;",
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
.method protected onHandleResponseData(Lcom/google/gson/JsonElement;)Lcom/alibaba/alimei/restfulapi/response/data/SetFolderPushSettingsResult;
    .locals 3
    .param p1, "data"    # Lcom/google/gson/JsonElement;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 20
    if-eqz p1, :cond_0

    .line 21
    invoke-static {}, Lcom/alibaba/alimei/restfulapi/parser/itemssync/SetFolderPushSettingsResponseParser;->gsonInstance()Lcom/google/gson/Gson;

    move-result-object v1

    const-class v2, Lcom/alibaba/alimei/restfulapi/response/data/SetFolderPushSettingsResult;

    invoke-virtual {v1, p1, v2}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/restfulapi/response/data/SetFolderPushSettingsResult;

    .line 25
    .local v0, "result":Lcom/alibaba/alimei/restfulapi/response/data/SetFolderPushSettingsResult;
    :goto_0
    return-object v0

    .line 23
    .end local v0    # "result":Lcom/alibaba/alimei/restfulapi/response/data/SetFolderPushSettingsResult;
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "result":Lcom/alibaba/alimei/restfulapi/response/data/SetFolderPushSettingsResult;
    goto :goto_0
.end method

.method protected bridge synthetic onHandleResponseData(Lcom/google/gson/JsonElement;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0, p1}, Lcom/alibaba/alimei/restfulapi/parser/itemssync/SetFolderPushSettingsResponseParser;->onHandleResponseData(Lcom/google/gson/JsonElement;)Lcom/alibaba/alimei/restfulapi/response/data/SetFolderPushSettingsResult;

    move-result-object v0

    return-object v0
.end method
