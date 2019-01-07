.class final Lcom/alibaba/android/user/connection/activity/PostHistoryActivity$5;
.super Ljava/lang/Object;
.source "PostHistoryActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/connection/activity/PostHistoryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/alibaba/android/user/connection/activity/PostHistoryActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/connection/activity/PostHistoryActivity;J)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/connection/activity/PostHistoryActivity;

    .prologue
    .line 160
    iput-object p1, p0, Lcom/alibaba/android/user/connection/activity/PostHistoryActivity$5;->b:Lcom/alibaba/android/user/connection/activity/PostHistoryActivity;

    iput-wide p2, p0, Lcom/alibaba/android/user/connection/activity/PostHistoryActivity$5;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 163
    iget-wide v2, p0, Lcom/alibaba/android/user/connection/activity/PostHistoryActivity$5;->a:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 164
    iget-object v1, p0, Lcom/alibaba/android/user/connection/activity/PostHistoryActivity$5;->b:Lcom/alibaba/android/user/connection/activity/PostHistoryActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/connection/activity/PostHistoryActivity;->c(Lcom/alibaba/android/user/connection/activity/PostHistoryActivity;)V

    .line 174
    :goto_0
    return-void

    .line 166
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/user/connection/activity/PostHistoryActivity$5;->b:Lcom/alibaba/android/user/connection/activity/PostHistoryActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/connection/activity/PostHistoryActivity;->d(Lcom/alibaba/android/user/connection/activity/PostHistoryActivity;)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_1

    .line 167
    iget-object v1, p0, Lcom/alibaba/android/user/connection/activity/PostHistoryActivity$5;->b:Lcom/alibaba/android/user/connection/activity/PostHistoryActivity;

    sget v2, Lezg$h;->empty_layout:I

    invoke-virtual {v1, v2}, Lcom/alibaba/android/user/connection/activity/PostHistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 168
    .local v0, "viewStub":Landroid/view/ViewStub;
    sget v1, Lezg$j;->connection_empty_layout:I

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 169
    iget-object v1, p0, Lcom/alibaba/android/user/connection/activity/PostHistoryActivity$5;->b:Lcom/alibaba/android/user/connection/activity/PostHistoryActivity;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alibaba/android/user/connection/activity/PostHistoryActivity;->a(Lcom/alibaba/android/user/connection/activity/PostHistoryActivity;Landroid/view/View;)Landroid/view/View;

    goto :goto_0

    .line 171
    .end local v0    # "viewStub":Landroid/view/ViewStub;
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/user/connection/activity/PostHistoryActivity$5;->b:Lcom/alibaba/android/user/connection/activity/PostHistoryActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/connection/activity/PostHistoryActivity;->e(Lcom/alibaba/android/user/connection/activity/PostHistoryActivity;)Lfcg;

    move-result-object v1

    invoke-virtual {v1}, Lfcg;->notifyDataSetChanged()V

    goto :goto_0
.end method
