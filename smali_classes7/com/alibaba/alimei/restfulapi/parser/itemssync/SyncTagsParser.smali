.class public Lcom/alibaba/alimei/restfulapi/parser/itemssync/SyncTagsParser;
.super Lcom/alibaba/alimei/restfulapi/parser/TextHttpResponseParser;
.source "SyncTagsParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/alimei/restfulapi/parser/itemssync/SyncTagsParser$SyncTagResultItems;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/alimei/restfulapi/parser/TextHttpResponseParser",
        "<",
        "Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncTagResult;",
        ">;"
    }
.end annotation


# static fields
.field public static parser:Lcom/alibaba/alimei/restfulapi/parser/itemssync/SyncTagsParser;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    new-instance v0, Lcom/alibaba/alimei/restfulapi/parser/itemssync/SyncTagsParser;

    invoke-direct {v0}, Lcom/alibaba/alimei/restfulapi/parser/itemssync/SyncTagsParser;-><init>()V

    sput-object v0, Lcom/alibaba/alimei/restfulapi/parser/itemssync/SyncTagsParser;->parser:Lcom/alibaba/alimei/restfulapi/parser/itemssync/SyncTagsParser;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/alibaba/alimei/restfulapi/parser/TextHttpResponseParser;-><init>()V

    return-void
.end method


# virtual methods
.method protected onHandleResponseData(Lcom/google/gson/JsonElement;)Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncTagResult;
    .locals 5
    .param p1, "data"    # Lcom/google/gson/JsonElement;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 35
    invoke-static {p1}, Lcom/alibaba/alimei/restfulapi/parser/itemssync/SyncTagsParser;->getSyncResultItemsJsonElement(Lcom/google/gson/JsonElement;)Lcom/google/gson/JsonElement;

    move-result-object v2

    .line 37
    .local v2, "resultElement":Lcom/google/gson/JsonElement;
    if-eqz v2, :cond_0

    .line 38
    invoke-static {}, Lcom/alibaba/alimei/restfulapi/parser/itemssync/SyncTagsParser;->gsonInstance()Lcom/google/gson/Gson;

    move-result-object v3

    const-class v4, Lcom/alibaba/alimei/restfulapi/parser/itemssync/SyncTagsParser$SyncTagResultItems;

    invoke-virtual {v3, v2, v4}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/restfulapi/parser/itemssync/SyncTagsParser$SyncTagResultItems;

    .line 39
    .local v0, "items":Lcom/alibaba/alimei/restfulapi/parser/itemssync/SyncTagsParser$SyncTagResultItems;
    invoke-static {v0}, Lcom/alibaba/alimei/restfulapi/parser/itemssync/SyncTagsParser$SyncTagResultItems;->access$000(Lcom/alibaba/alimei/restfulapi/parser/itemssync/SyncTagsParser$SyncTagResultItems;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/alibaba/alimei/restfulapi/parser/itemssync/SyncTagsParser$SyncTagResultItems;->setTagList(Ljava/util/List;)V

    .line 40
    move-object v1, v0

    .line 44
    .end local v0    # "items":Lcom/alibaba/alimei/restfulapi/parser/itemssync/SyncTagsParser$SyncTagResultItems;
    .local v1, "result":Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncTagResult;
    :goto_0
    return-object v1

    .line 42
    .end local v1    # "result":Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncTagResult;
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "result":Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncTagResult;
    goto :goto_0
.end method

.method protected bridge synthetic onHandleResponseData(Lcom/google/gson/JsonElement;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0, p1}, Lcom/alibaba/alimei/restfulapi/parser/itemssync/SyncTagsParser;->onHandleResponseData(Lcom/google/gson/JsonElement;)Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncTagResult;

    move-result-object v0

    return-object v0
.end method
