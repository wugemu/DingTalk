.class public Lecg;
.super Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;
.source "FullScreenVoiceRecordDialog.java"


# static fields
.field private static final l:Ljava/lang/String;


# instance fields
.field private A:Landroid/content/BroadcastReceiver;

.field public b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;

.field public c:Lcom/alibaba/doraemon/audio/AudioMagicianEx;

.field public d:Landroid/graphics/PointF;

.field public e:Landroid/graphics/PointF;

.field public f:I

.field public g:Z

.field public h:Z

.field public i:I

.field public j:Ljava/io/File;

.field public k:Landroid/widget/TextView;

.field private m:Landroid/view/View;

.field private n:Landroid/media/AudioManager;

.field private o:J

.field private p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private q:I

.field private r:Landroid/view/View;

.field private s:Landroid/view/View;

.field private t:Landroid/view/View;

.field private u:Landroid/view/View;

.field private v:Landroid/widget/TextView;

.field private w:Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;

.field private x:Landroid/view/View;

.field private y:Landroid/view/View;

.field private z:Lciu$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const-class v0, Lecg;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lecg;->l:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;)V
    .locals 5
    .param p1, "activity"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 87
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;-><init>()V

    .line 308
    new-instance v0, Lecg$2;

    invoke-direct {v0, p0}, Lecg$2;-><init>(Lecg;)V

    iput-object v0, p0, Lecg;->z:Lciu$b;

    .line 324
    new-instance v0, Lecg$3;

    invoke-direct {v0, p0}, Lecg$3;-><init>(Lecg;)V

    iput-object v0, p0, Lecg;->A:Landroid/content/BroadcastReceiver;

    .line 88
    iput-object p1, p0, Lecg;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;

    .line 89
    iget-object v0, p0, Lecg;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;

    sget v1, Lctk$g;->full_screen_voice_record:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lecg;->m:Landroid/view/View;

    .line 90
    iget-object v0, p0, Lecg;->m:Landroid/view/View;

    sget v1, Lctk$f;->hand_point:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lecg;->r:Landroid/view/View;

    .line 91
    iget-object v0, p0, Lecg;->m:Landroid/view/View;

    sget v1, Lctk$f;->hand_point_black:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lecg;->s:Landroid/view/View;

    .line 92
    iget-object v0, p0, Lecg;->m:Landroid/view/View;

    sget v1, Lctk$f;->hand_point_red:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lecg;->t:Landroid/view/View;

    .line 93
    iget-object v0, p0, Lecg;->m:Landroid/view/View;

    sget v1, Lctk$f;->dialog_background:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lecg;->u:Landroid/view/View;

    .line 94
    iget-object v0, p0, Lecg;->m:Landroid/view/View;

    sget v1, Lctk$f;->time_text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lecg;->v:Landroid/widget/TextView;

    .line 95
    iget-object v0, p0, Lecg;->m:Landroid/view/View;

    sget v1, Lctk$f;->waveform_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;

    iput-object v0, p0, Lecg;->w:Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;

    .line 96
    iget-object v0, p0, Lecg;->m:Landroid/view/View;

    sget v1, Lctk$f;->main_text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lecg;->k:Landroid/widget/TextView;

    .line 97
    iget-object v0, p0, Lecg;->m:Landroid/view/View;

    sget v1, Lctk$f;->cancel_tip_bg:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lecg;->x:Landroid/view/View;

    .line 98
    iget-object v0, p0, Lecg;->m:Landroid/view/View;

    sget v1, Lctk$f;->cancel_tip:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lecg;->y:Landroid/view/View;

    .line 99
    iget-object v0, p0, Lecg;->m:Landroid/view/View;

    invoke-virtual {p0, v0}, Lecg;->setContentView(Landroid/view/View;)V

    .line 100
    invoke-virtual {p0, v3}, Lecg;->setWidth(I)V

    .line 101
    invoke-virtual {p0, v3}, Lecg;->setHeight(I)V

    .line 102
    sget v0, Lctk$j;->full_screen_voice_anim_style:I

    invoke-virtual {p0, v0}, Lecg;->setAnimationStyle(I)V

    .line 104
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->b()Lchy;

    move-result-object v0

    invoke-virtual {v0}, Lchy;->genAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    iput-object v0, p0, Lecg;->n:Landroid/media/AudioManager;

    .line 1110
    iget-object v0, p0, Lecg;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    .line 1111
    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 1112
    iget-object v1, p0, Lecg;->w:Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;

    int-to-float v2, v0

    const/high16 v3, 0x3fc00000    # 1.5f

    invoke-virtual {v1, v0, v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;->a(IFF)V

    .line 1113
    iget-object v0, p0, Lecg;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1115
    iget-object v1, p0, Lecg;->w:Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;

    sget v2, Lctk$c;->waveform_selected_left:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    sget v3, Lctk$c;->pure_white:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v1, v2, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;->a(II)V

    .line 1116
    invoke-direct {p0, v4}, Lecg;->a(I)V

    .line 1117
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v4}, Lecg;->a(IZ)V

    .line 107
    return-void
