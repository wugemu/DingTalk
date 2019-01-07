.class public Lcom/alibaba/alimei/restfulapi/parser/itemssync/SyncMailReadlistParser;
.super Lcom/alibaba/alimei/restfulapi/parser/TextHttpResponseParser;
.source "SyncMailReadlistParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/alimei/restfulapi/parser/itemssync/SyncMailReadlistParser$SyncMailReadlistResultItems;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/alimei/restfulapi/parser/TextHttpResponseParser",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/alibaba/alimei/restfulapi/response/data/MailReadListResult;",
        ">;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/alibaba/alimei/restfulapi/parser/TextHttpResponseParser;-><init>()V

    .line 17
    return-void
.end method


# virtual methods
.method protected bridge synthetic onHandleResponseData(Lcom/google/gson/JsonElement;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 15
    invoke-virtual {p0, p1}, Lcom/alibaba/alimei/restfulapi/parser/itemssync/SyncMailReadlistParser;->onHandleResponseData(Lcom/google/gson/JsonElement;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected onHandleResponseData(Lcom/google/gson/JsonElement;)Ljava/util/List;
    .locals 5
    .param p1, "data"    # Lcom/google/gson/JsonElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/JsonElement;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/response/data/MailReadListResult;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 37
    invoke-static {p1}, Lcom/alibaba/alimei/restfulapi/parser/itemssync/SyncMailReadlistParser;->getSyncResultItemsJsonElement(Lcom/google/gson/JsonElement;)Lcom/google/gson/JsonElement;

    move-result-object v2

    .line 39
    .local v2, "resultElement":Lcom/google/gson/JsonElement;
    if-eqz v2, :cond_1

    .line 40
    invoke-static {}, Lcom/alibaba/alimei/restfulapi/parser/itemssync/SyncMailReadlistParser;->gsonInstance()Lcom/google/gson/Gson;

    move-result-object v3

    const-class v4, Lcom/alibaba/alimei/restfulapi/parser/itemssync/SyncMailReadlistParser$SyncMailReadlistResultItems;

    invoke-virtual {v3, v2, v4}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/restfulapi/parser/itemssync/SyncMailReadlistParser$SyncMailReadlistResultItems;

    .line 41
    .local v0, "items":Lcom/alibaba/alimei/restfulapi/parser/itemssync/SyncMailReadlistParser$SyncMailReadlistResultItems;
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/alibaba/alimei/restfulapi/parser/itemssync/SyncMailReadlistParser$SyncMailReadlistResultItems;->access$000(Lcom/alibaba/alimei/restfulapi/parser/itemssync/SyncMailReadlistParser$SyncMailReadlistResultItems;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 42
    invoke-static {v0}, Lcom/alibaba/alimei/restfulapi/parser/itemssync/SyncMailReadlistParser$SyncMailReadlistResultItems;->access$000(Lcom/alibaba/alimei/restfulapi/parser/itemssync/SyncMailReadlistParser$SyncMailReadlistResultItems;)Ljava/util/List;

    move-result-object v1

    .line 49
    .end local v0    # "items":Lcom/alibaba/alimei/restfulapi/parser/itemssync/SyncMailReadlistParser$SyncMailReadlistResultItems;
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/response/data/MailReadListResult;>;"
    :goto_0
    return-object v1

    .line 44
    .end local v1    # "result":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/response/data/MailReadListResult;>;"
    .restart local v0    # "items":Lcom/alibaba/alimei/restfulapi/parser/itemssync/SyncMailReadlistParser$SyncMailReadlistResultItems;
    :cond_0
    const/4 v1, 0x0

    .line 46
    .restart local v1    # "result":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/response/data/MailReadListResult;>;"
    goto :goto_0

    .line 47
    .end local v0    # "items":Lcom/alibaba/alimei/restfulapi/parser/itemssync/SyncMailReadlistParser$SyncMailReadlistResultItems;
    .end local v1    # "result":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/response/data/MailReadListResult;>;"
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "result":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/response/data/MailReadListResult;>;"
    goto :goto_0
.end method
