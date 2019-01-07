.class public Lcom/alibaba/alimei/restfulapi/v2/parser/UpdateTodoCategoryResponseParser;
.super Lcom/alibaba/alimei/restfulapi/parser/TextHttpResponseParser;
.source "UpdateTodoCategoryResponseParser.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/alimei/restfulapi/parser/TextHttpResponseParser",
        "<",
        "Lcom/alibaba/alimei/restfulapi/v2/response/TodoCategoryUpdateResults;",
        ">;"
    }
.end annotation


# instance fields
.field private oldTodoCategory:Lcom/alibaba/alimei/restfulapi/v2/data/TodoCategory;


# direct methods
.method public constructor <init>(Lcom/alibaba/alimei/restfulapi/v2/data/TodoCategory;)V
    .locals 0
    .param p1, "todoCategory"    # Lcom/alibaba/alimei/restfulapi/v2/data/TodoCategory;

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/alibaba/alimei/restfulapi/parser/TextHttpResponseParser;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/v2/parser/UpdateTodoCategoryResponseParser;->oldTodoCategory:Lcom/alibaba/alimei/restfulapi/v2/data/TodoCategory;

    .line 19
    return-void
.end method


# virtual methods
.method protected onHandleResponseData(Lcom/google/gson/JsonElement;)Lcom/alibaba/alimei/restfulapi/v2/response/TodoCategoryUpdateResults;
    .locals 4
    .param p1, "data"    # Lcom/google/gson/JsonElement;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 23
    invoke-static {p1}, Lcom/alibaba/alimei/restfulapi/v2/parser/UpdateTodoCategoryResponseParser;->getV2UpdateResultFirsrtItemsJsonElement(Lcom/google/gson/JsonElement;)Lcom/google/gson/JsonElement;

    move-result-object v1

    .line 25
    .local v1, "resultElement":Lcom/google/gson/JsonElement;
    if-eqz v1, :cond_0

    .line 26
    invoke-static {}, Lcom/alibaba/alimei/restfulapi/v2/parser/UpdateTodoCategoryResponseParser;->gsonInstance()Lcom/google/gson/Gson;

    move-result-object v2

    const-class v3, Lcom/alibaba/alimei/restfulapi/v2/response/TodoCategoryUpdateResults;

    invoke-virtual {v2, v1, v3}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/restfulapi/v2/response/TodoCategoryUpdateResults;

    .line 27
    .local v0, "mSyncResult":Lcom/alibaba/alimei/restfulapi/v2/response/TodoCategoryUpdateResults;
    iget-object v2, p0, Lcom/alibaba/alimei/restfulapi/v2/parser/UpdateTodoCategoryResponseParser;->oldTodoCategory:Lcom/alibaba/alimei/restfulapi/v2/data/TodoCategory;

    invoke-virtual {v0, v2}, Lcom/alibaba/alimei/restfulapi/v2/response/TodoCategoryUpdateResults;->setOldTodoCategory(Lcom/alibaba/alimei/restfulapi/v2/data/TodoCategory;)V

    .line 31
    :goto_0
    return-object v0

    .line 29
    .end local v0    # "mSyncResult":Lcom/alibaba/alimei/restfulapi/v2/response/TodoCategoryUpdateResults;
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "mSyncResult":Lcom/alibaba/alimei/restfulapi/v2/response/TodoCategoryUpdateResults;
    goto :goto_0
.end method

.method protected bridge synthetic onHandleResponseData(Lcom/google/gson/JsonElement;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0, p1}, Lcom/alibaba/alimei/restfulapi/v2/parser/UpdateTodoCategoryResponseParser;->onHandleResponseData(Lcom/google/gson/JsonElement;)Lcom/alibaba/alimei/restfulapi/v2/response/TodoCategoryUpdateResults;

    move-result-object v0

    return-object v0
.end method
