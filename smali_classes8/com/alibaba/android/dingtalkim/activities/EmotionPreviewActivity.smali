.class public Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;
.super Lcom/alibaba/android/dingtalkim/IMBaseActivity;
.source "EmotionPreviewActivity.java"


# instance fields
.field private A:I

.field private B:Ljava/lang/String;

.field private C:Lcom/alibaba/android/dingtalkim/models/TopicEmotionObject;

.field private D:Landroid/widget/RelativeLayout;

.field private E:Landroid/widget/TextView;

.field private F:Landroid/widget/TextView;

.field private G:Ldpt$a;

.field private H:Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;

.field private I:Lcom/alibaba/android/dingtalkim/models/DynamicEmotionObject;

.field private J:Ljava/lang/String;

.field private K:I

.field private L:Ljava/lang/String;

.field private final a:I

.field private final b:I

.field private final c:I

.field private final d:I

.field private e:Landroid/widget/RelativeLayout;

.field private f:Landroid/widget/ImageView;

.field private g:Landroid/widget/RelativeLayout;

.field private h:Landroid/widget/ImageView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/RelativeLayout;

.field private l:Landroid/widget/ProgressBar;

.field private m:Landroid/widget/ImageView;

.field private n:Landroid/widget/TextView;

.field private o:Ljava/lang/String;

.field private p:J

.field private q:J

.field private r:I

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;

.field private u:Ljava/lang/String;

.field private v:Ljava/lang/String;

.field private w:Ljava/lang/String;

.field private x:J

.field private y:Ljava/lang/String;

.field private z:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;-><init>()V

    .line 46
    const/4 v0, 0x1

    iput v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;->a:I

    .line 47
    const/4 v0, 0x2

    iput v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;->b:I

    .line 48
    const/4 v0, 0x3

    iput v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;->c:I

    .line 50
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    const/high16 v1, 0x42880000    # 68.0f

    invoke-static {v0, v1}, Lcms;->c(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;->d:I

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;Lcom/alibaba/android/dingtalkim/models/DynamicEmotionObject;)Lcom/alibaba/android/dingtalkim/models/DynamicEmotionObject;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalkim/models/DynamicEmotionObject;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;->I:Lcom/alibaba/android/dingtalkim/models/DynamicEmotionObject;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;Lcom/alibaba/android/dingtalkim/models/TopicEmotionObject;)Lcom/alibaba/android/dingtalkim/models/TopicEmotionObject;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalkim/models/TopicEmotionObject;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;->C:Lcom/alibaba/android/dingtalkim/models/TopicEmotionObject;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;

    .prologue
    .line 44
    .line 11207
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;->I:Lcom/alibaba/android/dingtalkim/models/DynamicEmotionObject;

    if-eqz v0, :cond_0

    .line 11210
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;->D:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 11211
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;->I:Lcom/alibaba/android/dingtalkim/models/DynamicEmotionObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/models/DynamicEmotionObject;->source:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;->a(Ljava/lang/String;)V

    .line 44
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;J)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;
    .param p1, "x1"    # J

    .prologue
    .line 44
    .line 11424
    iget-wide v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;->p:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    .line 11425
    invoke-static {}, Ldpt;->a()Ldpt;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ldpt;->a(J)Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$a;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;->a(Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$a;)V

    .line 44
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;->b(Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;)V

    return-void
.end method

