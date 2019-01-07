.class Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler$1;
.super Ljava/lang/Object;
.source "BatchedScheduler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler;->doExecute(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler;

.field final synthetic val$tasks:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler;

    .prologue
    .line 145
    .local p0, "this":Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler$1;, "Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler$1;"
    iput-object p1, p0, Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler$1;->this$0:Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler;

    iput-object p2, p0, Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler$1;->val$tasks:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 148
    .local p0, "this":Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler$1;, "Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler$1;"
    iget-object v0, p0, Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler$1;->this$0:Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler;

    iget-object v1, p0, Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler$1;->val$tasks:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler;->onSchedule(Ljava/util/List;)V

    .line 149
    return-void
.end method
