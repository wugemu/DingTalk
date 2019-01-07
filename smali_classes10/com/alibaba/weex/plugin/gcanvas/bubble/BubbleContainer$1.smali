.class final Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer$1;
.super Ljava/lang/Object;
.source "BubbleContainer.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic b:Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;


# direct methods
.method constructor <init>(Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;Ljava/util/concurrent/atomic/AtomicInteger;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;

    .prologue
    .line 127
    iput-object p1, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer$1;->b:Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;

    iput-object p2, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer$1;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3
    .param p1, "animation"    # Landroid/view/animation/Animation;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 136
    iget-object v1, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer$1;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v1

    if-nez v1, :cond_1

    .line 137
    iget-object v1, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer$1;->b:Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;

    invoke-static {v1}, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->a(Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhzm;

    .line 138
    .local v0, "wrapper":Lhzm;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lhzm;->a(Z)V

    goto :goto_0

    .line 140
    .end local v0    # "wrapper":Lhzm;
    :cond_0
    iget-object v1, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer$1;->b:Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;

    invoke-static {v1}, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->b(Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 142
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 143
    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 148
    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 1
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 130
    iget-object v0, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer$1;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 131
    return-void
.end method
