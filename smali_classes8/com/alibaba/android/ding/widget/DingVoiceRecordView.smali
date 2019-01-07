.class public Lcom/alibaba/android/ding/widget/DingVoiceRecordView;
.super Landroid/widget/RelativeLayout;
.source "DingVoiceRecordView.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/ding/widget/DingVoiceRecordView$a;,
        Lcom/alibaba/android/ding/widget/DingVoiceRecordView$STATUS;
    }
.end annotation


# static fields
.field private static final k:Ljava/lang/String;


# instance fields
.field a:Landroid/widget/TextView;

.field b:Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;

.field c:Ljava/io/File;

.field d:Ljava/lang/String;

.field e:J

.field f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public g:Landroid/os/PowerManager$WakeLock;

.field public h:Lcom/alibaba/doraemon/audio/AudioMagician;

.field i:Lcom/alibaba/android/ding/widget/DingVoiceRecordView$STATUS;

.field j:Z

.field private l:Landroid/view/View;

.field private m:Landroid/view/View;

.field private n:Landroid/widget/ImageView;

.field private o:Landroid/widget/TextView;

.field private p:Landroid/view/View;

.field private q:Landroid/os/PowerManager;

.field private r:Landroid/hardware/SensorManager;

.field private s:Z

.field private t:Z

.field private u:Lcom/alibaba/android/dingtalkbase/widgets/AudioRegulatorManager$AudioRegulator;

.field private v:Landroid/media/AudioManager;

.field private w:Lcom/alibaba/doraemon/audio/OnPlayListener;

.field private x:Lciu$b;

.field private y:Lcom/alibaba/android/ding/widget/DingVoiceRecordView$a;

.field private z:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    const-class v0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->k:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 120
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 121
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 124
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 125
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 128
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 94
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->t:Z

    .line 100
    sget-object v0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView$STATUS;->STATUS_INIT:Lcom/alibaba/android/ding/widget/DingVoiceRecordView$STATUS;

    iput-object v0, p0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->i:Lcom/alibaba/android/ding/widget/DingVoiceRecordView$STATUS;

    .line 109
    new-instance v0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/ding/widget/DingVoiceRecordView$1;-><init>(Lcom/alibaba/android/ding/widget/DingVoiceRecordView;)V

    iput-object v0, p0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->z:Landroid/content/BroadcastReceiver;

    .line 1333
    invoke-virtual {p0}, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Laxp$g;->ding_layout_ding_voice_record:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 1334
    sget v0, Laxp$f;->v_ding_audio_recording_bg:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->l:Landroid/view/View;

    .line 1335
    sget v0, Laxp$f;->v_ding_audio_record:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->m:Landroid/view/View;

    .line 1336
    sget v0, Laxp$f;->iv_ding_audio_action:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->n:Landroid/widget/ImageView;

    .line 1337
    sget v0, Laxp$f;->tv_ding_audio_record_tip:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->o:Landroid/widget/TextView;

    .line 1338
    sget v0, Laxp$f;->v_ding_audio_delete:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->p:Landroid/view/View;

    .line 1342
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->m:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1343
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->m:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1344
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->m:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1345
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->p:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1347
    new-instance v0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView$2;

    invoke-direct {v0, p0}, Lcom/alibaba/android/ding/widget/DingVoiceRecordView$2;-><init>(Lcom/alibaba/android/ding/widget/DingVoiceRecordView;)V

    iput-object v0, p0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->w:Lcom/alibaba/doraemon/audio/OnPlayListener;

    .line 1432
    new-instance v0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView$3;

    invoke-direct {v0, p0}, Lcom/alibaba/android/ding/widget/DingVoiceRecordView$3;-><init>(Lcom/alibaba/android/ding/widget/DingVoiceRecordView;)V

    iput-object v0, p0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->x:Lciu$b;

    .line 131
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/ding/widget/DingVoiceRecordView;J)J
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/widget/DingVoiceRecordView;
    .param p1, "x1"    # J

    .prologue
    .line 61
    iput-wide p1, p0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->e:J

    return-wide p1
.end method

