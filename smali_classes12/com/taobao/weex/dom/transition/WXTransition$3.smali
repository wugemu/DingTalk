.class Lcom/taobao/weex/dom/transition/WXTransition$3;
.super Ljava/lang/Object;
.source "WXTransition.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/dom/transition/WXTransition;->doTransitionAnimation(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/dom/transition/WXTransition;

.field final synthetic val$token:I


# direct methods
.method constructor <init>(Lcom/taobao/weex/dom/transition/WXTransition;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/taobao/weex/dom/transition/WXTransition;

    .prologue
    .line 306
    iput-object p1, p0, Lcom/taobao/weex/dom/transition/WXTransition$3;->this$0:Lcom/taobao/weex/dom/transition/WXTransition;

    iput p2, p0, Lcom/taobao/weex/dom/transition/WXTransition$3;->val$token:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 309
    iget-object v0, p0, Lcom/taobao/weex/dom/transition/WXTransition$3;->this$0:Lcom/taobao/weex/dom/transition/WXTransition;

    invoke-static {v0}, Lcom/taobao/weex/dom/transition/WXTransition;->access$000(Lcom/taobao/weex/dom/transition/WXTransition;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    monitor-enter v1

    .line 310
    :try_start_0
    iget v0, p0, Lcom/taobao/weex/dom/transition/WXTransition$3;->val$token:I

    iget-object v2, p0, Lcom/taobao/weex/dom/transition/WXTransition$3;->this$0:Lcom/taobao/weex/dom/transition/WXTransition;

    invoke-static {v2}, Lcom/taobao/weex/dom/transition/WXTransition;->access$000(Lcom/taobao/weex/dom/transition/WXTransition;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-ne v0, v2, :cond_0

    .line 311
    iget-object v0, p0, Lcom/taobao/weex/dom/transition/WXTransition$3;->this$0:Lcom/taobao/weex/dom/transition/WXTransition;

    iget v2, p0, Lcom/taobao/weex/dom/transition/WXTransition$3;->val$token:I

    invoke-static {v0, v2}, Lcom/taobao/weex/dom/transition/WXTransition;->access$600(Lcom/taobao/weex/dom/transition/WXTransition;I)V

    .line 313
    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
