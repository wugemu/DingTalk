.class public Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;
.super Landroid/widget/RelativeLayout;
.source "VoiceRecordView.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalkim/views/VoiceRecordView$a;
    }
.end annotation


# static fields
.field private static final m:Ljava/lang/String;


# instance fields
.field private A:Z

.field private B:Z

.field private C:Landroid/media/AudioManager;

.field private D:Lctc;

.field private E:Landroid/content/BroadcastReceiver;

.field private F:Lciu$b;

.field private G:Liei$a;

.field public a:Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;

.field public b:Landroid/widget/TextView;

.field public c:Landroid/widget/LinearLayout;

.field public d:Landroid/widget/Button;

.field public e:Z

.field public f:Landroid/widget/ImageView;

.field public g:Landroid/widget/TextView;

.field public h:Landroid/widget/TextView;

.field public i:Z

.field public j:Z

.field public k:Z

.field public l:Ljava/lang/Integer;

.field private n:Ljava/io/File;

.field private o:Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;

.field private p:I

.field private q:Lcom/alibaba/android/dingtalkim/views/VoiceRecordView$a;

.field private r:Landroid/os/PowerManager$WakeLock;

.field private s:Lcom/alibaba/android/dingtalkbase/widgets/AudioRegulatorManager$AudioRegulator;

.field private t:Landroid/hardware/SensorManager;

.field private u:Landroid/hardware/Sensor;

.field private v:Z

.field private w:Lcom/alibaba/doraemon/audio/AudioMagician;