.method static synthetic a(Lcom/alibaba/android/ding/widget/DingVoiceRecordView;)Lcom/alibaba/doraemon/audio/AudioMagician;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/widget/DingVoiceRecordView;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->h:Lcom/alibaba/doraemon/audio/AudioMagician;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/ding/widget/DingVoiceRecordView;Ljava/io/File;)Ljava/io/File;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/ding/widget/DingVoiceRecordView;
    .param p1, "x1"    # Ljava/io/File;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->c:Ljava/io/File;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/ding/widget/DingVoiceRecordView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/ding/widget/DingVoiceRecordView;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->d:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/ding/widget/DingVoiceRecordView;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/ding/widget/DingVoiceRecordView;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->f:Ljava/util/List;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/ding/widget/DingVoiceRecordView;ILjava/util/List;)V
    .locals 5
    .param p0, "x0"    # Lcom/alibaba/android/ding/widget/DingVoiceRecordView;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/util/List;

    .prologue
    const/4 v4, 0x1

    .line 61
    .line 5674
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->a:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 5675
    const/16 v0, 0x39

    if-ge v0, p1, :cond_3

    .line 5676
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->a:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Laxp$c;->ui_common_alert_text_color:I

    invoke-static {v1, v2}, Ldp;->c(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 5680
    :goto_0
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->a:Landroid/widget/TextView;

    invoke-static {p1}, Lcpu;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5682
    :cond_0
    if-eqz p2, :cond_4

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 5683
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;

    if-eqz v0, :cond_1

    .line 5684
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, p2, v2, v3, v4}, Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;->a(Ljava/util/List;JZ)V

    .line 5685
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;->requestLayout()V

    .line 5687
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->requestLayout()V

    :cond_2
    :goto_1
    return-void

    .line 5678
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->a:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Laxp$c;->ui_common_level1_button_bg_color:I

    invoke-static {v1, v2}, Ldp;->c(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 5689
    :cond_4
    if-le p1, v4, :cond_2

    .line 5690
    iput-boolean v4, p0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->j:Z

    goto :goto_1
.end method

.method static synthetic a(Lcom/alibaba/android/ding/widget/DingVoiceRecordView;Lcom/alibaba/android/ding/widget/DingVoiceRecordView$STATUS;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/ding/widget/DingVoiceRecordView;
    .param p1, "x1"    # Lcom/alibaba/android/ding/widget/DingVoiceRecordView$STATUS;

    .prologue
    .line 61
    invoke-virtual {p0, p1}, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->a(Lcom/alibaba/android/ding/widget/DingVoiceRecordView$STATUS;)V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/ding/widget/DingVoiceRecordView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/ding/widget/DingVoiceRecordView;
    .param p1, "x1"    # Z

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->j:Z

    return p1
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->k:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/android/ding/widget/DingVoiceRecordView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/widget/DingVoiceRecordView;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/alibaba/android/ding/widget/DingVoiceRecordView;)Landroid/media/AudioManager;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/widget/DingVoiceRecordView;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->v:Landroid/media/AudioManager;

    return-object v0
.end method

.method private c()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 290
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->q:Landroid/os/PowerManager;

    const v2, 0x2000000a

    sget-object v3, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->k:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->g:Landroid/os/PowerManager$WakeLock;

    .line 291
    iget-object v1, p0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->g:Landroid/os/PowerManager$WakeLock;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 292
    iget-object v1, p0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->g:Landroid/os/PowerManager$WakeLock;

    const-wide/32 v2, 0xdbba0

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4711
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->r:Landroid/hardware/SensorManager;

    if-eqz v1, :cond_0

    .line 4712
    iget-object v1, p0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->r:Landroid/hardware/SensorManager;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    .line 4713
    iget-object v2, p0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->r:Landroid/hardware/SensorManager;

    const/4 v3, 0x3

    invoke-virtual {v2, p0, v1, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 299
    :cond_0
    :goto_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->t:Z

    .line 301
    iget-object v1, p0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->i:Lcom/alibaba/android/ding/widget/DingVoiceRecordView$STATUS;

    sget-object v2, Lcom/alibaba/android/ding/widget/DingVoiceRecordView$STATUS;->STATUS_PAUSE:Lcom/alibaba/android/ding/widget/DingVoiceRecordView$STATUS;

    if-ne v1, v2, :cond_2

    .line 302
    iget-object v1, p0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->h:Lcom/alibaba/doraemon/audio/AudioMagician;

    iget-object v2, p0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->d:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/audio/AudioMagician;->resume(Ljava/lang/String;)V

    .line 310
    :cond_1
    :goto_2
    sget-object v1, Lcom/alibaba/android/ding/widget/DingVoiceRecordView$STATUS;->STATUS_PLAYING:Lcom/alibaba/android/ding/widget/DingVoiceRecordView$STATUS;

    invoke-virtual {p0, v1}, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->a(Lcom/alibaba/android/ding/widget/DingVoiceRecordView$STATUS;)V

    .line 311
    return-void

    .line 293
    :catch_0
    move-exception v0

    .line 294
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v1, "[DingVoiceRecordView]play failed"

    invoke-static {v1, v0}, Lbkr;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 4715
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v1

    .line 4716
    const-string/jumbo v2, "[DingVoiceRecordView]registerSensorListener failed"

    invoke-static {v2, v1}, Lbkr;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 304
    :cond_2
    iget-object v1, p0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->d:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 305
    iget-object v1, p0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->h:Lcom/alibaba/doraemon/audio/AudioMagician;

    iget-object v2, p0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->w:Lcom/alibaba/doraemon/audio/OnPlayListener;

    invoke-interface {v1, v2, v3}, Lcom/alibaba/doraemon/audio/AudioMagician;->play(Ljava/lang/String;Lcom/alibaba/doraemon/audio/OnPlayListener;)V

    goto :goto_2
.end method

.method static synthetic d(Lcom/alibaba/android/ding/widget/DingVoiceRecordView;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/widget/DingVoiceRecordView;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->g:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method private d()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 314
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->g:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 315
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->g:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 317
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->e()V

    .line 318
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->h:Lcom/alibaba/doraemon/audio/AudioMagician;

    iget-object v1, p0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->d:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/audio/AudioMagician;->pause(Ljava/lang/String;)V

    .line 319
    sget-object v0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView$STATUS;->STATUS_PAUSE:Lcom/alibaba/android/ding/widget/DingVoiceRecordView$STATUS;

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->a(Lcom/alibaba/android/ding/widget/DingVoiceRecordView$STATUS;)V

    .line 320
    return-void
.end method

.method private e()V
    .locals 1

    .prologue
    .line 721
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->r:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    .line 722
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->r:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 724
    :cond_0
    return-void
.end method

.method static synthetic e(Lcom/alibaba/android/ding/widget/DingVoiceRecordView;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/ding/widget/DingVoiceRecordView;

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->e()V

    return-void
.end method

.method static synthetic f(Lcom/alibaba/android/ding/widget/DingVoiceRecordView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/widget/DingVoiceRecordView;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->a:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic g(Lcom/alibaba/android/ding/widget/DingVoiceRecordView;)J
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/ding/widget/DingVoiceRecordView;

    .prologue
    .line 61
    iget-wide v0, p0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->e:J

    return-wide v0
.end method

.method static synthetic h(Lcom/alibaba/android/ding/widget/DingVoiceRecordView;)Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/widget/DingVoiceRecordView;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;

    return-object v0
.end method

.method static synthetic i(Lcom/alibaba/android/ding/widget/DingVoiceRecordView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/widget/DingVoiceRecordView;

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->j:Z

    return v0
.end method

.method static synthetic j(Lcom/alibaba/android/ding/widget/DingVoiceRecordView;)Lciu$b;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/widget/DingVoiceRecordView;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->x:Lciu$b;

    return-object v0
.end method

.method static synthetic k(Lcom/alibaba/android/ding/widget/DingVoiceRecordView;)Ljava/io/File;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/widget/DingVoiceRecordView;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->c:Ljava/io/File;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 454
    invoke-virtual {p0}, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    iput-object v1, p0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->q:Landroid/os/PowerManager;

    .line 456
    invoke-virtual {p0}, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/android/dingtalkbase/widgets/AudioRegulatorManager;->a(Landroid/content/Context;)Lcom/alibaba/android/dingtalkbase/widgets/AudioRegulatorManager$AudioRegulator;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->u:Lcom/alibaba/android/dingtalkbase/widgets/AudioRegulatorManager$AudioRegulator;

    .line 457
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->b()Lchy;

    move-result-object v1

    invoke-virtual {v1}, Lchy;->genAudioManager()Landroid/media/AudioManager;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->v:Landroid/media/AudioManager;

    .line 458
    const-string/jumbo v1, "AUDIO"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/audio/AudioMagician;

    iput-object v1, p0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->h:Lcom/alibaba/doraemon/audio/AudioMagician;

    .line 459
    iget-object v1, p0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->h:Lcom/alibaba/doraemon/audio/AudioMagician;

    new-instance v2, Lctc;

    invoke-direct {v2}, Lctc;-><init>()V

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/audio/AudioMagician;->setSampleConverter(Lcom/alibaba/doraemon/audio/SampleConverter;)Lcom/alibaba/doraemon/audio/AudioMagician;

    .line 461
    invoke-virtual {p0}, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "sensor"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    iput-object v1, p0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->r:Landroid/hardware/SensorManager;

    .line 463
    iget-object v1, p0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;

    if-eqz v1, :cond_0

    .line 464
    iget-object v1, p0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;

    invoke-virtual {p0}, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Laxp$c;->ui_common_theme_bg_color:I

    invoke-static {v2, v3}, Ldp;->c(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {p0}, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Laxp$c;->ui_common_theme_text_pressed_color:I

    invoke-static {v3, v4}, Ldp;->c(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;->a(II)V

    .line 466
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->a:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 467
    iget-object v1, p0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->a:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    const-string/jumbo v2, "1:00"

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v1

    const v2, 0x3f8ccccd    # 1.1f

    mul-float v0, v1, v2

    .line 468
    .local v0, "measureText":F
    iget-object v1, p0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->a:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->a:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v2

    iget-object v3, p0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->a:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v3

    add-int/2addr v2, v3

    float-to-int v3, v0

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setWidth(I)V

    .line 470
    .end local v0    # "measureText":F
    :cond_1
    sget-object v1, Lcom/alibaba/android/ding/widget/DingVoiceRecordView$STATUS;->STATUS_INIT:Lcom/alibaba/android/ding/widget/DingVoiceRecordView$STATUS;

    invoke-virtual {p0, v1}, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->a(Lcom/alibaba/android/ding/widget/DingVoiceRecordView$STATUS;)V

    .line 471
    return-void
.end method

.method a(Lcom/alibaba/android/ding/widget/DingVoiceRecordView$STATUS;)V
    .locals 4
    .param p1, "status"    # Lcom/alibaba/android/ding/widget/DingVoiceRecordView$STATUS;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 497
    iput-object p1, p0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->i:Lcom/alibaba/android/ding/widget/DingVoiceRecordView$STATUS;

    .line 498
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->y:Lcom/alibaba/android/ding/widget/DingVoiceRecordView$a;

    if-eqz v0, :cond_0

    .line 499
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->y:Lcom/alibaba/android/ding/widget/DingVoiceRecordView$a;

    invoke-interface {v0, p1}, Lcom/alibaba/android/ding/widget/DingVoiceRecordView$a;->a(Lcom/alibaba/android/ding/widget/DingVoiceRecordView$STATUS;)V

    .line 501
    :cond_0
    sget-object v0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView$5;->a:[I

    iget-object v1, p0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->i:Lcom/alibaba/android/ding/widget/DingVoiceRecordView$STATUS;

    invoke-virtual {v1}, Lcom/alibaba/android/ding/widget/DingVoiceRecordView$STATUS;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 558
    :goto_0
    return-void

    .line 503
    :pswitch_0
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->a:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 504
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 505
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;

    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;->setVisibility(I)V

    .line 507
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->l:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 508
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->n:Landroid/widget/ImageView;

    sget v1, Laxp$e;->ding_audio_icon_record:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 509
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->o:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 510
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->p:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 511
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->m:Landroid/view/View;

    invoke-virtual {p0}, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Laxp$i;->dt_accessibility_ding_press_record:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 514
    :pswitch_1
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->a:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 515
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 516
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;->setVisibility(I)V

    .line 518
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->l:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 519
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->n:Landroid/widget/ImageView;

    sget v1, Laxp$e;->ding_audio_icon_record:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 520
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->p:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 521
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->o:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 522
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->m:Landroid/view/View;

    invoke-virtual {p0}, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Laxp$i;->dt_accessibility_ding_press_record:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 525
    :pswitch_2
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->a:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 526
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 527
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;->setVisibility(I)V

    .line 529
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->l:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 530
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->n:Landroid/widget/ImageView;

    sget v1, Laxp$e;->ding_audio_icon_play:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 531
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->p:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 532
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->o:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 533
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->m:Landroid/view/View;

    invoke-virtual {p0}, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Laxp$i;->dt_accessibility_ding_play_audio:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 536
    :pswitch_3
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->a:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    .line 537
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 538
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;->setVisibility(I)V

    .line 540
    :cond_4
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->l:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 541
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->n:Landroid/widget/ImageView;

    sget v1, Laxp$e;->ding_audio_icon_pause:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 542
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->p:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 543
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->o:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 544
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->m:Landroid/view/View;

    invoke-virtual {p0}, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Laxp$i;->dt_accessibility_ding_pause_play:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 547
    :pswitch_4
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->a:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    .line 548
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 549
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;->setVisibility(I)V

    .line 551
    :cond_5
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->l:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 552
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->n:Landroid/widget/ImageView;

    sget v1, Laxp$e;->ding_audio_icon_play:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 553
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->p:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 554
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->o:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 555
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->m:Landroid/view/View;

    invoke-virtual {p0}, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Laxp$i;->dt_accessibility_ding_play_audio:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 501
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public final a(Z)V
    .locals 7
    .param p1, "deleteFile"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/16 v2, 0x8

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 241
    iget-object v1, p0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->g:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_0

    .line 243
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->g:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 249
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->a:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 250
    iget-object v1, p0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 251
    iget-object v1, p0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;->setVisibility(I)V

    .line 254
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;

    if-eqz v1, :cond_2

    .line 255
    iget-object v1, p0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;

    const-wide/16 v2, 0x0

    .line 4160
    invoke-virtual {v1, v5, v2, v3, v4}, Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;->a(Ljava/util/List;JZ)V

    .line 256
    iget-object v1, p0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;

    invoke-virtual {v1, v4}, Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;->setProgress(I)V

    .line 258
    :cond_2
    iget-object v1, p0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->a:Landroid/widget/TextView;

    if-eqz v1, :cond_3

    .line 259
    iget-object v1, p0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->a:Landroid/widget/TextView;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 262
    :cond_3
    iget-object v1, p0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->h:Lcom/alibaba/doraemon/audio/AudioMagician;

    if-eqz v1, :cond_5

    .line 263
    iget-boolean v1, p0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->j:Z

    if-nez v1, :cond_4

    .line 264
    iget-object v1, p0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->h:Lcom/alibaba/doraemon/audio/AudioMagician;

    invoke-interface {v1}, Lcom/alibaba/doraemon/audio/AudioMagician;->stopRecord()V

    .line 265
    iget-object v1, p0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->h:Lcom/alibaba/doraemon/audio/AudioMagician;

    const/16 v2, 0x32

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/audio/AudioMagician;->setRecordSampleCounts(I)Lcom/alibaba/doraemon/audio/AudioMagician;

    .line 267
    :cond_4
    iget-object v1, p0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->h:Lcom/alibaba/doraemon/audio/AudioMagician;

    iget-object v2, p0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->d:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/audio/AudioMagician;->stop(Ljava/lang/String;)V

    .line 268
    iget-object v1, p0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->h:Lcom/alibaba/doraemon/audio/AudioMagician;

    invoke-interface {v1, v5}, Lcom/alibaba/doraemon/audio/AudioMagician;->setSampleConverter(Lcom/alibaba/doraemon/audio/SampleConverter;)Lcom/alibaba/doraemon/audio/AudioMagician;

    .line 269
    iget-object v1, p0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->h:Lcom/alibaba/doraemon/audio/AudioMagician;

    new-instance v2, Lctc;

    invoke-direct {v2}, Lctc;-><init>()V

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/audio/AudioMagician;->setSampleConverter(Lcom/alibaba/doraemon/audio/SampleConverter;)Lcom/alibaba/doraemon/audio/AudioMagician;

    .line 272
    :cond_5
    if-eqz p1, :cond_7

    iget-object v1, p0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->c:Ljava/io/File;

    if-eqz v1, :cond_7

    .line 273
    iget-object v1, p0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->c:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_6

    .line 274
    const-string/jumbo v1, "[DingVoiceRecordView]delete file failed"

    const-string/jumbo v2, "-1"

    const-string/jumbo v3, ""

    invoke-static {v1, v2, v3}, Lbkr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    :cond_6
    iput-object v5, p0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->d:Ljava/lang/String;

    .line 279
    :cond_7
    :try_start_1
    invoke-virtual {p0}, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->z:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 283
    :goto_1
    invoke-direct {p0}, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->e()V

    .line 284
    sget-object v1, Lcom/alibaba/android/ding/widget/DingVoiceRecordView$STATUS;->STATUS_INIT:Lcom/alibaba/android/ding/widget/DingVoiceRecordView$STATUS;

    invoke-virtual {p0, v1}, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->a(Lcom/alibaba/android/ding/widget/DingVoiceRecordView$STATUS;)V

    .line 285
    return-void

    .line 244
    :catch_0
    move-exception v0

    .line 245
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v1, "[DingVoiceRecordView]release wake lock failed"

    invoke-static {v1, v0}, Lbkr;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 280
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v0

    .line 281
    .local v0, "e":Ljava/lang/Throwable;
    new-array v1, v6, [Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "[DingVoiceRecordView]unregisterReceiver failed: "

    aput-object v3, v2, v4

    invoke-static {v0}, Lcom/alibaba/doraemon/utils/CommonUtils;->getStackMsg(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v1}, Lbkd;->a([Ljava/lang/String;)V

    goto :goto_1
.end method

.method public getAudioContentModel()Lcom/alibaba/android/ding/base/objects/idl/AudioContentModel;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 478
    iget-object v1, p0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->i:Lcom/alibaba/android/ding/widget/DingVoiceRecordView$STATUS;

    sget-object v2, Lcom/alibaba/android/ding/widget/DingVoiceRecordView$STATUS;->STATUS_INIT:Lcom/alibaba/android/ding/widget/DingVoiceRecordView$STATUS;

    if-ne v1, v2, :cond_1

    .line 492
    :cond_0
    :goto_0
    return-object v0

    .line 480
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->c:Ljava/io/File;

    if-eqz v1, :cond_0

    .line 482
    iget-object v1, p0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->i:Lcom/alibaba/android/ding/widget/DingVoiceRecordView$STATUS;

    sget-object v2, Lcom/alibaba/android/ding/widget/DingVoiceRecordView$STATUS;->STATUS_READY:Lcom/alibaba/android/ding/widget/DingVoiceRecordView$STATUS;

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->i:Lcom/alibaba/android/ding/widget/DingVoiceRecordView$STATUS;

    sget-object v2, Lcom/alibaba/android/ding/widget/DingVoiceRecordView$STATUS;->STATUS_PLAYING:Lcom/alibaba/android/ding/widget/DingVoiceRecordView$STATUS;

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->i:Lcom/alibaba/android/ding/widget/DingVoiceRecordView$STATUS;

    sget-object v2, Lcom/alibaba/android/ding/widget/DingVoiceRecordView$STATUS;->STATUS_PAUSE:Lcom/alibaba/android/ding/widget/DingVoiceRecordView$STATUS;

    if-ne v1, v2, :cond_0

    .line 483
    :cond_2
    new-instance v0, Lcom/alibaba/android/ding/base/objects/idl/AudioContentModel;

    invoke-direct {v0}, Lcom/alibaba/android/ding/base/objects/idl/AudioContentModel;-><init>()V

    .line 484
    .local v0, "audioContentModel":Lcom/alibaba/android/ding/base/objects/idl/AudioContentModel;
    iget-object v1, p0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->f:Ljava/util/List;

    iput-object v1, v0, Lcom/alibaba/android/ding/base/objects/idl/AudioContentModel;->audioVolumns:Ljava/util/List;

    .line 485
    iget-wide v2, p0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->e:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/ding/base/objects/idl/AudioContentModel;->duration:Ljava/lang/Long;

    .line 486
    iget-object v1, p0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->c:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 487
    iget-object v1, p0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->c:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/ding/base/objects/idl/AudioContentModel;->mediaId:Ljava/lang/String;

    goto :goto_0
.end method

.method public getAudioUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 474
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->d:Ljava/lang/String;

    return-object v0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 202
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 135
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Laxp$f;->v_ding_audio_record:I

    if-ne v0, v1, :cond_3

    .line 136
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->i:Lcom/alibaba/android/ding/widget/DingVoiceRecordView$STATUS;

    sget-object v1, Lcom/alibaba/android/ding/widget/DingVoiceRecordView$STATUS;->STATUS_PAUSE:Lcom/alibaba/android/ding/widget/DingVoiceRecordView$STATUS;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->i:Lcom/alibaba/android/ding/widget/DingVoiceRecordView$STATUS;

    sget-object v1, Lcom/alibaba/android/ding/widget/DingVoiceRecordView$STATUS;->STATUS_READY:Lcom/alibaba/android/ding/widget/DingVoiceRecordView$STATUS;

    if-ne v0, v1, :cond_2

    .line 137
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->c()V

    .line 150
    :cond_1
    :goto_0
    return-void

    .line 138
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->i:Lcom/alibaba/android/ding/widget/DingVoiceRecordView$STATUS;

    sget-object v1, Lcom/alibaba/android/ding/widget/DingVoiceRecordView$STATUS;->STATUS_PLAYING:Lcom/alibaba/android/ding/widget/DingVoiceRecordView$STATUS;

    if-ne v0, v1, :cond_1

    .line 139
    invoke-direct {p0}, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->d()V

    goto :goto_0

    .line 141
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Laxp$f;->v_ding_audio_delete:I

    if-ne v0, v1, :cond_1

    .line 142
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->a(Z)V

    .line 143
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->c:Ljava/io/File;

    if-eqz v0, :cond_1

    .line 144
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->c:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_4

    .line 145
    const-string/jumbo v0, "delete file failed"

    const-string/jumbo v1, "-1"

    const-string/jumbo v2, ""

    invoke-static {v0, v1, v2}, Lbkr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    :cond_4
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->d:Ljava/lang/String;

    goto :goto_0
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v3, 0x1

    .line 154
    invoke-static {}, Lciu;->a()Lciu;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Lciu;->a(II)Z

    move-result v0

    if-nez v0, :cond_1

    .line 155
    sget v0, Laxp$i;->audio_in_focues:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 166
    :cond_0
    :goto_0
    return v3

    .line 158
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->i:Lcom/alibaba/android/ding/widget/DingVoiceRecordView$STATUS;

    sget-object v1, Lcom/alibaba/android/ding/widget/DingVoiceRecordView$STATUS;->STATUS_INIT:Lcom/alibaba/android/ding/widget/DingVoiceRecordView$STATUS;

    if-ne v0, v1, :cond_2

    .line 1699
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1700
    const-string/jumbo v1, "com.alibaba.android.babylon.action.voipstart"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1701
    const-string/jumbo v1, "CALL_STATE_RINGING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1703
    const-string/jumbo v1, "android.intent.action.PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1704
    const-string/jumbo v1, "android.intent.action.ANSWER"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1705
    const-string/jumbo v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1706
    invoke-virtual {p0}, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->z:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2592
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->u:Lcom/alibaba/android/dingtalkbase/widgets/AudioRegulatorManager$AudioRegulator;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/AudioRegulatorManager$AudioRegulator;->c()V

    .line 2593
    sget-object v0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView$STATUS;->STATUS_RECORDING:Lcom/alibaba/android/ding/widget/DingVoiceRecordView$STATUS;

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->a(Lcom/alibaba/android/ding/widget/DingVoiceRecordView$STATUS;)V

    .line 2594
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->h:Lcom/alibaba/doraemon/audio/AudioMagician;

    const/16 v1, 0xc8

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/audio/AudioMagician;->setRecordSampleCounts(I)Lcom/alibaba/doraemon/audio/AudioMagician;

    .line 2595
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->h:Lcom/alibaba/doraemon/audio/AudioMagician;

    new-instance v1, Lcom/alibaba/android/ding/widget/DingVoiceRecordView$4;

    invoke-direct {v1, p0}, Lcom/alibaba/android/ding/widget/DingVoiceRecordView$4;-><init>(Lcom/alibaba/android/ding/widget/DingVoiceRecordView;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/audio/AudioMagician;->record(Lcom/alibaba/doraemon/audio/OnRecordListener;)Ljava/lang/String;

    goto :goto_0

    .line 161
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->i:Lcom/alibaba/android/ding/widget/DingVoiceRecordView$STATUS;

    sget-object v1, Lcom/alibaba/android/ding/widget/DingVoiceRecordView$STATUS;->STATUS_PAUSE:Lcom/alibaba/android/ding/widget/DingVoiceRecordView$STATUS;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->i:Lcom/alibaba/android/ding/widget/DingVoiceRecordView$STATUS;

    sget-object v1, Lcom/alibaba/android/ding/widget/DingVoiceRecordView$STATUS;->STATUS_READY:Lcom/alibaba/android/ding/widget/DingVoiceRecordView$STATUS;

    if-ne v0, v1, :cond_4

    .line 162
    :cond_3
    invoke-direct {p0}, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->c()V

    goto :goto_0

    .line 163
    :cond_4
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->i:Lcom/alibaba/android/ding/widget/DingVoiceRecordView$STATUS;

    sget-object v1, Lcom/alibaba/android/ding/widget/DingVoiceRecordView$STATUS;->STATUS_PLAYING:Lcom/alibaba/android/ding/widget/DingVoiceRecordView$STATUS;

    if-ne v0, v1, :cond_0

    .line 164
    invoke-direct {p0}, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->d()V

    goto :goto_0
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 10
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 171
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v2, v4

    .line 172
    .local v0, "distance":F
    float-to-double v6, v0

    const-wide/16 v8, 0x0

    cmpl-double v2, v6, v8

    if-ltz v2, :cond_1

    const/high16 v2, 0x40a00000    # 5.0f

    cmpg-float v2, v0, v2

    if-gez v2, :cond_1

    iget-object v2, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v2

    cmpg-float v2, v0, v2

    if-gez v2, :cond_1

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->s:Z

    .line 173
    invoke-virtual {p0}, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/android/dingtalkbase/widgets/VoiceModeManager;->a(Landroid/content/Context;)Lcom/alibaba/android/dingtalkbase/widgets/VoiceModeManager$VoiceMode;

    move-result-object v1

    .line 174
    .local v1, "model":Lcom/alibaba/android/dingtalkbase/widgets/VoiceModeManager$VoiceMode;
    sget-object v2, Lcom/alibaba/android/dingtalkbase/widgets/VoiceModeManager$VoiceMode;->Speaker:Lcom/alibaba/android/dingtalkbase/widgets/VoiceModeManager$VoiceMode;

    if-eq v1, v2, :cond_2

    .line 198
    :cond_0
    :goto_1
    return-void

    .end local v1    # "model":Lcom/alibaba/android/dingtalkbase/widgets/VoiceModeManager$VoiceMode;
    :cond_1
    move v2, v4

    .line 172
    goto :goto_0

    .line 179
    .restart local v1    # "model":Lcom/alibaba/android/dingtalkbase/widgets/VoiceModeManager$VoiceMode;
    :cond_2
    iget-boolean v2, p0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->j:Z

    if-eqz v2, :cond_0

    .line 183
    iget-boolean v2, p0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->t:Z

    if-eqz v2, :cond_3

    .line 184
    iput-boolean v4, p0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->t:Z

    goto :goto_1

    .line 187
    :cond_3
    iget-boolean v2, p0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->s:Z

    if-eqz v2, :cond_4

    .line 189
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/android/dingtalkbase/widgets/PhoneStatusManager;->a(Landroid/content/Context;)Lcom/alibaba/android/dingtalkbase/widgets/PhoneStatusManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/PhoneStatusManager;->a()Z

    move-result v2

    if-nez v2, :cond_0

    .line 190
    iget-object v2, p0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->u:Lcom/alibaba/android/dingtalkbase/widgets/AudioRegulatorManager$AudioRegulator;

    .line 3160
    invoke-virtual {v2, v4}, Lcom/alibaba/android/dingtalkbase/widgets/AudioRegulatorManager$AudioRegulator;->a(Z)V

    goto :goto_1

    .line 194
    :cond_4
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/android/dingtalkbase/widgets/PhoneStatusManager;->a(Landroid/content/Context;)Lcom/alibaba/android/dingtalkbase/widgets/PhoneStatusManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/PhoneStatusManager;->a()Z

    move-result v2

    if-nez v2, :cond_0

    .line 195
    iget-object v2, p0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->u:Lcom/alibaba/android/dingtalkbase/widgets/AudioRegulatorManager$AudioRegulator;

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/AudioRegulatorManager$AudioRegulator;->b(Z)V

    goto :goto_1
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 206
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 221
    :cond_0
    :goto_0
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 212
    :pswitch_1
    iget-boolean v0, p0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->j:Z

    if-nez v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->h:Lcom/alibaba/doraemon/audio/AudioMagician;

    invoke-interface {v0}, Lcom/alibaba/doraemon/audio/AudioMagician;->stopRecord()V

    .line 214
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->h:Lcom/alibaba/doraemon/audio/AudioMagician;

    const/16 v1, 0x32

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/audio/AudioMagician;->setRecordSampleCounts(I)Lcom/alibaba/doraemon/audio/AudioMagician;

    goto :goto_0

    .line 206
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setOnStatusChangedListener(Lcom/alibaba/android/ding/widget/DingVoiceRecordView$a;)V
    .locals 0
    .param p1, "onStatusChangedListener"    # Lcom/alibaba/android/ding/widget/DingVoiceRecordView$a;

    .prologue
    .line 233
    iput-object p1, p0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->y:Lcom/alibaba/android/ding/widget/DingVoiceRecordView$a;

    .line 234
    return-void
.end method

.method public setTvAudioTime(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "tvAudioTime"    # Landroid/widget/TextView;

    .prologue
    .line 225
    iput-object p1, p0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->a:Landroid/widget/TextView;

    .line 226
    return-void
.end method

.method public setViewWaveform(Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;)V
    .locals 0
    .param p1, "viewWaveform"    # Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;

    .prologue
    .line 229
    iput-object p1, p0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;

    .line 230
    return-void
.end method