.method private a(Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$a;)V
    .locals 6
    .param p1, "downloaderData"    # Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$a;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/16 v5, 0x64

    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 430
    if-eqz p1, :cond_0

    iget-object v2, p1, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$a;->h:Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$DownloadStatus;

    if-nez v2, :cond_1

    .line 431
    :cond_0
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;->k:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 469
    :goto_0
    return-void

    .line 434
    :cond_1
    iget-object v0, p1, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$a;->h:Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$DownloadStatus;

    .line 435
    .local v0, "downloadStatus":Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$DownloadStatus;
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;->k:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 436
    sget-object v2, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$DownloadStatus;->Uninstall:Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$DownloadStatus;

    if-eq v0, v2, :cond_2

    sget-object v2, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$DownloadStatus;->Cancel:Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$DownloadStatus;

    if-eq v0, v2, :cond_2

    sget-object v2, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$DownloadStatus;->Error:Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$DownloadStatus;

    if-ne v0, v2, :cond_3

    .line 439
    :cond_2
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;->n:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 440
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;->l:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 441
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;->m:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 442
    :cond_3
    sget-object v2, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$DownloadStatus;->Downloading:Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$DownloadStatus;

    if-eq v0, v2, :cond_4

    sget-object v2, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$DownloadStatus;->Init:Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$DownloadStatus;

    if-eq v0, v2, :cond_4

    sget-object v2, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$DownloadStatus;->Installing:Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$DownloadStatus;

    if-ne v0, v2, :cond_a

    .line 443
    :cond_4
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;->n:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 444
    const/4 v1, 0x0

    .line 445
    .local v1, "progress":I
    sget-object v2, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$DownloadStatus;->Downloading:Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$DownloadStatus;

    if-ne v0, v2, :cond_7

    .line 446
    iget v1, p1, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$a;->c:I

    .line 452
    :cond_5
    :goto_1
    if-lt v1, v5, :cond_9

    .line 453
    const/16 v1, 0x64

    .line 457
    :cond_6
    :goto_2
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;->l:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 458
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;->l:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v5}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 459
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;->l:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 460
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;->m:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 447
    :cond_7
    sget-object v2, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$DownloadStatus;->Init:Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$DownloadStatus;

    if-ne v0, v2, :cond_8

    .line 448
    const/4 v1, 0x0

    goto :goto_1

    .line 449
    :cond_8
    sget-object v2, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$DownloadStatus;->Installing:Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$DownloadStatus;

    if-ne v0, v2, :cond_5

    .line 450
    const/16 v1, 0x64

    goto :goto_1

    .line 454
    :cond_9
    if-gez v1, :cond_6

    .line 455
    const/4 v1, 0x0

    goto :goto_2

    .line 461
    .end local v1    # "progress":I
    :cond_a
    sget-object v2, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$DownloadStatus;->Installed:Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$DownloadStatus;

    if-eq v0, v2, :cond_b

    sget-object v2, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$DownloadStatus;->Incomplete:Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$DownloadStatus;

    if-ne v0, v2, :cond_c

    .line 462
    :cond_b
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;->n:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 463
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;->l:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 464
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;->m:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 466
    :cond_c
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;->k:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method private a(Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;)V
    .locals 4
    .param p1, "emotionPackageObject"    # Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 346
    if-eqz p1, :cond_1

    iget v1, p1, Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;->state:I

    sget-object v2, Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject$EMOTION_OFFLINE_STATUS;->ONLINE:Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject$EMOTION_OFFLINE_STATUS;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject$EMOTION_OFFLINE_STATUS;->getValue()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 347
    invoke-static {}, Ldpt;->a()Ldpt;

    move-result-object v1

    iget-wide v2, p1, Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;->packageId:J

    invoke-virtual {v1, v2, v3}, Ldpt;->a(J)Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$a;

    move-result-object v0

    .line 348
    .local v0, "downloaderData":Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$a;
    invoke-direct {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;->a(Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$a;)V

    .line 9380
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;->G:Ldpt$a;

    if-nez v1, :cond_0

    .line 9383
    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity$7;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity$7;-><init>(Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;)V

    iput-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;->G:Ldpt$a;

    .line 9419
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;->G:Ldpt$a;

    const-class v2, Ldpt$a;

    invoke-static {v1, v2, p0}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldpt$a;

    iput-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;->G:Ldpt$a;

    .line 9420
    invoke-static {}, Ldpt;->a()Ldpt;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;->G:Ldpt$a;

    invoke-virtual {v1, v2}, Ldpt;->a(Ldpt$a;)V

    .line 353
    .end local v0    # "downloaderData":Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$a;
    :cond_0
    :goto_0
    return-void

    .line 351
    :cond_1
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;->a(Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$a;)V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)V
    .locals 4
    .param p1, "des"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 249
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;->F:Landroid/widget/TextView;

    sget v1, Lctk$i;->dt_emotion_source_default:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 254
    :goto_0
    return-void

    .line 252
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;->F:Landroid/widget/TextView;

    sget v1, Lctk$i;->dt_topic_emotion_source_tips:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private a()Z
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 473
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;->o:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;->p:J

    .line 474
    iget-wide v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;->p:J

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;->p:J

    const-wide/16 v2, -0xc

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;->p:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v2, -0xa

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 477
    const/4 v0, 0x1

    .line 481
    :goto_0
    return v0

    :catch_0
    move-exception v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;->y:Ljava/lang/String;

    return-object v0
