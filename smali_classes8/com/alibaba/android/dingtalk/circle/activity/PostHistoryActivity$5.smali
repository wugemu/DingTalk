.class final Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity$5;
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
    .line 158
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity$5;->b:Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity;

    iput-wide p2, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity$5;->a:J

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
    .line 161
    iget-wide v2, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity$5;->a:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 162
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity$5;->b:Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity;->c(Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity;)V

    .line 172
    :goto_0
    return-void

    .line 164
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity$5;->b:Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity;->d(Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity;)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_1

    .line 165
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity$5;->b:Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity;

    sget v2, Lbpu$d;->empty_layout:I

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 166
    .local v0, "viewStub":Landroid/view/ViewStub;
    sget v1, Lbpu$e;->circle_empty_layout:I

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 167
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity$5;->b:Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity;->a(Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity;Landroid/view/View;)Landroid/view/View;

    goto :goto_0

    .line 169
    .end local v0    # "viewStub":Landroid/view/ViewStub;
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity$5;->b:Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity;->e(Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity;)Lbnp;

    move-result-object v1

    invoke-virtual {v1}, Lbnp;->notifyDataSetChanged()V

    goto :goto_0
.end method
