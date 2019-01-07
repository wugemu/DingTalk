.class public Lcom/megvii/livenessdetection/Detector;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/megvii/livenessdetection/Detector$a;,
        Lcom/megvii/livenessdetection/Detector$DetectionFailedType;,
        Lcom/megvii/livenessdetection/Detector$DetectionType;,
        Lcom/megvii/livenessdetection/Detector$DetectionListener;
    }
.end annotation


# static fields
.field public static final DETECTOR_INIT_FAILED_BADCIPHER:I = 0x4

.field public static final DETECTOR_INIT_FAILED_EXPIRE:I = 0x5

.field public static final DETECTOR_INIT_FAILED_INVALIDMODEL:I = 0x1

.field public static final DETECTOR_INIT_FAILED_NATIVEINITFAILED:I = 0x3

.field public static final DETECTOR_INIT_FAILED_SHAREDLIBLOADFAILED:I = 0x2

.field public static final DETECTOR_INIT_OK:I

.field private static c:Z


# instance fields
.field private a:Lcom/megvii/livenessdetection/DetectionConfig;

.field private b:J

.field private d:Landroid/content/Context;

.field private e:Lcom/megvii/livenessdeteciton/obf/e;

.field private f:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/megvii/livenessdetection/impl/b;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/megvii/livenessdetection/Detector$a;

.field private h:Lcom/megvii/livenessdetection/Detector$DetectionListener;

.field private i:Z

.field private j:Landroid/os/Handler;

.field private k:Z

.field private l:Ljer;

.field private m:Lcom/megvii/livenessdetection/impl/b;

.field private n:J

.field private o:Lcom/megvii/livenessdetection/Detector$DetectionType;

.field private p:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/megvii/livenessdetection/DetectionFrame;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 56
    sput-boolean v1, Lcom/megvii/livenessdetection/Detector;->c:Z

    .line 318
    :try_start_0
    const-string/jumbo v0, "livenessdetection_v2.4.1"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 319
    const/4 v0, 0x1

    sput-boolean v0, Lcom/megvii/livenessdetection/Detector;->c:Z
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 324
    :goto_0
    return-void

    .line 321
    :catch_0
    move-exception v0

    const-string/jumbo v0, "static load library error "

    invoke-static {v0}, Ljeu;->a(Ljava/lang/String;)V

    .line 322
    sput-boolean v1, Lcom/megvii/livenessdetection/Detector;->c:Z

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/megvii/livenessdetection/DetectionConfig;)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v0, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object v0, p0, Lcom/megvii/livenessdetection/Detector;->a:Lcom/megvii/livenessdetection/DetectionConfig;

    .line 53
    iput-wide v4, p0, Lcom/megvii/livenessdetection/Detector;->b:J

    .line 67
    iput-boolean v2, p0, Lcom/megvii/livenessdetection/Detector;->i:Z

    .line 71
    iput-boolean v3, p0, Lcom/megvii/livenessdetection/Detector;->k:Z

    .line 87
    iput-object v0, p0, Lcom/megvii/livenessdetection/Detector;->m:Lcom/megvii/livenessdetection/impl/b;

    .line 260
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/megvii/livenessdetection/Detector;->n:J

    .line 262
    sget-object v0, Lcom/megvii/livenessdetection/Detector$DetectionType;->NONE:Lcom/megvii/livenessdetection/Detector$DetectionType;

    iput-object v0, p0, Lcom/megvii/livenessdetection/Detector;->o:Lcom/megvii/livenessdetection/Detector$DetectionType;

    .line 75
    if-nez p2, :cond_0

    .line 76
    new-instance v0, Lcom/megvii/livenessdetection/DetectionConfig$Builder;

    invoke-direct {v0}, Lcom/megvii/livenessdetection/DetectionConfig$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/megvii/livenessdetection/DetectionConfig$Builder;->build()Lcom/megvii/livenessdetection/DetectionConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/megvii/livenessdetection/Detector;->a:Lcom/megvii/livenessdetection/DetectionConfig;

    .line 78
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/megvii/livenessdetection/Detector;->d:Landroid/content/Context;

    .line 79
    iput-object p2, p0, Lcom/megvii/livenessdetection/Detector;->a:Lcom/megvii/livenessdetection/DetectionConfig;

    .line 80
    iput-wide v4, p0, Lcom/megvii/livenessdetection/Detector;->b:J

    .line 81
    iput-boolean v2, p0, Lcom/megvii/livenessdetection/Detector;->i:Z

    .line 82
    iput-boolean v3, p0, Lcom/megvii/livenessdetection/Detector;->k:Z

    .line 83
    new-instance v0, Ljer;

    invoke-direct {v0}, Ljer;-><init>()V

    iput-object v0, p0, Lcom/megvii/livenessdetection/Detector;->l:Ljer;

    .line 84
    new-instance v0, Lcom/megvii/livenessdeteciton/obf/e;

    iget-object v1, p0, Lcom/megvii/livenessdetection/Detector;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/megvii/livenessdeteciton/obf/e;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/megvii/livenessdetection/Detector;->e:Lcom/megvii/livenessdeteciton/obf/e;

    .line 85
    return-void
