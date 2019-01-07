.class public Lcom/alibaba/android/ding/widget/VoicePlayView;
.super Landroid/widget/LinearLayout;
.source "VoicePlayView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/ding/widget/VoicePlayView$SCHEME;,
        Lcom/alibaba/android/ding/widget/VoicePlayView$a;
    }
.end annotation


# static fields
.field static final a:Ljava/lang/String;

.field static f:Landroid/os/PowerManager$WakeLock;


# instance fields
.field b:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

.field c:Landroid/content/Context;

.field d:Lcom/alibaba/android/ding/widget/VoicePlayView$SCHEME;

.field e:Landroid/os/PowerManager;

.field public g:Lcom/alibaba/doraemon/audio/AudioMagician;

.field h:I

.field i:I

.field public j:Ljava/lang/String;

.field public k:Lcom/alibaba/doraemon/audio/OnPlayListener;

.field l:Lciu$b;

.field private final m:Ljava/lang/String;

.field private final n:Ljava/lang/String;

.field private final o:I

.field private p:Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;

.field private q:Landroid/widget/TextView;

.field private r:Ljava/lang/String;

.field private s:Lcom/alibaba/wukong/im/Message;

.field private t:Lbla;

.field private u:J

.field private v:Lcom/alibaba/android/ding/widget/VoicePlayView$a;

.field private w:Landroid/media/AudioManager;

.field private x:Ljava/lang/String;

.field private y:Ljava/lang/String;

