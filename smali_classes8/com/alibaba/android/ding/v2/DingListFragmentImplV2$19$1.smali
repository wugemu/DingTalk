.class final Lcom/alibaba/android/ding/v2/DingListFragmentImplV2$19$1;
.super Ljava/lang/Object;
.source "DingListFragmentImplV2.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/ding/v2/DingListFragmentImplV2$19;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/v2/DingListFragmentImplV2$19;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/v2/DingListFragmentImplV2$19;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/ding/v2/DingListFragmentImplV2$19;

    .prologue
    .line 470
    iput-object p1, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2$19$1;->a:Lcom/alibaba/android/ding/v2/DingListFragmentImplV2$19;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 470
    .line 1473
    iget-object v0, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2$19$1;->a:Lcom/alibaba/android/ding/v2/DingListFragmentImplV2$19;

    iget-object v0, v0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2$19;->a:Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1476
    iget-object v0, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2$19$1;->a:Lcom/alibaba/android/ding/v2/DingListFragmentImplV2$19;

    iget-object v0, v0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2$19;->a:Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;

    invoke-static {v0}, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->e(Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;)Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 470
    :cond_0
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 485
    iget-object v0, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2$19$1;->a:Lcom/alibaba/android/ding/v2/DingListFragmentImplV2$19;

    iget-object v0, v0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2$19;->a:Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 489
    :goto_0
    return-void

    .line 488
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2$19$1;->a:Lcom/alibaba/android/ding/v2/DingListFragmentImplV2$19;

    iget-object v0, v0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2$19;->a:Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;

    invoke-static {v0}, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->e(Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;)Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->setRefreshing(Z)V

    goto :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 481
    return-void
.end method
