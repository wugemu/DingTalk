.class public abstract Ldak;
.super Lctt;
.source "UserVoiceViewHolder.java"


# instance fields
.field private final Y:Z

.field protected Z:Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;

.field protected aa:Landroid/view/View;

.field protected ab:Landroid/widget/TextView;

.field protected ac:Landroid/widget/LinearLayout;

.field protected ad:Lpl/droidsonroids/gif/GifImageView;


# direct methods
.method public constructor <init>(Z)V
    .locals 0
    .param p1, "isTo"    # Z

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lctt;-><init>(Z)V

    .line 41
    iput-boolean p1, p0, Ldak;->Y:Z

    .line 42
    return-void
.end method


# virtual methods
.method protected final a(Landroid/app/Activity;Landroid/view/View;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "rootView"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 46
    invoke-super {p0, p1, p2}, Lctt;->a(Landroid/app/Activity;Landroid/view/View;)V

    .line 47
    iget-object v0, p0, Ldak;->r:Landroid/view/View;

    sget v1, Lctk$f;->voice_play_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;

    iput-object v0, p0, Ldak;->Z:Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;

    .line 48
    iget-object v0, p0, Ldak;->r:Landroid/view/View;

    sget v1, Lctk$f;->chatting_divide_line_v:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Ldak;->aa:Landroid/view/View;

    .line 49
    iget-object v0, p0, Ldak;->r:Landroid/view/View;

    sget v1, Lctk$f;->chatting_content_translate_tv:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ldak;->ab:Landroid/widget/TextView;

    .line 50
    iget-object v0, p0, Ldak;->r:Landroid/view/View;

    sget v1, Lctk$f;->voice_play_view_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Ldak;->ac:Landroid/widget/LinearLayout;

    .line 51
    sget v0, Lctk$f;->iv_remind:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lpl/droidsonroids/gif/GifImageView;

    iput-object v0, p0, Ldak;->ad:Lpl/droidsonroids/gif/GifImageView;

    .line 52
    iget-object v0, p0, Ldak;->Z:Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;

    new-instance v1, Ldak$1;

    invoke-direct {v1, p0}, Ldak$1;-><init>(Ldak;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 59
    iget-object v0, p0, Ldak;->ac:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    .line 60
    iget-object v0, p0, Ldak;->r:Landroid/view/View;

    new-instance v1, Ldak$2;

    invoke-direct {v1, p0}, Ldak$2;-><init>(Ldak;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 76
    :goto_0
    invoke-virtual {p0, p2}, Ldak;->c(Landroid/view/View;)V

    .line 77
    return-void

    .line 68
    :cond_0
    iget-object v0, p0, Ldak;->ac:Landroid/widget/LinearLayout;

    new-instance v1, Ldak$3;

    invoke-direct {v1, p0}, Ldak$3;-><init>(Ldak;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0
.end method

.method protected final a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;I)V
    .locals 12
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "entity"    # Lcom/alibaba/wukong/im/Message;
    .param p3, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 108
    invoke-interface {p2}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v8

    check-cast v8, Lcom/alibaba/wukong/im/MessageContent$AudioContent;

    .line 109
    .local v8, "audio":Lcom/alibaba/wukong/im/MessageContent$AudioContent;
    iget-boolean v0, p0, Ldak;->Y:Z

    if-eqz v0, :cond_3

    .line 110
    iget-object v0, p0, Ldak;->Z:Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;

    sget-object v1, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView$Direction;->RIGHT:Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView$Direction;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->setDirection(Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView$Direction;)V

    .line 1124
    :goto_0
    iget-object v0, p0, Ldak;->Z:Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;

    invoke-interface {p2}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 1125
    invoke-static {v8, p2}, Ldiq;->a(Lcom/alibaba/wukong/im/MessageContent$MediaContent;Lcom/alibaba/wukong/im/Message;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v8}, Lcom/alibaba/wukong/im/MessageContent$AudioContent;->volumns()Ljava/util/List;

    move-result-object v3

    invoke-interface {v8}, Lcom/alibaba/wukong/im/MessageContent$AudioContent;->duration()J

    move-result-wide v4

    const/4 v6, 0x0

    const-string/jumbo v7, "IM"

    invoke-static {p2}, Liaf;->a(Lcom/alibaba/wukong/im/Message;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8}, Lcom/alibaba/wukong/im/MessageContent$AudioContent;->getAuthCode()Ljava/lang/String;

    move-result-object v10

    invoke-interface {p2}, Lcom/alibaba/wukong/im/Message;->extension()Ljava/util/Map;

    move-result-object v11

    invoke-static {v7, v9, v10, v11}, Liaf;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v7

    .line 1124
    invoke-virtual/range {v0 .. v7}, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/util/List;JLjava/util/Map;Ljava/util/Map;)V

    .line 1140
    iget-object v0, p0, Ldak;->s:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1141
    iget-object v0, p0, Ldak;->s:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1142
    iget-object v0, p0, Ldak;->x:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1144
    :cond_0
    iget-object v0, p0, Ldak;->d:Landroid/app/Activity;

    if-eqz v0, :cond_2

    iget-object v0, p0, Ldak;->d:Landroid/app/Activity;

    instance-of v0, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;

    if-eqz v0, :cond_2

    move-object v0, p1

    .line 1145
    check-cast v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->M()Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager;

    move-result-object v0

    .line 1146
    invoke-virtual {v0, p2}, Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager;->a(Lcom/alibaba/wukong/im/Message;)Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager$c;

    move-result-object v0

    .line 1147
    if-eqz v0, :cond_2

    .line 1148
    iget v1, v0, Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager$c;->e:I

    if-nez v1, :cond_4

    .line 1149
    iget-object v0, p0, Ldak;->aa:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 1150
    iget-object v0, p0, Ldak;->aa:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1152
    :cond_1
    iget-object v0, p0, Ldak;->ab:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 1153
    iget-object v0, p0, Ldak;->ab:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 117
    :cond_2
    :goto_1
    invoke-virtual {p0, p1, p2, v8, p3}, Ldak;->a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;Lcom/alibaba/wukong/im/MessageContent$AudioContent;I)V

    .line 119
    iget-object v0, p0, Ldak;->Z:Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;

    invoke-virtual {p0}, Ldak;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 120
    iget-object v0, p0, Ldak;->ad:Lpl/droidsonroids/gif/GifImageView;

    invoke-static {p1, p2, v0}, Ldiw;->a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;Lpl/droidsonroids/gif/GifImageView;)V

    .line 121
    return-void

    .line 112
    :cond_3
    iget-object v0, p0, Ldak;->Z:Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;

    sget-object v1, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView$Direction;->LEFT:Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView$Direction;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->setDirection(Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView$Direction;)V

    goto/16 :goto_0

    .line 1155
    :cond_4
    iget v1, v0, Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager$c;->e:I

    sget v2, Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager$c;->b:I

    if-ne v1, v2, :cond_9

    .line 1156
    iget-object v1, p0, Ldak;->s:Landroid/view/View;

    if-eqz v1, :cond_5

    .line 1157
    iget-object v1, p0, Ldak;->s:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1158
    iget-object v1, p0, Ldak;->x:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1159
    iget-object v1, p0, Ldak;->x:Landroid/widget/TextView;

    sget v2, Lctk$i;->voice_translate_loading_tip:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 1161
    :cond_5
    iget-object v1, v0, Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager$c;->f:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 1162
    iget-object v1, p0, Ldak;->aa:Landroid/view/View;

    if-eqz v1, :cond_6

    .line 1163
    iget-object v1, p0, Ldak;->aa:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1165
    :cond_6
    iget-object v1, p0, Ldak;->ab:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    .line 1166
    iget-object v1, p0, Ldak;->ab:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1167
    iget-object v1, p0, Ldak;->ab:Landroid/widget/TextView;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager$c;->f:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1170
    :cond_7
    iget-object v0, p0, Ldak;->aa:Landroid/view/View;

    if-eqz v0, :cond_8

    .line 1171
    iget-object v0, p0, Ldak;->aa:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1173
    :cond_8
    iget-object v0, p0, Ldak;->ab:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 1174
    iget-object v0, p0, Ldak;->ab:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 1177
    :cond_9
    iget v1, v0, Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager$c;->e:I

    sget v2, Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager$c;->c:I

    if-ne v1, v2, :cond_b

    .line 1178
    iget-object v1, p0, Ldak;->aa:Landroid/view/View;

    if-eqz v1, :cond_a

    .line 1179
    iget-object v1, p0, Ldak;->aa:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1181
    :cond_a
    iget-object v1, p0, Ldak;->ab:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    .line 1182
    iget-object v1, p0, Ldak;->ab:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1183
    iget-object v1, p0, Ldak;->ab:Landroid/widget/TextView;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager$c;->f:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 1185
    :cond_b
    iget v0, v0, Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager$c;->e:I

    sget v1, Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager$c;->d:I

    if-ne v0, v1, :cond_2

    .line 1186
    iget-object v0, p0, Ldak;->s:Landroid/view/View;

    if-eqz v0, :cond_c

    .line 1187
    iget-object v0, p0, Ldak;->s:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1188
    iget-object v0, p0, Ldak;->x:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1189
    iget-object v0, p0, Ldak;->x:Landroid/widget/TextView;

    sget v1, Lctk$i;->voice_translate_loading_error:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1191
    :cond_c
    iget-object v0, p0, Ldak;->aa:Landroid/view/View;

    if-eqz v0, :cond_d

    .line 1192
    iget-object v0, p0, Ldak;->aa:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1194
    :cond_d
    iget-object v0, p0, Ldak;->ab:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 1195
    iget-object v0, p0, Ldak;->ab:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1
.end method

.method protected abstract a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;Lcom/alibaba/wukong/im/MessageContent$AudioContent;I)V
.end method

.method protected final a(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 80
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 91
    :goto_0
    :pswitch_0
    return-void

    .line 82
    :pswitch_1
    invoke-virtual {p0}, Ldak;->p()V

    goto :goto_0

    .line 87
    :pswitch_2
    invoke-virtual {p0}, Ldak;->q()V

    goto :goto_0

    .line 80
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected abstract c(Landroid/view/View;)V
.end method

.method public d()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 204
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0}, Ldak;->g()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget v2, Lctk$i;->dt_accessibility_conversation_send_audio:I

    invoke-static {v2}, Ldak;->b(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Ldak;->Z:Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->getDurationString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 209
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    sget v2, Lctk$i;->lst_msg_tip_voice:I

    invoke-static {v2}, Ldak;->b(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Ldak;->Z:Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->getDurationString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected p()V
    .locals 0

    .prologue
    .line 97
    return-void
.end method

.method protected q()V
    .locals 0

    .prologue
    .line 94
    return-void
.end method
