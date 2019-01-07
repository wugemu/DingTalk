.class public Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;
.super Landroid/widget/RelativeLayout;
.source "FaceAlgorithmInfoPattern.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern$Listener;
    }
.end annotation


# instance fields
.field private A:Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern$Listener;

.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/widget/TextView;

.field private o:Landroid/widget/TextView;

.field private p:Landroid/widget/TextView;

.field private q:Landroid/widget/TextView;

.field private r:Landroid/widget/Button;

.field private s:Landroid/widget/ProgressBar;

.field private t:Landroid/widget/ProgressBar;

.field private u:Landroid/os/Handler;

.field private v:I

.field private w:I

.field private x:Z

.field private y:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 60
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 28
    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;->a:Landroid/widget/TextView;

    .line 29
    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;->b:Landroid/widget/TextView;

    .line 30
    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;->c:Landroid/widget/TextView;

    .line 31
    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;->d:Landroid/widget/TextView;

    .line 32
    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;->e:Landroid/widget/TextView;

    .line 34
    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;->f:Landroid/widget/TextView;

    .line 35
    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;->g:Landroid/widget/TextView;

    .line 36
    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;->h:Landroid/widget/TextView;

    .line 37
    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;->i:Landroid/widget/TextView;

    .line 38
    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;->j:Landroid/widget/TextView;

    .line 39
    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;->k:Landroid/widget/TextView;

    .line 40
    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;->l:Landroid/widget/TextView;

    .line 41
    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;->m:Landroid/widget/TextView;

    .line 42
    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;->n:Landroid/widget/TextView;

    .line 43
    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;->o:Landroid/widget/TextView;

    .line 44
    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;->p:Landroid/widget/TextView;

    .line 46
    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;->r:Landroid/widget/Button;

    .line 52
    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;->u:Landroid/os/Handler;

    .line 54
    iput v1, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;->v:I

    .line 55
    iput v1, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;->w:I

    .line 154
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;->y:Ljava/util/List;

    .line 61
    invoke-direct {p0}, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;->a()V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 65
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;->a:Landroid/widget/TextView;

    .line 29
    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;->b:Landroid/widget/TextView;

    .line 30
    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;->c:Landroid/widget/TextView;

    .line 31
    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;->d:Landroid/widget/TextView;

    .line 32
    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;->e:Landroid/widget/TextView;

    .line 34
    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;->f:Landroid/widget/TextView;

    .line 35
    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;->g:Landroid/widget/TextView;

    .line 36
    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;->h:Landroid/widget/TextView;

    .line 37
    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;->i:Landroid/widget/TextView;

    .line 38
    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;->j:Landroid/widget/TextView;

    .line 39
    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;->k:Landroid/widget/TextView;

    .line 40
    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;->l:Landroid/widget/TextView;

    .line 41
    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;->m:Landroid/widget/TextView;

    .line 42
    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;->n:Landroid/widget/TextView;

    .line 43
    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;->o:Landroid/widget/TextView;

    .line 44
    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;->p:Landroid/widget/TextView;

    .line 46
    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;->r:Landroid/widget/Button;

    .line 52
    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;->u:Landroid/os/Handler;

    .line 54
    iput v1, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;->v:I

    .line 55
    iput v1, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;->w:I

    .line 154
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;->y:Ljava/util/List;

    .line 66
    invoke-direct {p0}, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;->a()V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 71
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;->a:Landroid/widget/TextView;

    .line 29
    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;->b:Landroid/widget/TextView;

    .line 30
    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;->c:Landroid/widget/TextView;

    .line 31
    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;->d:Landroid/widget/TextView;

    .line 32
    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;->e:Landroid/widget/TextView;

    .line 34
    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;->f:Landroid/widget/TextView;

    .line 35
    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;->g:Landroid/widget/TextView;

    .line 36
    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;->h:Landroid/widget/TextView;

    .line 37
    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;->i:Landroid/widget/TextView;

    .line 38
    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;->j:Landroid/widget/TextView;

    .line 39
    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;->k:Landroid/widget/TextView;

    .line 40
    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;->l:Landroid/widget/TextView;

    .line 41
    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;->m:Landroid/widget/TextView;

    .line 42
    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;->n:Landroid/widget/TextView;

    .line 43
    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;->o:Landroid/widget/TextView;

    .line 44
    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;->p:Landroid/widget/TextView;

    .line 46
    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;->r:Landroid/widget/Button;

    .line 52
    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;->u:Landroid/os/Handler;

    .line 54
    iput v1, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;->v:I

    .line 55
    iput v1, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;->w:I

    .line 154
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;->y:Ljava/util/List;

    .line 72
    invoke-direct {p0}, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;->a()V

    .line 73
    return-void
.end method