.end method

.method private b()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 498
    .line 10523
    iget-wide v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;->q:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 10524
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;->o:Ljava/lang/String;

    .line 10525
    iget-wide v2, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;->x:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    .line 10526
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;->y:Ljava/lang/String;

    .line 10527
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 10528
    const-string/jumbo v5, "emotion_id"

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10529
    const-string/jumbo v0, "p_id"

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10530
    const-string/jumbo v0, "topic_id"

    invoke-virtual {v4, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10531
    const-string/jumbo v0, "dynamic_emotion_id"

    invoke-virtual {v4, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10532
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "dt_im_gif_favorite_emotion"

    invoke-interface {v0, v1, v4}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/util/Map;)V

    .line 499
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;->showLoadingDialog()V

    .line 500
    invoke-static {}, Ldps;->a()Ldps;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;->s:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;->u:Ljava/lang/String;

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;->w:Ljava/lang/String;

    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v0

    new-instance v5, Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity$8;

    invoke-direct {v5, p0}, Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity$8;-><init>(Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;)V

    const-class v6, Lcma;

    invoke-interface {v0, v5, v6, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    invoke-virtual {v1, v2, v3, v4, v0}, Ldps;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcma;)V

    .line 520
    return-void
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;->a(Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;)V

    return-void
.end method

.method private b(Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;)V
    .locals 6
    .param p1, "emotionPackageObject"    # Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x8

    .line 356
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;->H:Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;

    .line 357
    if-eqz p1, :cond_0

    .line 358
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;->g:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 359
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;->D:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 360
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;->i:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 361
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;->j:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;->shortDesc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 362
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;->h:Landroid/widget/ImageView;

    sget v1, Lctk$e;->emotion_placeholder:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 363
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;->h:Landroid/widget/ImageView;

    iget-object v1, p1, Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;->iconMediaId:Ljava/lang/String;

    .line 10079
    const/4 v2, 0x0

    invoke-static {v2, v1, v0}, Lcom/alibaba/android/dingtalkim/imtools/EmotionShowUtils;->a(Landroid/widget/AbsListView;Ljava/lang/String;Landroid/widget/ImageView;)Z

    .line 377
    :goto_0
    return-void

    .line 365
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;->g:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 366
    iget-wide v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;->p:J

    const-wide/16 v2, -0xb

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;->p:J

    const-wide/16 v2, -0xc

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 368
    invoke-static {}, Ldps;->a()Ldps;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ldps;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 369
    invoke-static {}, Ldps;->a()Ldps;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;->u:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ldps;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 371
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;->D:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 373
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;->D:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 374
    const-string/jumbo v0, ""

    invoke-direct {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;

    .prologue
    .line 44
    .line 11240
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;->C:Lcom/alibaba/android/dingtalkim/models/TopicEmotionObject;

    if-eqz v0, :cond_0

    .line 11243
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;->D:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 11244
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;->C:Lcom/alibaba/android/dingtalkim/models/TopicEmotionObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/models/TopicEmotionObject;->source:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;->a(Ljava/lang/String;)V

    .line 44
    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;

    .prologue
    .line 44
    iget-wide v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;->p:J

    return-wide v0
.end method

.method static synthetic e(Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;)Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;->H:Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;

    return-object v0
.end method

.method static synthetic f(Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;->b()V

    return-void
.end method

.method static synthetic g(Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;->D:Landroid/widget/RelativeLayout;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const-wide/16 v2, 0x0

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 92
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 93
    sget v0, Lctk$g;->emotion_preview:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;->setContentView(I)V

    .line 1128
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    sget v1, Lctk$i;->dt_im_emotion_activity_title_preview:I

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setTitle(I)V

    .line 1132
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "intent_key_emotion_package_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;->o:Ljava/lang/String;

    .line 1133
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "intent_key_emotion_id"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;->q:J

    .line 1134
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "intent_key_emotion_type"

    invoke-virtual {v0, v1, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;->r:I

    .line 1135
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "intent_key_emotion_media_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;->s:Ljava/lang/String;

    .line 1136
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "intent_key_emotion_url"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;->t:Ljava/lang/String;

    .line 1137
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "intent_key_emotion_auth_media_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;->u:Ljava/lang/String;

    .line 1138
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "intent_key_emotion_auth_code"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;->v:Ljava/lang/String;

    .line 1139
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "intent_key_emotion_auth_entity"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;->w:Ljava/lang/String;

    .line 1140
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "intent_key_emotion_topic_id"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;->x:J

    .line 1141
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "3rd_emotion_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;->y:Ljava/lang/String;

    .line 1142
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "3rd_emotion_width"

    invoke-virtual {v0, v1, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;->z:I

    .line 1143
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "3rd_emotion_height"

    invoke-virtual {v0, v1, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;->A:I

    .line 1144
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "p_name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;->B:Ljava/lang/String;

    .line 1146
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "pr_uuid"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;->J:Ljava/lang/String;

    .line 1147
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "pr_type"

    invoke-virtual {v0, v1, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;->K:I

    .line 1148
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "pr_url"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;->L:Ljava/lang/String;

    .line 1152
    sget v0, Lctk$f;->emotion_container:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;->e:Landroid/widget/RelativeLayout;

    .line 1153
    sget v0, Lctk$f;->iv_emotion:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;->f:Landroid/widget/ImageView;

    .line 1154
    sget v0, Lctk$f;->container_emotion_package_intro:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;->g:Landroid/widget/RelativeLayout;

    .line 1155
    sget v0, Lctk$f;->iv_emotion_thumbnail:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;->h:Landroid/widget/ImageView;

    .line 1156
    sget v0, Lctk$f;->tv_emotion_package_title:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;->i:Landroid/widget/TextView;

    .line 1157
    sget v0, Lctk$f;->tv_emotion_package_desc:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;->j:Landroid/widget/TextView;

    .line 1158
    sget v0, Lctk$f;->container_topic_emotion_intro:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;->D:Landroid/widget/RelativeLayout;

    .line 1159
    sget v0, Lctk$f;->tv_topic_add_emotion:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;->E:Landroid/widget/TextView;

    .line 1160
    sget v0, Lctk$f;->tv_topic_source:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;->F:Landroid/widget/TextView;

    .line 1161
    sget v0, Lctk$f;->rl_right_operation:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;->k:Landroid/widget/RelativeLayout;

    .line 1162
    sget v0, Lctk$f;->tv_download_emotion:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;->n:Landroid/widget/TextView;

    .line 1163
    sget v0, Lctk$f;->pb_download_progress:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;->l:Landroid/widget/ProgressBar;

    .line 1164
    sget v0, Lctk$f;->iv_download_done:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;->m:Landroid/widget/ImageView;

    .line 1168
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1169
    iget-wide v2, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;->p:J

    .line 1307
    invoke-static {}, Ldpt;->a()Ldpt;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ldpt;->e(J)Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;

    move-result-object v0

    .line 1308
    if-eqz v0, :cond_2

    .line 1309
    invoke-direct {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;->b(Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;)V

    .line 1310
    invoke-direct {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;->a(Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;)V

    .line 1173
    :goto_0
    iget-wide v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;->p:J

    const-wide/16 v2, -0xb

    cmp-long v0, v0, v2

    if-nez v0, :cond_4

    .line 2215
    new-instance v0, Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity$2;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity$2;-><init>(Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;)V

    .line 2235
    invoke-static {}, Ldyc;->a()Ldyc;

    move-result-object v7

    iget-wide v2, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;->x:J

    iget-wide v4, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;->q:J

    const-class v1, Lcma;

    .line 2236
    invoke-static {v0, v1, p0}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 2314
    const-class v1, Lcom/alibaba/android/dingtalkim/models/idl/service/ImgResIService;

    invoke-static {v1}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkim/models/idl/service/ImgResIService;

    .line 2315
    new-instance v6, Ldyc$5;

    invoke-direct {v6, v7, v0}, Ldyc$5;-><init>(Ldyc;Lcma;)V

    invoke-interface/range {v1 .. v6}, Lcom/alibaba/android/dingtalkim/models/idl/service/ImgResIService;->getTopicEmotionDetail(JJLiyv;)V

    .line 3257
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;->g:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity$3;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity$3;-><init>(Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3267
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;->n:Landroid/widget/TextView;

    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity$4;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity$4;-><init>(Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3282
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;->E:Landroid/widget/TextView;

    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity$5;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity$5;-><init>(Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3297
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;->e:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 3298
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;->a()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 3299
    iget v1, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;->d:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 3303
    :goto_2
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;->e:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3293
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;->f:Landroid/widget/ImageView;

    iget v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;->r:I

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;->t:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;->v:Ljava/lang/String;

    .line 4028
    const-string/jumbo v4, "IMAGE"

    invoke-static {v4}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/doraemon/image/ImageMagician;

    .line 4029
    if-eqz v4, :cond_1

    .line 4032
    if-eqz v3, :cond_1

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 4033
    :cond_1
    :goto_3
    return-void

    .line 1312
    :cond_2
    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity$6;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity$6;-><init>(Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;)V

    const-class v4, Lcma;

    invoke-interface {v0, v1, v4, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 1340
    invoke-static {}, Ldxo;->a()Ldxn;

    move-result-object v1

    invoke-interface {v1, v2, v3, v0}, Ldxn;->b(JLcma;)V

    goto/16 :goto_0

    .line 1171
    :cond_3
    invoke-direct {p0, v9}, Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;->b(Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;)V

    goto/16 :goto_0

    .line 1175
    :cond_4
    iget-wide v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;->p:J

    const-wide/16 v2, -0xc

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 3181
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;->y:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3184
    new-instance v0, Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity$1;-><init>(Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;)V

    .line 3203
    invoke-static {}, Ldyc;->a()Ldyc;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;->y:Ljava/lang/String;

    const-class v3, Lcma;

    invoke-static {v0, v3, p0}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    invoke-virtual {v1, v2, v0}, Ldyc;->a(Ljava/lang/String;Lcma;)V

    goto/16 :goto_1

    .line 3301
    :cond_5
    iput v8, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    goto :goto_2

    .line 4078
    :cond_6
    new-instance v6, Lhcg$a;

    invoke-direct {v6}, Lhcg$a;-><init>()V

    .line 4114
    iput v10, v6, Lhcg$a;->e:I

    .line 5109
    iput-boolean v8, v6, Lhcg$a;->c:Z

    .line 5119
    iput v8, v6, Lhcg$a;->f:I

    .line 5124
    iput-boolean v8, v6, Lhcg$a;->d:Z

    .line 5149
    iput-boolean v8, v6, Lhcg$a;->k:Z

    .line 4041
    sget-object v5, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionFileStruct$EmotionType;->GIF:Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionFileStruct$EmotionType;

    invoke-virtual {v5}, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionFileStruct$EmotionType;->getValue()I

    move-result v5

    if-ne v0, v5, :cond_7

    .line 4042
    invoke-static {v3}, Ldkj;->a(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v11, :cond_7

    .line 6119
    iput v11, v6, Lhcg$a;->f:I

    .line 7109
    iput-boolean v10, v6, Lhcg$a;->c:Z

    .line 4046
    :cond_7
    const-string/jumbo v0, "CUSTOM_EMOTION"

    .line 4047
    invoke-static {v0, v9, v2, v9}, Liaf;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 4046
    invoke-static {v6, v0}, Ldkc;->a(Lhcg$a;Ljava/util/Map;)V

    .line 4048
    const-string/jumbo v2, ""

    move-object v0, p0

    move-object v5, v9

    invoke-static/range {v0 .. v6}, Lhcg;->a(Landroid/app/Activity;Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/doraemon/image/ImageMagician;Landroid/widget/AbsListView;Lhcg$a;)V

    goto/16 :goto_3
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 6
    .param p1, "menu"    # Landroid/view/Menu;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 103
    sget v1, Lctk$i;->more:I

    invoke-interface {p1, v3, v4, v3, v1}, Landroid/view/Menu;->addSubMenu(IIII)Landroid/view/SubMenu;

    move-result-object v0

    .line 104
    .local v0, "menuSettings":Landroid/view/SubMenu;
    sget v1, Lctk$i;->dt_im_emotion_send_to_friend:I

    invoke-interface {v0, v3, v5, v3, v1}, Landroid/view/SubMenu;->add(IIII)Landroid/view/MenuItem;

    .line 105
    invoke-static {}, Ldps;->a()Ldps;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;->s:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ldps;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 106
    invoke-static {}, Ldps;->a()Ldps;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;->u:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ldps;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 107
    const/4 v1, 0x3

    sget v2, Lctk$i;->dt_im_emotion_favorite:I

    invoke-interface {v0, v3, v1, v4, v2}, Landroid/view/SubMenu;->add(IIII)Landroid/view/MenuItem;

    .line 109
    :cond_0
    invoke-interface {v0}, Landroid/view/SubMenu;->getItem()Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 110
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method protected onDestroy()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 537
    invoke-super {p0}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;->onDestroy()V

    .line 10542
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;->G:Ldpt$a;

    if-eqz v0, :cond_0

    .line 10543
    invoke-static {}, Ldpt;->a()Ldpt;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;->G:Ldpt$a;

    invoke-virtual {v0, v1}, Ldpt;->b(Ldpt$a;)V

    .line 10544
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;->G:Ldpt$a;

    .line 539
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .param p1, "item"    # Landroid/view/MenuItem;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 114
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 124
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 7485
    :pswitch_0
    new-instance v0, Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper$a;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper$a;-><init>()V

    .line 7486
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper$a;->a(Ljava/lang/String;)Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper$a;

    move-result-object v1

    iget-wide v2, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;->q:J

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper$a;->a(J)Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper$a;

    move-result-object v1

    iget v2, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;->r:I

    .line 7487
    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper$a;->a(I)Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper$a;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;->s:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper$a;->b(Ljava/lang/String;)Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper$a;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;->u:Ljava/lang/String;

    .line 7488
    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper$a;->c(Ljava/lang/String;)Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper$a;

    move-result-object v1

    iget-wide v2, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;->x:J

    .line 8148
    iget-object v4, v1, Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper$a;->a:Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper;

    invoke-static {v4, v2, v3}, Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper;->access$602(Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper;J)J

    .line 7488
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;->y:Ljava/lang/String;

    .line 8153
    iget-object v3, v1, Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper$a;->a:Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper;

    invoke-static {v3, v2}, Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper;->access$702(Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper;Ljava/lang/String;)Ljava/lang/String;

    .line 7489
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;->B:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper$a;->d(Ljava/lang/String;)Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper$a;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;->t:Ljava/lang/String;

    .line 8163
    iget-object v3, v1, Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper$a;->a:Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper;

    invoke-static {v3, v2}, Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper;->access$902(Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper;Ljava/lang/String;)Ljava/lang/String;

    .line 7490
    iget v2, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;->z:I

    .line 8168
    iget-object v3, v1, Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper$a;->a:Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper;

    invoke-static {v3, v2}, Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper;->access$1002(Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper;I)I

    .line 7491
    iget v2, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;->A:I

    .line 8173
    iget-object v3, v1, Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper$a;->a:Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper;

    invoke-static {v3, v2}, Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper;->access$1102(Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper;I)I

    .line 7492
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;->J:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper$a;->e(Ljava/lang/String;)Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper$a;

    move-result-object v1

    iget v2, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;->K:I

    .line 7493
    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper$a;->b(I)Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper$a;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;->L:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper$a;->f(Ljava/lang/String;)Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper$a;

    .line 7494
    invoke-static {}, Ldjo;->a()Ldjo;

    move-result-object v1

    .line 8204
    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper$a;->a:Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper;

    .line 9050
    if-eqz p0, :cond_0

    if-eqz v2, :cond_0

    .line 9053
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v3, "https://qr.dingtalk.com/im/forward.html"

    new-instance v4, Ldjo$1;

    invoke-direct {v4, v1, v2}, Ldjo$1;-><init>(Ldjo;Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper;)V

    invoke-interface {v0, v3, v4}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto/16 :goto_0

    .line 119
    :pswitch_1
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;->b()V

    goto/16 :goto_0

    .line 114
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
