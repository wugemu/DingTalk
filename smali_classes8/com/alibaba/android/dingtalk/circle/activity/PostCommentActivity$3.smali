.class final Lcom/alibaba/android/dingtalk/circle/activity/PostCommentActivity$3;
.super Ljava/lang/Object;
.source "PostCommentActivity.java"

# interfaces
.implements Lcov;


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
        "Lcov",
        "<",
        "Lcom/alibaba/android/dingtalk/circle/draft/CommentDraft;",
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
    .line 239
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostCommentActivity$3;->a:Lcom/alibaba/android/dingtalk/circle/activity/PostCommentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 239
    check-cast p1, Lcom/alibaba/android/dingtalk/circle/draft/CommentDraft;

    .line 1242
    if-eqz p1, :cond_0

    .line 1246
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostCommentActivity$3;->a:Lcom/alibaba/android/dingtalk/circle/activity/PostCommentActivity;

    invoke-static {v0, p1}, Lcom/alibaba/android/dingtalk/circle/activity/PostCommentActivity;->a(Lcom/alibaba/android/dingtalk/circle/activity/PostCommentActivity;Lcom/alibaba/android/dingtalk/circle/draft/CommentDraft;)V

    .line 1248
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostCommentActivity$3;->a:Lcom/alibaba/android/dingtalk/circle/activity/PostCommentActivity;

    iget-object v1, p1, Lcom/alibaba/android/dingtalk/circle/draft/CommentDraft;->draftText:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalk/circle/activity/PostCommentActivity;->a(Lcom/alibaba/android/dingtalk/circle/activity/PostCommentActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 1249
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostCommentActivity$3;->a:Lcom/alibaba/android/dingtalk/circle/activity/PostCommentActivity;

    iget-object v1, p1, Lcom/alibaba/android/dingtalk/circle/draft/CommentDraft;->draftText:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalk/circle/activity/PostCommentActivity;->b(Lcom/alibaba/android/dingtalk/circle/activity/PostCommentActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 1250
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostCommentActivity$3;->a:Lcom/alibaba/android/dingtalk/circle/activity/PostCommentActivity;

    invoke-static {v0, p1}, Lcom/alibaba/android/dingtalk/circle/activity/PostCommentActivity;->b(Lcom/alibaba/android/dingtalk/circle/activity/PostCommentActivity;Lcom/alibaba/android/dingtalk/circle/draft/CommentDraft;)Lcom/alibaba/android/dingtalk/circle/draft/CommentDraft;

    .line 1251
    invoke-static {}, Lcok;->a()Lcok;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostCommentActivity$3;->a:Lcom/alibaba/android/dingtalk/circle/activity/PostCommentActivity;

    iget-object v2, p1, Lcom/alibaba/android/dingtalk/circle/draft/CommentDraft;->draftText:Ljava/lang/String;

    invoke-static {}, Lbqj;->a()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostCommentActivity$3;->a:Lcom/alibaba/android/dingtalk/circle/activity/PostCommentActivity;

    invoke-static {v4}, Lcom/alibaba/android/dingtalk/circle/activity/PostCommentActivity;->c(Lcom/alibaba/android/dingtalk/circle/activity/PostCommentActivity;)Lcom/alibaba/android/dingtalk/circle/ui/UrlExtendEditText;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alibaba/android/dingtalk/circle/ui/UrlExtendEditText;->getTextSize()F

    move-result v4

    invoke-static {v3, v4}, Lcms;->a(Landroid/content/Context;F)F

    move-result v3

    .line 2050
    invoke-virtual {v0, v1, v2, v3}, Lcok;->a(Landroid/content/Context;Ljava/lang/CharSequence;F)Landroid/text/SpannableString;

    move-result-object v0

    .line 1252
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostCommentActivity$3;->a:Lcom/alibaba/android/dingtalk/circle/activity/PostCommentActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/circle/activity/PostCommentActivity;->c(Lcom/alibaba/android/dingtalk/circle/activity/PostCommentActivity;)Lcom/alibaba/android/dingtalk/circle/ui/UrlExtendEditText;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alibaba/android/dingtalk/circle/ui/UrlExtendEditText;->setText(Ljava/lang/CharSequence;)V

    .line 1253
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostCommentActivity$3;->a:Lcom/alibaba/android/dingtalk/circle/activity/PostCommentActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/circle/activity/PostCommentActivity;->c(Lcom/alibaba/android/dingtalk/circle/activity/PostCommentActivity;)Lcom/alibaba/android/dingtalk/circle/ui/UrlExtendEditText;

    move-result-object v1

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/alibaba/android/dingtalk/circle/ui/UrlExtendEditText;->setSelection(I)V

    .line 239
    :cond_0
    return-void
.end method
