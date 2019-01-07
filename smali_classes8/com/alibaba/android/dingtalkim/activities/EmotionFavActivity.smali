.class public Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;
.super Lcom/alibaba/android/dingtalkim/IMBaseActivity;
.source "EmotionFavActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity$a;
    }
.end annotation


# static fields
.field private static m:Ljava/lang/String;

.field private static n:Ljava/lang/String;

.field private static o:Ljava/lang/String;


# instance fields
.field private final a:I

.field private b:Landroid/widget/GridView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Z

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;",
            ">;"
        }
    .end annotation
.end field

.field private h:I

.field private i:Lcom/alibaba/doraemon/image/ImageMagician;

.field private j:Landroid/widget/BaseAdapter;

.field private k:Landroid/view/View$OnClickListener;

.field private l:Landroid/view/View$OnClickListener;

.field private p:Landroid/view/View$OnClickListener;

.field private q:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 243
    const-string/jumbo v0, "0"

    sput-object v0, Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;->m:Ljava/lang/String;

    .line 244
    const-string/jumbo v0, "1"

    sput-object v0, Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;->n:Ljava/lang/String;

    .line 245
    const-string/jumbo v0, "2"

    sput-object v0, Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;->o:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;-><init>()V

    .line 62
    const/4 v0, 0x1

    iput v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;->a:I

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;->e:Z

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;->f:Ljava/util/List;

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;->g:Ljava/util/List;

    .line 124
    new-instance v0, Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity$1;-><init>(Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;->j:Landroid/widget/BaseAdapter;

    .line 213
    new-instance v0, Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity$4;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity$4;-><init>(Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;->k:Landroid/view/View$OnClickListener;

    .line 231
    new-instance v0, Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity$5;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity$5;-><init>(Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;->l:Landroid/view/View$OnClickListener;

    .line 525
    new-instance v0, Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity$10;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity$10;-><init>(Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;->p:Landroid/view/View$OnClickListener;

    .line 549
    new-instance v0, Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity$11;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity$11;-><init>(Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;->q:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;->n:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 60
    .line 3396
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3397
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 3399
    :cond_0
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 3400
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lhcs;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 3401
    const-string/jumbo v1, ""

    .line 3402
    const-string/jumbo v0, ""

    .line 3403
    if-ltz v2, :cond_1

    .line 3404
    add-int/lit8 v1, v2, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 3405
    const-string/jumbo v1, "."

    invoke-virtual {v2, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    .line 3406
    if-ltz v4, :cond_2

    .line 3407
    const/4 v0, 0x0

    invoke-virtual {v2, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 3408
    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 3413
    :cond_1
    :goto_1
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v2

    .line 3414
    invoke-virtual {v2, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    const-string/jumbo v3, ""

    invoke-virtual {v1, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(J)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 3415
    invoke-virtual {v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v1, v2

    .line 3410
    goto :goto_1
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;->g:Ljava/util/List;

    return-object p1
.end method

.method static synthetic a(Landroid/graphics/Bitmap;Ljava/io/ByteArrayOutputStream;ZF)V
    .locals 4
    .param p0, "x0"    # Landroid/graphics/Bitmap;
    .param p1, "x1"    # Ljava/io/ByteArrayOutputStream;
    .param p2, "x2"    # Z
    .param p3, "x3"    # F

    .prologue
    const/high16 v2, 0x42c80000    # 100.0f

    .line 60
    const v0, 0x3f4ccccd    # 0.8f

    .line 4388
    if-eqz p2, :cond_0

    .line 4389
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    mul-float/2addr v0, v2

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v0, v2

    invoke-virtual {p0, v1, v0, p1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    :goto_0
    return-void

    .line 4391
    :cond_0
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    mul-float/2addr v0, v2

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v0, v2

    invoke-virtual {p0, v1, v0, p1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;Lifx;)V
    .locals 7
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;
    .param p1, "x1"    # Lifx;

    .prologue
    .line 60
    .line 6481
    if-nez p1, :cond_1

    .line 6482
    const-string/jumbo v0, "0"

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    sget v2, Lctk$i;->unknown_error:I

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 6483
    const-string/jumbo v0, "im"

    const-string/jumbo v1, "traceEmotion"

    const-string/jumbo v2, "addEmotionNatively uploadResponse null"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 7252
    :cond_0
    :goto_0
    return-void

    .line 6486
    :cond_1
    new-instance v0, Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity$9;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity$9;-><init>(Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;)V

    const-class v1, Lcma;

    invoke-static {v0, v1, p0}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 6511
    invoke-static {}, Ldps;->a()Ldps;

    move-result-object v1

    .line 7026
    iget-object v2, p1, Lifx;->a:Ljava/lang/String;

    .line 7034
    iget-object v3, p1, Lifx;->b:Ljava/lang/String;

    .line 7247
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 7248
    if-eqz v0, :cond_0

    .line 7249
    const-string/jumbo v1, "0"

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    sget v3, Lctk$i;->unknown_error:I

    invoke-virtual {v2, v3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 7250
    const-string/jumbo v0, "im"

    const-string/jumbo v1, "traceEmotion"

    const-string/jumbo v2, "addCustomLoginAuthEmotion mediaId all null"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 7254
    :cond_2
    invoke-static {}, Ldyn;->a()Ldyn;

    move-result-object v4

    invoke-virtual {v4}, Ldyn;->f()Ldyb;

    move-result-object v4

    const/4 v5, 0x0

    new-instance v6, Ldps$3;

    invoke-direct {v6, v1, v0}, Ldps$3;-><init>(Ldps;Lcma;)V

    invoke-interface {v4, v5, v2, v3, v6}, Ldyb;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcma;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;Ljava/lang/String;)V
    .locals 5
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 60
    .line 4452
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4455
    new-instance v1, Lcom/alibaba/wukong/upload/UploadParams;

    invoke-direct {v1}, Lcom/alibaba/wukong/upload/UploadParams;-><init>()V

    .line 5066
    iput-object v4, v1, Lcom/alibaba/wukong/upload/UploadParams;->b:Ljava/lang/String;

    .line 6058
    iput-object p1, v1, Lcom/alibaba/wukong/upload/UploadParams;->a:Ljava/lang/String;

    .line 4458
    sget-object v0, Lcom/alibaba/wukong/upload/UploadParams$AuthType;->ONLY_LOGIN_AUTH:Lcom/alibaba/wukong/upload/UploadParams$AuthType;

    invoke-virtual {v1, v0}, Lcom/alibaba/wukong/upload/UploadParams;->a(Lcom/alibaba/wukong/upload/UploadParams$AuthType;)V

    .line 4459
    const/4 v0, 0x1

    .line 6090
    iput-boolean v0, v1, Lcom/alibaba/wukong/upload/UploadParams;->e:Z

    .line 4460
    invoke-static {}, Lify;->a()Lify;

    move-result-object v2

    new-instance v0, Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity$8;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity$8;-><init>(Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;)V

    const-class v3, Lifv;

    invoke-static {v0, v3, p0}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lifv;

    .line 6128
    invoke-virtual {v2, v1, v0, v4}, Lify;->a(Lcom/alibaba/wukong/upload/UploadParams;Lifv;Lifu;)V

    .line 60
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;->e:Z

    return v0
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;->o:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;->g:Ljava/util/List;

    return-object v0
.end method

.method static synthetic c(Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;

    .prologue
    .line 60
    iget v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;->h:I

    return v0
.end method

.method static synthetic c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;->m:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;)Landroid/widget/GridView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;->b:Landroid/widget/GridView;

    return-object v0
.end method

.method private static d()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 90
    invoke-static {}, Ldps;->a()Ldps;

    move-result-object v1

    .line 2086
    iget-object v0, v1, Ldps;->a:Ljava/util/List;

    .line 91
    .local v0, "l":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;>;"
    if-eqz v0, :cond_0

    .line 92
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 94
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method

.method static synthetic e(Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;)Lcom/alibaba/doraemon/image/ImageMagician;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;->i:Lcom/alibaba/doraemon/image/ImageMagician;

    return-object v0
.end method

.method private e()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 515
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;->c:Landroid/widget/TextView;

    sget v1, Lctk$i;->and_im_emotion_fav_total_at_emotions:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;->g:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 516
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;->e:Z

    if-eqz v0, :cond_0

    .line 517
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;->d:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Lctk$i;->dt_common_delete:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;->f:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 518
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;->q:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 523
    :goto_0
    return-void

    .line 520
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;->d:Landroid/widget/TextView;

    sget v1, Lctk$i;->dt_emotion_fav_manusync:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 521
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;->p:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method static synthetic f(Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;)Landroid/view/View$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;->l:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method private f()V
    .locals 1

    .prologue
    .line 589
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;->e:Z

    .line 590
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 591
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;->supportInvalidateOptionsMenu()V

    .line 592
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;->j:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 593
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;->e()V

    .line 594
    return-void
.end method

.method static synthetic g(Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;->f:Ljava/util/List;

    return-object v0
.end method

.method static synthetic h(Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;)Landroid/view/View$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;->k:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic i(Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;)Landroid/widget/BaseAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;->j:Landroid/widget/BaseAdapter;

    return-object v0
.end method

.method static synthetic j(Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;->e()V

    return-void
.end method

.method static synthetic k(Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;

    .prologue
    .line 60
    invoke-static {}, Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;->d()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic l(Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;

    .prologue
    .line 60
    .line 7597
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 7598
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 7599
    sget v1, Lctk$i;->dt_emotion_fav_delete_confirm:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lctk$i;->sure:I

    new-instance v2, Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity$3;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity$3;-><init>(Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;)V

    .line 7600
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lctk$i;->cancel:I

    new-instance v2, Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity$2;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity$2;-><init>(Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;)V

    .line 7627
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 7631
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 60
    :cond_0
    return-void
.end method

.method static synthetic m(Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;->f()V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 7
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 419
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 420
    const-string/jumbo v1, "choose_picture_ids"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 421
    .local v0, "path":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 449
    .end local v0    # "path":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    return-void

    .line 424
    .restart local v0    # "path":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v2

    new-instance v5, Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity$7;

    invoke-direct {v5, p0}, Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity$7;-><init>(Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;)V

    const-class v6, Lcom/alibaba/wukong/Callback;

    invoke-interface {v2, v5, v6, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/wukong/Callback;

    .line 2248
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    if-eqz v2, :cond_2

    .line 2249
    const-class v4, Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Lcms;->b(Ljava/lang/String;I)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v4

    new-instance v5, Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity$6;

    invoke-direct {v5, v1, v2}, Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity$6;-><init>(Ljava/lang/String;Lcom/alibaba/wukong/Callback;)V

    invoke-interface {v4, v5}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    move v1, v3

    .line 424
    :goto_1
    if-eqz v1, :cond_0

    .line 446
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;->showLoadingDialog()V

    goto :goto_0

    :cond_2
    move v1, v4

    .line 2383
    goto :goto_1
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 637
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;->e:Z

    if-eqz v0, :cond_0

    .line 638
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;->f()V

    .line 642
    :goto_0
    return-void

    .line 640
    :cond_0
    invoke-super {p0}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;->onBackPressed()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 78
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 79
    sget v0, Lctk$g;->emotion_fav:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;->setContentView(I)V

    .line 80
    const-string/jumbo v0, "IMAGE"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/image/ImageMagician;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;->i:Lcom/alibaba/doraemon/image/ImageMagician;

    .line 1099
    invoke-static {}, Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;->d()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;->g:Ljava/util/List;

    .line 1100
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1101
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1102
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 1103
    div-int/lit8 v0, v0, 0x5

    iput v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;->h:I

    .line 1107
    sget v0, Lctk$f;->gv_face:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;->b:Landroid/widget/GridView;

    .line 1108
    sget v0, Lctk$f;->bottom_left_tip:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;->c:Landroid/widget/TextView;

    .line 1109
    sget v0, Lctk$f;->bottom_right_tip:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;->d:Landroid/widget/TextView;

    .line 1115
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;->b:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;->j:Landroid/widget/BaseAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1111
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;->e()V

    .line 83
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 6
    .param p1, "menu"    # Landroid/view/Menu;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 556
    iget-boolean v1, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;->e:Z

    if-eqz v1, :cond_0

    .line 557
    invoke-interface {p1, v2, v3, v2, v5}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    .line 558
    .local v0, "createItem":Landroid/view/MenuItem;
    sget v1, Lctk$i;->cancel:I

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 559
    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 565
    :goto_0
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1

    .line 561
    .end local v0    # "createItem":Landroid/view/MenuItem;
    :cond_0
    invoke-interface {p1, v2, v3, v2, v5}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    .line 562
    .restart local v0    # "createItem":Landroid/view/MenuItem;
    sget v1, Lctk$i;->dt_common_edit:I

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 563
    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 569
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 578
    :goto_0
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 571
    :pswitch_0
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;->e:Z

    if-eqz v0, :cond_0

    .line 572
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;->f()V

    goto :goto_0

    .line 2582
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;->e:Z

    .line 2583
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;->supportInvalidateOptionsMenu()V

    .line 2584
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;->j:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 2585
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;->e()V

    goto :goto_0

    .line 569
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