.end method

.method private declared-synchronized a(Landroid/content/Context;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)I
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, 0x3

    const/4 v0, 0x1

    .line 120
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/megvii/livenessdetection/Detector;->d:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    if-nez p2, :cond_1

    if-nez p3, :cond_1

    .line 171
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    .line 127
    :cond_1
    if-nez p3, :cond_6

    .line 129
    :try_start_1
    invoke-static {p2}, Ljes;->a(Ljava/lang/String;)[B

    move-result-object v2

    .line 131
    :goto_1
    if-eqz v2, :cond_0

    const-string/jumbo v1, "b3c61531d3a785d8af140218304940e5b24834d3"

    invoke-static {v2}, Ljes;->a([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 135
    sget-boolean v0, Lcom/megvii/livenessdetection/Detector;->c:Z

    if-nez v0, :cond_3

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ljet;->a(Landroid/content/Context;)Ljet;

    move-result-object v0

    const-string/jumbo v1, "livenessdetection"

    const-string/jumbo v3, "v2.4.1"

    invoke-virtual {v0, v1, v3}, Ljet;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 136
    if-eqz p5, :cond_2

    invoke-static {p5}, Ljes;->b(Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-nez v0, :cond_3

    .line 137
    :cond_2
    const/4 v0, 0x2

    goto :goto_0

    .line 145
    :cond_3
    :try_start_2
    invoke-static {}, Lcom/megvii/livenessdetection/Detector;->getVersion()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 146
    const/4 v1, 0x1

    aget-object v0, v0, v1

    .line 147
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "YYYY-MM-dd"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 148
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-wide v0

    cmp-long v0, v4, v0

    if-lez v0, :cond_4

    .line 149
    const/4 v0, 0x5

    goto :goto_0

    :catch_0
    move-exception v0

    .line 155
    :cond_4
    :try_start_3
    invoke-virtual {p0}, Lcom/megvii/livenessdetection/Detector;->release()V

    .line 157
    new-instance v0, Ljava/util/concurrent/LinkedBlockingDeque;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>(I)V

    iput-object v0, p0, Lcom/megvii/livenessdetection/Detector;->f:Ljava/util/concurrent/BlockingQueue;

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/megvii/livenessdetection/Detector;->e:Lcom/megvii/livenessdeteciton/obf/e;

    const-string/jumbo v3, "cb072839e1e240a23baae123ca6cf165"

    invoke-virtual {v1, v3}, Lcom/megvii/livenessdeteciton/obf/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/megvii/livenessdetection/Detector;->e:Lcom/megvii/livenessdeteciton/obf/e;

    const-string/jumbo v3, "e2380b201325a8f252636350338aeae8"

    invoke-virtual {v1, v3}, Lcom/megvii/livenessdeteciton/obf/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 160
    iget-object v0, p0, Lcom/megvii/livenessdetection/Detector;->a:Lcom/megvii/livenessdetection/DetectionConfig;

    invoke-virtual {v0}, Lcom/megvii/livenessdetection/DetectionConfig;->toJsonString()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v3, p4

    invoke-direct/range {v0 .. v5}, Lcom/megvii/livenessdetection/Detector;->nativeRawInit(Landroid/content/Context;[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/megvii/livenessdetection/Detector;->b:J

    .line 161
    iget-wide v0, p0, Lcom/megvii/livenessdetection/Detector;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_5

    move v0, v6

    .line 162
    goto/16 :goto_0

    .line 163
    :cond_5
    new-instance v0, Lcom/megvii/livenessdetection/Detector$a;

    invoke-direct {v0, p0}, Lcom/megvii/livenessdetection/Detector$a;-><init>(Lcom/megvii/livenessdetection/Detector;)V

    iput-object v0, p0, Lcom/megvii/livenessdetection/Detector;->g:Lcom/megvii/livenessdetection/Detector$a;

    .line 164
    iget-object v0, p0, Lcom/megvii/livenessdetection/Detector;->g:Lcom/megvii/livenessdetection/Detector$a;

    invoke-virtual {v0}, Lcom/megvii/livenessdetection/Detector$a;->start()V

    .line 166
    sget-object v0, Lcom/megvii/livenessdetection/Detector$DetectionType;->NONE:Lcom/megvii/livenessdetection/Detector$DetectionType;

    iput-object v0, p0, Lcom/megvii/livenessdetection/Detector;->o:Lcom/megvii/livenessdetection/Detector$DetectionType;

    .line 168
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/megvii/livenessdetection/Detector;->j:Landroid/os/Handler;

    .line 170
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/megvii/livenessdetection/Detector;->p:Ljava/util/ArrayList;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 171
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 120
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_6
    move-object v2, p3

    goto/16 :goto_1
.end method

.method static synthetic a(Lcom/megvii/livenessdetection/Detector;Lcom/megvii/livenessdetection/Detector$DetectionType;)Lcom/megvii/livenessdetection/Detector$DetectionType;
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcom/megvii/livenessdetection/Detector;->o:Lcom/megvii/livenessdetection/Detector$DetectionType;

    return-object p1
.end method

.method static synthetic a(Lcom/megvii/livenessdetection/Detector;Lcom/megvii/livenessdetection/impl/b;)Lcom/megvii/livenessdetection/impl/b;
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcom/megvii/livenessdetection/Detector;->m:Lcom/megvii/livenessdetection/impl/b;

    return-object p1
.end method

.method static synthetic a(Lcom/megvii/livenessdetection/Detector;JI[BIII)Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    invoke-direct/range {p0 .. p7}, Lcom/megvii/livenessdetection/Detector;->nativeDetection(JI[BIII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/megvii/livenessdetection/Detector;)Ljava/util/concurrent/BlockingQueue;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/megvii/livenessdetection/Detector;->f:Ljava/util/concurrent/BlockingQueue;

    return-object v0
.end method

.method private static a(Lcom/megvii/livenessdetection/DetectionFrame;ILjava/lang/String;Lcom/megvii/livenessdetection/bean/FaceIDDataStruct;Z)Lorg/json/JSONObject;
    .locals 8

    .prologue
    .line 705
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/megvii/livenessdetection/DetectionFrame;->hasFace()Z

    move-result v0

    if-nez v0, :cond_1

    .line 706
    :cond_0
    const/4 v0, 0x0

    .line 734
    :goto_0
    return-object v0

    .line 708
    :cond_1
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 709
    if-nez p4, :cond_2

    .line 710
    invoke-virtual {p0}, Lcom/megvii/livenessdetection/DetectionFrame;->getFaceInfo()Lcom/megvii/livenessdetection/bean/FaceInfo;

    move-result-object v0

    .line 711
    const/4 v2, 0x0

    const/16 v3, 0x46

    const/high16 v4, 0x43160000    # 150.0f

    iget-object v5, v0, Lcom/megvii/livenessdetection/bean/FaceInfo;->position:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    iget-object v0, v0, Lcom/megvii/livenessdetection/bean/FaceInfo;->position:Landroid/graphics/RectF;

    .line 712
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    .line 711
    invoke-static {v5, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    div-float v0, v4, v0

    float-to-int v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/megvii/livenessdetection/DetectionFrame;->getImageData(Landroid/graphics/Rect;ZIIZZI)[B

    move-result-object v0

    move-object v2, v0

    .line 716
    :goto_1
    if-nez v2, :cond_3

    .line 717
    const/4 v0, 0x0

    goto :goto_0

    .line 714
    :cond_2
    const/4 v2, 0x1

    const/16 v3, 0x46

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move v4, p1

    invoke-virtual/range {v0 .. v7}, Lcom/megvii/livenessdetection/DetectionFrame;->getImageData(Landroid/graphics/Rect;ZIIZZI)[B

    move-result-object v0

    move-object v2, v0

    goto :goto_1

    .line 719
    :cond_3
    iget-object v0, p3, Lcom/megvii/livenessdetection/bean/FaceIDDataStruct;->images:Ljava/util/Map;

    invoke-interface {v0, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 720
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 722
    :try_start_0
    const-string/jumbo v3, "quality"

    invoke-virtual {p0}, Lcom/megvii/livenessdetection/DetectionFrame;->getFaceInfo()Lcom/megvii/livenessdetection/bean/FaceInfo;

    move-result-object v4

    iget v4, v4, Lcom/megvii/livenessdetection/bean/FaceInfo;->faceQuality:F

    float-to-double v4, v4

    invoke-virtual {v0, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 723
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 724
    iget v4, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 725
    iget v4, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 726
    iget v4, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 727
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 728
    const-string/jumbo v1, "rect"

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 730
    const-string/jumbo v1, "checksum"

    invoke-static {v2}, Ljes;->a([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 732
    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/megvii/livenessdetection/Detector;J)V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/megvii/livenessdetection/Detector;->waitNormal(J)V

    return-void
.end method

.method static synthetic a(Lcom/megvii/livenessdetection/Detector;Z)Z
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/megvii/livenessdetection/Detector;->i:Z

    return v0
.end method

.method static synthetic b(Lcom/megvii/livenessdetection/Detector;)J
    .locals 2

    .prologue
    .line 31
    iget-wide v0, p0, Lcom/megvii/livenessdetection/Detector;->b:J

    return-wide v0
.end method

.method static synthetic b(Lcom/megvii/livenessdetection/Detector;Z)Z
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/megvii/livenessdetection/Detector;->k:Z

    return v0
.end method

.method static synthetic c(Lcom/megvii/livenessdetection/Detector;)Lcom/megvii/livenessdetection/Detector$DetectionType;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/megvii/livenessdetection/Detector;->o:Lcom/megvii/livenessdetection/Detector$DetectionType;

    return-object v0
.end method

.method static synthetic d(Lcom/megvii/livenessdetection/Detector;)J
    .locals 2

    .prologue
    .line 31
    iget-wide v0, p0, Lcom/megvii/livenessdetection/Detector;->n:J

    return-wide v0
.end method

.method static synthetic e(Lcom/megvii/livenessdetection/Detector;)Lcom/megvii/livenessdetection/DetectionConfig;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/megvii/livenessdetection/Detector;->a:Lcom/megvii/livenessdetection/DetectionConfig;

    return-object v0
.end method

.method static synthetic f(Lcom/megvii/livenessdetection/Detector;)Z
    .locals 1

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/megvii/livenessdetection/Detector;->i:Z

    return v0
.end method

.method static synthetic g(Lcom/megvii/livenessdetection/Detector;)Lcom/megvii/livenessdetection/Detector$DetectionListener;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/megvii/livenessdetection/Detector;->h:Lcom/megvii/livenessdetection/Detector$DetectionListener;

    return-object v0
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 656
    :try_start_0
    invoke-static {}, Lcom/megvii/livenessdetection/Detector;->nativeGetVersion()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 659
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v0, "Could not read message from native method"

    goto :goto_0
.end method

.method static synthetic h(Lcom/megvii/livenessdetection/Detector;)Ljer;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/megvii/livenessdetection/Detector;->l:Ljer;

    return-object v0
.end method

.method static synthetic i(Lcom/megvii/livenessdetection/Detector;)Lcom/megvii/livenessdeteciton/obf/e;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/megvii/livenessdetection/Detector;->e:Lcom/megvii/livenessdeteciton/obf/e;

    return-object v0
.end method

.method static synthetic j(Lcom/megvii/livenessdetection/Detector;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/megvii/livenessdetection/Detector;->j:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic k(Lcom/megvii/livenessdetection/Detector;)Z
    .locals 1

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/megvii/livenessdetection/Detector;->k:Z

    return v0
.end method

.method static synthetic l(Lcom/megvii/livenessdetection/Detector;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/megvii/livenessdetection/Detector;->p:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic m(Lcom/megvii/livenessdetection/Detector;)Lcom/megvii/livenessdetection/impl/b;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/megvii/livenessdetection/Detector;->m:Lcom/megvii/livenessdetection/impl/b;

    return-object v0
.end method

.method private native nativeDetection(JI[BIII)Ljava/lang/String;
.end method

.method private native nativeEncode(J[B)Ljava/lang/String;
.end method

.method private native nativeFaceQuality(J[BII)Ljava/lang/String;
.end method

.method private static native nativeGetVersion()Ljava/lang/String;
.end method

.method private native nativeRawInit(Landroid/content/Context;[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
.end method

.method private native nativeRelease(J)V
.end method

.method private native nativeReset(J)V
.end method

.method private native waitNormal(J)V
.end method


# virtual methods
.method public declared-synchronized changeDetectionType(Lcom/megvii/livenessdetection/Detector$DetectionType;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 371
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/megvii/livenessdetection/Detector;->b:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 381
    :goto_0
    monitor-exit p0

    return-void

    .line 373
    :cond_0
    if-nez p1, :cond_1

    .line 374
    :try_start_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "DetectionType could not be null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 371
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 375
    :cond_1
    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Lcom/megvii/livenessdetection/Detector;->i:Z

    .line 376
    iput-object p1, p0, Lcom/megvii/livenessdetection/Detector;->o:Lcom/megvii/livenessdetection/Detector$DetectionType;

    .line 377
    iget-wide v0, p0, Lcom/megvii/livenessdetection/Detector;->b:J

    invoke-direct {p0, v0, v1}, Lcom/megvii/livenessdetection/Detector;->nativeReset(J)V

    .line 378
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/megvii/livenessdetection/Detector;->n:J

    .line 379
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/megvii/livenessdetection/Detector;->k:Z

    .line 380
    iget-object v0, p0, Lcom/megvii/livenessdetection/Detector;->l:Ljer;

    invoke-virtual {v0, p1}, Ljer;->a(Lcom/megvii/livenessdetection/Detector$DetectionType;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public doDetection([BIII)Z
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const-wide/16 v8, 0x0

    const/4 v1, 0x1

    const/4 v6, 0x0

    .line 233
    iget-wide v2, p0, Lcom/megvii/livenessdetection/Detector;->b:J

    cmp-long v0, v2, v8

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/megvii/livenessdetection/Detector;->h:Lcom/megvii/livenessdetection/Detector$DetectionListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/megvii/livenessdetection/Detector;->o:Lcom/megvii/livenessdetection/Detector$DetectionType;

    sget-object v2, Lcom/megvii/livenessdetection/Detector$DetectionType;->DONE:Lcom/megvii/livenessdetection/Detector$DetectionType;

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/megvii/livenessdetection/Detector;->o:Lcom/megvii/livenessdetection/Detector$DetectionType;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/megvii/livenessdetection/Detector;->i:Z

    if-eqz v0, :cond_3

    .line 235
    :cond_0
    const-string/jumbo v2, "detector inited:%b, detectionlistener is null:%b"

    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/Object;

    iget-wide v4, p0, Lcom/megvii/livenessdetection/Detector;->b:J

    cmp-long v0, v4, v8

    if-eqz v0, :cond_1

    move v0, v1

    .line 237
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v3, v6

    iget-object v0, p0, Lcom/megvii/livenessdetection/Detector;->h:Lcom/megvii/livenessdetection/Detector$DetectionListener;

    if-nez v0, :cond_2

    move v0, v1

    .line 238
    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v3, v1

    .line 235
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljeu;->a(Ljava/lang/String;)V

    .line 247
    :goto_2
    return v6

    :cond_1
    move v0, v6

    .line 235
    goto :goto_0

    :cond_2
    move v0, v6

    .line 237
    goto :goto_1

    .line 243
    :cond_3
    new-instance v0, Lcom/megvii/livenessdetection/impl/b;

    iget-object v5, p0, Lcom/megvii/livenessdetection/Detector;->o:Lcom/megvii/livenessdetection/Detector$DetectionType;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/megvii/livenessdetection/impl/b;-><init>([BIIILcom/megvii/livenessdetection/Detector$DetectionType;)V

    .line 245
    :try_start_0
    iget-object v1, p0, Lcom/megvii/livenessdetection/Detector;->f:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1, v0}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    goto :goto_2

    .line 247
    :catch_0
    move-exception v0

    goto :goto_2
.end method

.method public enableDebug(Z)V
    .locals 0

    .prologue
    .line 204
    if-eqz p1, :cond_0

    .line 205
    invoke-static {}, Ljeu;->a()V

    .line 209
    :goto_0
    return-void

    .line 207
    :cond_0
    invoke-static {}, Ljeu;->b()V

    goto :goto_0
.end method

.method public declared-synchronized faceQualityDetection(Landroid/graphics/Bitmap;)Lcom/megvii/livenessdetection/DetectionFrame;
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, -0x1

    .line 638
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/megvii/livenessdetection/impl/a;

    invoke-direct {v0, p1}, Lcom/megvii/livenessdetection/impl/a;-><init>(Landroid/graphics/Bitmap;)V

    .line 639
    invoke-virtual {v0}, Lcom/megvii/livenessdetection/impl/a;->a()[B

    move-result-object v4

    .line 640
    invoke-virtual {v0}, Lcom/megvii/livenessdetection/impl/a;->getImageWidth()I

    move-result v5

    .line 641
    invoke-virtual {v0}, Lcom/megvii/livenessdetection/impl/a;->getImageHeight()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    .line 642
    if-eqz v4, :cond_0

    if-eq v5, v1, :cond_0

    if-ne v6, v1, :cond_1

    .line 643
    :cond_0
    const/4 v0, 0x0

    .line 647
    :goto_0
    monitor-exit p0

    return-object v0

    .line 645
    :cond_1
    :try_start_1
    iget-wide v2, p0, Lcom/megvii/livenessdetection/Detector;->b:J

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/megvii/livenessdetection/Detector;->nativeFaceQuality(J[BII)Ljava/lang/String;

    move-result-object v1

    .line 646
    iget-object v2, p0, Lcom/megvii/livenessdetection/Detector;->a:Lcom/megvii/livenessdetection/DetectionConfig;

    new-instance v3, Ljes;

    invoke-direct {v3}, Ljes;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lcom/megvii/livenessdetection/impl/a;->a(Ljava/lang/String;Lcom/megvii/livenessdetection/DetectionConfig;Ljes;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 638
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getCurDetectType()Lcom/megvii/livenessdetection/Detector$DetectionType;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/megvii/livenessdetection/Detector;->o:Lcom/megvii/livenessdetection/Detector$DetectionType;

    return-object v0
.end method

.method public getFaceIDDataStruct()Lcom/megvii/livenessdetection/bean/FaceIDDataStruct;
    .locals 1

    .prologue
    .line 699
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/megvii/livenessdetection/Detector;->getFaceIDDataStruct(I)Lcom/megvii/livenessdetection/bean/FaceIDDataStruct;

    move-result-object v0

    return-object v0
.end method

.method public getFaceIDDataStruct(I)Lcom/megvii/livenessdetection/bean/FaceIDDataStruct;
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 668
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 669
    new-instance v1, Lcom/megvii/livenessdetection/bean/FaceIDDataStruct;

    invoke-direct {v1}, Lcom/megvii/livenessdetection/bean/FaceIDDataStruct;-><init>()V

    .line 670
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 671
    iget-object v5, p0, Lcom/megvii/livenessdetection/Detector;->m:Lcom/megvii/livenessdetection/impl/b;

    .line 672
    if-nez v5, :cond_0

    .line 673
    const/4 v0, 0x0

    .line 694
    :goto_0
    return-object v0

    .line 675
    :cond_0
    :try_start_0
    const-string/jumbo v2, "image_best"

    const-string/jumbo v6, "image_best"

    const/4 v7, 0x1

    invoke-static {v5, p1, v6, v1, v7}, Lcom/megvii/livenessdetection/Detector;->a(Lcom/megvii/livenessdetection/DetectionFrame;ILjava/lang/String;Lcom/megvii/livenessdetection/bean/FaceIDDataStruct;Z)Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v4, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move v2, v0

    .line 676
    :goto_1
    iget-object v0, p0, Lcom/megvii/livenessdetection/Detector;->p:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    .line 677
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "image_action"

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v6, v2, 0x1

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcom/megvii/livenessdetection/Detector;->p:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/megvii/livenessdetection/DetectionFrame;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "image_action"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v8, v2, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-static {v0, p1, v7, v1, v8}, Lcom/megvii/livenessdetection/Detector;->a(Lcom/megvii/livenessdetection/DetectionFrame;ILjava/lang/String;Lcom/megvii/livenessdetection/bean/FaceIDDataStruct;Z)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v4, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 676
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 680
    :cond_1
    const-string/jumbo v0, "image_env"

    const-string/jumbo v2, "image_env"

    const/4 v6, 0x0

    invoke-static {v5, p1, v2, v1, v6}, Lcom/megvii/livenessdetection/Detector;->a(Lcom/megvii/livenessdetection/DetectionFrame;ILjava/lang/String;Lcom/megvii/livenessdetection/bean/FaceIDDataStruct;Z)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v4, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 681
    const-string/jumbo v0, "images"

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 683
    const-string/jumbo v0, "datetime"

    .line 1052
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v4, "yyyyMMddHHmmss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 1053
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 683
    invoke-virtual {v3, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 684
    const-string/jumbo v0, "sdk_version"

    invoke-static {}, Lcom/megvii/livenessdetection/Detector;->getVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 686
    const-string/jumbo v0, "user_info"

    invoke-static {}, Ljes;->a()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v3, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 687
    const-string/jumbo v0, "log"

    invoke-virtual {p0}, Lcom/megvii/livenessdetection/Detector;->getLog()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 692
    :goto_2
    iget-wide v4, p0, Lcom/megvii/livenessdetection/Detector;->b:J

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-direct {p0, v4, v5, v0}, Lcom/megvii/livenessdetection/Detector;->nativeEncode(J[B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/megvii/livenessdetection/bean/FaceIDDataStruct;->delta:Ljava/lang/String;

    move-object v0, v1

    .line 694
    goto/16 :goto_0

    .line 690
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2
.end method

.method public getLog()Ljava/lang/String;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/megvii/livenessdetection/Detector;->l:Ljer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/megvii/livenessdetection/Detector;->l:Ljer;

    invoke-virtual {v0}, Ljer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public declared-synchronized getValidFrame()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/megvii/livenessdetection/DetectionFrame;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 417
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/megvii/livenessdetection/Detector;->p:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 418
    const/4 v0, 0x0

    .line 421
    :goto_0
    monitor-exit p0

    return-object v0

    .line 419
    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/megvii/livenessdetection/Detector;->p:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 420
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/megvii/livenessdetection/Detector;->m:Lcom/megvii/livenessdetection/impl/b;

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 417
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized init(Landroid/content/Context;[BLjava/lang/String;Ljava/lang/String;)I
    .locals 6

    .prologue
    .line 100
    monitor-enter p0

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    :try_start_0
    invoke-direct/range {v0 .. v5}, Lcom/megvii/livenessdetection/Detector;->a(Landroid/content/Context;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized init(Landroid/content/Context;[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 6

    .prologue
    .line 114
    monitor-enter p0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    :try_start_0
    invoke-direct/range {v0 .. v5}, Lcom/megvii/livenessdetection/Detector;->a(Landroid/content/Context;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized init(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6

    .prologue
    .line 91
    monitor-enter p0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    :try_start_0
    invoke-direct/range {v0 .. v5}, Lcom/megvii/livenessdetection/Detector;->a(Landroid/content/Context;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized init(Landroid/content/Context;[BLjava/lang/String;)Z
    .locals 6

    .prologue
    .line 95
    monitor-enter p0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    :try_start_0
    invoke-direct/range {v0 .. v5}, Lcom/megvii/livenessdetection/Detector;->a(Landroid/content/Context;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized release()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const-wide/16 v2, 0x0

    .line 178
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/megvii/livenessdetection/Detector;->g:Lcom/megvii/livenessdetection/Detector$a;

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/megvii/livenessdetection/Detector;->g:Lcom/megvii/livenessdetection/Detector$a;

    invoke-virtual {v0}, Lcom/megvii/livenessdetection/Detector$a;->interrupt()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    :try_start_1
    iget-object v0, p0, Lcom/megvii/livenessdetection/Detector;->g:Lcom/megvii/livenessdetection/Detector$a;

    invoke-virtual {v0}, Lcom/megvii/livenessdetection/Detector$a;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 186
    :goto_0
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/megvii/livenessdetection/Detector;->g:Lcom/megvii/livenessdetection/Detector$a;

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/megvii/livenessdetection/Detector;->f:Ljava/util/concurrent/BlockingQueue;

    if-eqz v0, :cond_1

    .line 190
    iget-object v0, p0, Lcom/megvii/livenessdetection/Detector;->f:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->clear()V

    .line 191
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/megvii/livenessdetection/Detector;->f:Ljava/util/concurrent/BlockingQueue;

    .line 193
    :cond_1
    iget-object v0, p0, Lcom/megvii/livenessdetection/Detector;->p:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 194
    iget-object v0, p0, Lcom/megvii/livenessdetection/Detector;->p:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 195
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/megvii/livenessdetection/Detector;->p:Ljava/util/ArrayList;

    .line 197
    :cond_2
    iget-wide v0, p0, Lcom/megvii/livenessdetection/Detector;->b:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    .line 198
    iget-wide v0, p0, Lcom/megvii/livenessdetection/Detector;->b:J

    invoke-direct {p0, v0, v1}, Lcom/megvii/livenessdetection/Detector;->nativeRelease(J)V

    .line 199
    :cond_3
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/megvii/livenessdetection/Detector;->b:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 201
    monitor-exit p0

    return-void

    .line 184
    :catch_0
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 178
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized reset()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 388
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/megvii/livenessdetection/Detector;->b:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 398
    :goto_0
    monitor-exit p0

    return-void

    .line 391
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    iput-object v0, p0, Lcom/megvii/livenessdetection/Detector;->m:Lcom/megvii/livenessdetection/impl/b;

    .line 392
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/megvii/livenessdetection/Detector;->p:Ljava/util/ArrayList;

    .line 393
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/megvii/livenessdetection/Detector;->i:Z

    .line 395
    sget-object v0, Lcom/megvii/livenessdetection/Detector$DetectionType;->NONE:Lcom/megvii/livenessdetection/Detector$DetectionType;

    invoke-virtual {p0, v0}, Lcom/megvii/livenessdetection/Detector;->changeDetectionType(Lcom/megvii/livenessdetection/Detector$DetectionType;)V

    .line 396
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/megvii/livenessdetection/Detector;->k:Z

    .line 397
    iget-object v0, p0, Lcom/megvii/livenessdetection/Detector;->l:Ljer;

    invoke-virtual {v0}, Ljer;->a()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 388
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized resetAction()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 401
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/megvii/livenessdetection/Detector;->b:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 407
    :goto_0
    monitor-exit p0

    return-void

    .line 404
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lcom/megvii/livenessdetection/Detector;->i:Z

    .line 405
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/megvii/livenessdetection/Detector;->k:Z

    .line 406
    iget-object v0, p0, Lcom/megvii/livenessdetection/Detector;->o:Lcom/megvii/livenessdetection/Detector$DetectionType;

    invoke-virtual {p0, v0}, Lcom/megvii/livenessdetection/Detector;->changeDetectionType(Lcom/megvii/livenessdetection/Detector$DetectionType;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 401
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setDetectionListener(Lcom/megvii/livenessdetection/Detector$DetectionListener;)V
    .locals 1

    .prologue
    .line 257
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/megvii/livenessdetection/Detector;->h:Lcom/megvii/livenessdetection/Detector$DetectionListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 258
    monitor-exit p0

    return-void

    .line 257
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