.field private z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const-class v0, Lcom/alibaba/android/ding/widget/VoicePlayView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/android/ding/widget/VoicePlayView;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 168
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 48
    const-string/jumbo v0, "play"

    iput-object v0, p0, Lcom/alibaba/android/ding/widget/VoicePlayView;->m:Ljava/lang/String;

    .line 49
    const-string/jumbo v0, "pause"

    iput-object v0, p0, Lcom/alibaba/android/ding/widget/VoicePlayView;->n:Ljava/lang/String;

    .line 51
    const/16 v0, 0x64

    iput v0, p0, Lcom/alibaba/android/ding/widget/VoicePlayView;->o:I

    .line 65
    invoke-static {}, Lbla;->a()Lbla;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/ding/widget/VoicePlayView;->t:Lbla;

    .line 67
    sget-object v0, Lcom/alibaba/android/ding/widget/VoicePlayView$SCHEME;->WHITE:Lcom/alibaba/android/ding/widget/VoicePlayView$SCHEME;

    iput-object v0, p0, Lcom/alibaba/android/ding/widget/VoicePlayView;->d:Lcom/alibaba/android/ding/widget/VoicePlayView$SCHEME;

    .line 82
    new-instance v0, Lcom/alibaba/android/ding/widget/VoicePlayView$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/ding/widget/VoicePlayView$1;-><init>(Lcom/alibaba/android/ding/widget/VoicePlayView;)V

    iput-object v0, p0, Lcom/alibaba/android/ding/widget/VoicePlayView;->k:Lcom/alibaba/doraemon/audio/OnPlayListener;

    .line 401
    new-instance v0, Lcom/alibaba/android/ding/widget/VoicePlayView$4;

    invoke-direct {v0, p0}, Lcom/alibaba/android/ding/widget/VoicePlayView$4;-><init>(Lcom/alibaba/android/ding/widget/VoicePlayView;)V

    iput-object v0, p0, Lcom/alibaba/android/ding/widget/VoicePlayView;->l:Lciu$b;

    .line 169
    invoke-direct {p0, p1}, Lcom/alibaba/android/ding/widget/VoicePlayView;->a(Landroid/content/Context;)V

    .line 170
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 173
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    const-string/jumbo v0, "play"

    iput-object v0, p0, Lcom/alibaba/android/ding/widget/VoicePlayView;->m:Ljava/lang/String;

    .line 49
    const-string/jumbo v0, "pause"

    iput-object v0, p0, Lcom/alibaba/android/ding/widget/VoicePlayView;->n:Ljava/lang/String;

    .line 51
    const/16 v0, 0x64

    iput v0, p0, Lcom/alibaba/android/ding/widget/VoicePlayView;->o:I

    .line 65
    invoke-static {}, Lbla;->a()Lbla;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/ding/widget/VoicePlayView;->t:Lbla;

    .line 67
    sget-object v0, Lcom/alibaba/android/ding/widget/VoicePlayView$SCHEME;->WHITE:Lcom/alibaba/android/ding/widget/VoicePlayView$SCHEME;

    iput-object v0, p0, Lcom/alibaba/android/ding/widget/VoicePlayView;->d:Lcom/alibaba/android/ding/widget/VoicePlayView$SCHEME;

    .line 82
    new-instance v0, Lcom/alibaba/android/ding/widget/VoicePlayView$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/ding/widget/VoicePlayView$1;-><init>(Lcom/alibaba/android/ding/widget/VoicePlayView;)V

    iput-object v0, p0, Lcom/alibaba/android/ding/widget/VoicePlayView;->k:Lcom/alibaba/doraemon/audio/OnPlayListener;

    .line 401
    new-instance v0, Lcom/alibaba/android/ding/widget/VoicePlayView$4;

    invoke-direct {v0, p0}, Lcom/alibaba/android/ding/widget/VoicePlayView$4;-><init>(Lcom/alibaba/android/ding/widget/VoicePlayView;)V

    iput-object v0, p0, Lcom/alibaba/android/ding/widget/VoicePlayView;->l:Lciu$b;

    .line 174
    invoke-direct {p0, p1}, Lcom/alibaba/android/ding/widget/VoicePlayView;->a(Landroid/content/Context;)V

    .line 175
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 178
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    const-string/jumbo v0, "play"

    iput-object v0, p0, Lcom/alibaba/android/ding/widget/VoicePlayView;->m:Ljava/lang/String;

    .line 49
    const-string/jumbo v0, "pause"

    iput-object v0, p0, Lcom/alibaba/android/ding/widget/VoicePlayView;->n:Ljava/lang/String;

    .line 51
    const/16 v0, 0x64

    iput v0, p0, Lcom/alibaba/android/ding/widget/VoicePlayView;->o:I

    .line 65
    invoke-static {}, Lbla;->a()Lbla;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/ding/widget/VoicePlayView;->t:Lbla;

    .line 67
    sget-object v0, Lcom/alibaba/android/ding/widget/VoicePlayView$SCHEME;->WHITE:Lcom/alibaba/android/ding/widget/VoicePlayView$SCHEME;

    iput-object v0, p0, Lcom/alibaba/android/ding/widget/VoicePlayView;->d:Lcom/alibaba/android/ding/widget/VoicePlayView$SCHEME;

    .line 82
    new-instance v0, Lcom/alibaba/android/ding/widget/VoicePlayView$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/ding/widget/VoicePlayView$1;-><init>(Lcom/alibaba/android/ding/widget/VoicePlayView;)V

    iput-object v0, p0, Lcom/alibaba/android/ding/widget/VoicePlayView;->k:Lcom/alibaba/doraemon/audio/OnPlayListener;

    .line 401
    new-instance v0, Lcom/alibaba/android/ding/widget/VoicePlayView$4;

    invoke-direct {v0, p0}, Lcom/alibaba/android/ding/widget/VoicePlayView$4;-><init>(Lcom/alibaba/android/ding/widget/VoicePlayView;)V

    iput-object v0, p0, Lcom/alibaba/android/ding/widget/VoicePlayView;->l:Lciu$b;

    .line 179
    invoke-direct {p0, p1}, Lcom/alibaba/android/ding/widget/VoicePlayView;->a(Landroid/content/Context;)V

    .line 180
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/ding/widget/VoicePlayView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/ding/widget/VoicePlayView;
    .param p1, "x1"    # I

    .prologue
    .line 43
    iput p1, p0, Lcom/alibaba/android/ding/widget/VoicePlayView;->h:I

    return p1
.end method

.method private a(I)Ljava/lang/CharSequence;
    .locals 5
    .param p1, "durationInt"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 190
    const/16 v0, 0x3c

    if-ne p1, v0, :cond_0

    .line 191
    invoke-virtual {p0}, Lcom/alibaba/android/ding/widget/VoicePlayView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Laxp$i;->voice_record_duration_long:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 195
    :goto_0
    return-object v0

    .line 192
    :cond_0
    const/16 v0, 0x9

    if-le p1, v0, :cond_1

    .line 193
    invoke-virtual {p0}, Lcom/alibaba/android/ding/widget/VoicePlayView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Laxp$i;->voice_record_duration:I

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 195
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/android/ding/widget/VoicePlayView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Laxp$i;->voice_record_duration_short:I

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/ding/widget/VoicePlayView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/widget/VoicePlayView;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/VoicePlayView;->j:Ljava/lang/String;

    return-object v0