.end method

.method static synthetic a(Lecg;I)I
    .locals 0
    .param p0, "x0"    # Lecg;
    .param p1, "x1"    # I

    .prologue
    .line 43
    iput p1, p0, Lecg;->q:I

    return p1
.end method

.method static synthetic a(Lecg;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lecg;

    .prologue
    .line 43
    iget-object v0, p0, Lecg;->r:Landroid/view/View;

    return-object v0
.end method

.method static synthetic a(Lecg;Ljava/io/File;)Ljava/io/File;
    .locals 0
    .param p0, "x0"    # Lecg;
    .param p1, "x1"    # Ljava/io/File;

    .prologue
    .line 43
    iput-object p1, p0, Lecg;->j:Ljava/io/File;

    return-object p1
.end method

.method static synthetic a(Lecg;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lecg;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 43
    iput-object p1, p0, Lecg;->p:Ljava/util/List;

    return-object p1
.end method

.method private a(I)V
    .locals 7
    .param p1, "time"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 132
    int-to-long v0, p1

    iput-wide v0, p0, Lecg;->o:J

    .line 133
    const/16 v0, 0x32

    if-ge v0, p1, :cond_0

    .line 134
    iget-object v0, p0, Lecg;->v:Landroid/widget/TextView;

    iget-object v1, p0, Lecg;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;

    sget v2, Lctk$i;->meaasge_voice_remaining_seconds:I

    new-array v3, v3, [Ljava/lang/Object;

    rsub-int/lit8 v4, p1, 0x3c

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    :goto_0
    return-void

    .line 136
    :cond_0
    const/16 v0, 0xa

    if-ge p1, v0, :cond_1

    .line 137
    iget-object v0, p0, Lecg;->v:Landroid/widget/TextView;

    iget-object v1, p0, Lecg;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;

    sget v2, Lctk$i;->voice_record_duration:I

    new-array v3, v3, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "0"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 139
    :cond_1
    iget-object v0, p0, Lecg;->v:Landroid/widget/TextView;

    iget-object v1, p0, Lecg;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;

    sget v2, Lctk$i;->voice_record_duration:I

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method static synthetic a(Lecg;Z)Z
    .locals 0
    .param p0, "x0"    # Lecg;
    .param p1, "x1"    # Z

    .prologue
    .line 43
    iput-boolean p1, p0, Lecg;->h:Z

    return p1
.end method

.method static synthetic b(Lecg;I)V
    .locals 0
    .param p0, "x0"    # Lecg;
    .param p1, "x1"    # I

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lecg;->a(I)V

    return-void
.end method

.method static synthetic b(Lecg;Ljava/util/List;)V
    .locals 6
    .param p0, "x0"    # Lecg;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    const-wide/32 v4, 0xea60

    const/16 v3, 0x32

    const/4 v2, 0x1

    .line 43
    .line 3121
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 3122
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, v3, :cond_1

    .line 3123
    iget-object v0, p0, Lecg;->w:Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;

    invoke-virtual {v0, p1, v4, v5, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;->a(Ljava/util/List;JZ)V

    .line 3127
    :goto_0
    iget-object v0, p0, Lecg;->w:Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;->requestLayout()V

    .line 43
    :cond_0
    return-void

    .line 3125
    :cond_1
    iget-object v0, p0, Lecg;->w:Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p1, v3, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1, v4, v5, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;->a(Ljava/util/List;JZ)V

    goto :goto_0
.end method

.method static synthetic b(Lecg;)Z
    .locals 1
    .param p0, "x0"    # Lecg;

    .prologue
    .line 43
    iget-boolean v0, p0, Lecg;->g:Z

    return v0
.end method

.method static synthetic b(Lecg;Z)Z
    .locals 1
    .param p0, "x0"    # Lecg;
    .param p1, "x1"    # Z

    .prologue
    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lecg;->g:Z

    return v0
.end method

.method static synthetic c(Lecg;I)I
    .locals 1
    .param p0, "x0"    # Lecg;
    .param p1, "x1"    # I

    .prologue
    .line 43
    const/4 v0, 0x1

    iput v0, p0, Lecg;->i:I

    return v0
.end method

.method static synthetic c(Lecg;)Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;
    .locals 1
    .param p0, "x0"    # Lecg;

    .prologue
    .line 43
    iget-object v0, p0, Lecg;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;

    return-object v0
.end method

.method static synthetic c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lecg;->l:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lecg;)V
    .locals 3
    .param p0, "x0"    # Lecg;

    .prologue
    .line 43
    .line 1336
    iget-object v0, p0, Lecg;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;

    if-eqz v0, :cond_0

    .line 1337
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1338
    const-string/jumbo v1, "com.alibaba.android.babylon.action.voipstart"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1339
    const-string/jumbo v1, "CALL_STATE_RINGING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1340
    const-string/jumbo v1, "android.intent.action.PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1341
    const-string/jumbo v1, "android.intent.action.ANSWER"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1342
    const-string/jumbo v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1343
    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 1344
    iget-object v1, p0, Lecg;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;

    iget-object v2, p0, Lecg;->A:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 43
    :cond_0
    return-void
.end method

.method static synthetic e(Lecg;)Lciu$b;
    .locals 1
    .param p0, "x0"    # Lecg;

    .prologue
    .line 43
    iget-object v0, p0, Lecg;->z:Lciu$b;

    return-object v0
.end method

.method static synthetic f(Lecg;)Landroid/media/AudioManager;
    .locals 1
    .param p0, "x0"    # Lecg;

    .prologue
    .line 43
    iget-object v0, p0, Lecg;->n:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic g(Lecg;)Z
    .locals 1
    .param p0, "x0"    # Lecg;

    .prologue
    .line 43
    iget-boolean v0, p0, Lecg;->h:Z

    return v0
.end method

.method static synthetic h(Lecg;)V
    .locals 3
    .param p0, "x0"    # Lecg;

    .prologue
    .line 43
    .line 2349
    iget-object v0, p0, Lecg;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;

    if-eqz v0, :cond_0

    .line 2351
    :try_start_0
    iget-object v0, p0, Lecg;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;

    iget-object v1, p0, Lecg;->A:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1473
    :cond_0
    :goto_0
    invoke-static {}, Lciu;->a()Lciu;

    move-result-object v0

    sget-object v1, Lecg;->l:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lciu;->a(Ljava/lang/String;I)V

    .line 1474
    iget-object v0, p0, Lecg;->n:Landroid/media/AudioManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 43
    return-void

    .line 2352
    :catch_0
    move-exception v0

    .line 2353
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic i(Lecg;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lecg;

    .prologue
    .line 43
    iget-object v0, p0, Lecg;->p:Ljava/util/List;

    return-object v0
.end method

.method static synthetic j(Lecg;)I
    .locals 1
    .param p0, "x0"    # Lecg;

    .prologue
    .line 43
    iget v0, p0, Lecg;->q:I

    return v0
.end method

.method static synthetic k(Lecg;)I
    .locals 1
    .param p0, "x0"    # Lecg;

    .prologue
    .line 43
    iget v0, p0, Lecg;->i:I

    return v0
.end method

.method static synthetic l(Lecg;)Ljava/io/File;
    .locals 1
    .param p0, "x0"    # Lecg;

    .prologue
    .line 43
    iget-object v0, p0, Lecg;->j:Ljava/io/File;

    return-object v0
.end method

.method static synthetic m(Lecg;)Lcom/alibaba/doraemon/audio/AudioMagicianEx;
    .locals 1
    .param p0, "x0"    # Lecg;

    .prologue
    .line 43
    iget-object v0, p0, Lecg;->c:Lcom/alibaba/doraemon/audio/AudioMagicianEx;

    return-object v0
.end method


# virtual methods
.method public a(IZ)V
    .locals 10
    .param p1, "mode"    # I
    .param p2, "useAnimation"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/high16 v9, 0x42c80000    # 100.0f

    const/4 v5, 0x2

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 145
    const-wide/16 v0, 0x0

    .line 146
    .local v0, "animTime":J
    if-eqz p2, :cond_0

    .line 147
    const-wide/16 v0, 0xc8

    .line 149
    :cond_0
    if-ne p1, v6, :cond_2

    .line 150
    iget v4, p0, Lecg;->f:I

    if-eq v4, v6, :cond_1

    .line 151
    iput v6, p0, Lecg;->f:I

    .line 153
    new-instance v2, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v2, v8, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 154
    .local v2, "animation":Landroid/view/animation/Animation;
    invoke-virtual {v2, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 155
    invoke-virtual {v2, v6}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 156
    iget-object v4, p0, Lecg;->x:Landroid/view/View;

    invoke-virtual {v4, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 158
    new-instance v3, Landroid/view/animation/AnimationSet;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 159
    .local v3, "animationSet":Landroid/view/animation/AnimationSet;
    new-instance v2, Landroid/view/animation/AlphaAnimation;

    .end local v2    # "animation":Landroid/view/animation/Animation;
    invoke-direct {v2, v8, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 160
    .restart local v2    # "animation":Landroid/view/animation/Animation;
    invoke-virtual {v2, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 161
    invoke-virtual {v2, v6}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 162
    invoke-virtual {v3, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 163
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    .end local v2    # "animation":Landroid/view/animation/Animation;
    iget-object v4, p0, Lecg;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;

    invoke-static {v4, v9}, Lcms;->c(Landroid/content/Context;F)I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    invoke-direct {v2, v7, v7, v7, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 164
    .restart local v2    # "animation":Landroid/view/animation/Animation;
    invoke-virtual {v2, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 165
    invoke-virtual {v2, v6}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 166
    invoke-virtual {v3, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 167
    invoke-virtual {v3, v6}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 168
    iget-object v4, p0, Lecg;->y:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 170
    new-instance v2, Landroid/view/animation/AlphaAnimation;

    .end local v2    # "animation":Landroid/view/animation/Animation;
    invoke-direct {v2, v8, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 171
    .restart local v2    # "animation":Landroid/view/animation/Animation;
    invoke-virtual {v2, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 172
    invoke-virtual {v2, v6}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 173
    iget-object v4, p0, Lecg;->t:Landroid/view/View;

    invoke-virtual {v4, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 175
    iget-object v4, p0, Lecg;->k:Landroid/widget/TextView;

    sget v5, Lctk$i;->messgae_voice_fullscreen_releaseandslide:I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 177
    new-instance v2, Landroid/view/animation/AlphaAnimation;

    .end local v2    # "animation":Landroid/view/animation/Animation;
    invoke-direct {v2, v7, v8}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 178
    .restart local v2    # "animation":Landroid/view/animation/Animation;
    invoke-virtual {v2, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 179
    invoke-virtual {v2, v6}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 180
    iget-object v4, p0, Lecg;->v:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 182
    new-instance v2, Landroid/view/animation/AlphaAnimation;

    .end local v2    # "animation":Landroid/view/animation/Animation;
    invoke-direct {v2, v7, v8}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 183
    .restart local v2    # "animation":Landroid/view/animation/Animation;
    invoke-virtual {v2, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 184
    invoke-virtual {v2, v6}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 185
    iget-object v4, p0, Lecg;->w:Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;

    invoke-virtual {v4, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 228
    .end local v2    # "animation":Landroid/view/animation/Animation;
    .end local v3    # "animationSet":Landroid/view/animation/AnimationSet;
    :cond_1
    :goto_0
    return-void

    .line 187
    :cond_2
    if-ne p1, v5, :cond_1

    .line 189
    iget v4, p0, Lecg;->f:I

    if-eq v4, v5, :cond_1

    .line 190
    iput v5, p0, Lecg;->f:I

    .line 192
    new-instance v2, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v2, v7, v8}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 193
    .restart local v2    # "animation":Landroid/view/animation/Animation;
    invoke-virtual {v2, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 194
    invoke-virtual {v2, v6}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 195
    iget-object v4, p0, Lecg;->x:Landroid/view/View;

    invoke-virtual {v4, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 197
    new-instance v3, Landroid/view/animation/AnimationSet;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 198
    .restart local v3    # "animationSet":Landroid/view/animation/AnimationSet;
    new-instance v2, Landroid/view/animation/AlphaAnimation;

    .end local v2    # "animation":Landroid/view/animation/Animation;
    invoke-direct {v2, v7, v8}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 199
    .restart local v2    # "animation":Landroid/view/animation/Animation;
    invoke-virtual {v2, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 200
    invoke-virtual {v2, v6}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 201
    invoke-virtual {v3, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 202
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    .end local v2    # "animation":Landroid/view/animation/Animation;
    iget-object v4, p0, Lecg;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;

    invoke-static {v4, v9}, Lcms;->c(Landroid/content/Context;F)I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    invoke-direct {v2, v7, v7, v4, v7}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 203
    .restart local v2    # "animation":Landroid/view/animation/Animation;
    invoke-virtual {v2, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 204
    invoke-virtual {v2, v6}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 205
    invoke-virtual {v3, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 206
    invoke-virtual {v3, v6}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 207
    iget-object v4, p0, Lecg;->y:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 209
    new-instance v2, Landroid/view/animation/AlphaAnimation;

    .end local v2    # "animation":Landroid/view/animation/Animation;
    invoke-direct {v2, v7, v8}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 210
    .restart local v2    # "animation":Landroid/view/animation/Animation;
    invoke-virtual {v2, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 211
    invoke-virtual {v2, v6}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 212
    iget-object v4, p0, Lecg;->t:Landroid/view/View;

    invoke-virtual {v4, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 214
    iget-object v4, p0, Lecg;->k:Landroid/widget/TextView;

    sget v5, Lctk$i;->message_voice_release_cancle:I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 216
    new-instance v2, Landroid/view/animation/AlphaAnimation;

    .end local v2    # "animation":Landroid/view/animation/Animation;
    invoke-direct {v2, v8, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 217
    .restart local v2    # "animation":Landroid/view/animation/Animation;
    invoke-virtual {v2, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 218
    invoke-virtual {v2, v6}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 219
    iget-object v4, p0, Lecg;->v:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 221
    new-instance v2, Landroid/view/animation/AlphaAnimation;

    .end local v2    # "animation":Landroid/view/animation/Animation;
    invoke-direct {v2, v8, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 222
    .restart local v2    # "animation":Landroid/view/animation/Animation;
    invoke-virtual {v2, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 223
    invoke-virtual {v2, v6}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 224
    iget-object v4, p0, Lecg;->w:Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;

    invoke-virtual {v4, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0
.end method

.method public a(Landroid/graphics/PointF;)V
    .locals 2
    .param p1, "point"    # Landroid/graphics/PointF;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 231
    iget-object v0, p0, Lecg;->r:Landroid/view/View;

    new-instance v1, Lecg$1;

    invoke-direct {v1, p0, p1}, Lecg$1;-><init>(Lecg;Landroid/graphics/PointF;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 238
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 298
    iget-boolean v0, p0, Lecg;->g:Z

    if-eqz v0, :cond_0

    .line 299
    const/4 v0, 0x0

    iput-boolean v0, p0, Lecg;->g:Z

    .line 300
    const/4 v0, 0x2

    iput v0, p0, Lecg;->i:I

    .line 301
    iget-object v0, p0, Lecg;->c:Lcom/alibaba/doraemon/audio/AudioMagicianEx;

    if-eqz v0, :cond_0

    .line 302
    iget-object v0, p0, Lecg;->c:Lcom/alibaba/doraemon/audio/AudioMagicianEx;

    invoke-interface {v0}, Lcom/alibaba/doraemon/audio/AudioMagicianEx;->stopRecord()V

    .line 305
    :cond_0
    invoke-virtual {p0}, Lecg;->dismiss()V

    .line 306
    return-void
.end method
