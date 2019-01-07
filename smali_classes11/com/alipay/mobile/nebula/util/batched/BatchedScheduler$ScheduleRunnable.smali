.class Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler$ScheduleRunnable;
.super Ljava/lang/Object;
.source "BatchedScheduler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ScheduleRunnable"
.end annotation


# instance fields
.field private volatile isCancelled:Z

.field private volatile isScheduled:Z

.field final synthetic this$0:Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler;


# direct methods
.method private constructor <init>(Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler;)V
    .locals 1

    .prologue
    .local p0, "this":Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler$ScheduleRunnable;, "Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler<TT;>.ScheduleRunnable;"
    const/4 v0, 0x0

    .line 169
    iput-object p1, p0, Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler$ScheduleRunnable;->this$0:Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    iput-boolean v0, p0, Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler$ScheduleRunnable;->isScheduled:Z

    .line 172
    iput-boolean v0, p0, Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler$ScheduleRunnable;->isCancelled:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler;Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler;
    .param p2, "x1"    # Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler$1;

    .prologue
    .line 169
    .local p0, "this":Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler$ScheduleRunnable;, "Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler<TT;>.ScheduleRunnable;"
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler$ScheduleRunnable;-><init>(Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler;)V

    return-void
.end method

.method static synthetic access$100(Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler$ScheduleRunnable;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler$ScheduleRunnable;

    .prologue
    .line 169
    iget-boolean v0, p0, Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler$ScheduleRunnable;->isScheduled:Z

    return v0
.end method


# virtual methods
.method cancel()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 181
    .local p0, "this":Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler$ScheduleRunnable;, "Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler<TT;>.ScheduleRunnable;"
    iget-object v0, p0, Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler$ScheduleRunnable;->this$0:Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler;

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler;->access$200(Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "cancel schedule"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler$ScheduleRunnable;->isCancelled:Z

    .line 183
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler$ScheduleRunnable;->isScheduled:Z

    .line 184
    return-void
.end method

.method public run()V
    .locals 1

    .prologue
    .line 188
    .local p0, "this":Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler$ScheduleRunnable;, "Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler<TT;>.ScheduleRunnable;"
    iget-boolean v0, p0, Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler$ScheduleRunnable;->isCancelled:Z

    if-eqz v0, :cond_0

    .line 193
    :goto_0
    return-void

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler$ScheduleRunnable;->this$0:Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler;

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler;->access$300(Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler;)V

    .line 192
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler$ScheduleRunnable;->isScheduled:Z

    goto :goto_0
.end method

.method start()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 175
    .local p0, "this":Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler$ScheduleRunnable;, "Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler<TT;>.ScheduleRunnable;"
    iget-object v0, p0, Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler$ScheduleRunnable;->this$0:Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler;

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler;->access$200(Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "start schedule"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler$ScheduleRunnable;->isCancelled:Z

    .line 177
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler$ScheduleRunnable;->isScheduled:Z

    .line 178
    return-void
.end method
