.class final Lcom/alibaba/android/user/connection/activity/PostCommentActivity$6;
.super Ljava/lang/Object;
.source "PostCommentActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/connection/activity/PostCommentActivity;
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
        "Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/connection/activity/PostCommentActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/connection/activity/PostCommentActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/connection/activity/PostCommentActivity;

    .prologue
    .line 319
    iput-object p1, p0, Lcom/alibaba/android/user/connection/activity/PostCommentActivity$6;->a:Lcom/alibaba/android/user/connection/activity/PostCommentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 319
    check-cast p1, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;

    .line 1322
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/PostCommentActivity$6;->a:Lcom/alibaba/android/user/connection/activity/PostCommentActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/connection/activity/PostCommentActivity;->dismissLoadingDialog()V

    .line 1323
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/PostCommentActivity$6;->a:Lcom/alibaba/android/user/connection/activity/PostCommentActivity;

    iget-object v1, p0, Lcom/alibaba/android/user/connection/activity/PostCommentActivity$6;->a:Lcom/alibaba/android/user/connection/activity/PostCommentActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/connection/activity/PostCommentActivity;->c(Lcom/alibaba/android/user/connection/activity/PostCommentActivity;)Lcom/alibaba/android/user/connection/ui/UrlExtendEditText;

    move-result-object v1

    invoke-static {v0, v1}, Lcms;->d(Landroid/content/Context;Landroid/view/View;)V

    .line 1324
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "connection_on_comment_sent_success"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1325
    iget-object v1, p0, Lcom/alibaba/android/user/connection/activity/PostCommentActivity$6;->a:Lcom/alibaba/android/user/connection/activity/PostCommentActivity;

    invoke-static {v1, p1}, Lcom/alibaba/android/user/connection/activity/PostCommentActivity;->a(Lcom/alibaba/android/user/connection/activity/PostCommentActivity;Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;)Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;

    .line 1326
    const-string/jumbo v1, "connection_on_comment_sent_success"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1327
    iget-object v1, p0, Lcom/alibaba/android/user/connection/activity/PostCommentActivity$6;->a:Lcom/alibaba/android/user/connection/activity/PostCommentActivity;

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldq;->a(Landroid/content/Intent;)Z

    .line 1329
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/PostCommentActivity$6;->a:Lcom/alibaba/android/user/connection/activity/PostCommentActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/android/user/connection/activity/PostCommentActivity;->a(Lcom/alibaba/android/user/connection/activity/PostCommentActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 1330
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/PostCommentActivity$6;->a:Lcom/alibaba/android/user/connection/activity/PostCommentActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/connection/activity/PostCommentActivity;->finish()V

    .line 319
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 340
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    const-string/jumbo v0, "sendComment"

    invoke-static {v0, p1, p2}, Lffe;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 336
    return-void
.end method
