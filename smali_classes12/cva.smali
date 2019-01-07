.class public abstract Lcva;
.super Lctv;
.source "EncryptVoiceViewHolder.java"


# instance fields
.field protected S:Landroid/widget/TextView;

.field protected Y:Landroid/widget/LinearLayout;

.field Z:Ljava/lang/String;

.field protected a:Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;

.field aa:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

.field private final ab:Z

.field protected b:Landroid/view/View;


# direct methods
.method public constructor <init>(Z)V
    .locals 1
    .param p1, "isTo"    # Z

    .prologue
    const/4 v0, 0x0

    .line 44
    invoke-direct {p0, p1}, Lctv;-><init>(Z)V

    .line 40
    iput-object v0, p0, Lcva;->Z:Ljava/lang/String;

    .line 41
    iput-object v0, p0, Lcva;->aa:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    .line 45
    iput-boolean p1, p0, Lcva;->ab:Z

    .line 46
    return-void
.end method

.method static synthetic a(Lcva;)Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    .locals 1
    .param p0, "x0"    # Lcva;

    .prologue
    .line 33
    iget-object v0, p0, Lcva;->aa:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    return-object v0
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
    .line 74
    iget-object v0, p0, Lcva;->r:Landroid/view/View;

    sget v1, Lctk$f;->voice_play_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;

    iput-object v0, p0, Lcva;->a:Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;

    .line 75
    iget-object v0, p0, Lcva;->r:Landroid/view/View;

    sget v1, Lctk$f;->chatting_divide_line_v:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcva;->b:Landroid/view/View;

    .line 76
    iget-object v0, p0, Lcva;->r:Landroid/view/View;

    sget v1, Lctk$f;->chatting_content_translate_tv:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcva;->S:Landroid/widget/TextView;

    .line 77
    iget-object v0, p0, Lcva;->r:Landroid/view/View;

    sget v1, Lctk$f;->voice_play_view_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcva;->Y:Landroid/widget/LinearLayout;

    .line 79
    iget-object v0, p0, Lcva;->a:Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;

    new-instance v1, Lcva$1;

    invoke-direct {v1, p0}, Lcva$1;-><init>(Lcva;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->setVoiceFileDownloader(Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView$a;)V

    .line 91
    iget-object v0, p0, Lcva;->a:Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;

    new-instance v1, Lcva$2;

    invoke-direct {v1, p0}, Lcva$2;-><init>(Lcva;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 99
    iget-object v0, p0, Lcva;->Y:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    .line 100
    iget-object v0, p0, Lcva;->r:Landroid/view/View;

    new-instance v1, Lcva$3;

    invoke-direct {v1, p0}, Lcva$3;-><init>(Lcva;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 116
    :goto_0
    invoke-virtual {p0, p2}, Lcva;->c(Landroid/view/View;)V

    .line 117
    return-void

    .line 108
    :cond_0
    iget-object v0, p0, Lcva;->Y:Landroid/widget/LinearLayout;

    new-instance v1, Lcva$4;

    invoke-direct {v1, p0}, Lcva$4;-><init>(Lcva;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0
.end method

.method protected abstract a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;)V
.end method

.method protected final a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;I)V
    .locals 10
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "entity"    # Lcom/alibaba/wukong/im/Message;
    .param p3, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/16 v9, 0x8

    const/4 v8, 0x0

    .line 150
    iget-boolean v0, p0, Lcva;->ab:Z

    if-eqz v0, :cond_5

    .line 151
    iget-object v0, p0, Lcva;->a:Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;

    sget-object v1, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView$Direction;->RIGHT:Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView$Direction;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->setDirection(Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView$Direction;)V

    .line 2162
    :goto_0
    invoke-interface {p2}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v0

    instance-of v0, v0, Lcom/alibaba/wukong/im/MessageContent$EncryptAudioContent;

    if-eqz v0, :cond_1

    .line 2163
    invoke-static {p2}, Ldrp;->d(Lcom/alibaba/wukong/im/Message;)Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    move-result-object v0

    iput-object v0, p0, Lcva;->aa:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    .line 2164
    iget-object v0, p0, Lcva;->aa:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    if-eqz v0, :cond_1

    .line 2165
    invoke-interface {p2}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/MessageContent$EncryptAudioContent;

    .line 2167
    iget-object v1, p0, Lcva;->aa:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->spaceId:Ljava/lang/String;

    iget-object v2, p0, Lcva;->aa:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileId:Ljava/lang/String;

    iget-object v3, p0, Lcva;->aa:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    iget-object v3, v3, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileType:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Ldrp;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2169
    const-string/jumbo v1, "AUDIO"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/audio/AudioMagician;

    .line 2171
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/audio/AudioMagician;->hasAudioCache(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2172
    iput-object v2, p0, Lcva;->Z:Ljava/lang/String;

    .line 2181
    :cond_0
    :goto_1
    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent$EncryptAudioContent;->volumns()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent$EncryptAudioContent;->volumns()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0x32

    if-lt v1, v2, :cond_7

    .line 2182
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2183
    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent$EncryptAudioContent;->volumns()Ljava/util/List;

    move-result-object v2

    const/16 v3, 0x31

    invoke-interface {v2, v8, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2188
    :goto_2
    iget-object v2, p0, Lcva;->a:Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;

    invoke-interface {p2}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcva;->Z:Ljava/lang/String;

    iget-object v5, p0, Lcva;->aa:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    .line 2189
    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent$EncryptAudioContent;->duration()J

    move-result-wide v6

    .line 3119
    iput-object v3, v2, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->a:Ljava/lang/Object;

    .line 3120
    iput-object v4, v2, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->b:Ljava/lang/String;

    .line 3121
    iput-object v5, v2, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->c:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    .line 3122
    iput-object v1, v2, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->d:Ljava/util/List;

    .line 3123
    iput-wide v6, v2, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->e:J

    .line 3434
    iget-boolean v0, v2, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->h:Z

    if-nez v0, :cond_8

    .line 3435
    iget-object v0, v2, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->f:Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;

    iget-object v1, v2, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->d:Ljava/util/List;

    iget-wide v4, v2, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->e:J

    .line 4160
    invoke-virtual {v0, v1, v4, v5, v8}, Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;->a(Ljava/util/List;JZ)V

    .line 3125
    :goto_3
    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->a()V

    .line 3128
    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 3129
    if-eqz v0, :cond_1

    .line 3130
    invoke-interface {v0}, Landroid/view/ViewParent;->requestLayout()V

    .line 4195
    :cond_1
    iget-object v0, p0, Lcva;->s:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 4196
    iget-object v0, p0, Lcva;->s:Landroid/view/View;

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 4197
    iget-object v0, p0, Lcva;->x:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4199
    :cond_2
    iget-object v0, p0, Lcva;->d:Landroid/app/Activity;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcva;->d:Landroid/app/Activity;

    instance-of v0, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;

    if-eqz v0, :cond_4

    move-object v0, p1

    .line 4200
    check-cast v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->M()Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager;

    move-result-object v0

    .line 4201
    invoke-virtual {v0, p2}, Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager;->a(Lcom/alibaba/wukong/im/Message;)Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager$c;

    move-result-object v0

    .line 4202
    if-eqz v0, :cond_4

    .line 4203
    iget v1, v0, Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager$c;->e:I

    if-nez v1, :cond_16

    .line 4204
    iget-object v0, p0, Lcva;->b:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 4205
    iget-object v0, p0, Lcva;->b:Landroid/view/View;

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 4207
    :cond_3
    iget-object v0, p0, Lcva;->S:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    .line 4208
    iget-object v0, p0, Lcva;->S:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 158
    :cond_4
    :goto_4
    invoke-virtual {p0, p1, p2}, Lcva;->a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;)V

    .line 159
    return-void

    .line 153
    :cond_5
    iget-object v0, p0, Lcva;->a:Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;

    sget-object v1, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView$Direction;->LEFT:Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView$Direction;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->setDirection(Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView$Direction;)V

    goto/16 :goto_0

    .line 2173
    :cond_6
    iget-object v1, p0, Lcva;->aa:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcva;->aa:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileId:Ljava/lang/String;

    invoke-static {v1}, Ldrp;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2174
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcva;->aa:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileId:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2175
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2176
    iget-object v1, p0, Lcva;->aa:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileId:Ljava/lang/String;

    iput-object v1, p0, Lcva;->Z:Ljava/lang/String;

    goto/16 :goto_1

    .line 2185
    :cond_7
    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent$EncryptAudioContent;->volumns()Ljava/util/List;

    move-result-object v1

    goto/16 :goto_2

    .line 3439
    :cond_8
    iget-object v0, v2, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->g:Lcom/alibaba/android/dingtalkbase/widgets/voice/OnlySeekableSeekBar;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/voice/OnlySeekableSeekBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 3440
    iget-wide v4, v2, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->e:J

    const-wide/16 v6, 0x7d0

    cmp-long v1, v4, v6

    if-gtz v1, :cond_9

    .line 3441
    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v3, 0x42400000    # 48.0f

    invoke-static {v1, v3}, Lcms;->c(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 3469
    :goto_5
    iget-object v1, v2, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->g:Lcom/alibaba/android/dingtalkbase/widgets/voice/OnlySeekableSeekBar;

    invoke-virtual {v1, v0}, Lcom/alibaba/android/dingtalkbase/widgets/voice/OnlySeekableSeekBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_3

    .line 3442
    :cond_9
    iget-wide v4, v2, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->e:J

    const-wide/16 v6, 0xbb8

    cmp-long v1, v4, v6

    if-gtz v1, :cond_a

    .line 3443
    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v3, 0x42580000    # 54.0f

    invoke-static {v1, v3}, Lcms;->c(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_5

    .line 3444
    :cond_a
    iget-wide v4, v2, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->e:J

    const-wide/16 v6, 0xfa0

    cmp-long v1, v4, v6

    if-gtz v1, :cond_b

    .line 3445
    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v3, 0x42700000    # 60.0f

    invoke-static {v1, v3}, Lcms;->c(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_5

    .line 3446
    :cond_b
    iget-wide v4, v2, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->e:J

    const-wide/16 v6, 0x1388

    cmp-long v1, v4, v6

    if-gtz v1, :cond_c

    .line 3447
    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v3, 0x42840000    # 66.0f

    invoke-static {v1, v3}, Lcms;->c(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_5

    .line 3448
    :cond_c
    iget-wide v4, v2, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->e:J

    const-wide/16 v6, 0x1770

    cmp-long v1, v4, v6

    if-gtz v1, :cond_d

    .line 3449
    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v3, 0x42900000    # 72.0f

    invoke-static {v1, v3}, Lcms;->c(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_5

    .line 3450
    :cond_d
    iget-wide v4, v2, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->e:J

    const-wide/16 v6, 0x1b58

    cmp-long v1, v4, v6

    if-gtz v1, :cond_e

    .line 3451
    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v3, 0x429c0000    # 78.0f

    invoke-static {v1, v3}, Lcms;->c(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_5

    .line 3452
    :cond_e
    iget-wide v4, v2, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->e:J

    const-wide/16 v6, 0x1f40

    cmp-long v1, v4, v6

    if-gtz v1, :cond_f

    .line 3453
    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v3, 0x42a80000    # 84.0f

    invoke-static {v1, v3}, Lcms;->c(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto/16 :goto_5

    .line 3454
    :cond_f
    iget-wide v4, v2, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->e:J

    const-wide/16 v6, 0x2710

    cmp-long v1, v4, v6

    if-gez v1, :cond_10

    .line 3455
    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v3, 0x42b40000    # 90.0f

    invoke-static {v1, v3}, Lcms;->c(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto/16 :goto_5

    .line 3456
    :cond_10
    iget-wide v4, v2, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->e:J

    const-wide/16 v6, 0x4e20

    cmp-long v1, v4, v6

    if-gez v1, :cond_11

    .line 3457
    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v3, 0x42cc0000    # 102.0f

    invoke-static {v1, v3}, Lcms;->c(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto/16 :goto_5

    .line 3458
    :cond_11
    iget-wide v4, v2, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->e:J

    const-wide/16 v6, 0x7530

    cmp-long v1, v4, v6

    if-gez v1, :cond_12

    .line 3459
    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v3, 0x42e40000    # 114.0f

    invoke-static {v1, v3}, Lcms;->c(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto/16 :goto_5

    .line 3460
    :cond_12
    iget-wide v4, v2, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->e:J

    const-wide/32 v6, 0x9c40

    cmp-long v1, v4, v6

    if-gez v1, :cond_13

    .line 3461
    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v3, 0x42fc0000    # 126.0f

    invoke-static {v1, v3}, Lcms;->c(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto/16 :goto_5

    .line 3462
    :cond_13
    iget-wide v4, v2, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->e:J

    const-wide/32 v6, 0xc350

    cmp-long v1, v4, v6

    if-gez v1, :cond_14

    .line 3463
    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v3, 0x430a0000    # 138.0f

    invoke-static {v1, v3}, Lcms;->c(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto/16 :goto_5

    .line 3464
    :cond_14
    iget-wide v4, v2, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->e:J

    const-wide/32 v6, 0xea60

    cmp-long v1, v4, v6

    if-gez v1, :cond_15

    .line 3465
    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v3, 0x43100000    # 144.0f

    invoke-static {v1, v3}, Lcms;->c(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto/16 :goto_5

    .line 3467
    :cond_15
    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v3, 0x43160000    # 150.0f

    invoke-static {v1, v3}, Lcms;->c(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto/16 :goto_5

    .line 4210
    :cond_16
    iget v1, v0, Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager$c;->e:I

    sget v2, Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager$c;->b:I

    if-ne v1, v2, :cond_1b

    .line 4211
    iget-object v1, p0, Lcva;->s:Landroid/view/View;

    if-eqz v1, :cond_17

    .line 4212
    iget-object v1, p0, Lcva;->s:Landroid/view/View;

    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    .line 4213
    iget-object v1, p0, Lcva;->x:Landroid/widget/TextView;

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4214
    iget-object v1, p0, Lcva;->x:Landroid/widget/TextView;

    sget v2, Lctk$i;->voice_translate_loading_tip:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 4216
    :cond_17
    iget-object v1, v0, Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager$c;->f:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_19

    .line 4217
    iget-object v1, p0, Lcva;->b:Landroid/view/View;

    if-eqz v1, :cond_18

    .line 4218
    iget-object v1, p0, Lcva;->b:Landroid/view/View;

    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    .line 4220
    :cond_18
    iget-object v1, p0, Lcva;->S:Landroid/widget/TextView;

    if-eqz v1, :cond_4

    .line 4221
    iget-object v1, p0, Lcva;->S:Landroid/widget/TextView;

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4222
    iget-object v1, p0, Lcva;->S:Landroid/widget/TextView;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager$c;->f:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 4225
    :cond_19
    iget-object v0, p0, Lcva;->b:Landroid/view/View;

    if-eqz v0, :cond_1a

    .line 4226
    iget-object v0, p0, Lcva;->b:Landroid/view/View;

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 4228
    :cond_1a
    iget-object v0, p0, Lcva;->S:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    .line 4229
    iget-object v0, p0, Lcva;->S:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_4

    .line 4232
    :cond_1b
    iget v1, v0, Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager$c;->e:I

    sget v2, Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager$c;->c:I

    if-ne v1, v2, :cond_1d

    .line 4233
    iget-object v1, p0, Lcva;->b:Landroid/view/View;

    if-eqz v1, :cond_1c

    .line 4234
    iget-object v1, p0, Lcva;->b:Landroid/view/View;

    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    .line 4236
    :cond_1c
    iget-object v1, p0, Lcva;->S:Landroid/widget/TextView;

    if-eqz v1, :cond_4

    .line 4237
    iget-object v1, p0, Lcva;->S:Landroid/widget/TextView;

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4238
    iget-object v1, p0, Lcva;->S:Landroid/widget/TextView;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager$c;->f:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 4240
    :cond_1d
    iget v0, v0, Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager$c;->e:I

    sget v1, Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager$c;->d:I

    if-ne v0, v1, :cond_4

    .line 4241
    iget-object v0, p0, Lcva;->s:Landroid/view/View;

    if-eqz v0, :cond_1e

    .line 4242
    iget-object v0, p0, Lcva;->s:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 4243
    iget-object v0, p0, Lcva;->x:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4244
    iget-object v0, p0, Lcva;->x:Landroid/widget/TextView;

    sget v1, Lctk$i;->voice_translate_loading_error:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 4246
    :cond_1e
    iget-object v0, p0, Lcva;->b:Landroid/view/View;

    if-eqz v0, :cond_1f

    .line 4247
    iget-object v0, p0, Lcva;->b:Landroid/view/View;

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 4249
    :cond_1f
    iget-object v0, p0, Lcva;->S:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    .line 4250
    iget-object v0, p0, Lcva;->S:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_4
.end method

.method protected final a(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 120
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 131
    :goto_0
    :pswitch_0
    return-void

    .line 122
    :pswitch_1
    invoke-virtual {p0}, Lcva;->r()V

    goto :goto_0

    .line 127
    :pswitch_2
    invoke-virtual {p0}, Lcva;->q()V

    goto :goto_0

    .line 120
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

.method public final d()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 259
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcva;->g()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget v2, Lctk$i;->dt_accessibility_conversation_send_audio:I

    invoke-static {v2}, Lcva;->b(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, " "

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcva;->a:Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->getDurationString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 264
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    sget v2, Lctk$i;->lst_msg_tip_voice:I

    invoke-static {v2}, Lcva;->b(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcva;->a:Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->getDurationString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method p()Z
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 62
    iget-object v2, p0, Lcva;->d:Landroid/app/Activity;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcva;->d:Landroid/app/Activity;

    instance-of v2, v2, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;

    if-eqz v2, :cond_3

    .line 63
    invoke-virtual {p0}, Lcva;->a()Lcom/alibaba/wukong/im/Message;

    move-result-object v1

    .line 64
    .local v1, "message":Lcom/alibaba/wukong/im/Message;
    if-eqz v1, :cond_3

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v2

    invoke-interface {v2}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v2

    const/16 v5, 0xcc

    if-ne v2, v5, :cond_3

    .line 65
    iget-object v2, p0, Lcva;->d:Landroid/app/Activity;

    check-cast v2, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->M()Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager;

    move-result-object v0

    .line 66
    .local v0, "manager":Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager;
    if-eqz v0, :cond_2

    .line 1161
    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Message;->status()Lcom/alibaba/wukong/im/Message$MessageStatus;

    move-result-object v2

    sget-object v5, Lcom/alibaba/wukong/im/Message$MessageStatus;->SENT:Lcom/alibaba/wukong/im/Message$MessageStatus;

    if-ne v2, v5, :cond_1

    .line 1162
    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager;->a(Lcom/alibaba/wukong/im/Message;)Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager$c;

    move-result-object v2

    .line 1163
    if-eqz v2, :cond_0

    iget v2, v2, Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager$c;->e:I

    sget v5, Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager$c;->b:I

    if-ne v2, v5, :cond_0

    move v2, v3

    .line 66
    :goto_0
    if-eqz v2, :cond_2

    move v2, v3

    .line 69
    .end local v0    # "manager":Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager;
    .end local v1    # "message":Lcom/alibaba/wukong/im/Message;
    :goto_1
    return v2

    .restart local v0    # "manager":Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager;
    .restart local v1    # "message":Lcom/alibaba/wukong/im/Message;
    :cond_0
    move v2, v4

    .line 1163
    goto :goto_0

    :cond_1
    move v2, v4

    .line 1165
    goto :goto_0

    :cond_2
    move v2, v4

    .line 66
    goto :goto_1

    .end local v0    # "manager":Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager;
    .end local v1    # "message":Lcom/alibaba/wukong/im/Message;
    :cond_3
    move v2, v4

    .line 69
    goto :goto_1
.end method

.method protected q()V
    .locals 0

    .prologue
    .line 134
    return-void
.end method

.method protected r()V
    .locals 0

    .prologue
    .line 137
    return-void
.end method