.method private static a(FFFF)D
    .locals 4
    .param p0, "actual"    # F
    .param p1, "expect"    # F
    .param p2, "max"    # F
    .param p3, "min"    # F

    .prologue
    .line 237
    cmpl-float v2, p1, p2

    if-gez v2, :cond_0

    cmpg-float v2, p1, p3

    if-gtz v2, :cond_1

    .line 238
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "expect value error"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 243
    :cond_1
    cmpl-float v2, p0, p2

    if-lez v2, :cond_3

    .line 244
    move p0, p2

    .line 250
    :cond_2
    :goto_0
    cmpl-float v2, p0, p1

    if-ltz v2, :cond_4

    .line 251
    sub-float v2, p0, p1

    sub-float v3, p2, p1

    div-float/2addr v2, v3

    float-to-double v0, v2

    .line 256
    .local v0, "result":D
    :goto_1
    return-wide v0

    .line 245
    .end local v0    # "result":D
    :cond_3
    cmpg-float v2, p0, p3

    if-gez v2, :cond_2

    .line 246
    move p0, p3

    goto :goto_0

    .line 253
    :cond_4
    sub-float v2, p0, p1

    sub-float v3, p1, p3

    div-float/2addr v2, v3

    float-to-double v0, v2

    .restart local v0    # "result":D
    goto :goto_1
.end method

.method static synthetic a(Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;FFF)D
    .locals 12
    .param p0, "x0"    # Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;
    .param p1, "x1"    # F
    .param p2, "x2"    # F
    .param p3, "x3"    # F

    .prologue
    .line 26
    .line 2215
    const v0, 0x3ecccccd    # 0.4f

    const v1, 0x3f333333    # 0.7f

    const v2, 0x3e99999a    # 0.3f

    invoke-static {p1, v0, v1, v2}, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;->a(FFFF)D

    move-result-wide v0

    .line 2217
    const/4 v2, 0x0

    const v3, 0x3f19999a    # 0.6f

    const v4, -0x40e66666    # -0.6f

    invoke-static {p3, v2, v3, v4}, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;->a(FFFF)D

    move-result-wide v2

    .line 2219
    const/4 v4, 0x0

    const v5, 0x3ecccccd    # 0.4f

    const v6, -0x41333333    # -0.4f

    invoke-static {p2, v4, v5, v6}, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;->a(FFFF)D

    move-result-wide v4

    .line 2226
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    add-double/2addr v6, v8

    const-wide/high16 v8, 0x4010000000000000L    # 4.0

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    add-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    .line 2228
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v0, v8

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v2, v8

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v0, v2

    const-wide/high16 v2, 0x4010000000000000L    # 4.0

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    div-double/2addr v0, v6

    .line 2230
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double v0, v2, v0

    .line 26
    return-wide v0
.end method

.method private a()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Ligf$d;->face_circle_pattern_algorithm_info_item:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 80
    .local v0, "parentView":Landroid/view/View;
    sget v1, Ligf$c;->face_circle_reset:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;->r:Landroid/widget/Button;

    .line 82
    sget v1, Ligf$c;->face_circle_has_face:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;->a:Landroid/widget/TextView;

    .line 83
    sget v1, Ligf$c;->face_circle_face_quality:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;->b:Landroid/widget/TextView;

    .line 84
    sget v1, Ligf$c;->face_circle_face_light:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;->c:Landroid/widget/TextView;

    .line 85
    sget v1, Ligf$c;->face_circle_face_size:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;->d:Landroid/widget/TextView;

    .line 86
    sget v1, Ligf$c;->face_circle_face_location:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;->e:Landroid/widget/TextView;

    .line 87
    sget v1, Ligf$c;->face_circle_face_pitch:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;->f:Landroid/widget/TextView;

    .line 88
    sget v1, Ligf$c;->face_circle_face_yaw:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;->g:Landroid/widget/TextView;

    .line 89
    sget v1, Ligf$c;->face_circle_blink_count:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;->h:Landroid/widget/TextView;

    .line 90
    sget v1, Ligf$c;->face_circle_mouth_count:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;->i:Landroid/widget/TextView;

    .line 91
    sget v1, Ligf$c;->face_circle_device_angle:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;->j:Landroid/widget/TextView;

    .line 92
    sget v1, Ligf$c;->face_circle_device_light:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;->k:Landroid/widget/TextView;

    .line 93
    sget v1, Ligf$c;->face_circle_face_process:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;->s:Landroid/widget/ProgressBar;

    .line 94
    sget v1, Ligf$c;->face_circle_face_process2:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;->t:Landroid/widget/ProgressBar;

    .line 95
    sget v1, Ligf$c;->face_circle_face_eye_det:I

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;->q:Landroid/widget/TextView;

    .line 97
    sget v1, Ligf$c;->face_circle_face_gaussian:I

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;->l:Landroid/widget/TextView;

    .line 98
    sget v1, Ligf$c;->face_circle_face_motion:I

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;->m:Landroid/widget/TextView;

    .line 99
    sget v1, Ligf$c;->face_circle_mouth_occlusion:I

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;->n:Landroid/widget/TextView;

    .line 100
    sget v1, Ligf$c;->face_circle_eye_left_occlusion:I

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;->o:Landroid/widget/TextView;

    .line 101
    sget v1, Ligf$c;->face_circle_eye_right_occlusion:I

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;->p:Landroid/widget/TextView;

    .line 104
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;->u:Landroid/os/Handler;

    .line 106
    iget-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;->r:Landroid/widget/Button;

    new-instance v2, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern$1;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern$1;-><init>(Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;)V
    .locals 3
    .param p0, "x0"    # Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;

    .prologue
    const/4 v2, 0x0

    .line 26
    .line 1126
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;->a:Landroid/widget/TextView;

    const-string/jumbo v1, "false"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1127
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;->b:Landroid/widget/TextView;

    const-string/jumbo v1, "0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1128
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;->c:Landroid/widget/TextView;

    const-string/jumbo v1, "0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1129
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;->d:Landroid/widget/TextView;

    const-string/jumbo v1, "[0,0]"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1130
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;->e:Landroid/widget/TextView;

    const-string/jumbo v1, "[0,0]"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1131
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;->f:Landroid/widget/TextView;

    const-string/jumbo v1, "0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1132
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;->g:Landroid/widget/TextView;

    const-string/jumbo v1, "0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1133
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;->h:Landroid/widget/TextView;

    const-string/jumbo v1, "0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1134
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;->i:Landroid/widget/TextView;

    const-string/jumbo v1, "0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1135
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;->j:Landroid/widget/TextView;

    const-string/jumbo v1, "0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1136
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;->k:Landroid/widget/TextView;

    const-string/jumbo v1, "0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1138
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;->l:Landroid/widget/TextView;

    const-string/jumbo v1, "0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1139
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;->m:Landroid/widget/TextView;

    const-string/jumbo v1, "0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1140
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;->n:Landroid/widget/TextView;

    const-string/jumbo v1, "0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1141
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;->o:Landroid/widget/TextView;

    const-string/jumbo v1, "0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1142
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;->p:Landroid/widget/TextView;

    const-string/jumbo v1, "0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1144
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;->q:Landroid/widget/TextView;

    const-string/jumbo v1, "0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1146
    iput v2, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;->v:I

    .line 1147
    iput v2, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;->w:I

    .line 1148
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;->s:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 1149
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;->t:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 26
    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;I)V
    .locals 4
    .param p0, "x0"    # Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;
    .param p1, "x1"    # I

    .prologue
    const/4 v3, 0x1

    .line 26
    .line 1265
    iget-boolean v0, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;->x:Z

    if-nez v0, :cond_0

    .line 1268
    iput-boolean v3, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;->x:Z

    .line 1270
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;->t:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    .line 1271
    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput v0, v1, v2

    aput p1, v1, v3

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 1272
    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1273
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1274
    new-instance v1, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern$3;

    invoke-direct {v1, p0, v0, p1}, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern$3;-><init>(Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;Landroid/animation/ValueAnimator;I)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1294
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 26
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;
    .param p1, "x1"    # Z

    .prologue
    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;->x:Z

    return v0
