.class public Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;
.super Landroid/view/View;
.source "WaveformView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String;


# instance fields
.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private c:I

.field private d:F

.field private e:I

.field private f:I

.field private g:I

.field private final h:F

.field private i:F

.field private j:F

.field private k:I

.field private l:Landroid/graphics/Paint;

.field private m:Landroid/graphics/Paint;

.field private n:I

.field private o:F

.field private p:Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView$a;

.field private q:Z

.field private r:I

.field private s:I

.field private t:Z

.field private u:J

.field private v:I

.field private w:I

.field private x:I

.field private y:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const-class v0, Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/high16 v3, 0x43160000    # 150.0f

    const/high16 v2, 0x3fc00000    # 1.5f

    const/4 v1, 0x0

    .line 98
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 27
    const/4 v0, 0x1

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;->c:I

    .line 28
    iput v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;->d:F

    .line 30
    const/16 v0, 0x64

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;->e:I

    .line 31
    const/16 v0, 0x78

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;->f:I

    .line 33
    const/4 v0, 0x2

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;->g:I

    .line 50
    iput v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;->h:F

    .line 52
    iput v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;->i:F

    .line 53
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Lcms;->c(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;->j:F

    .line 55
    const/16 v0, 0x3c

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;->k:I

    .line 64
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;->c:I

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;->n:I

    .line 65
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;->d:F

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;->o:F

    .line 70
    iput-boolean v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;->q:Z

    .line 73
    iput v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;->r:I

    .line 75
    iput v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;->s:I

    .line 77
    iput-boolean v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;->t:Z

    .line 81
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;->u:J

    .line 89
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x3fa00000    # 1.25f

    invoke-static {v0, v1}, Lcms;->c(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;->w:I

    .line 93
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;->w:I

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;->x:I

    .line 95
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;->y:F

    .line 99
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;->a()V

    .line 100
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attributeSet"    # Landroid/util/AttributeSet;

    .prologue
    .line 103
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 104
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attributeSet"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/high16 v3, 0x43160000    # 150.0f

    const/high16 v2, 0x3fc00000    # 1.5f

    const/4 v1, 0x0

    .line 107
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    const/4 v0, 0x1

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;->c:I

    .line 28
    iput v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;->d:F

    .line 30
    const/16 v0, 0x64

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;->e:I

    .line 31
    const/16 v0, 0x78

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;->f:I

    .line 33
    const/4 v0, 0x2

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;->g:I

    .line 50
    iput v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;->h:F

    .line 52
    iput v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;->i:F

    .line 53
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Lcms;->c(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;->j:F

    .line 55
    const/16 v0, 0x3c

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;->k:I

    .line 64
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;->c:I

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;->n:I

    .line 65
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;->d:F

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;->o:F

    .line 70
    iput-boolean v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;->q:Z

    .line 73
    iput v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;->r:I

    .line 75
    iput v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;->s:I

    .line 77
    iput-boolean v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;->t:Z

    .line 81
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;->u:J

    .line 89
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x3fa00000    # 1.25f

    invoke-static {v0, v1}, Lcms;->c(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;->w:I

    .line 93
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;->w:I

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;->x:I

    .line 95
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;->y:F

    .line 108
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;->a()V

    .line 109
    return-void
.end method

.method private a()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 112
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 113
    invoke-virtual {p0, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;->setFocusable(Z)V

    .line 114
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;->l:Landroid/graphics/Paint;

    .line 115
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;->l:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 116
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;->l:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcig$c;->ui_common_content_fg_color_alpha_56:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 117
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;->m:Landroid/graphics/Paint;

    .line 118
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;->m:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 119
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;->m:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcig$c;->ui_common_text_disabled_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 121
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;->c:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcms;->c(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;->n:I

    .line 122
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;->d:F

    invoke-static {v0, v1}, Lcms;->c(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;->o:F

    .line 123
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;->f:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcms;->c(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;->f:I

    .line 124
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;->g:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcms;->c(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;->g:I

    .line 125
    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 243
    .local p1, "sampleData":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-boolean v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;->q:Z

    if-eqz v2, :cond_1

    .line 244
    const v2, 0x433b8000    # 187.5f

    iput v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;->i:F

    .line 257
    :cond_0
    :goto_0
    return-void

    .line 248
    :cond_1
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 249
    const/16 v1, 0x1e

    .line 250
    .local v1, "max":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 251
    .local v0, "d":Ljava/lang/Integer;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-le v3, v1, :cond_2

    .line 252
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_1

    .line 255
    .end local v0    # "d":Ljava/lang/Integer;
    :cond_3
    int-to-float v2, v1

    const/high16 v3, 0x3fa00000    # 1.25f

    mul-float/2addr v2, v3

    iput v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;->i:F

    goto :goto_0
.end method

.method private setDuration(J)V
    .locals 3
    .param p1, "length"    # J

    .prologue
    .line 148
    iput-wide p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;->u:J

    .line 1176
    const-wide/16 v0, 0x3e8

    div-long v0, p1, v0

    long-to-int v0, v0

    .line 1177
    invoke-static {v0}, Lcom/alibaba/doraemon/utils/MathUtil;->getLogValue(I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;->v:I

    .line 1178
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1180
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;->v:I

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;->v:I

    .line 150
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;->invalidate()V

    .line 151
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;->requestLayout()V

    .line 152
    return-void
.end method

.method private setSampleData(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 212
    .local p1, "sampleData":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;->b:Ljava/util/List;

    .line 213
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_1

    .line 215
    iget v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;->f:I

    iget v6, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;->g:I

    mul-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;->n:I

    int-to-float v6, v6

    iget v7, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;->o:F

    add-float/2addr v6, v7

    float-to-int v6, v6

    div-int v3, v5, v6

    .line 217
    .local v3, "sampleSize":I
    iget v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;->k:I

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 219
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-gt v5, v3, :cond_2

    .line 220
    iget-object v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;->b:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 235
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;->b:Ljava/util/List;

    invoke-direct {p0, v5}, Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;->a(Ljava/util/List;)V

    .line 237
    .end local v3    # "sampleSize":I
    :cond_1
    return-void

    .line 223
    .restart local v3    # "sampleSize":I
    :cond_2
    iget-boolean v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;->q:Z

    if-eqz v5, :cond_3

    .line 224
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 225
    .local v0, "cnt":I
    iget-object v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;->b:Ljava/util/List;

    sub-int v6, v0, v3

    invoke-interface {p1, v6, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 227
    .end local v0    # "cnt":I
    :cond_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    new-array v2, v5, [Ljava/lang/Integer;

    .line 228
    .local v2, "sampleArray":[Ljava/lang/Integer;
    invoke-interface {p1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/Integer;

    invoke-static {v5, v3}, Lctd;->a([Ljava/lang/Integer;I)[I

    move-result-object v4

    .line 229
    .local v4, "samples":[I
    array-length v6, v4

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v6, :cond_0

    aget v1, v4, v5

    .line 230
    .local v1, "sample":I
    iget-object v7, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;->b:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 229
    add-int/lit8 v5, v5, 0x1

    goto :goto_1
.end method


# virtual methods
.method public final a(IFF)V
    .locals 0
    .param p1, "waveWidth"    # I
    .param p2, "waveMargin"    # F
    .param p3, "heightFactor"    # F

    .prologue
    .line 138
    iput p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;->n:I

    .line 139
    iput p2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;->o:F

    .line 140
    iput p3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;->y:F

    .line 141
    return-void
.end method

.method public final a(II)V
    .locals 1
    .param p1, "foregroundColor"    # I
    .param p2, "backgroundColor"    # I

    .prologue
    .line 133
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;->l:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 134
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;->m:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 135
    return-void
.end method

.method public final a(Ljava/util/List;JZ)V
    .locals 0
    .param p2, "duration"    # J
    .param p4, "isRealtime"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;JZ)V"
        }
    .end annotation

    .prologue
    .line 169
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iput-boolean p4, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;->q:Z

    .line 171
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;->setSampleData(Ljava/util/List;)V

    .line 172
    invoke-direct {p0, p2, p3}, Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;->setDuration(J)V

    .line 173
    return-void
.end method

.method public getMax()I
    .locals 1

    .prologue
    .line 301
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;->s:I

    return v0
.end method

.method public getProgress()I
    .locals 1

    .prologue
    .line 285
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;->r:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 15
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v14

    invoke-static {v14}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 362
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 364
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;->getHeight()I

    move-result v7

    .line 365
    .local v7, "height":I
    div-int/lit8 v13, v7, 0x2

    .line 367
    .local v13, "y":I
    iget v12, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;->g:I

    .line 369
    .local v12, "x":I
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;->b:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 371
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;->n:I

    int-to-float v1, v1

    iget v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;->o:F

    add-float/2addr v1, v2

    mul-float/2addr v0, v1

    float-to-int v11, v0

    .line 373
    .local v11, "waveWidth":I
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;->r:I

    int-to-double v0, v0

    iget v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;->s:I

    int-to-double v2, v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v2, v4

    div-double/2addr v0, v2

    double-to-float v6, v0

    .line 374
    .local v6, "factor":F
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_0
    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    .line 376
    .local v10, "value":Ljava/lang/Integer;
    if-eqz v10, :cond_0

    .line 378
    const/4 v0, 0x2

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 380
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;->y:F

    mul-float v9, v0, v1

    .line 381
    .local v9, "rectHeight":F
    int-to-float v0, v7

    cmpl-float v0, v9, v0

    if-lez v0, :cond_1

    .line 382
    int-to-float v9, v7

    .line 384
    :cond_1
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;->g:I

    int-to-float v1, v11

    mul-float/2addr v1, v6

    float-to-double v2, v1

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    add-double/2addr v2, v4

    double-to-int v1, v2

    add-int v8, v0, v1

    .line 386
    .local v8, "progress":I
    if-ge v12, v8, :cond_2

    .line 387
    int-to-float v1, v12

    int-to-float v0, v13

    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, v9, v2

    sub-float v2, v0, v2

    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;->n:I

    add-int/2addr v0, v12

    int-to-float v3, v0

    int-to-float v0, v13

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v9, v4

    add-float/2addr v4, v0

    iget-object v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;->l:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 391
    :goto_1
    int-to-float v0, v12

    iget v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;->n:I

    int-to-float v1, v1

    iget v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;->o:F

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-int v12, v0

    goto :goto_0

    .line 389
    :cond_2
    int-to-float v1, v12

    int-to-float v0, v13

    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, v9, v2

    sub-float v2, v0, v2

    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;->n:I

    add-int/2addr v0, v12

    int-to-float v3, v0

    int-to-float v0, v13

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v9, v4

    add-float/2addr v4, v0

    iget-object v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;->m:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 432
    .end local v6    # "factor":F
    .end local v8    # "progress":I
    .end local v9    # "rectHeight":F
    .end local v10    # "value":Ljava/lang/Integer;
    .end local v11    # "waveWidth":I
    :cond_3
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 436
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 438
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;->s:I

    if-nez v0, :cond_0

    .line 439
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;->s:I

    .line 441
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 341
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 344
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;->f:I

    .line 346
    .local v0, "width":I
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;->b:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 347
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;->n:I

    int-to-float v2, v2

    iget v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;->o:F

    add-float/2addr v2, v3

    float-to-int v2, v2

    mul-int/2addr v1, v2

    iget v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;->g:I

    mul-int/lit8 v2, v2, 0x2

    add-int v0, v1, v2

    .line 350
    :cond_0
    invoke-virtual {p0, v0, p2}, Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;->setMeasuredDimension(II)V

    .line 351
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 310
    iget-boolean v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;->t:Z

    if-nez v2, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 336
    :goto_0
    return v2

    .line 312
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 336
    :cond_1
    :goto_1
    :pswitch_0
    const/4 v2, 0x1

    goto :goto_0

    .line 314
    :pswitch_1
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;->p:Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView$a;

    if-eqz v2, :cond_1

    goto :goto_1

    .line 320
    :pswitch_2
    iget v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;->x:I

    iget v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;->w:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;->v:I

    mul-int/2addr v2, v3

    int-to-float v1, v2

    .line 321
    .local v1, "width":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    div-float v0, v2, v1

    .line 322
    .local v0, "factor":F
    iget v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;->s:I

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v2, v2

    iput v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;->r:I

    .line 323
    iget v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;->r:I

    iget v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;->s:I

    if-le v2, v3, :cond_2

    iget v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;->s:I

    iput v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;->r:I

    .line 324
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;->invalidate()V

    goto :goto_1

    .line 312
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public setExpectedWidth(I)V
    .locals 0
    .param p1, "expectedWidth"    # I

    .prologue
    .line 305
    iput p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;->f:I

    .line 306
    return-void
.end method

.method public setMax(I)V
    .locals 0
    .param p1, "max"    # I

    .prologue
    .line 293
    iput p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;->s:I

    .line 294
    return-void
.end method

.method public setMinSampleSize(I)V
    .locals 0
    .param p1, "minSampleSize"    # I

    .prologue
    .line 201
    if-gtz p1, :cond_0

    .line 205
    :goto_0
    return-void

    .line 204
    :cond_0
    iput p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;->k:I

    goto :goto_0
.end method

.method public setProgress(I)V
    .locals 1
    .param p1, "progress"    # I

    .prologue
    .line 272
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;->s:I

    if-le p1, v0, :cond_0

    .line 273
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;->s:I

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;->r:I

    .line 277
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;->invalidate()V

    .line 278
    return-void

    .line 275
    :cond_0
    iput p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;->r:I

    goto :goto_0
.end method

.method public setTouchMode(Z)V
    .locals 0
    .param p1, "touchable"    # Z

    .prologue
    .line 189
    iput-boolean p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;->t:Z

    .line 190
    return-void
.end method

.method public setWaveformListener(Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView$a;)V
    .locals 0
    .param p1, "listener"    # Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView$a;

    .prologue
    .line 264
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;->p:Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView$a;

    .line 265
    return-void
.end method
