.class final Lcqt$3;
.super Ljava/lang/Object;
.source "CommentInputPanelWrapper.java"

# interfaces
.implements Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcqt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcqt;


# direct methods
.method constructor <init>(Lcqt;)V
    .locals 0
    .param p1, "this$0"    # Lcqt;

    .prologue
    .line 159
    iput-object p1, p0, Lcqt$3;->a:Lcqt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;)V
    .locals 17
    .param p1, "item"    # Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;

    .prologue
    .line 162
    move-object/from16 v0, p1

    iget v4, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;->d:I

    sget v5, Lcig$e;->emotion_delete:I

    if-ne v4, v5, :cond_1

    .line 163
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

    .line 165
    .local v3, "event":Landroid/view/KeyEvent;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcqt$3;->a:Lcqt;

    .line 1039
    iget-object v4, v4, Lcqt;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    .line 165
    invoke-virtual {v4}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->getSendMessageEditText()Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 177
    .end local v3    # "event":Landroid/view/KeyEvent;
    :cond_0
    :goto_0
    return-void

    .line 166
    :cond_1
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;->f:Lcrd;

    if-eqz v4, :cond_0

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;->f:Lcrd;

    instance-of v4, v4, Lcqz$a;

    if-eqz v4, :cond_0

    .line 167
    move-object/from16 v0, p0

    iget-object v4, v0, Lcqt$3;->a:Lcqt;

    .line 2039
    iget-object v4, v4, Lcqt;->e:Lcqt$a;

    .line 167
    if-eqz v4, :cond_2

    .line 168
    move-object/from16 v0, p0

    iget-object v4, v0, Lcqt$3;->a:Lcqt;

    .line 3039
    iget-object v4, v4, Lcqt;->e:Lcqt$a;

    .line 168
    invoke-interface {v4}, Lcqt$a;->a()V

    .line 170
    :cond_2
    invoke-static {}, Lcok;->a()Lcok;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcqt$3;->a:Lcqt;

    .line 4039
    iget-object v6, v4, Lcqt;->b:Landroid/content/Context;

    .line 170
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;->f:Lcrd;

    check-cast v4, Lcqz$a;

    .line 4856
    iget-object v4, v4, Lcqz$a;->a:Ljava/lang/String;

    .line 170
    invoke-virtual {v5, v6, v4}, Lcok;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v16

    .line 171
    .local v16, "spannableString":Landroid/text/SpannableString;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcqt$3;->a:Lcqt;

    .line 5039
    iget-object v4, v4, Lcqt;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    .line 171
    invoke-virtual {v4}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->getSendMessageEditText()Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;->getSelectionStart()I

    move-result v2

    .line 172
    .local v2, "cursorIndex":I
    if-eqz v16, :cond_0

    .line 173
    move-object/from16 v0, p0

    iget-object v4, v0, Lcqt$3;->a:Lcqt;

    .line 6039
    iget-object v4, v4, Lcqt;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    .line 173
    invoke-virtual {v4}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->getSendMessageEditText()Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;->getText()Landroid/text/Editable;

    move-result-object v15

    .line 174
    .local v15, "ea":Landroid/text/Editable;
    move-object/from16 v0, v16

    invoke-interface {v15, v2, v0}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_0
.end method
