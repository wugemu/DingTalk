.class public Lcom/alibaba/alimei/restfulapi/v2/parser/ProjectMemberUpdateResponseParser;
.super Lcom/alibaba/alimei/restfulapi/parser/TextHttpResponseParser;
.source "ProjectMemberUpdateResponseParser.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/alimei/restfulapi/parser/TextHttpResponseParser",
        "<",
        "Lcom/alibaba/alimei/restfulapi/v2/response/ProjectMemberResult;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/alibaba/alimei/restfulapi/parser/TextHttpResponseParser;-><init>()V

    .line 16
    return-void
.end method


# virtual methods
.method protected onHandleResponseData(Lcom/google/gson/JsonElement;)Lcom/alibaba/alimei/restfulapi/v2/response/ProjectMemberResult;
    .locals 4
    .param p1, "data"    # Lcom/google/gson/JsonElement;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 20
    invoke-static {p1}, Lcom/alibaba/alimei/restfulapi/v2/parser/ProjectMemberUpdateResponseParser;->getV2UpdateResultFirsrtItemsJsonElement(Lcom/google/gson/JsonElement;)Lcom/google/gson/JsonElement;

    move-result-object v1

    .line 22
    .local v1, "resultElement":Lcom/google/gson/JsonElement;
    if-eqz v1, :cond_0

    .line 23
    invoke-static {}, Lcom/alibaba/alimei/restfulapi/v2/parser/ProjectMemberUpdateResponseParser;->gsonInstance()Lcom/google/gson/Gson;

    move-result-object v2

    const-class v3, Lcom/alibaba/alimei/restfulapi/v2/response/ProjectMemberResultList;

    invoke-virtual {v2, v1, v3}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/restfulapi/v2/response/ProjectMemberResultList;

    .line 27
    .local v0, "mSyncResult":Lcom/alibaba/alimei/restfulapi/v2/response/ProjectMemberResultList;
    :goto_0
    if-eqz v0, :cond_1

    iget-object v2, v0, Lcom/alibaba/alimei/restfulapi/v2/response/ProjectMemberResultList;->items:Ljava/util/List;

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/alibaba/alimei/restfulapi/v2/response/ProjectMemberResultList;->items:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 28
    iget-object v2, v0, Lcom/alibaba/alimei/restfulapi/v2/response/ProjectMemberResultList;->items:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/alimei/restfulapi/v2/response/ProjectMemberResult;

    .line 30
    :goto_1
    return-object v2

    .line 25
    .end local v0    # "mSyncResult":Lcom/alibaba/alimei/restfulapi/v2/response/ProjectMemberResultList;
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "mSyncResult":Lcom/alibaba/alimei/restfulapi/v2/response/ProjectMemberResultList;
    goto :goto_0

    .line 30
    :cond_1
    new-instance v2, Lcom/alibaba/alimei/restfulapi/v2/response/ProjectMemberResult;

    invoke-direct {v2}, Lcom/alibaba/alimei/restfulapi/v2/response/ProjectMemberResult;-><init>()V

    goto :goto_1
.end method

.method protected bridge synthetic onHandleResponseData(Lcom/google/gson/JsonElement;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0, p1}, Lcom/alibaba/alimei/restfulapi/v2/parser/ProjectMemberUpdateResponseParser;->onHandleResponseData(Lcom/google/gson/JsonElement;)Lcom/alibaba/alimei/restfulapi/v2/response/ProjectMemberResult;

    move-result-object v0

    return-object v0
.end method
