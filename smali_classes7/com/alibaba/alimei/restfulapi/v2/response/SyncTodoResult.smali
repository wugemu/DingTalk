.class public Lcom/alibaba/alimei/restfulapi/v2/response/SyncTodoResult;
.super Lcom/alibaba/alimei/restfulapi/v2/response/V2SyncResult;
.source "SyncTodoResult.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/alimei/restfulapi/v2/response/V2SyncResult",
        "<",
        "Lcom/alibaba/alimei/restfulapi/v2/data/Todo;",
        ">;"
    }
.end annotation


# instance fields
.field private items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/v2/data/Todo;",
            ">;"
        }
    .end annotation
.end field

.field private oldTodo:Lcom/alibaba/alimei/restfulapi/v2/data/Todo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/alibaba/alimei/restfulapi/v2/response/V2SyncResult;-><init>()V

    .line 15
    return-void
.end method


# virtual methods
.method public getItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/v2/data/Todo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 19
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/v2/response/SyncTodoResult;->items:Ljava/util/List;

    return-object v0
.end method

.method public getOldTodo()Lcom/alibaba/alimei/restfulapi/v2/data/Todo;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/v2/response/SyncTodoResult;->oldTodo:Lcom/alibaba/alimei/restfulapi/v2/data/Todo;

    return-object v0
.end method

.method public setItems(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/v2/data/Todo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 24
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/v2/data/Todo;>;"
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/v2/response/SyncTodoResult;->items:Ljava/util/List;

    .line 25
    return-void
.end method

.method public setOldTodo(Lcom/alibaba/alimei/restfulapi/v2/data/Todo;)V
    .locals 0
    .param p1, "oldTodo"    # Lcom/alibaba/alimei/restfulapi/v2/data/Todo;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/v2/response/SyncTodoResult;->oldTodo:Lcom/alibaba/alimei/restfulapi/v2/data/Todo;

    .line 33
    return-void
.end method
