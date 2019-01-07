.class final Lfdp$1;
.super Ljava/lang/Object;
.source "CommentPresenter.java"

# interfaces
.implements Lcov;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfdp;->a(Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;Lcom/alibaba/android/user/connection/idl/objects/CircleCommentObject;I)V
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
.field final synthetic a:Lfdp;


# direct methods
.method constructor <init>(Lfdp;)V
    .locals 0
    .param p1, "this$0"    # Lfdp;

    .prologue
    .line 203
    iput-object p1, p0, Lfdp$1;->a:Lfdp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 203
    check-cast p1, Lcom/alibaba/android/user/connection/draft/CommentDraft;

    .line 1206
    if-eqz p1, :cond_0

    .line 1209
    iget-object v0, p0, Lfdp$1;->a:Lfdp;

    .line 2444
    iget-object v1, p1, Lcom/alibaba/android/user/connection/draft/CommentDraft;->draftText:Ljava/lang/String;

    iput-object v1, v0, Lfdp;->e:Ljava/lang/String;

    .line 2446
    iget-object v1, v0, Lfdp;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->getSendMessageEditText()Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;

    move-result-object v1

    .line 2447
    invoke-static {}, Lcok;->a()Lcok;

    move-result-object v2

    iget-object v3, v0, Lfdp;->a:Landroid/app/Activity;

    iget-object v4, p1, Lcom/alibaba/android/user/connection/draft/CommentDraft;->draftText:Ljava/lang/String;

    invoke-static {}, Lffg;->a()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextSize()F

    move-result v6

    invoke-static {v5, v6}, Lcms;->a(Landroid/content/Context;F)F

    move-result v5

    .line 3050
    invoke-virtual {v2, v3, v4, v5}, Lcok;->a(Landroid/content/Context;Ljava/lang/CharSequence;F)Landroid/text/SpannableString;

    move-result-object v2

    .line 2447
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2448
    iget-object v0, v0, Lfdp;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->getSendMessageEditText()Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;

    move-result-object v0

    iget-object v1, p1, Lcom/alibaba/android/user/connection/draft/CommentDraft;->draftText:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;->setSelection(I)V

    .line 203
    :cond_0
    return-void
.end method
