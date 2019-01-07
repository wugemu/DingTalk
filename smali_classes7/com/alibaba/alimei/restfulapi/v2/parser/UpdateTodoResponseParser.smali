.class public Lcom/alibaba/alimei/restfulapi/v2/parser/UpdateTodoResponseParser;
.super Lcom/alibaba/alimei/restfulapi/parser/TextHttpResponseParser;
.source "UpdateTodoResponseParser.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/alimei/restfulapi/parser/TextHttpResponseParser",
        "<",
        "Lcom/alibaba/alimei/restfulapi/v2/response/TodoUpdateResults;",
        ">;"
    }
.end annotation


# instance fields
.field private mOldTodo:Lcom/alibaba/alimei/restfulapi/v2/data/Todo;


# direct methods
.method public constructor <init>(Lcom/alibaba/alimei/restfulapi/v2/data/Todo;)V
    .locals 0
    .param p1, "todo"    # Lcom/alibaba/alimei/restfulapi/v2/data/Todo;

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/alibaba/alimei/restfulapi/parser/TextHttpResponseParser;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/v2/parser/UpdateTodoResponseParser;->mOldTodo:Lcom/alibaba/alimei/restfulapi/v2/data/Todo;

    .line 19
    return-void
.end method


# virtual methods
.method protected onHandleResponseData(Lcom/google/gson/JsonElement;)Lcom/alibaba/alimei/restfulapi/v2/response/TodoUpdateResults;
    .locals 4
    .param p1, "data"    # Lcom/google/gson/JsonElement;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 22
    invoke-static {p1}, Lcom/alibaba/alimei/restfulapi/v2/parser/UpdateTodoResponseParser;->getV2UpdateResultFirsrtItemsJsonElement(Lcom/google/gson/JsonElement;)Lcom/google/gson/JsonElement;

    move-result-object v1

    .line 24
    .local v1, "resultElement":Lcom/google/gson/JsonElement;
    if-eqz v1, :cond_0

    .line 25
    invoke-static {}, Lcom/alibaba/alimei/restfulapi/v2/parser/UpdateTodoResponseParser;->gsonInstance()Lcom/google/gson/Gson;

    move-result-object v2

    const-class v3, Lcom/alibaba/alimei/restfulapi/v2/response/TodoUpdateResults;

    invoke-virtual {v2, v1, v3}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/restfulapi/v2/response/TodoUpdateResults;

    .line 26
    .local v0, "mSyncResult":Lcom/alibaba/alimei/restfulapi/v2/response/TodoUpdateResults;
    iget-object v2, p0, Lcom/alibaba/alimei/restfulapi/v2/parser/UpdateTodoResponseParser;->mOldTodo:Lcom/alibaba/alimei/restfulapi/v2/data/Todo;

    invoke-virtual {v0, v2}, Lcom/alibaba/alimei/restfulapi/v2/response/TodoUpdateResults;->setOldTodo(Lcom/alibaba/alimei/restfulapi/v2/data/Todo;)V

    .line 30
    :goto_0
    return-object v0

    .line 28
    .end local v0    # "mSyncResult":Lcom/alibaba/alimei/restfulapi/v2/response/TodoUpdateResults;
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "mSyncResult":Lcom/alibaba/alimei/restfulapi/v2/response/TodoUpdateResults;
    goto :goto_0
.end method

.method protected bridge synthetic onHandleResponseData(Lcom/google/gson/JsonElement;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0, p1}, Lcom/alibaba/alimei/restfulapi/v2/parser/UpdateTodoResponseParser;->onHandleResponseData(Lcom/google/gson/JsonElement;)Lcom/alibaba/alimei/restfulapi/v2/response/TodoUpdateResults;

    move-result-object v0

    return-object v0
.end method
