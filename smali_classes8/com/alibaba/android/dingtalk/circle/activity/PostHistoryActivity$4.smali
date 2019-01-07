.class final Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity$4;
.super Ljava/lang/Object;
.source "PostHistoryActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity;J)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity;

    .prologue
    .line 140
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity$4;->b:Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity;

    iput-wide p2, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity$4;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 143
    invoke-static {}, Lbox;->a()Lbox;

    move-result-object v1

    .line 144
    .local v1, "pool":Lbox;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lbox;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 146
    .local v0, "params":[Ljava/lang/String;
    const/4 v2, 0x0

    iget-wide v4, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity$4;->a:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    .line 148
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity$4;->b:Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity;

    invoke-static {v2}, Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity;->a(Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v2

    invoke-static {}, Lbpd;->e()Lbpd;

    move-result-object v3

    const-string/jumbo v4, "SELECT COUNT(*) FROM tb_circle_notice_data WHERE create_at < ? "

    invoke-virtual {v3, v4, v0}, Lbpd;->a(Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 150
    invoke-virtual {v1, v0}, Lbox;->release(Ljava/lang/Object;)V

    .line 152
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity$4;->b:Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity;

    iget-object v3, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity$4;->b:Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity;

    invoke-static {v3}, Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity;->a(Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity;->a(Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity;J)V

    .line 153
    return-void
.end method
