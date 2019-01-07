.class public Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;
.super Landroid/widget/LinearLayout;
.source "EncryptVoicePlayerView.java"

# interfaces
.implements Lctj$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView$a;,
        Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView$Direction;
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Ljava/lang/String;

.field public c:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

.field public d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public e:J

.field public f:Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;

.field public g:Lcom/alibaba/android/dingtalkbase/widgets/voice/OnlySeekableSeekBar;

.field public h:Z

.field private final i:Ljava/lang/String;

.field private final j:Ljava/lang/String;

.field private final k:I

.field private l:Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView$a;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/widget/TextView;

.field private o:Lctj;

.field private p:I

.field private q:Z

.field private r:I

.field private s:Landroid/view/View$OnClickListener;

.field private t:Lcma;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcma",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 83
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 46
    const-string/jumbo v0, "play"

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->i:Ljava/lang/String;

    .line 47
    const-string/jumbo v0, "pause"

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->j:Ljava/lang/String;

    .line 49
    const/16 v0, 0x64

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->k:I

    .line 247
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView$2;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView$2;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->s:Landroid/view/View$OnClickListener;

    .line 298
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView$3;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView$3;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->t:Lcma;

    .line 84
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->b()V

    .line 85
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 88
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    const-string/jumbo v0, "play"

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->i:Ljava/lang/String;

    .line 47
    const-string/jumbo v0, "pause"

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->j:Ljava/lang/String;

    .line 49
    const/16 v0, 0x64

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->k:I

    .line 247
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView$2;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView$2;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->s:Landroid/view/View$OnClickListener;

    .line 298
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView$3;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView$3;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->t:Lcma;

    .line 89
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->b()V

    .line 90
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 93
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    const-string/jumbo v0, "play"

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->i:Ljava/lang/String;

    .line 47
    const-string/jumbo v0, "pause"

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->j:Ljava/lang/String;

    .line 49
    const/16 v0, 0x64

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->k:I

    .line 247
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView$2;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView$2;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->s:Landroid/view/View$OnClickListener;

    .line 298
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView$3;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView$3;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->t:Lcma;

    .line 94
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->b()V

    .line 95
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;
    .param p1, "x1"    # I

    .prologue
    .line 38
    iput p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->r:I

    return p1
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;)J
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;

    .prologue
    .line 38
    iget-wide v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->e:J

    return-wide v0
.end method

