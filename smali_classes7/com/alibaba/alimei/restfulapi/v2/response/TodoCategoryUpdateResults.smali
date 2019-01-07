.class public Lcom/alibaba/alimei/restfulapi/v2/response/TodoCategoryUpdateResults;
.super Ljava/lang/Object;
.source "TodoCategoryUpdateResults.java"


# instance fields
.field private items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/v2/response/TodoCategoryUpdateResult;",
            ">;"
        }
    .end annotation
.end field

.field private oldTodoCategory:Lcom/alibaba/alimei/restfulapi/v2/data/TodoCategory;


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
            "Lcom/alibaba/alimei/restfulapi/v2/response/TodoCategoryUpdateResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 14
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/v2/response/TodoCategoryUpdateResults;->items:Ljava/util/List;

    return-object v0
.end method

.method public getOldTodoCategory()Lcom/alibaba/alimei/restfulapi/v2/data/TodoCategory;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/v2/response/TodoCategoryUpdateResults;->oldTodoCategory:Lcom/alibaba/alimei/restfulapi/v2/data/TodoCategory;

    return-object v0
.end method

.method public setItems(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/v2/response/TodoCategoryUpdateResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 18
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/v2/response/TodoCategoryUpdateResult;>;"
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/v2/response/TodoCategoryUpdateResults;->items:Ljava/util/List;

    .line 19
    return-void
.end method

.method public setOldTodoCategory(Lcom/alibaba/alimei/restfulapi/v2/data/TodoCategory;)V
    .locals 0
    .param p1, "oldTodoCategory"    # Lcom/alibaba/alimei/restfulapi/v2/data/TodoCategory;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/v2/response/TodoCategoryUpdateResults;->oldTodoCategory:Lcom/alibaba/alimei/restfulapi/v2/data/TodoCategory;

    .line 27
    return-void
.end method
