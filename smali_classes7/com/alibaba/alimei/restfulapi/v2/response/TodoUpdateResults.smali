.class public Lcom/alibaba/alimei/restfulapi/v2/response/TodoUpdateResults;
.super Ljava/lang/Object;
.source "TodoUpdateResults.java"


# instance fields
.field private items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/v2/response/TodoUpdateResult;",
            ">;"
        }
    .end annotation
.end field

.field private oldTodo:Lcom/alibaba/alimei/restfulapi/v2/data/Todo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
            "Lcom/alibaba/alimei/restfulapi/v2/response/TodoUpdateResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 14
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/v2/response/TodoUpdateResults;->items:Ljava/util/List;

    return-object v0
.end method

.method public getOldTodo()Lcom/alibaba/alimei/restfulapi/v2/data/Todo;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/v2/response/TodoUpdateResults;->oldTodo:Lcom/alibaba/alimei/restfulapi/v2/data/Todo;

    return-object v0
.end method

.method public setItems(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/v2/response/TodoUpdateResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 18
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/v2/response/TodoUpdateResult;>;"
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/v2/response/TodoUpdateResults;->items:Ljava/util/List;

    .line 19
    return-void
.end method

.method public setOldTodo(Lcom/alibaba/alimei/restfulapi/v2/data/Todo;)V
    .locals 0
    .param p1, "oldTodo"    # Lcom/alibaba/alimei/restfulapi/v2/data/Todo;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/v2/response/TodoUpdateResults;->oldTodo:Lcom/alibaba/alimei/restfulapi/v2/data/Todo;

    .line 27
    return-void
.end method