.field private x:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private y:Z

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    const-class v0, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->m:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 114
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 115
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 118
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 119
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 127
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 77
    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->e:Z

    .line 89
    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->v:Z

    .line 100
    iput-boolean v1, p0, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->y:Z

    .line 103
    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->i:Z

    .line 104
    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->j:Z

    .line 105
    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->A:Z

    .line 106
    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->B:Z

    .line 108
    iput-object v2, p0, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->l:Ljava/lang/Integer;

    .line 112
    new-instance v0, Lctc;

    invoke-direct {v0}, Lctc;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->D:Lctc;

    .line 179
    new-instance v0, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView$1;-><init>(Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->E:Landroid/content/BroadcastReceiver;

    .line 189
    new-instance v0, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView$2;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView$2;-><init>(Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->F:Lciu$b;

    .line 623
    new-instance v0, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView$4;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView$4;-><init>(Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->G:Liei$a;

    .line 1134
    :try_start_0
    const-string/jumbo v0, "AUDIOEX"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/audio/AudioMagicianEx;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->w:Lcom/alibaba/doraemon/audio/AudioMagician;

    .line 1136
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->w:Lcom/alibaba/doraemon/audio/AudioMagician;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->D:Lctc;

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/audio/AudioMagician;->setSampleConverter(Lcom/alibaba/doraemon/audio/SampleConverter;)Lcom/alibaba/doraemon/audio/AudioMagician;

    .line 1137
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->b()Lchy;

    move-result-object v0

    invoke-virtual {v0}, Lchy;->genAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->C:Landroid/media/AudioManager;

    .line 1169
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/AudioRegulatorManager;->a(Landroid/content/Context;)Lcom/alibaba/android/dingtalkbase/widgets/AudioRegulatorManager$AudioRegulator;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->s:Lcom/alibaba/android/dingtalkbase/widgets/AudioRegulatorManager$AudioRegulator;

    .line 1170
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->t:Landroid/hardware/SensorManager;

    .line 1172
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->t:Landroid/hardware/SensorManager;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->u:Landroid/hardware/Sensor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2146
    :goto_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {p0, v0, v1}, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 2147
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lctk$g;->voice_record_view:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 2148
    sget v0, Lctk$f;->waveform_view:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;

    .line 2149
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x4019999a    # 2.4f

    invoke-static {v1, v2}, Lcms;->c(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x40200000    # 2.5f

    invoke-static {v2, v3}, Lcms;->c(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3fc00000    # 1.5f

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;->a(IFF)V

    .line 2151
    sget v0, Lctk$f;->tv_voice_time:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->b:Landroid/widget/TextView;

    .line 2152
    sget v0, Lctk$f;->voice_action_panel:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->c:Landroid/widget/LinearLayout;

    .line 2153
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2154
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;

    sget v2, Lctk$c;->waveform_selected_left:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    sget v3, Lctk$c;->pure_white:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v1, v2, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;->a(II)V

    .line 2157
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    const-string/jumbo v1, "0:12"

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    const v1, 0x3f8ccccd    # 1.1f

    mul-float/2addr v0, v1

    .line 2158
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->b:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->b:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v2

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->b:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v3

    add-int/2addr v2, v3

    float-to-int v0, v0

    add-int/2addr v0, v2

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setWidth(I)V

    .line 2159
    sget v0, Lctk$f;->image_release:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->f:Landroid/widget/ImageView;

    .line 2160
    sget v0, Lctk$f;->tv_remain_time:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->g:Landroid/widget/TextView;

    .line 2161
    sget v0, Lctk$f;->tv_cancel:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->h:Landroid/widget/TextView;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 2165
    :goto_1
    return-void

    .line 1139
    :catch_0
    move-exception v0

    .line 1140
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 2162
    :catch_1
    move-exception v0

    .line 2164
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;
    .param p1, "x1"    # I

    .prologue
    .line 61
    iput p1, p0, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->p:I

    return p1
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;)Lcom/alibaba/doraemon/audio/AudioMagician;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->w:Lcom/alibaba/doraemon/audio/AudioMagician;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;Ljava/io/File;)Ljava/io/File;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;
    .param p1, "x1"    # Ljava/io/File;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->n:Ljava/io/File;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->x:Ljava/util/List;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;ILjava/util/List;)V
    .locals 12
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/util/List;

    .prologue
    const-wide/32 v10, 0xea60

    const/16 v8, 0x32

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 61
    .line 7208
    if-gt v8, p1, :cond_2

    .line 7209
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->b:Landroid/widget/TextView;

    sget v1, Lctk$i;->meaasge_voice_remaining:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 7210
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lctk$i;->meaasge_voice_remaining:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    const v1, 0x3f8ccccd    # 1.1f

    mul-float/2addr v0, v1

    .line 7211
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->b:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->b:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v2

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->b:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v3

    add-int/2addr v2, v3

    float-to-int v0, v0

    add-int/2addr v0, v2

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setWidth(I)V

    .line 7212
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->g:Landroid/widget/TextView;

    rsub-int/lit8 v1, p1, 0x3c

    invoke-static {v1, v7}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7213
    iput-boolean v6, p0, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->i:Z

    .line 7214
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->j:Z

    if-nez v0, :cond_0

    .line 7215
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 7217
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;->setVisibility(I)V

    .line 7226
    :goto_0
    if-eqz p2, :cond_5

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 7227
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, v8, :cond_4

    .line 7228
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;

    invoke-virtual {v0, p2, v10, v11, v6}, Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;->a(Ljava/util/List;JZ)V

    .line 7232
    :goto_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;->requestLayout()V

    .line 7233
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->requestLayout()V

    :cond_1
    :goto_2
    return-void

    .line 7219
    :cond_2
    iput-boolean v7, p0, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->i:Z

    .line 7220
    const/16 v0, 0xa

    if-ge p1, v0, :cond_3

    .line 7221
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lctk$i;->voice_record_duration:I

    new-array v3, v6, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "0"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 7223
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lctk$i;->voice_record_duration:I

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 7230
    :cond_4
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p2, v8, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1, v10, v11, v6}, Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;->a(Ljava/util/List;JZ)V

    goto :goto_1

    .line 7235
    :cond_5
    if-le p1, v6, :cond_1

    .line 7236
    iput-boolean v6, p0, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->e:Z

    goto :goto_2
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;
    .param p1, "x1"    # Z

    .prologue
    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->k:Z

    return v0
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->m:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->e:Z

    return v0
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;
    .param p1, "x1"    # Z

    .prologue
    .line 61
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->e:Z

    return v0
.end method

.method static synthetic c(Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;)Landroid/media/AudioManager;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->C:Landroid/media/AudioManager;

    return-object v0
.end method

.method private c()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v6, 0x0

    const/16 v4, 0x8

    const/4 v5, 0x0

    .line 260
    invoke-virtual {p0, v4}, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->setVisibility(I)V

    .line 2294
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;

    const-wide/16 v2, 0x0

    .line 3160
    invoke-virtual {v0, v6, v2, v3, v5}, Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;->a(Ljava/util/List;JZ)V

    .line 2295
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;

    invoke-virtual {v0, v5}, Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;->setProgress(I)V

    .line 2296
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->b:Landroid/widget/TextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2297
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    const-string/jumbo v1, "0:12"

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    const v1, 0x3f8ccccd    # 1.1f

    mul-float/2addr v0, v1

    .line 2298
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->b:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->b:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v2

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->b:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v3

    add-int/2addr v2, v3

    float-to-int v0, v0

    add-int/2addr v0, v2

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setWidth(I)V

    .line 2299
    iput-boolean v5, p0, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->j:Z

    .line 2300
    iput-boolean v5, p0, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->i:Z

    .line 2301
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->w:Lcom/alibaba/doraemon/audio/AudioMagician;

    invoke-interface {v0, v6}, Lcom/alibaba/doraemon/audio/AudioMagician;->setSampleConverter(Lcom/alibaba/doraemon/audio/SampleConverter;)Lcom/alibaba/doraemon/audio/AudioMagician;

    .line 2302
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->w:Lcom/alibaba/doraemon/audio/AudioMagician;

    new-instance v1, Lctc;

    invoke-direct {v1}, Lctc;-><init>()V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/audio/AudioMagician;->setSampleConverter(Lcom/alibaba/doraemon/audio/SampleConverter;)Lcom/alibaba/doraemon/audio/AudioMagician;

    .line 2303
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2304
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;

    invoke-virtual {v0, v5}, Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;->setVisibility(I)V

    .line 2305
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2306
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2307
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->f:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 2308
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x41500000    # 13.0f

    invoke-static {v1, v2}, Lcms;->c(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcms;->c(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x41700000    # 15.0f

    invoke-static {v3, v4}, Lcms;->c(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {v0, v5, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 2309
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->f:Landroid/widget/ImageView;

    sget v1, Lctk$e;->voice_record_cancel:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2310
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->h:Landroid/widget/TextView;

    sget v1, Lctk$i;->message_voice_slide_cancle:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 2311
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->d:Landroid/widget/Button;

    sget v1, Lctk$i;->message_voice_hold:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 2312
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->d()V

    .line 2313
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->c:Landroid/widget/LinearLayout;

    sget v1, Lctk$e;->voice_recording_tip:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 262
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->n:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->w:Lcom/alibaba/doraemon/audio/AudioMagician;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->n:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/audio/AudioMagician;->stop(Ljava/lang/String;)V

    .line 266
    :cond_0
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->e:Z

    if-nez v0, :cond_1

    .line 267
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->w:Lcom/alibaba/doraemon/audio/AudioMagician;

    invoke-interface {v0}, Lcom/alibaba/doraemon/audio/AudioMagician;->stopRecord()V

    .line 271
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->E:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 276
    :goto_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->q:Lcom/alibaba/android/dingtalkim/views/VoiceRecordView$a;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->z:Z

    if-nez v0, :cond_2

    .line 277
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->q:Lcom/alibaba/android/dingtalkim/views/VoiceRecordView$a;

    invoke-interface {v0}, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView$a;->b()V

    .line 279
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;

    if-eqz v0, :cond_4

    .line 280
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;

    .line 3354
    iget-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;->b:Ljava/util/List;

    if-eqz v1, :cond_3

    .line 3355
    iget-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 3357
    :cond_3
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;->invalidate()V

    .line 4286
    :cond_4
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->e()V

    .line 4712
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->t:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_5

    .line 4713
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->t:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 283
    :cond_5
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic c(Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;
    .param p1, "x1"    # Z

    .prologue
    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->j:Z

    return v0
.end method

.method static synthetic d(Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;)Lciu$b;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->F:Lciu$b;

    return-object v0
.end method

.method private d()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 317
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->l:Ljava/lang/Integer;

    if-eqz v3, :cond_0

    .line 318
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x40400000    # 3.0f

    invoke-static {v3, v4}, Lcms;->c(Landroid/content/Context;F)I

    move-result v1

    .line 319
    .local v1, "rad":I
    new-instance v2, Landroid/graphics/drawable/shapes/RoundRectShape;

    const/16 v3, 0x8

    new-array v3, v3, [F

    const/4 v4, 0x0

    int-to-float v5, v1

    aput v5, v3, v4

    const/4 v4, 0x1

    int-to-float v5, v1

    aput v5, v3, v4

    const/4 v4, 0x2

    int-to-float v5, v1

    aput v5, v3, v4

    const/4 v4, 0x3

    int-to-float v5, v1

    aput v5, v3, v4

    const/4 v4, 0x4

    int-to-float v5, v1

    aput v5, v3, v4

    const/4 v4, 0x5

    int-to-float v5, v1

    aput v5, v3, v4

    const/4 v4, 0x6

    int-to-float v5, v1

    aput v5, v3, v4

    const/4 v4, 0x7

    int-to-float v5, v1

    aput v5, v3, v4

    invoke-direct {v2, v3, v6, v6}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    .line 321
    .local v2, "rect":Landroid/graphics/drawable/shapes/RoundRectShape;
    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v0, v2}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 322
    .local v0, "bg":Landroid/graphics/drawable/ShapeDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->l:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 323
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->d:Landroid/widget/Button;

    invoke-static {v3, v0}, Lcqc;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 327
    .end local v0    # "bg":Landroid/graphics/drawable/ShapeDrawable;
    .end local v1    # "rad":I
    .end local v2    # "rect":Landroid/graphics/drawable/shapes/RoundRectShape;
    :goto_0
    return-void

    .line 325
    :cond_0
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->d:Landroid/widget/Button;

    sget v4, Lctk$e;->base_white_btn_bg:I

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method static synthetic d(Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;
    .param p1, "x1"    # Z

    .prologue
    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->A:Z

    return v0
.end method

.method static synthetic e(Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;)Lcom/alibaba/android/dingtalkim/views/VoiceRecordView$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->q:Lcom/alibaba/android/dingtalkim/views/VoiceRecordView$a;

    return-object v0
.end method

.method private e()V
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->r:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 361
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->r:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 365
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->r:Landroid/os/PowerManager$WakeLock;

    .line 367
    :cond_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic f(Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->x:Ljava/util/List;

    return-object v0
.end method

.method private f()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 581
    iget v0, p0, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->p:I

    const/16 v1, 0x3c

    if-ge v0, v1, :cond_1

    .line 582
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "chat_voice_cancel"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 584
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->q:Lcom/alibaba/android/dingtalkim/views/VoiceRecordView$a;

    if-eqz v0, :cond_0

    .line 585
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->q:Lcom/alibaba/android/dingtalkim/views/VoiceRecordView$a;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->n:Ljava/io/File;

    invoke-interface {v0, v1}, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView$a;->a(Ljava/io/File;)V

    .line 587
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->c()V

    .line 588
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->o:Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->a()V

    .line 590
    :cond_1
    return-void
.end method

.method static synthetic g(Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;

    .prologue
    .line 61
    iget v0, p0, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->p:I

    return v0
.end method

.method static synthetic h(Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->A:Z

    return v0
.end method

.method static synthetic i(Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->b:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic j(Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;)Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;

    return-object v0
.end method

.method static synthetic k(Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->g:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic l(Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->f:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic m(Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->h:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic n(Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->d:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic o(Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;)Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->o:Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;

    return-object v0
.end method

.method static synthetic p(Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->f()V

    return-void
.end method

.method static synthetic q(Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->z:Z

    return v0
.end method

.method static synthetic r(Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;

    .prologue
    .line 61
    .line 6597
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->z:Z

    .line 6598
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "chat_voice_send_success"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 6600
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->q:Lcom/alibaba/android/dingtalkim/views/VoiceRecordView$a;

    if-eqz v0, :cond_0

    .line 6601
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->q:Lcom/alibaba/android/dingtalkim/views/VoiceRecordView$a;

    iget v1, p0, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->p:I

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->n:Ljava/io/File;

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->x:Ljava/util/List;

    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView$a;->a(ILjava/io/File;Ljava/util/List;)V

    .line 6603
    :cond_0
    iget v0, p0, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->p:I

    if-lez v0, :cond_1

    .line 6604
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->c()V

    .line 6606
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->o:Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->a()V

    .line 61
    return-void
.end method

.method static synthetic s(Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->B:Z

    return v0
.end method


# virtual methods
.method public final a()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 498
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->w:Lcom/alibaba/doraemon/audio/AudioMagician;

    if-eqz v0, :cond_0

    .line 5610
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->k:Z

    .line 498
    if-eqz v0, :cond_0

    .line 500
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->A:Z

    .line 501
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->w:Lcom/alibaba/doraemon/audio/AudioMagician;

    invoke-interface {v0}, Lcom/alibaba/doraemon/audio/AudioMagician;->stopRecord()V

    .line 502
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->f()V

    .line 503
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->d()V

    .line 504
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->d:Landroid/widget/Button;

    sget v1, Lctk$i;->message_voice_hold:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 505
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->b:Landroid/widget/TextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 506
    iput-boolean v2, p0, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->j:Z

    .line 507
    iput-boolean v2, p0, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->i:Z

    .line 509
    :cond_0
    return-void
.end method

.method public final a(F)V
    .locals 5
    .param p1, "y"    # F

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 513
    iget-boolean v1, p0, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->e:Z

    if-eqz v1, :cond_0

    .line 534
    :goto_0
    return-void

    .line 517
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcms;->b(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x43160000    # 150.0f

    invoke-static {v3, v4}, Lcms;->c(Landroid/content/Context;F)I

    move-result v3

    sub-int/2addr v1, v3

    int-to-float v0, v1

    .line 518
    .local v0, "cancelY":F
    cmpg-float v1, p1, v0

    if-gez v1, :cond_2

    const/4 v1, 0x1

    :goto_1
    iput-boolean v1, p0, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->A:Z

    .line 521
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->w:Lcom/alibaba/doraemon/audio/AudioMagician;

    invoke-interface {v1}, Lcom/alibaba/doraemon/audio/AudioMagician;->stopRecord()V

    .line 523
    iget-boolean v1, p0, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->A:Z

    if-eqz v1, :cond_1

    .line 524
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->f()V

    .line 529
    :cond_1
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->d()V

    .line 530
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->d:Landroid/widget/Button;

    sget v3, Lctk$i;->message_voice_hold:I

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setText(I)V

    .line 531
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->b:Landroid/widget/TextView;

    const-string/jumbo v3, ""

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 532
    iput-boolean v2, p0, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->j:Z

    .line 533
    iput-boolean v2, p0, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->i:Z

    goto :goto_0

    :cond_2
    move v1, v2

    .line 518
    goto :goto_1
.end method

.method public final a(Z)V
    .locals 6
    .param p1, "isPrepareRecord"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 331
    invoke-static {}, Lciu;->a()Lciu;

    move-result-object v1

    invoke-virtual {v1, v5, v5}, Lciu;->a(II)Z

    move-result v1

    if-nez v1, :cond_1

    .line 332
    sget v1, Lctk$i;->audio_in_focues:I

    invoke-static {v1}, Lcms;->a(I)V

    .line 356
    :cond_0
    :goto_0
    return-void

    .line 5246
    :cond_1
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 5247
    const-string/jumbo v2, "com.alibaba.android.babylon.action.voipstart"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 5248
    const-string/jumbo v2, "CALL_STATE_RINGING"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 5250
    const-string/jumbo v2, "android.intent.action.PHONE_STATE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 5251
    const-string/jumbo v2, "android.intent.action.ANSWER"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 5252
    const-string/jumbo v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 5253
    const v2, 0x7fffffff

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 5255
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->E:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 336
    invoke-virtual {p0, v4}, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->setVisibility(I)V

    .line 337
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 338
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->d:Landroid/widget/Button;

    sget v2, Lctk$i;->message_voice_release_send:I

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 339
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->q:Lcom/alibaba/android/dingtalkim/views/VoiceRecordView$a;

    if-eqz v1, :cond_2

    .line 340
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->q:Lcom/alibaba/android/dingtalkim/views/VoiceRecordView$a;

    invoke-interface {v1}, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView$a;->a()V

    .line 343
    :cond_2
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->e()V

    .line 345
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 346
    .local v0, "powerManager":Landroid/os/PowerManager;
    if-eqz v0, :cond_3

    .line 347
    const v1, 0x2000000a

    sget-object v2, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->m:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->r:Landroid/os/PowerManager$WakeLock;

    .line 348
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->r:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_3

    .line 349
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->r:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1, v4}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 350
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->r:Landroid/os/PowerManager$WakeLock;

    const-wide/32 v2, 0x11170

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 353
    :cond_3
    if-eqz p1, :cond_0

    .line 5488
    iput-boolean v4, p0, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->e:Z

    .line 5489
    iput-boolean v4, p0, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->A:Z

    .line 5490
    iput v4, p0, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->p:I

    .line 5491
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->x:Ljava/util/List;

    .line 5492
    iput-boolean v4, p0, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->z:Z

    .line 5493
    iput-boolean v5, p0, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->k:Z

    .line 5372
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->w:Lcom/alibaba/doraemon/audio/AudioMagician;

    new-instance v2, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView$3;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView$3;-><init>(Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;)V

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/audio/AudioMagician;->record(Lcom/alibaba/doraemon/audio/OnRecordListener;)Ljava/lang/String;

    goto/16 :goto_0
.end method

.method public getBgColor()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 701
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->l:Ljava/lang/Integer;

    return-object v0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 694
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 8
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 658
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v2, v3

    .line 659
    .local v0, "distance":F
    float-to-double v4, v0

    const-wide/16 v6, 0x0

    cmpl-double v2, v4, v6

    if-ltz v2, :cond_1

    const/high16 v2, 0x40a00000    # 5.0f

    cmpg-float v2, v0, v2

    if-gez v2, :cond_1

    iget-object v2, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    .line 660
    invoke-virtual {v2}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v2

    cmpg-float v2, v0, v2

    if-gez v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p0, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->v:Z

    .line 661
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/android/dingtalkbase/widgets/VoiceModeManager;->a(Landroid/content/Context;)Lcom/alibaba/android/dingtalkbase/widgets/VoiceModeManager$VoiceMode;

    move-result-object v1

    .line 662
    .local v1, "model":Lcom/alibaba/android/dingtalkbase/widgets/VoiceModeManager$VoiceMode;
    sget-object v2, Lcom/alibaba/android/dingtalkbase/widgets/VoiceModeManager$VoiceMode;->Speaker:Lcom/alibaba/android/dingtalkbase/widgets/VoiceModeManager$VoiceMode;

    if-eq v1, v2, :cond_2

    .line 689
    :cond_0
    :goto_1
    return-void

    .end local v1    # "model":Lcom/alibaba/android/dingtalkbase/widgets/VoiceModeManager$VoiceMode;
    :cond_1
    move v2, v3

    .line 660
    goto :goto_0

    .line 668
    .restart local v1    # "model":Lcom/alibaba/android/dingtalkbase/widgets/VoiceModeManager$VoiceMode;
    :cond_2
    iget-boolean v2, p0, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->e:Z

    if-eqz v2, :cond_0

    .line 673
    iget-boolean v2, p0, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->y:Z

    if-eqz v2, :cond_3

    .line 674
    iput-boolean v3, p0, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->y:Z

    goto :goto_1

    .line 678
    :cond_3
    iget-boolean v2, p0, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->v:Z

    if-eqz v2, :cond_4

    .line 680
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/android/dingtalkbase/widgets/PhoneStatusManager;->a(Landroid/content/Context;)Lcom/alibaba/android/dingtalkbase/widgets/PhoneStatusManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/PhoneStatusManager;->a()Z

    move-result v2

    if-nez v2, :cond_0

    .line 681
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->s:Lcom/alibaba/android/dingtalkbase/widgets/AudioRegulatorManager$AudioRegulator;

    iget-boolean v3, p0, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->y:Z

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/AudioRegulatorManager$AudioRegulator;->a(Z)V

    goto :goto_1

    .line 685
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

    .line 686
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->s:Lcom/alibaba/android/dingtalkbase/widgets/AudioRegulatorManager$AudioRegulator;

    iget-boolean v3, p0, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->y:Z

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/AudioRegulatorManager$AudioRegulator;->b(Z)V

    goto :goto_1
.end method

.method public setBgColor(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "color"    # Ljava/lang/Integer;

    .prologue
    .line 697
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->l:Ljava/lang/Integer;

    .line 698
    return-void
.end method

.method public setChatMsgListView(Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;)V
    .locals 0
    .param p1, "chatMsgListView"    # Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->o:Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;

    .line 125
    return-void
.end method

.method public setEncryptedMode(Z)V
    .locals 0
    .param p1, "isEncrypted"    # Z

    .prologue
    .line 653
    iput-boolean p1, p0, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->B:Z

    .line 654
    return-void
.end method

.method public setRecordListener(Lcom/alibaba/android/dingtalkim/views/VoiceRecordView$a;)V
    .locals 0
    .param p1, "listener"    # Lcom/alibaba/android/dingtalkim/views/VoiceRecordView$a;

    .prologue
    .line 176
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->q:Lcom/alibaba/android/dingtalkim/views/VoiceRecordView$a;

    .line 177
    return-void
.end method

.method public setVoiceRecordBtn(Landroid/widget/Button;)V
    .locals 0
    .param p1, "voiceRecordBtn"    # Landroid/widget/Button;

    .prologue
    .line 121
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->d:Landroid/widget/Button;

    .line 122
    return-void
.end method
