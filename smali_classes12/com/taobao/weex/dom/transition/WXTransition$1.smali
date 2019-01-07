.class Lcom/taobao/weex/dom/transition/WXTransition$1;
.super Ljava/lang/Object;
.source "WXTransition.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/dom/transition/WXTransition;->startTransition(Ljava/util/Map;)V
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
    .line 231
    iput-object p1, p0, Lcom/taobao/weex/dom/transition/WXTransition$1;->this$0:Lcom/taobao/weex/dom/transition/WXTransition;

    iput p2, p0, Lcom/taobao/weex/dom/transition/WXTransition$1;->val$token:I

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
    .line 234
    iget v0, p0, Lcom/taobao/weex/dom/transition/WXTransition$1;->val$token:I

    iget-object v1, p0, Lcom/taobao/weex/dom/transition/WXTransition$1;->this$0:Lcom/taobao/weex/dom/transition/WXTransition;

    invoke-static {v1}, Lcom/taobao/weex/dom/transition/WXTransition;->access$000(Lcom/taobao/weex/dom/transition/WXTransition;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 235
    iget-object v0, p0, Lcom/taobao/weex/dom/transition/WXTransition$1;->this$0:Lcom/taobao/weex/dom/transition/WXTransition;

    iget v1, p0, Lcom/taobao/weex/dom/transition/WXTransition$1;->val$token:I

    invoke-static {v0, v1}, Lcom/taobao/weex/dom/transition/WXTransition;->access$100(Lcom/taobao/weex/dom/transition/WXTransition;I)V

    .line 237
    :cond_0
    iget-object v0, p0, Lcom/taobao/weex/dom/transition/WXTransition$1;->this$0:Lcom/taobao/weex/dom/transition/WXTransition;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/taobao/weex/dom/transition/WXTransition;->access$202(Lcom/taobao/weex/dom/transition/WXTransition;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 238
    return-void
.end method
