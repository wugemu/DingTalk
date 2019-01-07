.class final Lcom/alibaba/android/ding/fragment/DingDetailFragment$7;
.super Ljava/lang/Object;
.source "DingDetailFragment.java"

# interfaces
.implements Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ding/fragment/DingDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    .prologue
    .line 749
    iput-object p1, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$7;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;)V
    .locals 17
    .param p1, "item"    # Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;

    .prologue
    .line 752
    if-nez p1, :cond_1

    .line 769
    :cond_0
    :goto_0
    return-void

    .line 755
    :cond_1
    move-object/from16 v0, p1

    iget v4, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;->d:I

    sget v5, Laxp$e;->emotion_delete:I

    if-ne v4, v5, :cond_2

    .line 756
    new-instance v3, Landroid/view/KeyEvent;

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x43

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x6

    invoke-direct/range {v3 .. v14}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    .line 757
    .local v3, "event":Landroid/view/KeyEvent;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$7;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-static {v4}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->a(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->getSendMessageEditText()Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    goto :goto_0

    .line 759
    .end local v3    # "event":Landroid/view/KeyEvent;
    :cond_2
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;->f:Lcrd;

    instance-of v4, v4, Lcqz$a;

    if-eqz v4, :cond_0

    .line 760
    invoke-static {}, Lcok;->a()Lcok;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$7;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    .line 761
    invoke-virtual {v4}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;->f:Lcrd;

    check-cast v4, Lcqz$a;

    .line 1856
    iget-object v4, v4, Lcqz$a;->a:Ljava/lang/String;

    .line 760
    invoke-virtual {v5, v6, v4}, Lcok;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v16

    .line 762
    .local v16, "spannableString":Landroid/text/SpannableString;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$7;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-static {v4}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->a(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->getSendMessageEditText()Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;->getSelectionStart()I

    move-result v2

    .line 763
    .local v2, "cursorIndex":I
    if-eqz v16, :cond_0

    .line 764
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$7;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-static {v4}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->a(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->getSendMessageEditText()Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;->getText()Landroid/text/Editable;

    move-result-object v15

    .line 765
    .local v15, "ea":Landroid/text/Editable;
    move-object/from16 v0, v16

    invoke-interface {v15, v2, v0}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_0
.end method
