.class final Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity$9;
.super Lckm$a;
.source "DingCompleteDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lckm$a",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;

    .prologue
    .line 322
    iput-object p1, p0, Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity$9;->a:Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;

    invoke-direct {p0}, Lckm$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 322
    check-cast p1, Ljava/lang/Integer;

    .line 1325
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "[DingCompleteDetailActivity]unCompleteCount changed:"

    aput-object v3, v2, v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v3, 0x2

    const-string/jumbo v4, ",dingId:"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity$9;->a:Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;

    invoke-static {v4}, Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;->j(Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lbkd;->a([Ljava/lang/String;)V

    .line 1326
    if-eqz p1, :cond_0

    .line 1328
    iget-object v2, p0, Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity$9;->a:Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;

    invoke-static {v2}, Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;->e(Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;)Layo;

    move-result-object v2

    .line 2083
    iget-object v2, v2, Layo;->a:Lcom/alibaba/android/ding/fragment/DingTaskStatusFragment;

    .line 1328
    if-eqz v2, :cond_0

    .line 1329
    iget-object v2, p0, Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity$9;->a:Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;

    invoke-static {v2}, Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;->e(Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;)Layo;

    move-result-object v2

    .line 3083
    iget-object v2, v2, Layo;->a:Lcom/alibaba/android/ding/fragment/DingTaskStatusFragment;

    .line 1329
    iget-object v3, p0, Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity$9;->a:Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;

    invoke-static {v3}, Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;->d(Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;)I

    move-result v3

    if-eqz v3, :cond_1

    :goto_0
    invoke-virtual {v2, v0}, Lcom/alibaba/android/ding/fragment/DingTaskStatusFragment;->a(Z)V

    .line 322
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 1329
    goto :goto_0
.end method
