.class final Lcom/alibaba/android/user/connection/activity/PostCommentActivity$3;
.super Ljava/lang/Object;
.source "PostCommentActivity.java"

# interfaces
.implements Lcov;


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
        "Lcov",
        "<",
        "Lcom/alibaba/android/user/connection/draft/CommentDraft;",
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
    .line 236
    iput-object p1, p0, Lcom/alibaba/android/user/connection/activity/PostCommentActivity$3;->a:Lcom/alibaba/android/user/connection/activity/PostCommentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 236
    check-cast p1, Lcom/alibaba/android/user/connection/draft/CommentDraft;

    .line 1239
    if-eqz p1, :cond_0

    .line 1242
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/PostCommentActivity$3;->a:Lcom/alibaba/android/user/connection/activity/PostCommentActivity;

    iget-object v1, p1, Lcom/alibaba/android/user/connection/draft/CommentDraft;->draftText:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alibaba/android/user/connection/activity/PostCommentActivity;->a(Lcom/alibaba/android/user/connection/activity/PostCommentActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 1243
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/PostCommentActivity$3;->a:Lcom/alibaba/android/user/connection/activity/PostCommentActivity;

    iget-object v1, p1, Lcom/alibaba/android/user/connection/draft/CommentDraft;->draftText:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alibaba/android/user/connection/activity/PostCommentActivity;->b(Lcom/alibaba/android/user/connection/activity/PostCommentActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 1244
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/PostCommentActivity$3;->a:Lcom/alibaba/android/user/connection/activity/PostCommentActivity;

    invoke-static {v0, p1}, Lcom/alibaba/android/user/connection/activity/PostCommentActivity;->a(Lcom/alibaba/android/user/connection/activity/PostCommentActivity;Lcom/alibaba/android/user/connection/draft/CommentDraft;)Lcom/alibaba/android/user/connection/draft/CommentDraft;

    .line 1245
    invoke-static {}, Lcok;->a()Lcok;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/connection/activity/PostCommentActivity$3;->a:Lcom/alibaba/android/user/connection/activity/PostCommentActivity;

    iget-object v2, p1, Lcom/alibaba/android/user/connection/draft/CommentDraft;->draftText:Ljava/lang/String;

    invoke-static {}, Lffg;->a()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/android/user/connection/activity/PostCommentActivity$3;->a:Lcom/alibaba/android/user/connection/activity/PostCommentActivity;

    invoke-static {v4}, Lcom/alibaba/android/user/connection/activity/PostCommentActivity;->c(Lcom/alibaba/android/user/connection/activity/PostCommentActivity;)Lcom/alibaba/android/user/connection/ui/UrlExtendEditText;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alibaba/android/user/connection/ui/UrlExtendEditText;->getTextSize()F

    move-result v4

    invoke-static {v3, v4}, Lcms;->a(Landroid/content/Context;F)F

    move-result v3

    .line 2050
    invoke-virtual {v0, v1, v2, v3}, Lcok;->a(Landroid/content/Context;Ljava/lang/CharSequence;F)Landroid/text/SpannableString;

    move-result-object v0

    .line 1246
    iget-object v1, p0, Lcom/alibaba/android/user/connection/activity/PostCommentActivity$3;->a:Lcom/alibaba/android/user/connection/activity/PostCommentActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/connection/activity/PostCommentActivity;->c(Lcom/alibaba/android/user/connection/activity/PostCommentActivity;)Lcom/alibaba/android/user/connection/ui/UrlExtendEditText;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alibaba/android/user/connection/ui/UrlExtendEditText;->setText(Ljava/lang/CharSequence;)V

    .line 1247
    iget-object v1, p0, Lcom/alibaba/android/user/connection/activity/PostCommentActivity$3;->a:Lcom/alibaba/android/user/connection/activity/PostCommentActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/connection/activity/PostCommentActivity;->c(Lcom/alibaba/android/user/connection/activity/PostCommentActivity;)Lcom/alibaba/android/user/connection/ui/UrlExtendEditText;

    move-result-object v1

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/alibaba/android/user/connection/ui/UrlExtendEditText;->setSelection(I)V

    .line 236
    :cond_0
    return-void
.end method
