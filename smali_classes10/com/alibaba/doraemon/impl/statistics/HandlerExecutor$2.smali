.class Lcom/alibaba/doraemon/impl/statistics/HandlerExecutor$2;
.super Ljava/lang/Object;
.source "HandlerExecutor.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/doraemon/impl/statistics/HandlerExecutor;->doPostDelay(Ljava/lang/Runnable;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/alibaba/doraemon/impl/statistics/HandlerExecutor$DelayTask;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/doraemon/impl/statistics/HandlerExecutor;


# direct methods
.method constructor <init>(Lcom/alibaba/doraemon/impl/statistics/HandlerExecutor;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/doraemon/impl/statistics/HandlerExecutor;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/statistics/HandlerExecutor$2;->this$0:Lcom/alibaba/doraemon/impl/statistics/HandlerExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/alibaba/doraemon/impl/statistics/HandlerExecutor$DelayTask;Lcom/alibaba/doraemon/impl/statistics/HandlerExecutor$DelayTask;)I
    .locals 4
    .param p1, "lhs"    # Lcom/alibaba/doraemon/impl/statistics/HandlerExecutor$DelayTask;
    .param p2, "rhs"    # Lcom/alibaba/doraemon/impl/statistics/HandlerExecutor$DelayTask;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 96
    iget-wide v0, p1, Lcom/alibaba/doraemon/impl/statistics/HandlerExecutor$DelayTask;->executeTime:J

    iget-wide v2, p2, Lcom/alibaba/doraemon/impl/statistics/HandlerExecutor$DelayTask;->executeTime:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 93
    check-cast p1, Lcom/alibaba/doraemon/impl/statistics/HandlerExecutor$DelayTask;

    check-cast p2, Lcom/alibaba/doraemon/impl/statistics/HandlerExecutor$DelayTask;

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/doraemon/impl/statistics/HandlerExecutor$2;->compare(Lcom/alibaba/doraemon/impl/statistics/HandlerExecutor$DelayTask;Lcom/alibaba/doraemon/impl/statistics/HandlerExecutor$DelayTask;)I

    move-result v0

    return v0
.end method
