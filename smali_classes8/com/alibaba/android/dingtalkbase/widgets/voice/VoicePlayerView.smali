.class public Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;
.super Landroid/widget/LinearLayout;
.source "VoicePlayerView.java"

# interfaces
.implements Lctj$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView$Direction;
    }
.end annotation


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:I

.field private e:Ljava/lang/Object;

.field private f:Ljava/lang/String;

.field private g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private i:J

.field private j:Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/TextView;

.field private m:Lctj;

.field private n:Lcom/alibaba/android/dingtalkbase/widgets/voice/OnlySeekableSeekBar;

.field private o:I

.field private p:Z

.field private q:I

.field private r:Z

.field private s:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 76
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 39
    const-string/jumbo v0, "play"

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->b:Ljava/lang/String;

    .line 40
    const-string/jumbo v0, "pause"

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->c:Ljava/lang/String;

    .line 42
    const/16 v0, 0x64

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->d:I

    .line 248
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView$2;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView$2;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->s:Landroid/view/View$OnClickListener;

    .line 77
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->b()V

    .line 78
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 81
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    const-string/jumbo v0, "play"

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->b:Ljava/lang/String;

    .line 40
    const-string/jumbo v0, "pause"

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->c:Ljava/lang/String;

    .line 42
    const/16 v0, 0x64

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->d:I

    .line 248
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView$2;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView$2;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->s:Landroid/view/View$OnClickListener;

    .line 82
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->b()V

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 86
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    const-string/jumbo v0, "play"

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->b:Ljava/lang/String;

    .line 40
    const-string/jumbo v0, "pause"

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->c:Ljava/lang/String;

    .line 42
    const/16 v0, 0x64

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->d:I

    .line 248
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView$2;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView$2;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->s:Landroid/view/View$OnClickListener;

    .line 87
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->b()V

    .line 88
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;
    .param p1, "x1"    # I

    .prologue
    .line 32
    iput p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->q:I

    return p1
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;)J
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;

    .prologue
    .line 32
    iget-wide v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->i:J

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

    .line 296
    const/16 v0, 0x3c

    if-ne p1, v0, :cond_0

    .line 297
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcig$j;->voice_record_duration_long:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 301
    :goto_0
    return-object v0

    .line 298
    :cond_0
    const/16 v0, 0x9

    if-le p1, v0, :cond_1

    .line 299
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcig$j;->voice_record_duration:I

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 301
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->getContext()Landroid/content/Context;

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

.method static synthetic a(Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;
    .param p1, "x1"    # Z

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->p:Z

    return p1
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;

    .prologue
    .line 32
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->q:I

    return v0
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;
    .param p1, "x1"    # I

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->a(I)Ljava/lang/String;

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

    .line 174
    invoke-virtual {p0, v5}, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->setOrientation(I)V

    .line 175
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->setGravity(I)V

    .line 176
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcig$h;->voice_play_view:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 178
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    .line 3072
    iget-object v0, v0, Lcid;->b:Lckd;

    .line 178
    invoke-virtual {v0}, Lckd;->i()Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->r:Z

    .line 179
    sget v0, Lcig$f;->waveform_view:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->j:Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;

    .line 180
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->j:Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;

    invoke-virtual {v0, v6}, Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;->setMax(I)V

    .line 181
    sget v0, Lcig$f;->seekbar_voice:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/voice/OnlySeekableSeekBar;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->n:Lcom/alibaba/android/dingtalkbase/widgets/voice/OnlySeekableSeekBar;

    .line 182
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->n:Lcom/alibaba/android/dingtalkbase/widgets/voice/OnlySeekableSeekBar;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v3}, Lcms;->c(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v3}, Lcms;->c(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v0, v1, v5, v2, v5}, Lcom/alibaba/android/dingtalkbase/widgets/voice/OnlySeekableSeekBar;->setPadding(IIII)V

    .line 183
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->n:Lcom/alibaba/android/dingtalkbase/widgets/voice/OnlySeekableSeekBar;

    invoke-virtual {v0, v6}, Lcom/alibaba/android/dingtalkbase/widgets/voice/OnlySeekableSeekBar;->setMax(I)V

    .line 184
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->n:Lcom/alibaba/android/dingtalkbase/widgets/voice/OnlySeekableSeekBar;

    invoke-virtual {v0, v5}, Lcom/alibaba/android/dingtalkbase/widgets/voice/OnlySeekableSeekBar;->setProgress(I)V

    .line 185
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->r:Z

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->j:Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;

    invoke-virtual {v0, v4}, Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;->setVisibility(I)V

    .line 187
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->n:Lcom/alibaba/android/dingtalkbase/widgets/voice/OnlySeekableSeekBar;

    invoke-virtual {v0, v5}, Lcom/alibaba/android/dingtalkbase/widgets/voice/OnlySeekableSeekBar;->setVisibility(I)V

    .line 192
    :goto_0
    sget v0, Lcig$f;->btn_play_pause:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->k:Landroid/widget/TextView;

    .line 193
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->k:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->s:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    sget v0, Lcig$f;->tv_audio_length:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->l:Landroid/widget/TextView;

    .line 196
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->l:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcig$j;->voice_record_duration:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "10"

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->l:Landroid/widget/TextView;

    invoke-virtual {v0, v5, v5}, Landroid/widget/TextView;->measure(II)V

    .line 198
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->l:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->l:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setWidth(I)V

    .line 199
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->l:Landroid/widget/TextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 200
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->s:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3205
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->n:Lcom/alibaba/android/dingtalkbase/widgets/voice/OnlySeekableSeekBar;

    new-instance v1, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView$1;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/voice/OnlySeekableSeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 202
    return-void

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->j:Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;

    invoke-virtual {v0, v5}, Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;->setVisibility(I)V

    .line 190
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->n:Lcom/alibaba/android/dingtalkbase/widgets/voice/OnlySeekableSeekBar;

    invoke-virtual {v0, v4}, Lcom/alibaba/android/dingtalkbase/widgets/voice/OnlySeekableSeekBar;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->l:Landroid/widget/TextView;

    return-object v0
