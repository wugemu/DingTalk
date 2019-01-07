.class Lcom/alibaba/doraemon/impl/threadpool/TaskRunner$TaskComparator;
.super Ljava/lang/Object;
.source "TaskRunner.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/doraemon/impl/threadpool/TaskRunner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TaskComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/alibaba/doraemon/impl/threadpool/TaskRunner$Task;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/doraemon/impl/threadpool/TaskRunner;


# direct methods
.method constructor <init>(Lcom/alibaba/doraemon/impl/threadpool/TaskRunner;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/doraemon/impl/threadpool/TaskRunner;

    .prologue
    .line 374
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/threadpool/TaskRunner$TaskComparator;->this$0:Lcom/alibaba/doraemon/impl/threadpool/TaskRunner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/alibaba/doraemon/impl/threadpool/TaskRunner$Task;Lcom/alibaba/doraemon/impl/threadpool/TaskRunner$Task;)I
    .locals 3
    .param p1, "paramT1"    # Lcom/alibaba/doraemon/impl/threadpool/TaskRunner$Task;
    .param p2, "paramT2"    # Lcom/alibaba/doraemon/impl/threadpool/TaskRunner$Task;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 377
    invoke-static {p1}, Lcom/alibaba/doraemon/impl/threadpool/TaskRunner$Task;->access$400(Lcom/alibaba/doraemon/impl/threadpool/TaskRunner$Task;)Lcom/alibaba/doraemon/Priority;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-static {p2}, Lcom/alibaba/doraemon/impl/threadpool/TaskRunner$Task;->access$400(Lcom/alibaba/doraemon/impl/threadpool/TaskRunner$Task;)Lcom/alibaba/doraemon/Priority;

    move-result-object v1

    if-nez v1, :cond_1

    .line 378
    invoke-static {p1}, Lcom/alibaba/doraemon/impl/threadpool/TaskRunner$Task;->access$700(Lcom/alibaba/doraemon/impl/threadpool/TaskRunner$Task;)I

    move-result v1

    invoke-static {p2}, Lcom/alibaba/doraemon/impl/threadpool/TaskRunner$Task;->access$700(Lcom/alibaba/doraemon/impl/threadpool/TaskRunner$Task;)I

    move-result v2

    sub-int v0, v1, v2

    .line 388
    :cond_0
    :goto_0
    return v0

    .line 379
    :cond_1
    invoke-static {p1}, Lcom/alibaba/doraemon/impl/threadpool/TaskRunner$Task;->access$400(Lcom/alibaba/doraemon/impl/threadpool/TaskRunner$Task;)Lcom/alibaba/doraemon/Priority;

    move-result-object v1

    if-nez v1, :cond_2

    .line 380
    const/4 v0, -0x1

    goto :goto_0

    .line 381
    :cond_2
    invoke-static {p2}, Lcom/alibaba/doraemon/impl/threadpool/TaskRunner$Task;->access$400(Lcom/alibaba/doraemon/impl/threadpool/TaskRunner$Task;)Lcom/alibaba/doraemon/Priority;

    move-result-object v1

    if-nez v1, :cond_3

    .line 382
    const/4 v0, 0x1

    goto :goto_0

    .line 384
    :cond_3
    invoke-static {p1}, Lcom/alibaba/doraemon/impl/threadpool/TaskRunner$Task;->access$400(Lcom/alibaba/doraemon/impl/threadpool/TaskRunner$Task;)Lcom/alibaba/doraemon/Priority;

    move-result-object v1

    invoke-static {p2}, Lcom/alibaba/doraemon/impl/threadpool/TaskRunner$Task;->access$400(Lcom/alibaba/doraemon/impl/threadpool/TaskRunner$Task;)Lcom/alibaba/doraemon/Priority;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/doraemon/Priority;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    mul-int/lit8 v0, v1, -0x1

    .line 385
    .local v0, "result":I
    if-nez v0, :cond_0

    .line 386
    invoke-static {p1}, Lcom/alibaba/doraemon/impl/threadpool/TaskRunner$Task;->access$700(Lcom/alibaba/doraemon/impl/threadpool/TaskRunner$Task;)I

    move-result v1

    invoke-static {p2}, Lcom/alibaba/doraemon/impl/threadpool/TaskRunner$Task;->access$700(Lcom/alibaba/doraemon/impl/threadpool/TaskRunner$Task;)I

    move-result v2

    sub-int v0, v1, v2

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 374
    check-cast p1, Lcom/alibaba/doraemon/impl/threadpool/TaskRunner$Task;

    check-cast p2, Lcom/alibaba/doraemon/impl/threadpool/TaskRunner$Task;

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/doraemon/impl/threadpool/TaskRunner$TaskComparator;->compare(Lcom/alibaba/doraemon/impl/threadpool/TaskRunner$Task;Lcom/alibaba/doraemon/impl/threadpool/TaskRunner$Task;)I

    move-result v0

    return v0
.end method
