.class final Lcom/alibaba/android/dingtalk/circle/activity/PostCommentActivity$6;
.super Ljava/lang/Object;
.source "PostCommentActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalk/circle/activity/PostCommentActivity;
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
        "Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/circle/activity/PostCommentActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/circle/activity/PostCommentActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalk/circle/activity/PostCommentActivity;

    .prologue
    .line 333
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostCommentActivity$6;->a:Lcom/alibaba/android/dingtalk/circle/activity/PostCommentActivity;

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
    .line 333
    check-cast p1, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;

    .line 1336
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostCommentActivity$6;->a:Lcom/alibaba/android/dingtalk/circle/activity/PostCommentActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/circle/activity/PostCommentActivity;->dismissLoadingDialog()V

    .line 1337
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostCommentActivity$6;->a:Lcom/alibaba/android/dingtalk/circle/activity/PostCommentActivity;

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostCommentActivity$6;->a:Lcom/alibaba/android/dingtalk/circle/activity/PostCommentActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/circle/activity/PostCommentActivity;->c(Lcom/alibaba/android/dingtalk/circle/activity/PostCommentActivity;)Lcom/alibaba/android/dingtalk/circle/ui/UrlExtendEditText;

    move-result-object v1

    invoke-static {v0, v1}, Lcms;->d(Landroid/content/Context;Landroid/view/View;)V

    .line 1339
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "circle_on_comment_sent_success"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1340
    const-string/jumbo v1, "circle_on_comment_sent_success"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1341
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostCommentActivity$6;->a:Lcom/alibaba/android/dingtalk/circle/activity/PostCommentActivity;

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldq;->a(Landroid/content/Intent;)Z

    .line 1343
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostCommentActivity$6;->a:Lcom/alibaba/android/dingtalk/circle/activity/PostCommentActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalk/circle/activity/PostCommentActivity;->a(Lcom/alibaba/android/dingtalk/circle/activity/PostCommentActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 1344
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostCommentActivity$6;->a:Lcom/alibaba/android/dingtalk/circle/activity/PostCommentActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/circle/activity/PostCommentActivity;->d(Lcom/alibaba/android/dingtalk/circle/activity/PostCommentActivity;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1345
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostCommentActivity$6;->a:Lcom/alibaba/android/dingtalk/circle/activity/PostCommentActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/circle/activity/PostCommentActivity;->finish()V

    .line 333
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 355
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    const-string/jumbo v0, "sendComment"

    invoke-static {v0, p1, p2}, Lbqh;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 351
    return-void
.end method