.end method

.method static synthetic b(Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;
    .param p1, "x1"    # I

    .prologue
    .line 26
    iput p1, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;->z:I

    return p1
.end method

.method static synthetic b(Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;)Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern$Listener;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;->A:Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern$Listener;

    return-object v0
.end method

.method static synthetic c(Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;->a:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic d(Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;->b:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic e(Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;)Landroid/widget/ProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;->s:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic f(Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;->c:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic g(Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;->e:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic h(Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;->d:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic i(Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;->f:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic j(Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;->g:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic k(Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;)I
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;

    .prologue
    .line 26
    iget v0, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;->v:I

    return v0
.end method

.method static synthetic l(Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;->h:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic m(Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;)I
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;

    .prologue
    .line 26
    iget v0, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;->w:I

    return v0
.end method

.method static synthetic n(Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;->i:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic o(Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;->q:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic p(Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;->j:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic q(Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;->k:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic r(Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;->l:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic s(Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;->m:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic t(Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;->n:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic u(Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;->o:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic v(Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;->p:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic w(Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;->y:Ljava/util/List;

    return-object v0
.end method

.method static synthetic x(Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;)I
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;

    .prologue
    .line 26
    iget v0, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;->z:I

    return v0
.end method

.method static synthetic y(Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;)Landroid/widget/ProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;->t:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic z(Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;->u:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public setListener(Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern$Listener;)V
    .locals 0
    .param p1, "listener"    # Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern$Listener;

    .prologue
    .line 300
    iput-object p1, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;->A:Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern$Listener;

    .line 301
    return-void
.end method

.method public showInfo(Lcom/alipay/mobile/security/faceauth/api/FaceFrame;II)V
    .locals 2
    .param p1, "faceFrame"    # Lcom/alipay/mobile/security/faceauth/api/FaceFrame;
    .param p2, "zAngle"    # I
    .param p3, "light"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 158
    invoke-virtual {p1}, Lcom/alipay/mobile/security/faceauth/api/FaceFrame;->isEyeBlink()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    iget v0, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;->v:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;->v:I

    .line 162
    :cond_0
    invoke-virtual {p1}, Lcom/alipay/mobile/security/faceauth/api/FaceFrame;->isMouthOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 163
    iget v0, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;->w:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;->w:I

    .line 166
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;->u:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern$2;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern$2;-><init>(Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;Lcom/alipay/mobile/security/faceauth/api/FaceFrame;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 210
    return-void
.end method