.end method

.method private a(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/16 v1, 0x11

    .line 183
    iput-object p1, p0, Lcom/alibaba/android/ding/widget/VoicePlayView;->c:Landroid/content/Context;

    .line 1351
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/widget/VoicePlayView;->setOrientation(I)V

    .line 1352
    invoke-virtual {p0, v1}, Lcom/alibaba/android/ding/widget/VoicePlayView;->setGravity(I)V

    .line 1353
    invoke-virtual {p0, v1}, Lcom/alibaba/android/ding/widget/VoicePlayView;->setHorizontalGravity(I)V

    .line 1354
    invoke-virtual {p0}, Lcom/alibaba/android/ding/widget/VoicePlayView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Laxp$g;->ding_voice_play_view:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 1355
    sget v0, Laxp$f;->waveform_view:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/widget/VoicePlayView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;

    iput-object v0, p0, Lcom/alibaba/android/ding/widget/VoicePlayView;->p:Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;

    .line 1356
    sget v0, Laxp$f;->btn_play_pause:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/widget/VoicePlayView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iput-object v0, p0, Lcom/alibaba/android/ding/widget/VoicePlayView;->b:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 1357
    sget v0, Laxp$f;->tv_audio_length:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/widget/VoicePlayView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/ding/widget/VoicePlayView;->q:Landroid/widget/TextView;

    .line 1359
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/VoicePlayView;->q:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    const-string/jumbo v1, "1:00"

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    const v1, 0x3f8ccccd    # 1.1f

    mul-float/2addr v0, v1

    .line 1360
    iget-object v1, p0, Lcom/alibaba/android/ding/widget/VoicePlayView;->q:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/alibaba/android/ding/widget/VoicePlayView;->q:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v2

    iget-object v3, p0, Lcom/alibaba/android/ding/widget/VoicePlayView;->q:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v3

    add-int/2addr v2, v3

    float-to-int v0, v0

    add-int/2addr v0, v2

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setWidth(I)V

    .line 1364
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/VoicePlayView;->p:Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;->setMax(I)V

    .line 1365
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/VoicePlayView;->b:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    const-string/jumbo v1, "play"

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setTag(Ljava/lang/Object;)V

    .line 1367
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/VoicePlayView;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/alibaba/android/ding/widget/VoicePlayView;->e:Landroid/os/PowerManager;

    .line 1368
    const-string/jumbo v0, "AUDIOEX"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/audio/AudioMagician;

    iput-object v0, p0, Lcom/alibaba/android/ding/widget/VoicePlayView;->g:Lcom/alibaba/doraemon/audio/AudioMagician;

    .line 1369
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->b()Lchy;

    move-result-object v0

    invoke-virtual {v0}, Lchy;->genAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/ding/widget/VoicePlayView;->w:Landroid/media/AudioManager;

    .line 1373
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/VoicePlayView;->b:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    new-instance v1, Lcom/alibaba/android/ding/widget/VoicePlayView$2;

    invoke-direct {v1, p0}, Lcom/alibaba/android/ding/widget/VoicePlayView$2;-><init>(Lcom/alibaba/android/ding/widget/VoicePlayView;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1385
    new-instance v0, Lcom/alibaba/android/ding/widget/VoicePlayView$3;

    invoke-direct {v0, p0}, Lcom/alibaba/android/ding/widget/VoicePlayView$3;-><init>(Lcom/alibaba/android/ding/widget/VoicePlayView;)V

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/widget/VoicePlayView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 187
    return-void
.end method

.method static synthetic b(Lcom/alibaba/android/ding/widget/VoicePlayView;)Landroid/media/AudioManager;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/widget/VoicePlayView;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/VoicePlayView;->w:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/android/ding/widget/VoicePlayView;I)V
    .locals 6
    .param p0, "x0"    # Lcom/alibaba/android/ding/widget/VoicePlayView;
    .param p1, "x1"    # I

    .prologue
    .line 43
    .line 4394
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/VoicePlayView;->p:Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;->setProgress(I)V

    .line 4395
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/VoicePlayView;->q:Landroid/widget/TextView;

    int-to-long v2, p1

    iget-wide v4, p0, Lcom/alibaba/android/ding/widget/VoicePlayView;->u:J

    mul-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    const-wide/16 v4, 0x64

    div-long/2addr v2, v4

    long-to-int v1, v2

    invoke-direct {p0, v1}, Lcom/alibaba/android/ding/widget/VoicePlayView;->a(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4396
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/VoicePlayView;->b:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    sget v1, Laxp$i;->icon_dingstop_fill:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setText(I)V

    .line 4397
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/VoicePlayView;->b:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iget-object v1, p0, Lcom/alibaba/android/ding/widget/VoicePlayView;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/alibaba/android/ding/widget/VoicePlayView;->d:Lcom/alibaba/android/ding/widget/VoicePlayView$SCHEME;

    invoke-virtual {v2}, Lcom/alibaba/android/ding/widget/VoicePlayView$SCHEME;->getPauseBtnColorResId()I

    move-result v2

    invoke-static {v1, v2}, Ldp;->c(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setTextColor(I)V

    .line 4398
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/VoicePlayView;->b:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    const-string/jumbo v1, "pause"

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setTag(Ljava/lang/Object;)V

    .line 43
    return-void
.end method

.method static synthetic c(Lcom/alibaba/android/ding/widget/VoicePlayView;)Lcom/alibaba/android/ding/widget/VoicePlayView$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/widget/VoicePlayView;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/VoicePlayView;->v:Lcom/alibaba/android/ding/widget/VoicePlayView$a;

    return-object v0
.end method

.method static synthetic d()Landroid/os/PowerManager$WakeLock;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/alibaba/android/ding/widget/VoicePlayView;->f:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/android/ding/widget/VoicePlayView;)Lbla;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/widget/VoicePlayView;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/VoicePlayView;->t:Lbla;

    return-object v0
.end method

.method static synthetic e(Lcom/alibaba/android/ding/widget/VoicePlayView;)Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/widget/VoicePlayView;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/VoicePlayView;->b:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 275
    sget-object v1, Lcom/alibaba/android/ding/widget/VoicePlayView;->f:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_0

    .line 277
    :try_start_0
    sget-object v1, Lcom/alibaba/android/ding/widget/VoicePlayView;->f:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 283
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/alibaba/android/ding/widget/VoicePlayView;->g:Lcom/alibaba/doraemon/audio/AudioMagician;

    iget-object v2, p0, Lcom/alibaba/android/ding/widget/VoicePlayView;->j:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/audio/AudioMagician;->stop(Ljava/lang/String;)V

    .line 284
    iget-object v1, p0, Lcom/alibaba/android/ding/widget/VoicePlayView;->p:Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;->setProgress(I)V

    .line 285
    iget-object v1, p0, Lcom/alibaba/android/ding/widget/VoicePlayView;->q:Landroid/widget/TextView;

    iget-wide v2, p0, Lcom/alibaba/android/ding/widget/VoicePlayView;->u:J

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v2, v2

    invoke-direct {p0, v2}, Lcom/alibaba/android/ding/widget/VoicePlayView;->a(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 286
    iget-object v1, p0, Lcom/alibaba/android/ding/widget/VoicePlayView;->b:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    sget v2, Laxp$i;->icon_dingplay_fill:I

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setText(I)V

    .line 287
    iget-object v1, p0, Lcom/alibaba/android/ding/widget/VoicePlayView;->b:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iget-object v2, p0, Lcom/alibaba/android/ding/widget/VoicePlayView;->c:Landroid/content/Context;

    iget-object v3, p0, Lcom/alibaba/android/ding/widget/VoicePlayView;->d:Lcom/alibaba/android/ding/widget/VoicePlayView$SCHEME;

    invoke-virtual {v3}, Lcom/alibaba/android/ding/widget/VoicePlayView$SCHEME;->getPlayBtnColorResId()I

    move-result v3

    invoke-static {v2, v3}, Ldp;->c(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setTextColor(I)V

    .line 288
    iget-object v1, p0, Lcom/alibaba/android/ding/widget/VoicePlayView;->b:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    const-string/jumbo v2, "play"

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setTag(Ljava/lang/Object;)V

    .line 289
    iget-object v1, p0, Lcom/alibaba/android/ding/widget/VoicePlayView;->t:Lbla;

    .line 3074
    iget-object v2, v1, Lbla;->a:Lcom/alibaba/android/ding/widget/VoicePlayView;

    if-eqz v2, :cond_1

    iget-object v2, v1, Lbla;->b:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, v1, Lbla;->b:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/alibaba/android/ding/widget/VoicePlayView;->getMessageId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3075
    const/4 v2, 0x0

    iput-object v2, v1, Lbla;->a:Lcom/alibaba/android/ding/widget/VoicePlayView;

    .line 3076
    const-string/jumbo v2, ""

    iput-object v2, v1, Lbla;->b:Ljava/lang/String;

    .line 3077
    const/4 v2, 0x0

    iput v2, v1, Lbla;->c:I

    .line 290
    :cond_1
    return-void

    .line 278
    :catch_0
    move-exception v0

    .line 279
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v1, "[VoicePlayView]reset failed"

    invoke-static {v1, v0}, Lbkr;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "dingId"    # Ljava/lang/String;
    .param p2, "commentId"    # Ljava/lang/String;
    .param p3, "authCode"    # Ljava/lang/String;

    .prologue
    .line 258
    iput-object p1, p0, Lcom/alibaba/android/ding/widget/VoicePlayView;->z:Ljava/lang/String;

    .line 259
    iput-object p2, p0, Lcom/alibaba/android/ding/widget/VoicePlayView;->x:Ljava/lang/String;

    .line 260
    iput-object p3, p0, Lcom/alibaba/android/ding/widget/VoicePlayView;->y:Ljava/lang/String;

    .line 261
    return-void
.end method

.method public final b()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/16 v6, 0x7b

    const/4 v5, 0x1

    .line 301
    invoke-static {}, Lciu;->a()Lciu;

    move-result-object v1

    invoke-virtual {v1, v5, v5}, Lciu;->a(II)Z

    move-result v1

    if-nez v1, :cond_1

    .line 302
    sget v1, Laxp$i;->audio_in_focues:I

    invoke-static {v1}, Lcms;->a(I)V

    .line 333
    :cond_0
    :goto_0
    return-void

    .line 305
    :cond_1
    invoke-static {}, Lciu;->a()Lciu;

    move-result-object v1

    new-instance v2, Lciu$a;

    sget-object v3, Lcom/alibaba/android/ding/widget/VoicePlayView;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/alibaba/android/ding/widget/VoicePlayView;->l:Lciu$b;

    invoke-direct {v2, v3, v5, v5, v4}, Lciu$a;-><init>(Ljava/lang/String;IILciu$b;)V

    invoke-virtual {v1, v2}, Lciu;->a(Lciu$a;)Z

    .line 307
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/android/ding/widget/VoicePlayView;->e:Landroid/os/PowerManager;

    const v2, 0x2000000a

    sget-object v3, Lcom/alibaba/android/ding/widget/VoicePlayView;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    .line 308
    sput-object v1, Lcom/alibaba/android/ding/widget/VoicePlayView;->f:Landroid/os/PowerManager$WakeLock;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 309
    sget-object v1, Lcom/alibaba/android/ding/widget/VoicePlayView;->f:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 314
    :goto_1
    iget-object v1, p0, Lcom/alibaba/android/ding/widget/VoicePlayView;->b:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    sget v2, Laxp$i;->icon_dingstop_fill:I

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setText(I)V

    .line 315
    iget-object v1, p0, Lcom/alibaba/android/ding/widget/VoicePlayView;->b:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iget-object v2, p0, Lcom/alibaba/android/ding/widget/VoicePlayView;->c:Landroid/content/Context;

    iget-object v3, p0, Lcom/alibaba/android/ding/widget/VoicePlayView;->d:Lcom/alibaba/android/ding/widget/VoicePlayView$SCHEME;

    invoke-virtual {v3}, Lcom/alibaba/android/ding/widget/VoicePlayView$SCHEME;->getPauseBtnColorResId()I

    move-result v3

    invoke-static {v2, v3}, Ldp;->c(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setTextColor(I)V

    .line 316
    iget-object v1, p0, Lcom/alibaba/android/ding/widget/VoicePlayView;->b:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    const-string/jumbo v2, "pause"

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setTag(Ljava/lang/Object;)V

    .line 318
    const/4 v1, 0x3

    iget v2, p0, Lcom/alibaba/android/ding/widget/VoicePlayView;->h:I

    if-ne v1, v2, :cond_2

    .line 319
    iget-object v1, p0, Lcom/alibaba/android/ding/widget/VoicePlayView;->g:Lcom/alibaba/doraemon/audio/AudioMagician;

    iget-object v2, p0, Lcom/alibaba/android/ding/widget/VoicePlayView;->j:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/audio/AudioMagician;->resume(Ljava/lang/String;)V

    .line 320
    iget v1, p0, Lcom/alibaba/android/ding/widget/VoicePlayView;->i:I

    if-ne v1, v6, :cond_0

    .line 3362
    const-string/jumbo v1, "ding_voice_play_after_pause"

    invoke-static {v1}, Lbjz;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 310
    :catch_0
    move-exception v0

    .line 311
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v1, "[VoicePlayView]play failed"

    invoke-static {v1, v0}, Lbkr;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 324
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_2
    iget-object v1, p0, Lcom/alibaba/android/ding/widget/VoicePlayView;->j:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 325
    iget-object v1, p0, Lcom/alibaba/android/ding/widget/VoicePlayView;->g:Lcom/alibaba/doraemon/audio/AudioMagician;

    iget-object v2, p0, Lcom/alibaba/android/ding/widget/VoicePlayView;->j:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/android/ding/widget/VoicePlayView;->k:Lcom/alibaba/doraemon/audio/OnPlayListener;

    invoke-virtual {p0}, Lcom/alibaba/android/ding/widget/VoicePlayView;->getRequestParams()Ljava/util/Map;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/alibaba/doraemon/audio/AudioMagician;->play(Ljava/lang/String;Lcom/alibaba/doraemon/audio/OnPlayListener;Ljava/util/Map;Ljava/util/Map;)V

    .line 326
    iget v1, p0, Lcom/alibaba/android/ding/widget/VoicePlayView;->i:I

    if-eq v1, v6, :cond_3

    iget v1, p0, Lcom/alibaba/android/ding/widget/VoicePlayView;->i:I

    const/16 v2, 0x7c

    if-ne v1, v2, :cond_0

    .line 4358
    :cond_3
    const-string/jumbo v1, "ding_list_voice_play"

    invoke-static {v1}, Lbjz;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 330
    :cond_4
    sget-object v1, Lcom/alibaba/android/ding/widget/VoicePlayView;->a:Ljava/lang/String;

    const-string/jumbo v2, "Audio url is null!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public final c()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 336
    sget-object v1, Lcom/alibaba/android/ding/widget/VoicePlayView;->f:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_0

    .line 338
    :try_start_0
    sget-object v1, Lcom/alibaba/android/ding/widget/VoicePlayView;->f:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 344
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/alibaba/android/ding/widget/VoicePlayView;->b:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    sget v2, Laxp$i;->icon_dingplay_fill:I

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setText(I)V

    .line 345
    iget-object v1, p0, Lcom/alibaba/android/ding/widget/VoicePlayView;->b:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iget-object v2, p0, Lcom/alibaba/android/ding/widget/VoicePlayView;->c:Landroid/content/Context;

    iget-object v3, p0, Lcom/alibaba/android/ding/widget/VoicePlayView;->d:Lcom/alibaba/android/ding/widget/VoicePlayView$SCHEME;

    invoke-virtual {v3}, Lcom/alibaba/android/ding/widget/VoicePlayView$SCHEME;->getPlayBtnColorResId()I

    move-result v3

    invoke-static {v2, v3}, Ldp;->c(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setTextColor(I)V

    .line 346
    iget-object v1, p0, Lcom/alibaba/android/ding/widget/VoicePlayView;->b:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    const-string/jumbo v2, "play"

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setTag(Ljava/lang/Object;)V

    .line 347
    iget-object v1, p0, Lcom/alibaba/android/ding/widget/VoicePlayView;->g:Lcom/alibaba/doraemon/audio/AudioMagician;

    iget-object v2, p0, Lcom/alibaba/android/ding/widget/VoicePlayView;->j:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/audio/AudioMagician;->pause(Ljava/lang/String;)V

    .line 348
    return-void

    .line 339
    :catch_0
    move-exception v0

    .line 340
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v1, "[VoicePlayView]pause failed"

    invoke-static {v1, v0}, Lbkr;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getMessageId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/VoicePlayView;->r:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestParams()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 264
    iget-object v1, p0, Lcom/alibaba/android/ding/widget/VoicePlayView;->z:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 265
    iget-object v1, p0, Lcom/alibaba/android/ding/widget/VoicePlayView;->s:Lcom/alibaba/wukong/im/Message;

    if-nez v1, :cond_0

    .line 266
    const-string/jumbo v1, "VoicePlayView getRequestParams:"

    const-string/jumbo v2, "ding and message is null auth:"

    iget-object v3, p0, Lcom/alibaba/android/ding/widget/VoicePlayView;->j:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lbjl;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    :goto_0
    return-object v0

    .line 269
    :cond_0
    const-string/jumbo v1, "IM"

    iget-object v2, p0, Lcom/alibaba/android/ding/widget/VoicePlayView;->s:Lcom/alibaba/wukong/im/Message;

    invoke-static {v2}, Liaf;->a(Lcom/alibaba/wukong/im/Message;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/ding/widget/VoicePlayView;->y:Ljava/lang/String;

    invoke-static {v1, v2, v3, v0}, Liaf;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    .line 271
    :cond_1
    const-string/jumbo v1, "DING"

    iget-object v2, p0, Lcom/alibaba/android/ding/widget/VoicePlayView;->z:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/android/ding/widget/VoicePlayView;->x:Ljava/lang/String;

    invoke-static {v2, v3}, Lbjl;->a(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/ding/widget/VoicePlayView;->y:Ljava/lang/String;

    invoke-static {v1, v2, v3, v0}, Liaf;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    goto :goto_0
.end method

.method public getWaveView()Landroid/view/View;
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/VoicePlayView;->p:Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;

    return-object v0
.end method

.method public setFrom(I)V
    .locals 0
    .param p1, "from"    # I

    .prologue
    .line 241
    iput p1, p0, Lcom/alibaba/android/ding/widget/VoicePlayView;->i:I

    .line 242
    return-void
.end method

.method public setMessage(Lcom/alibaba/wukong/im/Message;)V
    .locals 0
    .param p1, "message"    # Lcom/alibaba/wukong/im/Message;

    .prologue
    .line 225
    iput-object p1, p0, Lcom/alibaba/android/ding/widget/VoicePlayView;->s:Lcom/alibaba/wukong/im/Message;

    .line 226
    return-void
.end method

.method public setMessageAudio(Lcom/alibaba/wukong/im/MessageContent$AudioContent;)V
    .locals 6
    .param p1, "msgAudio"    # Lcom/alibaba/wukong/im/MessageContent$AudioContent;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 245
    invoke-interface {p1}, Lcom/alibaba/wukong/im/MessageContent$AudioContent;->duration()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alibaba/android/ding/widget/VoicePlayView;->u:J

    .line 246
    invoke-interface {p1}, Lcom/alibaba/wukong/im/MessageContent$AudioContent;->url()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/alibaba/wukong/im/MessageContent$AudioContent;->getAuthUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lbjl;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/ding/widget/VoicePlayView;->j:Ljava/lang/String;

    .line 247
    iget-object v1, p0, Lcom/alibaba/android/ding/widget/VoicePlayView;->p:Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;

    invoke-interface {p1}, Lcom/alibaba/wukong/im/MessageContent$AudioContent;->volumns()Ljava/util/List;

    move-result-object v2

    iget-wide v4, p0, Lcom/alibaba/android/ding/widget/VoicePlayView;->u:J

    .line 2160
    const/4 v3, 0x0

    invoke-virtual {v1, v2, v4, v5, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;->a(Ljava/util/List;JZ)V

    .line 248
    iget-object v1, p0, Lcom/alibaba/android/ding/widget/VoicePlayView;->q:Landroid/widget/TextView;

    iget-wide v2, p0, Lcom/alibaba/android/ding/widget/VoicePlayView;->u:J

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v2, v2

    invoke-direct {p0, v2}, Lcom/alibaba/android/ding/widget/VoicePlayView;->a(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 251
    invoke-virtual {p0}, Lcom/alibaba/android/ding/widget/VoicePlayView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 252
    .local v0, "parent":Landroid/view/ViewParent;
    if-eqz v0, :cond_0

    .line 253
    invoke-interface {v0}, Landroid/view/ViewParent;->requestLayout()V

    .line 255
    :cond_0
    return-void
.end method

.method public setMessageId(Ljava/lang/String;)V
    .locals 0
    .param p1, "messageId"    # Ljava/lang/String;

    .prologue
    .line 229
    iput-object p1, p0, Lcom/alibaba/android/ding/widget/VoicePlayView;->r:Ljava/lang/String;

    .line 230
    return-void
.end method

.method public setScheme(Lcom/alibaba/android/ding/widget/VoicePlayView$SCHEME;)V
    .locals 4
    .param p1, "scheme"    # Lcom/alibaba/android/ding/widget/VoicePlayView$SCHEME;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 212
    iput-object p1, p0, Lcom/alibaba/android/ding/widget/VoicePlayView;->d:Lcom/alibaba/android/ding/widget/VoicePlayView$SCHEME;

    .line 213
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/VoicePlayView;->p:Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;

    iget-object v1, p0, Lcom/alibaba/android/ding/widget/VoicePlayView;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/alibaba/android/ding/widget/VoicePlayView;->d:Lcom/alibaba/android/ding/widget/VoicePlayView$SCHEME;

    invoke-virtual {v2}, Lcom/alibaba/android/ding/widget/VoicePlayView$SCHEME;->getWaveForegroundColorResId()I

    move-result v2

    invoke-static {v1, v2}, Ldp;->c(Landroid/content/Context;I)I

    move-result v1

    iget-object v2, p0, Lcom/alibaba/android/ding/widget/VoicePlayView;->c:Landroid/content/Context;

    iget-object v3, p0, Lcom/alibaba/android/ding/widget/VoicePlayView;->d:Lcom/alibaba/android/ding/widget/VoicePlayView$SCHEME;

    .line 214
    invoke-virtual {v3}, Lcom/alibaba/android/ding/widget/VoicePlayView$SCHEME;->getWaveBackgroundColorResId()I

    move-result v3

    invoke-static {v2, v3}, Ldp;->c(Landroid/content/Context;I)I

    move-result v2

    .line 213
    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;->a(II)V

    .line 215
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/VoicePlayView;->q:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/android/ding/widget/VoicePlayView;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/alibaba/android/ding/widget/VoicePlayView;->d:Lcom/alibaba/android/ding/widget/VoicePlayView$SCHEME;

    invoke-virtual {v2}, Lcom/alibaba/android/ding/widget/VoicePlayView$SCHEME;->getDurationTextColorId()I

    move-result v2

    invoke-static {v1, v2}, Ldp;->c(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 216
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/VoicePlayView;->b:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    sget v1, Laxp$i;->icon_dingplay_fill:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setText(I)V

    .line 217
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/VoicePlayView;->b:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iget-object v1, p0, Lcom/alibaba/android/ding/widget/VoicePlayView;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/alibaba/android/ding/widget/VoicePlayView;->d:Lcom/alibaba/android/ding/widget/VoicePlayView$SCHEME;

    invoke-virtual {v2}, Lcom/alibaba/android/ding/widget/VoicePlayView$SCHEME;->getPlayBtnColorResId()I

    move-result v2

    invoke-static {v1, v2}, Ldp;->c(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setTextColor(I)V

    .line 218
    return-void
.end method

.method public setVoicePlayListener(Lcom/alibaba/android/ding/widget/VoicePlayView$a;)V
    .locals 0
    .param p1, "listener"    # Lcom/alibaba/android/ding/widget/VoicePlayView$a;

    .prologue
    .line 221
    iput-object p1, p0, Lcom/alibaba/android/ding/widget/VoicePlayView;->v:Lcom/alibaba/android/ding/widget/VoicePlayView$a;

    .line 222
    return-void
.end method

.method public setWaveViewMaxWidth(I)V
    .locals 1
    .param p1, "maxWidth"    # I

    .prologue
    .line 206
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/VoicePlayView;->p:Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/VoicePlayView;->p:Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;->setExpectedWidth(I)V

    .line 209
    :cond_0
    return-void
.end method

.method public setWaveViewMinSampleSize(I)V
    .locals 1
    .param p1, "minSampleSize"    # I

    .prologue
    .line 200
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/VoicePlayView;->p:Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/VoicePlayView;->p:Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;->setMinSampleSize(I)V

    .line 203
    :cond_0
    return-void
.end method