.end method

.method private c()Z
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 340
    invoke-static {}, Lctj;->a()Lctj;

    move-result-object v0

    .line 341
    .local v0, "mvp":Lctj;
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->e:Ljava/lang/Object;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->e:Ljava/lang/Object;

    .line 8184
    iget-object v2, v0, Lctj;->a:Ljava/lang/Object;

    .line 341
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->f:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->f:Ljava/lang/String;

    .line 8188
    iget-object v2, v0, Lctj;->b:Ljava/lang/String;

    .line 342
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static synthetic d(Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;)Lcom/alibaba/android/dingtalkbase/widgets/voice/OnlySeekableSeekBar;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->n:Lcom/alibaba/android/dingtalkbase/widgets/voice/OnlySeekableSeekBar;

    return-object v0
.end method

.method private d()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 346
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->l:Landroid/widget/TextView;

    iget-wide v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->i:J

    long-to-int v1, v2

    div-int/lit16 v1, v1, 0x3e8

    invoke-direct {p0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 347
    return-void
.end method

.method static synthetic e(Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->c()Z

    move-result v0

    return v0
.end method

.method static synthetic f(Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;)Lctj;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->getVoicePlay()Lctj;

    move-result-object v0

    return-object v0
.end method

.method static synthetic g(Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->p:Z

    return v0
.end method

.method private getVoicePlay()Lctj;
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->m:Lctj;

    if-nez v0, :cond_0

    .line 290
    invoke-static {}, Lctj;->a()Lctj;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->m:Lctj;

    .line 292
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->m:Lctj;

    return-object v0
.end method

.method static synthetic h(Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->e:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic i(Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic j(Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->g:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic k(Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->h:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic l(Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->d()V

    return-void
.end method

.method static synthetic m(Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->k:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic n(Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;

    .prologue
    .line 32
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->o:I

    return v0
.end method

.method static synthetic o(Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->r:Z

    return v0
.end method

.method private setPlayProgress(I)V
    .locals 1
    .param p1, "progress"    # I

    .prologue
    .line 166
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->r:Z

    if-nez v0, :cond_1

    .line 167
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->j:Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;->setProgress(I)V

    .line 171
    :cond_0
    :goto_0
    return-void

    .line 168
    :cond_1
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->p:Z

    if-nez v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->n:Lcom/alibaba/android/dingtalkbase/widgets/voice/OnlySeekableSeekBar;

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
    .line 154
    if-eqz p1, :cond_0

    .line 155
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->k:Landroid/widget/TextView;

    const-string/jumbo v1, "pause"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 156
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->k:Landroid/widget/TextView;

    sget v1, Lcig$j;->icon_pause:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 157
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->k:Landroid/widget/TextView;

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    sget v2, Lcig$j;->dt_accessibility_conversation_video_send_pause:I

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 163
    :goto_0
    return-void

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->k:Landroid/widget/TextView;

    const-string/jumbo v1, "play"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 160
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->k:Landroid/widget/TextView;

    sget v1, Lcig$j;->icon_play_arrow:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 161
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->k:Landroid/widget/TextView;

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

    const/high16 v4, 0x42c80000    # 100.0f

    const/4 v3, 0x0

    .line 306
    invoke-static {}, Lctj;->a()Lctj;

    move-result-object v0

    .line 308
    .local v0, "mvp":Lctj;
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->c()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4192
    iget v1, v0, Lctj;->c:I

    .line 313
    .local v1, "status":I
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 337
    :goto_1
    return-void

    .line 311
    .end local v1    # "status":I
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "status":I
    goto :goto_0

    .line 315
    :pswitch_0
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->setPlayState(Z)V

    .line 4196
    iget v2, v0, Lctj;->d:F

    .line 316
    mul-float/2addr v2, v4

    float-to-int v2, v2

    invoke-direct {p0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->setPlayProgress(I)V

    .line 317
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->l:Landroid/widget/TextView;

    .line 5196
    iget v3, v0, Lctj;->d:F

    .line 317
    iget-wide v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->i:J

    long-to-float v4, v4

    mul-float/2addr v3, v4

    div-float/2addr v3, v6

    float-to-int v3, v3

    invoke-direct {p0, v3}, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 320
    :pswitch_1
    invoke-direct {p0, v3}, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->setPlayState(Z)V

    .line 6196
    iget v2, v0, Lctj;->d:F

    .line 321
    mul-float/2addr v2, v4

    float-to-int v2, v2

    invoke-direct {p0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->setPlayProgress(I)V

    .line 322
    iget-boolean v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->r:Z

    if-eqz v2, :cond_1

    .line 323
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->d()V

    goto :goto_1

    .line 325
    :cond_1
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->l:Landroid/widget/TextView;

    .line 7196
    iget v3, v0, Lctj;->d:F

    .line 325
    iget-wide v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->i:J

    long-to-float v4, v4

    mul-float/2addr v3, v4

    div-float/2addr v3, v6

    float-to-int v3, v3

    invoke-direct {p0, v3}, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 329
    :pswitch_2
    invoke-direct {p0, v3}, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->setPlayState(Z)V

    .line 330
    const/16 v2, 0x64

    invoke-direct {p0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->setPlayProgress(I)V

    .line 331
    iget-boolean v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->r:Z

    if-eqz v2, :cond_2

    .line 332
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->n:Lcom/alibaba/android/dingtalkbase/widgets/voice/OnlySeekableSeekBar;

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/voice/OnlySeekableSeekBar;->setProgress(I)V

    .line 334
    :cond_2
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->l:Landroid/widget/TextView;

    iget-wide v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->i:J

    long-to-int v3, v4

    div-int/lit16 v3, v3, 0x3e8

    invoke-direct {p0, v3}, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 313
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
    .line 406
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->e:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 407
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->a()V

    .line 409
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
    .line 434
    const-string/jumbo v1, "STATISTICS"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/statistics/Statistics;

    .line 435
    .local v0, "statistics":Lcom/alibaba/doraemon/statistics/Statistics;
    const-string/jumbo v1, "DD"

    const-string/jumbo v2, "VOICE_PALY_RATE_EVENT_NAME"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, ""

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/alibaba/doraemon/statistics/Statistics;->commitRateFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->e:Ljava/lang/Object;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 438
    const/4 v1, 0x5

    if-ne v1, p2, :cond_1

    .line 439
    sget v1, Lcig$j;->audio_file_not_exist:I

    invoke-static {v1}, Lcms;->a(I)V

    .line 443
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->a()V

    .line 445
    :cond_0
    return-void

    .line 441
    :cond_1
    sget v1, Lcig$j;->audio_play_failed:I

    invoke-static {v1}, Lcms;->a(I)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/String;Ljava/util/List;J)V
    .locals 8
    .param p1, "audioId"    # Ljava/lang/Object;
    .param p2, "audioUrl"    # Ljava/lang/String;
    .param p4, "duration"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .local p3, "sampleData":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v6, 0x0

    .line 108
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move-object v7, v6

    invoke-virtual/range {v0 .. v7}, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/util/List;JLjava/util/Map;Ljava/util/Map;)V

    .line 109
    return-void
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/String;Ljava/util/List;JLjava/util/Map;Ljava/util/Map;)V
    .locals 6
    .param p1, "audioId"    # Ljava/lang/Object;
    .param p2, "audioUrl"    # Ljava/lang/String;
    .param p4, "duration"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;J",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 112
    .local p3, "sampleData":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local p6, "headParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p7, "requestParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->e:Ljava/lang/Object;

    .line 113
    iput-object p2, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->f:Ljava/lang/String;

    .line 114
    iput-object p3, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->a:Ljava/util/List;

    .line 115
    iput-wide p4, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->i:J

    .line 116
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->g:Ljava/util/Map;

    .line 117
    iput-object p7, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->h:Ljava/util/Map;

    .line 1358
    iget-boolean v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->r:Z

    if-nez v1, :cond_1

    .line 1359
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->j:Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->a:Ljava/util/List;

    iget-wide v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->i:J

    .line 2160
    const/4 v3, 0x0

    invoke-virtual {v1, v2, v4, v5, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;->a(Ljava/util/List;JZ)V

    .line 119
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->a()V

    .line 122
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 123
    .local v0, "parent":Landroid/view/ViewParent;
    if-eqz v0, :cond_0

    .line 124
    invoke-interface {v0}, Landroid/view/ViewParent;->requestLayout()V

    .line 126
    :cond_0
    return-void

    .line 1363
    .end local v0    # "parent":Landroid/view/ViewParent;
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->n:Lcom/alibaba/android/dingtalkbase/widgets/voice/OnlySeekableSeekBar;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/voice/OnlySeekableSeekBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 1364
    iget-wide v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->i:J

    const-wide/16 v4, 0x7d0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_2

    .line 1365
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x42400000    # 48.0f

    invoke-static {v2, v3}, Lcms;->c(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1393
    :goto_1
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->n:Lcom/alibaba/android/dingtalkbase/widgets/voice/OnlySeekableSeekBar;

    invoke-virtual {v2, v1}, Lcom/alibaba/android/dingtalkbase/widgets/voice/OnlySeekableSeekBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 1366
    :cond_2
    iget-wide v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->i:J

    const-wide/16 v4, 0xbb8

    cmp-long v2, v2, v4

    if-gtz v2, :cond_3

    .line 1367
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x42580000    # 54.0f

    invoke-static {v2, v3}, Lcms;->c(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_1

    .line 1368
    :cond_3
    iget-wide v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->i:J

    const-wide/16 v4, 0xfa0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_4

    .line 1369
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x42700000    # 60.0f

    invoke-static {v2, v3}, Lcms;->c(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_1

    .line 1370
    :cond_4
    iget-wide v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->i:J

    const-wide/16 v4, 0x1388

    cmp-long v2, v2, v4

    if-gtz v2, :cond_5

    .line 1371
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x42840000    # 66.0f

    invoke-static {v2, v3}, Lcms;->c(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_1

    .line 1372
    :cond_5
    iget-wide v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->i:J

    const-wide/16 v4, 0x1770

    cmp-long v2, v2, v4

    if-gtz v2, :cond_6

    .line 1373
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x42900000    # 72.0f

    invoke-static {v2, v3}, Lcms;->c(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_1

    .line 1374
    :cond_6
    iget-wide v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->i:J

    const-wide/16 v4, 0x1b58

    cmp-long v2, v2, v4

    if-gtz v2, :cond_7

    .line 1375
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x429c0000    # 78.0f

    invoke-static {v2, v3}, Lcms;->c(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_1

    .line 1376
    :cond_7
    iget-wide v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->i:J

    const-wide/16 v4, 0x1f40

    cmp-long v2, v2, v4

    if-gtz v2, :cond_8

    .line 1377
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x42a80000    # 84.0f

    invoke-static {v2, v3}, Lcms;->c(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto/16 :goto_1

    .line 1378
    :cond_8
    iget-wide v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->i:J

    const-wide/16 v4, 0x2710

    cmp-long v2, v2, v4

    if-gez v2, :cond_9

    .line 1379
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x42b40000    # 90.0f

    invoke-static {v2, v3}, Lcms;->c(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto/16 :goto_1

    .line 1380
    :cond_9
    iget-wide v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->i:J

    const-wide/16 v4, 0x4e20

    cmp-long v2, v2, v4

    if-gez v2, :cond_a

    .line 1381
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x42cc0000    # 102.0f

    invoke-static {v2, v3}, Lcms;->c(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto/16 :goto_1

    .line 1382
    :cond_a
    iget-wide v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->i:J

    const-wide/16 v4, 0x7530

    cmp-long v2, v2, v4

    if-gez v2, :cond_b

    .line 1383
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x42e40000    # 114.0f

    invoke-static {v2, v3}, Lcms;->c(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto/16 :goto_1

    .line 1384
    :cond_b
    iget-wide v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->i:J

    const-wide/32 v4, 0x9c40

    cmp-long v2, v2, v4

    if-gez v2, :cond_c

    .line 1385
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x42fc0000    # 126.0f

    invoke-static {v2, v3}, Lcms;->c(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto/16 :goto_1

    .line 1386
    :cond_c
    iget-wide v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->i:J

    const-wide/32 v4, 0xc350

    cmp-long v2, v2, v4

    if-gez v2, :cond_d

    .line 1387
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x430a0000    # 138.0f

    invoke-static {v2, v3}, Lcms;->c(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto/16 :goto_1

    .line 1388
    :cond_d
    iget-wide v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->i:J

    const-wide/32 v4, 0xea60

    cmp-long v2, v2, v4

    if-gez v2, :cond_e

    .line 1389
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x43100000    # 144.0f

    invoke-static {v2, v3}, Lcms;->c(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto/16 :goto_1

    .line 1391
    :cond_e
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x43160000    # 150.0f

    invoke-static {v2, v3}, Lcms;->c(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto/16 :goto_1
.end method

.method public final b(Ljava/lang/Object;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/Object;

    .prologue
    .line 413
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->e:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 414
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->a()V

    .line 416
    :cond_0
    return-void
.end method

.method public final b(Ljava/lang/Object;I)V
    .locals 1
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "duration"    # I

    .prologue
    .line 458
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->r:Z

    if-eqz v0, :cond_0

    .line 459
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->e:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 463
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->a()V

    .line 465
    :cond_1
    return-void
.end method

.method public final c(Ljava/lang/Object;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/Object;

    .prologue
    .line 420
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->e:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 421
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->a()V

    .line 423
    :cond_0
    return-void
.end method

.method public final d(Ljava/lang/Object;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/Object;

    .prologue
    .line 427
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->e:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 428
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->a()V

    .line 430
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
    .line 449
    const-string/jumbo v1, "STATISTICS"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/statistics/Statistics;

    .line 450
    .local v0, "statistics":Lcom/alibaba/doraemon/statistics/Statistics;
    const-string/jumbo v1, "DD"

    const-string/jumbo v2, "VOICE_PALY_RATE_EVENT_NAME"

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/statistics/Statistics;->commitRateSuccess(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->e:Ljava/lang/Object;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 452
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->a()V

    .line 454
    :cond_0
    return-void
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 398
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 399
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 401
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAudioUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getDuration()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 145
    iget-wide v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->i:J

    return-wide v0
.end method

.method public getDurationString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 350
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->l:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 351
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->l:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->l:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 354
    :goto_0
    return-object v0

    .line 351
    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0

    .line 354
    :cond_1
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public getmAudioId()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->e:Ljava/lang/Object;

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 92
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 93
    invoke-static {}, Lctj;->a()Lctj;

    move-result-object v0

    invoke-virtual {v0, p0}, Lctj;->a(Lctj$a;)V

    .line 94
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->a()V

    .line 95
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 99
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 100
    invoke-static {}, Lctj;->a()Lctj;

    move-result-object v0

    invoke-virtual {v0, p0}, Lctj;->b(Lctj$a;)V

    .line 101
    return-void
.end method

.method public setDirection(Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView$Direction;)V
    .locals 0
    .param p1, "direction"    # Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView$Direction;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 151
    return-void
.end method

.method public setFrom(I)V
    .locals 0
    .param p1, "from"    # I

    .prologue
    .line 104
    iput p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->o:I

    .line 105
    return-void
.end method

.method public setHeadParams(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 129
    .local p1, "headParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->g:Ljava/util/Map;

    .line 130
    return-void
.end method

.method public setMaxVolumnsWidth(I)V
    .locals 2
    .param p1, "maxWidth"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 468
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->j:Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->r:Z

    if-nez v1, :cond_0

    .line 469
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->j:Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 470
    .local v0, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 471
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->j:Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;

    invoke-virtual {v1, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 474
    .end local v0    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->n:Lcom/alibaba/android/dingtalkbase/widgets/voice/OnlySeekableSeekBar;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->r:Z

    if-eqz v1, :cond_1

    .line 475
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->n:Lcom/alibaba/android/dingtalkbase/widgets/voice/OnlySeekableSeekBar;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/voice/OnlySeekableSeekBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 476
    .restart local v0    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 477
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->n:Lcom/alibaba/android/dingtalkbase/widgets/voice/OnlySeekableSeekBar;

    invoke-virtual {v1, v0}, Lcom/alibaba/android/dingtalkbase/widgets/voice/OnlySeekableSeekBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 479
    .end local v0    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    return-void
.end method

.method public setRequestParams(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 133
    .local p1, "requestParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->h:Ljava/util/Map;

    .line 134
    return-void
.end method
