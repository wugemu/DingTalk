.class public Lcom/alibaba/alimei/restfulapi/parser/FolderCanModifyResponseParser;
.super Lcom/alibaba/alimei/restfulapi/parser/TextHttpResponseParser;
.source "FolderCanModifyResponseParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/alimei/restfulapi/parser/FolderCanModifyResponseParser$InnerFolderCanModifyResult;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/alimei/restfulapi/parser/TextHttpResponseParser",
        "<",
        "Lcom/alibaba/alimei/restfulapi/response/data/FolderCanModifyResult;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/alibaba/alimei/restfulapi/parser/TextHttpResponseParser;-><init>()V

    .line 14
    return-void
.end method


# virtual methods
.method protected onHandleResponseData(Lcom/google/gson/JsonElement;)Lcom/alibaba/alimei/restfulapi/response/data/FolderCanModifyResult;
    .locals 5
    .param p1, "data"    # Lcom/google/gson/JsonElement;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 30
    invoke-static {p1}, Lcom/alibaba/alimei/restfulapi/parser/FolderCanModifyResponseParser;->getSyncResultItemsJsonElement(Lcom/google/gson/JsonElement;)Lcom/google/gson/JsonElement;

    move-result-object v2

    .line 32
    .local v2, "resultElement":Lcom/google/gson/JsonElement;
    if-eqz v2, :cond_0

    .line 33
    invoke-static {}, Lcom/alibaba/alimei/restfulapi/parser/FolderCanModifyResponseParser;->gsonInstance()Lcom/google/gson/Gson;

    move-result-object v3

    const-class v4, Lcom/alibaba/alimei/restfulapi/parser/FolderCanModifyResponseParser$InnerFolderCanModifyResult;

    invoke-virtual {v3, v2, v4}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/restfulapi/parser/FolderCanModifyResponseParser$InnerFolderCanModifyResult;

    .line 34
    .local v0, "items":Lcom/alibaba/alimei/restfulapi/parser/FolderCanModifyResponseParser$InnerFolderCanModifyResult;
    invoke-static {v0}, Lcom/alibaba/alimei/restfulapi/parser/FolderCanModifyResponseParser$InnerFolderCanModifyResult;->access$000(Lcom/alibaba/alimei/restfulapi/parser/FolderCanModifyResponseParser$InnerFolderCanModifyResult;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/alibaba/alimei/restfulapi/parser/FolderCanModifyResponseParser$InnerFolderCanModifyResult;->setModifies(Ljava/util/List;)V

    .line 35
    move-object v1, v0

    .line 39
    .end local v0    # "items":Lcom/alibaba/alimei/restfulapi/parser/FolderCanModifyResponseParser$InnerFolderCanModifyResult;
    .local v1, "result":Lcom/alibaba/alimei/restfulapi/response/data/FolderCanModifyResult;
    :goto_0
    return-object v1

    .line 37
    .end local v1    # "result":Lcom/alibaba/alimei/restfulapi/response/data/FolderCanModifyResult;
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "result":Lcom/alibaba/alimei/restfulapi/response/data/FolderCanModifyResult;
    goto :goto_0
.end method

.method protected bridge synthetic onHandleResponseData(Lcom/google/gson/JsonElement;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p0, p1}, Lcom/alibaba/alimei/restfulapi/parser/FolderCanModifyResponseParser;->onHandleResponseData(Lcom/google/gson/JsonElement;)Lcom/alibaba/alimei/restfulapi/response/data/FolderCanModifyResult;

    move-result-object v0

    return-object v0
.end method
