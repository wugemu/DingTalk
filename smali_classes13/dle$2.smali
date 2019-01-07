.class final Ldle$2;
.super Ljava/lang/Object;
.source "FastSendEmotionManager.java"

# interfaces
.implements Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView$OnScrollStateChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ldle;


# direct methods
.method constructor <init>(Ldle;)V
    .locals 0
    .param p1, "this$0"    # Ldle;

    .prologue
    .line 99
    iput-object p1, p0, Ldle$2;->a:Ldle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView$OnScrollStateChangedListener$ScrollState;)V
    .locals 4
    .param p1, "scrollState"    # Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView$OnScrollStateChangedListener$ScrollState;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x3

    .line 102
    iget-object v0, p0, Ldle$2;->a:Ldle;

    .line 1035
    iget-object v0, v0, Ldle;->h:Landroid/view/ViewGroup;

    .line 102
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    :goto_0
    return-void

    .line 105
    :cond_0
    sget-object v0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView$OnScrollStateChangedListener$ScrollState;->SCROLL_STATE_IDLE:Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView$OnScrollStateChangedListener$ScrollState;

    if-ne v0, p1, :cond_1

    .line 106
    iget-object v0, p0, Ldle$2;->a:Ldle;

    .line 2035
    iget-object v0, v0, Ldle;->a:Landroid/os/Handler;

    .line 106
    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 108
    :cond_1
    iget-object v0, p0, Ldle$2;->a:Ldle;

    .line 3035
    iget-object v0, v0, Ldle;->a:Landroid/os/Handler;

    .line 108
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0
.end method
