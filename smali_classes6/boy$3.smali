.class final Lboy$3;
.super Ljava/lang/Object;
.source "CommentPresenter.java"

# interfaces
.implements Lcov;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lboy;->a(Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;I)V
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
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lboy;


# direct methods
.method constructor <init>(Lboy;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lboy;

    .prologue
    .line 235
    iput-object p1, p0, Lboy$3;->b:Lboy;

    iput-object p2, p0, Lboy$3;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 235
    check-cast p1, Lcom/alibaba/android/dingtalk/circle/draft/CommentDraft;

    .line 1238
    if-eqz p1, :cond_1

    .line 1241
    iget-object v1, p0, Lboy$3;->b:Lboy;

    iget-object v2, p0, Lboy$3;->a:Ljava/lang/String;

    .line 2249
    iget-object v0, v1, Lboy;->o:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 2250
    if-nez v0, :cond_0

    iget v0, p1, Lcom/alibaba/android/dingtalk/circle/draft/CommentDraft;->extraType:I

    if-nez v0, :cond_0

    .line 2251
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/circle/draft/CommentDraft;->extra:[B

    invoke-static {v0}, Lbqp;->b([B)Ljava/util/Map;

    move-result-object v0

    .line 2252
    invoke-static {v0}, Lcpf;->a(Ljava/util/Map;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2253
    iget-object v1, v1, Lboy;->o:Ljava/util/Map;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1242
    :cond_0
    iget-object v0, p0, Lboy$3;->b:Lboy;

    .line 3475
    iget-object v1, p1, Lcom/alibaba/android/dingtalk/circle/draft/CommentDraft;->draftText:Ljava/lang/String;

    iput-object v1, v0, Lboy;->e:Ljava/lang/String;

    .line 3477
    iget-object v1, v0, Lboy;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->getSendMessageEditText()Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;

    move-result-object v1

    .line 3478
    invoke-static {}, Lcok;->a()Lcok;

    move-result-object v2

    iget-object v3, v0, Lboy;->a:Landroid/app/Activity;

    iget-object v4, p1, Lcom/alibaba/android/dingtalk/circle/draft/CommentDraft;->draftText:Ljava/lang/String;

    invoke-static {}, Lbqj;->a()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextSize()F

    move-result v6

    invoke-static {v5, v6}, Lcms;->a(Landroid/content/Context;F)F

    move-result v5

    .line 4050
    invoke-virtual {v2, v3, v4, v5}, Lcok;->a(Landroid/content/Context;Ljava/lang/CharSequence;F)Landroid/text/SpannableString;

    move-result-object v2

    .line 3478
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3479
    iget-object v0, v0, Lboy;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->getSendMessageEditText()Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;

    move-result-object v0

    iget-object v1, p1, Lcom/alibaba/android/dingtalk/circle/draft/CommentDraft;->draftText:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;->setSelection(I)V

    .line 235
    :cond_1
    return-void
.end method
