.class final Lcom/alibaba/android/user/settings/activity/FeedbackActivity$6;
.super Ljava/lang/Object;
.source "FeedbackActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/settings/activity/FeedbackActivity;->a(Lfrs;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/settings/activity/FeedbackActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/settings/activity/FeedbackActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/settings/activity/FeedbackActivity;

    .prologue
    .line 281
    iput-object p1, p0, Lcom/alibaba/android/user/settings/activity/FeedbackActivity$6;->a:Lcom/alibaba/android/user/settings/activity/FeedbackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDataReceived(Ljava/lang/Object;)V
    .locals 3
    .param p1, "data"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 285
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/FeedbackActivity$6;->a:Lcom/alibaba/android/user/settings/activity/FeedbackActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/settings/activity/FeedbackActivity;->e(Lcom/alibaba/android/user/settings/activity/FeedbackActivity;)V

    .line 286
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/FeedbackActivity$6;->a:Lcom/alibaba/android/user/settings/activity/FeedbackActivity;

    sget v1, Lezg$l;->feedback_success:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 287
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/FeedbackActivity$6;->a:Lcom/alibaba/android/user/settings/activity/FeedbackActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/settings/activity/FeedbackActivity;->a(Lcom/alibaba/android/user/settings/activity/FeedbackActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 288
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/FeedbackActivity$6;->a:Lcom/alibaba/android/user/settings/activity/FeedbackActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/settings/activity/FeedbackActivity;->b(Lcom/alibaba/android/user/settings/activity/FeedbackActivity;)V

    .line 289
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/FeedbackActivity$6;->a:Lcom/alibaba/android/user/settings/activity/FeedbackActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/settings/activity/FeedbackActivity;->f(Lcom/alibaba/android/user/settings/activity/FeedbackActivity;)Landroid/widget/EditText;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 290
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 299
    invoke-static {}, Lcom/alibaba/android/user/settings/activity/FeedbackActivity;->c()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "error code "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " reason "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/FeedbackActivity$6;->a:Lcom/alibaba/android/user/settings/activity/FeedbackActivity;

    invoke-static {v0, p2}, Lcom/alibaba/android/user/settings/activity/FeedbackActivity;->a(Lcom/alibaba/android/user/settings/activity/FeedbackActivity;Ljava/lang/String;)V

    .line 301
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 295
    return-void
.end method
