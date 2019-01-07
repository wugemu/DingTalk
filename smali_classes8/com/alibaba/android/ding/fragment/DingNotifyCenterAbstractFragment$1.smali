.class final Lcom/alibaba/android/ding/fragment/DingNotifyCenterAbstractFragment$1;
.super Ljava/lang/Object;
.source "DingNotifyCenterAbstractFragment.java"

# interfaces
.implements Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ding/fragment/DingNotifyCenterAbstractFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/fragment/DingNotifyCenterAbstractFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/fragment/DingNotifyCenterAbstractFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/ding/fragment/DingNotifyCenterAbstractFragment;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/alibaba/android/ding/fragment/DingNotifyCenterAbstractFragment$1;->a:Lcom/alibaba/android/ding/fragment/DingNotifyCenterAbstractFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 88
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingNotifyCenterAbstractFragment$1;->a:Lcom/alibaba/android/ding/fragment/DingNotifyCenterAbstractFragment;

    iget-object v0, v0, Lcom/alibaba/android/ding/fragment/DingNotifyCenterAbstractFragment;->e:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 89
    return-void
.end method