.method private a(I)Ljava/lang/String;
    .locals 5
    .param p1, "durationInt"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 332
    const/16 v0, 0x3c

    if-ne p1, v0, :cond_0

    .line 333
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcig$j;->voice_record_duration_long:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 337
    :goto_0
    return-object v0

    .line 334
    :cond_0
    const/16 v0, 0x9

    if-le p1, v0, :cond_1

    .line 335
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcig$j;->voice_record_duration:I

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 337
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcig$j;->voice_record_duration_short:I

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->b:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;
    .param p1, "x1"    # Z

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->q:Z

    return p1
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;

    .prologue
    .line 38
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->r:I

    return v0
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;
    .param p1, "x1"    # I

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private b()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/16 v6, 0x64

    const/16 v4, 0x8

    const/high16 v3, 0x41000000    # 8.0f

    const/4 v5, 0x0

    .line 172
    invoke-virtual {p0, v5}, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->setOrientation(I)V

    .line 173
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->setGravity(I)V

    .line 174
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcig$h;->voice_play_view:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 176
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    .line 1072
    iget-object v0, v0, Lcid;->b:Lckd;

    .line 176
    invoke-virtual {v0}, Lckd;->i()Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->h:Z

    .line 177
    sget v0, Lcig$f;->waveform_view:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->f:Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;

    .line 178
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->f:Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;

    invoke-virtual {v0, v6}, Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;->setMax(I)V

    .line 179
    sget v0, Lcig$f;->seekbar_voice:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/voice/OnlySeekableSeekBar;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->g:Lcom/alibaba/android/dingtalkbase/widgets/voice/OnlySeekableSeekBar;

    .line 180
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->g:Lcom/alibaba/android/dingtalkbase/widgets/voice/OnlySeekableSeekBar;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v3}, Lcms;->c(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v3}, Lcms;->c(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v0, v1, v5, v2, v5}, Lcom/alibaba/android/dingtalkbase/widgets/voice/OnlySeekableSeekBar;->setPadding(IIII)V

    .line 181
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->g:Lcom/alibaba/android/dingtalkbase/widgets/voice/OnlySeekableSeekBar;

    invoke-virtual {v0, v6}, Lcom/alibaba/android/dingtalkbase/widgets/voice/OnlySeekableSeekBar;->setMax(I)V

    .line 182
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->g:Lcom/alibaba/android/dingtalkbase/widgets/voice/OnlySeekableSeekBar;

    invoke-virtual {v0, v5}, Lcom/alibaba/android/dingtalkbase/widgets/voice/OnlySeekableSeekBar;->setProgress(I)V

    .line 183
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->h:Z

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->f:Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;

    invoke-virtual {v0, v4}, Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;->setVisibility(I)V

    .line 185
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->g:Lcom/alibaba/android/dingtalkbase/widgets/voice/OnlySeekableSeekBar;

    invoke-virtual {v0, v5}, Lcom/alibaba/android/dingtalkbase/widgets/voice/OnlySeekableSeekBar;->setVisibility(I)V

    .line 190
    :goto_0
    sget v0, Lcig$f;->btn_play_pause:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->m:Landroid/widget/TextView;

    .line 191
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->m:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->s:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    sget v0, Lcig$f;->tv_audio_length:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->n:Landroid/widget/TextView;

    .line 194
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->n:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcig$j;->voice_record_duration:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "10"

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 195
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->n:Landroid/widget/TextView;

    invoke-virtual {v0, v5, v5}, Landroid/widget/TextView;->measure(II)V

    .line 196
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->n:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->n:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setWidth(I)V

    .line 197
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->n:Landroid/widget/TextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 198
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->s:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1204
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->g:Lcom/alibaba/android/dingtalkbase/widgets/voice/OnlySeekableSeekBar;

    new-instance v1, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView$1;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/voice/OnlySeekableSeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 200
    return-void

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->f:Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;

    invoke-virtual {v0, v5}, Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;->setVisibility(I)V

    .line 188
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->g:Lcom/alibaba/android/dingtalkbase/widgets/voice/OnlySeekableSeekBar;

    invoke-virtual {v0, v4}, Lcom/alibaba/android/dingtalkbase/widgets/voice/OnlySeekableSeekBar;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->n:Landroid/widget/TextView;

    return-object v0
.end method

