.class final Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$18;
.super Ljava/lang/Object;
.source "ChatMsgActivity.java"

# interfaces
.implements Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    .prologue
    .line 6511
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$18;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;)V
    .locals 20
    .param p1, "item"    # Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;

    .prologue
    .line 6514
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$18;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v4, v4, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->x:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->a(Z)V

    .line 6515
    move-object/from16 v0, p1

    iget v4, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;->d:I

    sget v5, Lctk$e;->emotion_delete:I

    if-ne v4, v5, :cond_1

    .line 6516
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

    .line 6517
    .local v3, "event":Landroid/view/KeyEvent;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$18;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v4, v4, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->x:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v4}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->getSendMessageEditText()Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 6573
    .end local v3    # "event":Landroid/view/KeyEvent;
    :cond_0
    :goto_0
    return-void

    .line 6518
    :cond_1
    move-object/from16 v0, p1

    iget v4, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;->d:I

    sget v5, Lctk$e;->emotion_bg_fav_add:I

    if-ne v4, v5, :cond_2

    .line 6519
    new-instance v17, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$18;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    const-class v5, Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;

    move-object/from16 v0, v17

    invoke-direct {v0, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 6520
    .local v17, "i":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$18;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 6522
    .end local v17    # "i":Landroid/content/Intent;
    :cond_2
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;->f:Lcrd;

    if-eqz v4, :cond_3

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;->f:Lcrd;

    instance-of v4, v4, Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;

    if-eqz v4, :cond_3

    .line 6523
    const-class v4, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v4

    new-instance v5, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$18$1;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v5, v0, v1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$18$1;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$18;Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;)V

    invoke-interface {v4, v5}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 6539
    :cond_3
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;->f:Lcrd;

    if-eqz v4, :cond_5

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;->f:Lcrd;

    instance-of v4, v4, Lcqz$a;

    if-eqz v4, :cond_5

    .line 6540
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;->f:Lcrd;

    move-object/from16 v16, v0

    check-cast v16, Lcqz$a;

    .line 6541
    .local v16, "emotionIdentifier":Lcqz$a;
    invoke-static {}, Lcok;->a()Lcok;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$18;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v5}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->v(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    move-result-object v5

    .line 6856
    move-object/from16 v0, v16

    iget-object v6, v0, Lcqz$a;->a:Ljava/lang/String;

    .line 6541
    invoke-virtual {v4, v5, v6}, Lcok;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v19

    .line 6542
    .local v19, "spannableString":Landroid/text/SpannableString;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$18;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v4, v4, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->x:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v4}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->getSendMessageEditText()Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;->getSelectionStart()I

    move-result v2

    .line 6543
    .local v2, "cursorIndex":I
    if-eqz v19, :cond_4

    .line 6544
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$18;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v4, v4, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->x:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v4}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->getSendMessageEditText()Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;->getText()Landroid/text/Editable;

    move-result-object v15

    .line 6545
    .local v15, "ea":Landroid/text/Editable;
    move-object/from16 v0, v19

    invoke-interface {v15, v2, v0}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 7856
    .end local v15    # "ea":Landroid/text/Editable;
    :cond_4
    move-object/from16 v0, v16

    iget-object v4, v0, Lcqz$a;->a:Ljava/lang/String;

    .line 6547
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 6548
    new-instance v18, Ljava/util/HashMap;

    invoke-direct/range {v18 .. v18}, Ljava/util/HashMap;-><init>()V

    .line 6549
    .local v18, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v4, "name"

    .line 8856
    move-object/from16 v0, v16

    iget-object v5, v0, Lcqz$a;->a:Ljava/lang/String;

    .line 6549
    move-object/from16 v0, v18

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6550
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v4

    const-string/jumbo v5, "dt_im_emoji_click"

    move-object/from16 v0, v18

    invoke-interface {v4, v5, v0}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_0

    .line 6552
    .end local v2    # "cursorIndex":I
    .end local v16    # "emotionIdentifier":Lcqz$a;
    .end local v18    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v19    # "spannableString":Landroid/text/SpannableString;
    :cond_5
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;->f:Lcrd;

    if-eqz v4, :cond_0

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;->f:Lcrd;

    instance-of v4, v4, Lcqy;

    if-eqz v4, :cond_0

    .line 6553
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;->f:Lcrd;

    move-object/from16 v16, v0

    check-cast v16, Lcqy;

    .line 9022
    .local v16, "emotionIdentifier":Lcqy;
    move-object/from16 v0, v16

    iget-object v4, v0, Lcqy;->a:Ljava/lang/String;

    .line 6555
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 6556
    invoke-static {}, Lcrc;->a()Lcrc;

    move-result-object v4

    .line 10022
    move-object/from16 v0, v16

    iget-object v5, v0, Lcqy;->a:Ljava/lang/String;

    .line 6556
    invoke-virtual {v4, v5}, Lcrc;->a(Ljava/lang/String;)V

    .line 6559
    :cond_6
    invoke-static {}, Ldqa;->a()Ldqa;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$18;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v5}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->v(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    move-result-object v5

    .line 11022
    move-object/from16 v0, v16

    iget-object v6, v0, Lcqy;->a:Ljava/lang/String;

    .line 11055
    const/high16 v7, 0x41c00000    # 24.0f

    invoke-virtual {v4, v5, v6, v7}, Ldqa;->a(Landroid/content/Context;Ljava/lang/CharSequence;F)Landroid/text/SpannableString;

    move-result-object v19

    .line 6560
    .restart local v19    # "spannableString":Landroid/text/SpannableString;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$18;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v4, v4, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->x:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v4}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->getSendMessageEditText()Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;->getSelectionStart()I

    move-result v2

    .line 6561
    .restart local v2    # "cursorIndex":I
    if-eqz v19, :cond_7

    .line 6562
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$18;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v4, v4, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->x:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v4}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->getSendMessageEditText()Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;->getText()Landroid/text/Editable;

    move-result-object v15

    .line 6563
    .restart local v15    # "ea":Landroid/text/Editable;
    move-object/from16 v0, v19

    invoke-interface {v15, v2, v0}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 12022
    .end local v15    # "ea":Landroid/text/Editable;
    :cond_7
    move-object/from16 v0, v16

    iget-object v4, v0, Lcqy;->a:Ljava/lang/String;

    .line 6565
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 6566
    new-instance v18, Ljava/util/HashMap;

    invoke-direct/range {v18 .. v18}, Ljava/util/HashMap;-><init>()V

    .line 6567
    .restart local v18    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v4, "name"

    .line 13022
    move-object/from16 v0, v16

    iget-object v5, v0, Lcqy;->a:Ljava/lang/String;

    .line 6567
    move-object/from16 v0, v18

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6568
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v4

    const-string/jumbo v5, "dt_im_dynamic_emoji_click"

    move-object/from16 v0, v18

    invoke-interface {v4, v5, v0}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_0
.end method
