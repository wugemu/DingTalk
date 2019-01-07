.class final Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl$12$2;
.super Ljava/lang/Object;
.source "DingNewTabListFragmentImpl.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl$12;->a()V
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
.field final synthetic a:Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl$12;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl$12;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl$12;

    .prologue
    .line 387
    iput-object p1, p0, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl$12$2;->a:Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl$12;

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
    .line 387
    .line 1390
    iget-object v0, p0, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl$12$2;->a:Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl$12;

    iget-object v0, v0, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl$12;->a:Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1393
    iget-object v0, p0, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl$12$2;->a:Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl$12;

    iget-object v0, v0, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl$12;->a:Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;

    invoke-static {v0}, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->d(Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;)Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 387
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
    .line 402
    iget-object v0, p0, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl$12$2;->a:Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl$12;

    iget-object v0, v0, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl$12;->a:Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 406
    :goto_0
    return-void

    .line 405
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl$12$2;->a:Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl$12;

    iget-object v0, v0, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl$12;->a:Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;

    invoke-static {v0}, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->d(Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;)Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

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
    .line 398
    return-void
.end method
