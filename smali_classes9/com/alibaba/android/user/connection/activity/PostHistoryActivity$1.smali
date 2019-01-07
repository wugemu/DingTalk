.class final Lcom/alibaba/android/user/connection/activity/PostHistoryActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "PostHistoryActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/connection/activity/PostHistoryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/connection/activity/PostHistoryActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/connection/activity/PostHistoryActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/connection/activity/PostHistoryActivity;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/alibaba/android/user/connection/activity/PostHistoryActivity$1;->a:Lcom/alibaba/android/user/connection/activity/PostHistoryActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 75
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, "action":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 86
    :cond_0
    :goto_0
    return-void

    .line 80
    :cond_1
    const-string/jumbo v2, "circle_on_receive_notice"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 81
    const-string/jumbo v2, "circle_on_receive_notice"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 82
    .local v1, "noticeObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/user/connection/idl/objects/CircleNoticeObject;>;"
    invoke-static {v1}, Lffi;->a(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 83
    iget-object v2, p0, Lcom/alibaba/android/user/connection/activity/PostHistoryActivity$1;->a:Lcom/alibaba/android/user/connection/activity/PostHistoryActivity;

    invoke-static {v2}, Lcom/alibaba/android/user/connection/activity/PostHistoryActivity;->a(Lcom/alibaba/android/user/connection/activity/PostHistoryActivity;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v2

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    goto :goto_0
.end method