.method private c()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 348
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->n:Landroid/widget/TextView;

    iget-wide v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->e:J

    long-to-int v1, v2

    div-int/lit16 v1, v1, 0x3e8

    invoke-direct {p0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 349
    return-void
.end method

.method static synthetic d(Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;)Lcom/alibaba/android/dingtalkbase/widgets/voice/OnlySeekableSeekBar;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->g:Lcom/alibaba/android/dingtalkbase/widgets/voice/OnlySeekableSeekBar;

    return-object v0
.end method

.method static synthetic e(Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;)Z
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;

    .prologue
    .line 38
    .line 6342
    invoke-static {}, Lctj;->a()Lctj;

    move-result-object v0

    .line 6343
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->a:Ljava/lang/Object;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->a:Ljava/lang/Object;

    .line 7184
    iget-object v2, v0, Lctj;->a:Ljava/lang/Object;

    .line 6343
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->b:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->b:Ljava/lang/String;

    .line 7188
    iget-object v0, v0, Lctj;->b:Ljava/lang/String;

    .line 6344
    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    .line 38
    goto :goto_0
.end method

.method static synthetic f(Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;)Lctj;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->getVoicePlay()Lctj;

    move-result-object v0

    return-object v0
.end method

.method static synthetic g(Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->q:Z

    return v0
.end method

.method private getVoicePlay()Lctj;
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->o:Lctj;

    if-nez v0, :cond_0

    .line 326
    invoke-static {}, Lctj;->a()Lctj;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->o:Lctj;

    .line 328
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->o:Lctj;

    return-object v0
.end method

.method static synthetic h(Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->a:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic i(Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic j(Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->c()V

    return-void
.end method

.method static synthetic k(Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->m:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic l(Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;)Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->l:Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView$a;

    return-object v0
.end method

.method static synthetic m(Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;)Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->c:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    return-object v0
.end method

.method static synthetic n(Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;)Lcma;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->t:Lcma;

    return-object v0
.end method

.method static synthetic o(Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;

    .prologue
    .line 38
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->p:I

    return v0
.end method

.method static synthetic p(Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->h:Z

    return v0
.end method

.method static synthetic q(Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;)V
    .locals 8
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;

    .prologue
    const/4 v5, 0x0

    const/16 v3, 0x7b

    .line 38
    .line 7361
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->a:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 7362
    invoke-static {}, Lctj;->a()Lctj;

    move-result-object v0

    .line 7363
    const-string/jumbo v1, "play"

    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->m:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 7365
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->p:I

    if-ne v0, v3, :cond_1

    .line 7367
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "ding_list_voice_play"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 7375
    :goto_0
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->h:Z

    if-eqz v0, :cond_3

    .line 7376
    iget-wide v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->e:J

    long-to-double v0, v0

    iget v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->r:I

    int-to-double v2, v2

    const-wide v6, 0x3f847ae147ae147bL    # 0.01

    mul-double/2addr v2, v6

    mul-double/2addr v0, v2

    double-to-int v3, v0

    .line 7377
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->getVoicePlay()Lctj;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->a:Ljava/lang/Object;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->b:Ljava/lang/String;

    iget-wide v6, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->e:J

    long-to-int v4, v6

    move-object v6, v5

    invoke-virtual/range {v0 .. v6}, Lctj;->a(Ljava/lang/Object;Ljava/lang/String;IILjava/util/Map;Ljava/util/Map;)V

    .line 7379
    :cond_0
    :goto_1
    return-void

    .line 7368
    :cond_1
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->p:I

    const/16 v1, 0x7c

    if-ne v0, v1, :cond_2

    .line 7370
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "ding_detail_voice_play"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    goto :goto_0

    .line 7373
    :cond_2
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "chat_voice_play"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    goto :goto_0

    .line 7379
    :cond_3
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->getVoicePlay()Lctj;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->a:Ljava/lang/Object;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lctj;->a(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 7384
    :cond_4
    iget v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->p:I

    if-ne v1, v3, :cond_5

    .line 7386
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    const-string/jumbo v2, "ding_voice_play_after_pause"

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 8184
    :goto_2
    iget-object v1, v0, Lctj;->a:Ljava/lang/Object;

    .line 7392
    if-eqz v1, :cond_0

    .line 9184
    iget-object v1, v0, Lctj;->a:Ljava/lang/Object;

    .line 7392
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->a:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7393
    invoke-virtual {v0}, Lctj;->b()V

    goto :goto_1

    .line 7389
    :cond_5
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    const-string/jumbo v2, "chat_voice_play_after_pause"

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    goto :goto_2
.end method

.method private setPlayProgress(I)V
    .locals 1
    .param p1, "progress"    # I

    .prologue
    .line 164
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->h:Z

    if-nez v0, :cond_1

    .line 165
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->f:Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;->setProgress(I)V

    .line 169
    :cond_0
    :goto_0
    return-void

    .line 166
    :cond_1
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->q:Z

    if-nez v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->g:Lcom/alibaba/android/dingtalkbase/widgets/voice/OnlySeekableSeekBar;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/voice/OnlySeekableSeekBar;->setProgress(I)V

    goto :goto_0
.end method

.method private setPlayState(Z)V
    .locals 3
    .param p1, "playing"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 152
    if-eqz p1, :cond_0

    .line 153
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->m:Landroid/widget/TextView;

    const-string/jumbo v1, "pause"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 154
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->m:Landroid/widget/TextView;

    sget v1, Lcig$j;->icon_dingstop_fill:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 155
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->m:Landroid/widget/TextView;

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    sget v2, Lcig$j;->dt_accessibility_conversation_video_send_pause:I

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 161
    :goto_0
    return-void

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->m:Landroid/widget/TextView;

    const-string/jumbo v1, "play"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 158
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->m:Landroid/widget/TextView;

    sget v1, Lcig$j;->icon_dingplay_fill:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 159
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->m:Landroid/widget/TextView;

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    sget v2, Lcig$j;->dt_accessibility_conversation_video_send_play:I

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/high16 v6, 0x447a0000    # 1000.0f

    const/high16 v5, 0x42c80000    # 100.0f

    const/4 v4, 0x0

    .line 400
    invoke-static {}, Lctj;->a()Lctj;

    move-result-object v0

    .line 2184
    .local v0, "mvp":Lctj;
    iget-object v2, v0, Lctj;->a:Ljava/lang/Object;

    .line 402
    if-eqz v2, :cond_0

    .line 3184
    iget-object v2, v0, Lctj;->a:Ljava/lang/Object;

    .line 402
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->a:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3192
    iget v1, v0, Lctj;->c:I

    .line 407
    .local v1, "status":I
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 431
    :goto_1
    return-void

    .line 405
    .end local v1    # "status":I
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "status":I
    goto :goto_0

    .line 409
    :pswitch_0
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->setPlayState(Z)V

    .line 3196
    iget v2, v0, Lctj;->d:F

    .line 410
    mul-float/2addr v2, v5

    float-to-int v2, v2

    invoke-direct {p0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->setPlayProgress(I)V

    .line 411
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->n:Landroid/widget/TextView;

    .line 4196
    iget v3, v0, Lctj;->d:F

    .line 411
    iget-wide v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->e:J

    long-to-float v4, v4

    mul-float/2addr v3, v4

    div-float/2addr v3, v6

    float-to-int v3, v3

    invoke-direct {p0, v3}, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 414
    :pswitch_1
    invoke-direct {p0, v4}, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->setPlayState(Z)V

    .line 5196
    iget v2, v0, Lctj;->d:F

    .line 415
    mul-float/2addr v2, v5

    float-to-int v2, v2

    invoke-direct {p0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->setPlayProgress(I)V

    .line 416
    iget-boolean v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->h:Z

    if-eqz v2, :cond_1

    .line 417
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->c()V

    goto :goto_1

    .line 419
    :cond_1
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->n:Landroid/widget/TextView;

    .line 6196
    iget v3, v0, Lctj;->d:F

    .line 419
    iget-wide v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->e:J

    long-to-float v4, v4

    mul-float/2addr v3, v4

    div-float/2addr v3, v6

    float-to-int v3, v3

    invoke-direct {p0, v3}, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 423
    :pswitch_2
    invoke-direct {p0, v4}, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->setPlayState(Z)V

    .line 424
    const/16 v2, 0x64

    invoke-direct {p0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->setPlayProgress(I)V

    .line 425
    iget-boolean v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->h:Z

    if-eqz v2, :cond_2

    .line 426
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->g:Lcom/alibaba/android/dingtalkbase/widgets/voice/OnlySeekableSeekBar;

    invoke-virtual {v2, v4}, Lcom/alibaba/android/dingtalkbase/widgets/voice/OnlySeekableSeekBar;->setProgress(I)V

    .line 428
    :cond_2
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->n:Landroid/widget/TextView;

    iget-wide v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->e:J

    long-to-int v3, v4

    div-int/lit16 v3, v3, 0x3e8

    invoke-direct {p0, v3}, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 407
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/Object;

    .prologue
    .line 482
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->a:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 483
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->a()V

    .line 485
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/Object;I)V
    .locals 5
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "errorCode"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 510
    const-string/jumbo v1, "STATISTICS"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/statistics/Statistics;

    .line 511
    .local v0, "statistics":Lcom/alibaba/doraemon/statistics/Statistics;
    const-string/jumbo v1, "DD"

    const-string/jumbo v2, "VOICE_PALY_RATE_EVENT_NAME"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, ""

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/alibaba/doraemon/statistics/Statistics;->commitRateFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->a:Ljava/lang/Object;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 514
    const/4 v1, 0x5

    if-ne v1, p2, :cond_1

    .line 515
    sget v1, Lcig$j;->audio_file_not_exist:I

    invoke-static {v1}, Lcms;->a(I)V

    .line 519
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->a()V

    .line 521
    :cond_0
    return-void

    .line 517
    :cond_1
    sget v1, Lcig$j;->audio_play_failed:I

    invoke-static {v1}, Lcms;->a(I)V

    goto :goto_0
.end method

.method public final b(Ljava/lang/Object;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/Object;

    .prologue
    .line 489
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->a:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 490
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->a()V

    .line 492
    :cond_0
    return-void
.end method

.method public final b(Ljava/lang/Object;I)V
    .locals 1
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "duration"    # I

    .prologue
    .line 534
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->h:Z

    if-eqz v0, :cond_0

    .line 535
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->a:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 539
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->a()V

    .line 541
    :cond_1
    return-void
.end method

.method public final c(Ljava/lang/Object;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/Object;

    .prologue
    .line 496
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->a:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 497
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->a()V

    .line 499
    :cond_0
    return-void
.end method

.method public final d(Ljava/lang/Object;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/Object;

    .prologue
    .line 503
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->a:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 504
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->a()V

    .line 506
    :cond_0
    return-void
.end method

.method public final e(Ljava/lang/Object;)V
    .locals 3
    .param p1, "id"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 525
    const-string/jumbo v1, "STATISTICS"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/statistics/Statistics;

    .line 526
    .local v0, "statistics":Lcom/alibaba/doraemon/statistics/Statistics;
    const-string/jumbo v1, "DD"

    const-string/jumbo v2, "VOICE_PALY_RATE_EVENT_NAME"

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/statistics/Statistics;->commitRateSuccess(Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->a:Ljava/lang/Object;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 528
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->a()V

    .line 530
    :cond_0
    return-void
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 474
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 475
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 477
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAudioId()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public getAudioUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getDuration()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 143
    iget-wide v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->e:J

    return-wide v0
.end method

.method public getDurationString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 353
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->n:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 354
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->n:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->n:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 357
    :goto_0
    return-object v0

    .line 354
    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0

    .line 357
    :cond_1
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 99
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 100
    invoke-static {}, Lctj;->a()Lctj;

    move-result-object v0

    invoke-virtual {v0, p0}, Lctj;->a(Lctj$a;)V

    .line 101
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->a()V

    .line 102
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 106
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 107
    invoke-static {}, Lctj;->a()Lctj;

    move-result-object v0

    invoke-virtual {v0, p0}, Lctj;->b(Lctj$a;)V

    .line 108
    return-void
.end method

.method public setDirection(Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView$Direction;)V
    .locals 0
    .param p1, "direction"    # Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView$Direction;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 149
    return-void
.end method

.method public setFrom(I)V
    .locals 0
    .param p1, "from"    # I

    .prologue
    .line 111
    iput p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->p:I

    .line 112
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 115
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->b:Ljava/lang/String;

    .line 116
    return-void
.end method

.method public setVoiceFileDownloader(Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView$a;)V
    .locals 3
    .param p1, "downloader"    # Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView$a;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 544
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->l:Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView$a;

    .line 546
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->getContext()Landroid/content/Context;

    move-result-object v1

    instance-of v1, v1, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 547
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 548
    .local v0, "activity":Landroid/app/Activity;
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->t:Lcma;

    const-class v2, Lcma;

    invoke-static {v1, v2, v0}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcma;

    iput-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->t:Lcma;

    .line 550
    .end local v0    # "activity":Landroid/app/Activity;
    :cond_0
    return-void
.end method
