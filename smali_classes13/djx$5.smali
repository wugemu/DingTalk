.class final Ldjx$5;
.super Ljava/lang/Object;
.source "InputSmartTipViewManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldjx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lgwo;

.field final synthetic b:Ldjx;


# direct methods
.method constructor <init>(Ldjx;Lgwo;)V
    .locals 0
    .param p1, "this$0"    # Ldjx;

    .prologue
    .line 365
    iput-object p1, p0, Ldjx$5;->b:Ldjx;

    iput-object p2, p0, Ldjx$5;->a:Lgwo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 368
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    const-string/jumbo v2, "chat_imagetext_send_click"

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 373
    iget-object v1, p0, Ldjx$5;->b:Ldjx;

    .line 1046
    iget-object v1, v1, Ldjx;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;

    .line 373
    if-eqz v1, :cond_0

    iget-object v1, p0, Ldjx$5;->b:Ldjx;

    .line 2046
    iget-object v1, v1, Ldjx;->b:Ldiz;

    .line 373
    if-eqz v1, :cond_0

    .line 374
    iget-object v1, p0, Ldjx$5;->b:Ldjx;

    .line 3575
    invoke-static {}, Lddq;->b()Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    .line 375
    .local v0, "queueThread":Lcom/alibaba/doraemon/threadpool/Thread;
    sget-object v1, Lcom/alibaba/doraemon/Priority;->IMMEDIATE:Lcom/alibaba/doraemon/Priority;

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->setPriority(Lcom/alibaba/doraemon/Priority;)V

    .line 376
    new-instance v1, Ldjx$5$1;

    invoke-direct {v1, p0}, Ldjx$5$1;-><init>(Ldjx$5;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 388
    .end local v0    # "queueThread":Lcom/alibaba/doraemon/threadpool/Thread;
    :cond_0
    iget-object v1, p0, Ldjx$5;->b:Ldjx;

    .line 4046
    invoke-virtual {v1}, Ldjx;->c()V

    .line 389
    iget-object v1, p0, Ldjx$5;->b:Ldjx;

    .line 5046
    iget-object v1, v1, Ldjx;->c:Ldjx$b;

    .line 389
    if-eqz v1, :cond_1

    .line 390
    iget-object v1, p0, Ldjx$5;->b:Ldjx;

    .line 6046
    iget-object v1, v1, Ldjx;->c:Ldjx$b;

    .line 390
    invoke-interface {v1}, Ldjx$b;->a()V

    .line 392
    :cond_1
    return-void
.end method
