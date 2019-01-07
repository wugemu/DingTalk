.class public Loz;
.super Ljava/lang/Object;
.source "TrackLoop.java"


# static fields
.field private static final i:Ljava/lang/String;


# instance fields
.field a:Low;

.field public b:Z

.field c:[Lcom/alibaba/dt/ar/core/dt/ar/core/android/TrackResult;

.field d:[F

.field e:Lgxa;

.field f:Ljava/lang/String;

.field g:Ljava/lang/String;

.field public h:Z

.field private j:Lcom/alibaba/dt/ar/core/ArJniWrapper;

.field private k:Z

.field private l:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Loz;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Loz;->i:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Low;Lcom/alibaba/dt/ar/core/ArJniWrapper;)V
    .locals 11
    .param p1, "render"    # Low;
    .param p2, "jniWrapper"    # Lcom/alibaba/dt/ar/core/ArJniWrapper;

    .prologue
    const/high16 v7, -0x40800000    # -1.0f

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-boolean v1, p0, Loz;->k:Z

    .line 43
    iput-boolean v1, p0, Loz;->b:Z

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Loz;->c:[Lcom/alibaba/dt/ar/core/dt/ar/core/android/TrackResult;

    .line 47
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Loz;->d:[F

    .line 51
    const-string/jumbo v0, ""

    iput-object v0, p0, Loz;->f:Ljava/lang/String;

    .line 52
    const-string/jumbo v0, ""

    iput-object v0, p0, Loz;->g:Ljava/lang/String;

    .line 54
    const/4 v0, 0x1

    iput-boolean v0, p0, Loz;->h:Z

    .line 55
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Loz;->l:J

    .line 58
    iput-object p1, p0, Loz;->a:Low;

    .line 59
    iput-object p2, p0, Loz;->j:Lcom/alibaba/dt/ar/core/ArJniWrapper;

    .line 61
    new-instance v0, Lgxa;

    .line 1277
    iget-object v3, p1, Low;->i:Lcom/alibaba/ailabs/ar/androidar/ArActivity;

    .line 61
    iget-object v3, v3, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->g:Lgxd;

    invoke-direct {v0, v3}, Lgxa;-><init>(Lgxd;)V

    iput-object v0, p0, Loz;->e:Lgxa;

    .line 63
    iget-object v0, p0, Loz;->d:[F

    move v3, v2

    move v4, v2

    move v5, v2

    move v6, v2

    move v8, v7

    move v9, v2

    move v10, v2

    invoke-static/range {v0 .. v10}, Landroid/opengl/Matrix;->setLookAtM([FIFFFFFFFFF)V

    .line 67
    return-void
.end method

.method static synthetic a(Loz;)Low;
    .locals 1
    .param p0, "x0"    # Loz;

    .prologue
    .line 35
    iget-object v0, p0, Loz;->a:Low;

    return-object v0
.end method

.method private a(I)V
    .locals 4
    .param p1, "trackNum"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 95
    if-lez p1, :cond_1

    .line 97
    const/4 v0, 0x0

    iput-boolean v0, p0, Loz;->h:Z

    .line 98
    iget-object v0, p0, Loz;->a:Low;

    .line 2277
    iget-object v0, v0, Low;->i:Lcom/alibaba/ailabs/ar/androidar/ArActivity;

    .line 98
    new-instance v1, Loz$1;

    invoke-direct {v1, p0}, Loz$1;-><init>(Loz;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 104
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Loz;->l:J

    .line 120
    :cond_0
    :goto_0
    return-void

    .line 107
    :cond_1
    iget-boolean v0, p0, Loz;->h:Z

    if-nez v0, :cond_0

    .line 108
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Loz;->l:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 109
    const/4 v0, 0x1

    iput-boolean v0, p0, Loz;->h:Z

    .line 110
    iget-object v0, p0, Loz;->a:Low;

    .line 3277
    iget-object v0, v0, Low;->i:Lcom/alibaba/ailabs/ar/androidar/ArActivity;

    .line 110
    new-instance v1, Loz$2;

    invoke-direct {v1, p0}, Loz$2;-><init>(Loz;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private b([Lcom/alibaba/dt/ar/core/dt/ar/core/android/TrackResult;)V
    .locals 20
    .param p1, "results"    # [Lcom/alibaba/dt/ar/core/dt/ar/core/android/TrackResult;

    .prologue
    .line 124
    const/4 v12, 0x0

    .line 125
    .local v12, "hasVideo":Z
    const/4 v11, 0x0

    .line 127
    .local v11, "hasAudio":Z
    const/4 v13, 0x0

    .line 128
    .local v13, "isTargetNameChange":Z
    move-object/from16 v0, p0

    iget-object v3, v0, Loz;->f:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Loz;->g:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 129
    const/4 v13, 0x1

    .line 131
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Loz;->f:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v3, v0, Loz;->g:Ljava/lang/String;

    .line 133
    if-eqz v13, :cond_4

    .line 134
    move-object/from16 v0, p0

    iget-object v3, v0, Loz;->j:Lcom/alibaba/dt/ar/core/ArJniWrapper;

    move-object/from16 v0, p0

    iget-object v4, v0, Loz;->a:Low;

    .line 3281
    iget-wide v4, v4, Low;->c:J

    .line 134
    invoke-virtual {v3, v4, v5}, Lcom/alibaba/dt/ar/core/ArJniWrapper;->onNativeGetCurrentAllObj(J)[Lcom/alibaba/dt/ar/core/dt/ar/core/android/ShowObject;

    move-result-object v2

    .line 135
    .local v2, "allObj":[Lcom/alibaba/dt/ar/core/dt/ar/core/android/ShowObject;
    move-object/from16 v0, p0

    iget-object v4, v0, Loz;->e:Lgxa;

    move-object/from16 v0, p0

    iget-object v3, v0, Loz;->f:Ljava/lang/String;

    .line 4043
    iget-object v5, v4, Lgxa;->b:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v5, 0x1

    if-gt v3, v5, :cond_4

    .line 4046
    :cond_1
    if-eqz v2, :cond_4

    .line 4049
    iget-object v3, v4, Lgxa;->a:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 4051
    array-length v5, v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v5, :cond_4

    aget-object v6, v2, v3

    .line 4052
    iget v7, v6, Lcom/alibaba/dt/ar/core/dt/ar/core/android/ShowObject;->mType:I

    if-eqz v7, :cond_2

    iget v7, v6, Lcom/alibaba/dt/ar/core/dt/ar/core/android/ShowObject;->mType:I

    const/4 v9, 0x2

    if-eq v7, v9, :cond_2

    iget v7, v6, Lcom/alibaba/dt/ar/core/dt/ar/core/android/ShowObject;->mType:I

    const/4 v9, 0x3

    if-eq v7, v9, :cond_2

    iget v7, v6, Lcom/alibaba/dt/ar/core/dt/ar/core/android/ShowObject;->mType:I

    const/4 v9, 0x4

    if-ne v7, v9, :cond_3

    .line 4056
    :cond_2
    new-instance v7, Lgxc;

    invoke-direct {v7}, Lgxc;-><init>()V

    .line 4058
    iget-object v9, v4, Lgxa;->c:Lgxd;

    iget-object v10, v6, Lcom/alibaba/dt/ar/core/dt/ar/core/android/ShowObject;->mImgUrl:Ljava/lang/String;

    .line 4122
    const/16 v19, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v9, v10, v7, v0}, Lgxf;->a(Ljava/lang/Object;Lgxc;Lgxf$d;)V

    .line 4059
    iget-object v9, v4, Lgxa;->a:Ljava/util/Map;

    iget-object v6, v6, Lcom/alibaba/dt/ar/core/dt/ar/core/android/ShowObject;->mName:Ljava/lang/String;

    invoke-interface {v9, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4051
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 139
    .end local v2    # "allObj":[Lcom/alibaba/dt/ar/core/dt/ar/core/android/ShowObject;
    :cond_4
    if-nez p1, :cond_b

    .line 140
    const/16 v18, 0x0

    .line 144
    .local v18, "trackNum":I
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v3, v0, Loz;->b:Z

    if-eqz v3, :cond_5

    .line 145
    move-object/from16 v0, p0

    iget-object v3, v0, Loz;->j:Lcom/alibaba/dt/ar/core/ArJniWrapper;

    move-object/from16 v0, p0

    iget-object v4, v0, Loz;->a:Low;

    .line 4281
    iget-wide v4, v4, Low;->c:J

    .line 145
    invoke-virtual {v3, v4, v5}, Lcom/alibaba/dt/ar/core/ArJniWrapper;->onNativeSetRescan(J)I

    .line 146
    move-object/from16 v0, p0

    iget-object v3, v0, Loz;->e:Lgxa;

    .line 5067
    iget-object v4, v3, Lgxa;->d:Ljava/util/Map;

    monitor-enter v4

    .line 5068
    :try_start_0
    iget-object v5, v3, Lgxa;->a:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->clear()V

    .line 5069
    const-string/jumbo v5, ""

    iput-object v5, v3, Lgxa;->b:Ljava/lang/String;

    .line 5070
    iget-object v3, v3, Lgxa;->d:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 5071
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    const-string/jumbo v3, ""

    move-object/from16 v0, p0

    iput-object v3, v0, Loz;->f:Ljava/lang/String;

    .line 148
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Loz;->b:Z

    .line 151
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Loz;->j:Lcom/alibaba/dt/ar/core/ArJniWrapper;

    move-object/from16 v0, p0

    iget-object v4, v0, Loz;->a:Low;

    .line 5281
    iget-wide v4, v4, Low;->c:J

    .line 151
    move/from16 v0, v18

    invoke-virtual {v3, v4, v5, v0}, Lcom/alibaba/dt/ar/core/ArJniWrapper;->onNativeGetCurrentShowObj(JI)[Lcom/alibaba/dt/ar/core/dt/ar/core/android/ShowObject;

    move-result-object v15

    .line 152
    .local v15, "showObj":[Lcom/alibaba/dt/ar/core/dt/ar/core/android/ShowObject;
    const/16 v16, 0x0

    .line 155
    .local v16, "showObjNum":I
    if-eqz v15, :cond_12

    .line 156
    array-length v0, v15

    move/from16 v16, v0

    .line 157
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Loz;->l:J

    .line 158
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "showObj size = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v4, v15

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 159
    const/4 v14, 0x0

    .local v14, "n":I
    :goto_2
    array-length v3, v15

    if-ge v14, v3, :cond_12

    .line 160
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "show: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v4, v15, v14

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 162
    aget-object v3, v15, v14

    iget v3, v3, Lcom/alibaba/dt/ar/core/dt/ar/core/android/ShowObject;->mType:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_c

    .line 164
    const/4 v12, 0x1

    .line 165
    move-object/from16 v0, p0

    iget-object v3, v0, Loz;->a:Low;

    .line 5285
    iget-object v4, v3, Low;->m:Loy;

    .line 165
    aget-object v3, v15, v14

    iget-object v3, v3, Lcom/alibaba/dt/ar/core/dt/ar/core/android/ShowObject;->mUrl:Ljava/lang/String;

    aget-object v5, v15, v14

    iget v5, v5, Lcom/alibaba/dt/ar/core/dt/ar/core/android/ShowObject;->mPlayAudio:I

    .line 6122
    iget-object v6, v4, Loy;->b:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 6126
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "real resetMediaPlayer : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6128
    iput-object v3, v4, Loy;->b:Ljava/lang/String;

    .line 6129
    iget-object v6, v4, Loy;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v6}, Landroid/media/MediaPlayer;->reset()V

    .line 6130
    const/4 v6, 0x0

    iput-boolean v6, v4, Loy;->f:Z

    .line 6132
    :try_start_1
    iget-object v6, v4, Loy;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v6, v3}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 6137
    iget-object v3, v4, Loy;->a:Landroid/media/MediaPlayer;

    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 6138
    if-nez v5, :cond_6

    .line 6139
    iget-object v3, v4, Loy;->a:Landroid/media/MediaPlayer;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 6140
    :cond_6
    iget-object v3, v4, Loy;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 6143
    new-instance v3, Landroid/graphics/SurfaceTexture;

    iget v5, v4, Loy;->c:I

    invoke-direct {v3, v5}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v3, v4, Loy;->d:Landroid/graphics/SurfaceTexture;

    .line 6144
    iget-object v3, v4, Loy;->d:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v3, v4}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 6145
    new-instance v3, Landroid/view/Surface;

    iget-object v5, v4, Loy;->d:Landroid/graphics/SurfaceTexture;

    invoke-direct {v3, v5}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 6146
    iget-object v5, v4, Loy;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v5, v3}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 6147
    invoke-virtual {v3}, Landroid/view/Surface;->release()V

    .line 6107
    :cond_7
    :goto_3
    iget-object v3, v4, Loy;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v3

    if-nez v3, :cond_8

    .line 6108
    iget-object v3, v4, Loy;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->start()V

    .line 6113
    :cond_8
    :try_start_2
    iget-object v3, v4, Loy;->d:Landroid/graphics/SurfaceTexture;

    if-eqz v3, :cond_9

    .line 6114
    iget-object v3, v4, Loy;->d:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v3}, Landroid/graphics/SurfaceTexture;->updateTexImage()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 167
    :cond_9
    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Loz;->a:Low;

    .line 6285
    iget-object v3, v3, Low;->m:Loy;

    .line 7163
    iget-boolean v3, v3, Loy;->f:Z

    .line 167
    if-eqz v3, :cond_a

    .line 168
    move-object/from16 v0, p0

    iget-object v3, v0, Loz;->j:Lcom/alibaba/dt/ar/core/ArJniWrapper;

    move-object/from16 v0, p0

    iget-object v4, v0, Loz;->a:Low;

    .line 7281
    iget-wide v4, v4, Low;->c:J

    .line 168
    move-object/from16 v0, p0

    iget-object v6, v0, Loz;->f:Ljava/lang/String;

    aget-object v7, v15, v14

    iget-object v7, v7, Lcom/alibaba/dt/ar/core/dt/ar/core/android/ShowObject;->mName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v9, v0, Loz;->a:Low;

    .line 7285
    iget-object v9, v9, Low;->m:Loy;

    .line 8091
    iget v8, v9, Loy;->c:I

    .line 169
    const/high16 v9, 0x42c80000    # 100.0f

    const/high16 v10, 0x42c80000    # 100.0f

    .line 168
    invoke-virtual/range {v3 .. v10}, Lcom/alibaba/dt/ar/core/ArJniWrapper;->onNativeUpdateVideoTexture(JLjava/lang/String;Ljava/lang/String;IFF)I

    .line 159
    :cond_a
    :goto_5
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_2

    .line 142
    .end local v14    # "n":I
    .end local v15    # "showObj":[Lcom/alibaba/dt/ar/core/dt/ar/core/android/ShowObject;
    .end local v16    # "showObjNum":I
    .end local v18    # "trackNum":I
    :cond_b
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v18, v0

    .restart local v18    # "trackNum":I
    goto/16 :goto_1

    .line 5071
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    .line 6133
    .restart local v14    # "n":I
    .restart local v15    # "showObj":[Lcom/alibaba/dt/ar/core/dt/ar/core/android/ShowObject;
    .restart local v16    # "showObjNum":I
    :catch_0
    move-exception v3

    .line 6134
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 172
    :cond_c
    aget-object v3, v15, v14

    iget v3, v3, Lcom/alibaba/dt/ar/core/dt/ar/core/android/ShowObject;->mType:I

    if-eqz v3, :cond_d

    aget-object v3, v15, v14

    iget v3, v3, Lcom/alibaba/dt/ar/core/dt/ar/core/android/ShowObject;->mType:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_d

    aget-object v3, v15, v14

    iget v3, v3, Lcom/alibaba/dt/ar/core/dt/ar/core/android/ShowObject;->mType:I

    const/4 v4, 0x4

    if-eq v3, v4, :cond_d

    aget-object v3, v15, v14

    iget v3, v3, Lcom/alibaba/dt/ar/core/dt/ar/core/android/ShowObject;->mType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_a

    .line 176
    :cond_d
    aget-object v3, v15, v14

    iget v3, v3, Lcom/alibaba/dt/ar/core/dt/ar/core/android/ShowObject;->mType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_f

    .line 177
    const/4 v11, 0x1

    .line 178
    move-object/from16 v0, p0

    iget-object v3, v0, Loz;->a:Low;

    .line 8292
    iget-object v4, v3, Low;->n:Lox;

    .line 178
    aget-object v3, v15, v14

    iget-object v3, v3, Lcom/alibaba/dt/ar/core/dt/ar/core/android/ShowObject;->mUrl:Ljava/lang/String;

    .line 9068
    iget-object v5, v4, Lox;->b:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_e

    .line 9072
    const/4 v5, 0x0

    iput-boolean v5, v4, Lox;->d:Z

    .line 9074
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "real resetMediaPlayer : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9076
    iput-object v3, v4, Lox;->b:Ljava/lang/String;

    .line 9077
    iget-object v5, v4, Lox;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v5}, Landroid/media/MediaPlayer;->reset()V

    .line 9079
    :try_start_4
    iget-object v5, v4, Lox;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v5, v3}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 9084
    iget-object v3, v4, Lox;->a:Landroid/media/MediaPlayer;

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 9086
    iget-object v3, v4, Lox;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 9058
    :cond_e
    :goto_6
    iget-boolean v3, v4, Lox;->d:Z

    if-nez v3, :cond_10

    iget-object v3, v4, Lox;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v3

    if-nez v3, :cond_10

    .line 9059
    iget-object v3, v4, Lox;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->start()V

    .line 181
    :cond_f
    :goto_7
    move-object/from16 v0, p0

    iget-object v3, v0, Loz;->e:Lgxa;

    aget-object v4, v15, v14

    iget-object v4, v4, Lcom/alibaba/dt/ar/core/dt/ar/core/android/ShowObject;->mName:Ljava/lang/String;

    .line 10075
    iget-object v5, v3, Lgxa;->a:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 10076
    iget-object v3, v3, Lgxa;->a:Ljava/util/Map;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgxc;

    .line 11014
    iget-object v3, v3, Lgxc;->a:Landroid/graphics/drawable/Drawable;

    .line 10077
    if-eqz v3, :cond_11

    .line 10080
    instance-of v4, v3, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v4, :cond_11

    .line 10082
    check-cast v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v8

    .line 182
    .local v8, "bitmap":Landroid/graphics/Bitmap;
    :goto_8
    if-eqz v8, :cond_a

    .line 183
    move-object/from16 v0, p0

    iget-object v3, v0, Loz;->j:Lcom/alibaba/dt/ar/core/ArJniWrapper;

    move-object/from16 v0, p0

    iget-object v4, v0, Loz;->a:Low;

    .line 11281
    iget-wide v4, v4, Low;->c:J

    .line 183
    move-object/from16 v0, p0

    iget-object v6, v0, Loz;->f:Ljava/lang/String;

    aget-object v7, v15, v14

    iget-object v7, v7, Lcom/alibaba/dt/ar/core/dt/ar/core/android/ShowObject;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/alibaba/dt/ar/core/ArJniWrapper;->onNativeGetImageTexture(JLjava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_a

    .line 185
    move-object/from16 v0, p0

    iget-object v3, v0, Loz;->j:Lcom/alibaba/dt/ar/core/ArJniWrapper;

    move-object/from16 v0, p0

    iget-object v4, v0, Loz;->a:Low;

    .line 12281
    iget-wide v4, v4, Low;->c:J

    .line 185
    move-object/from16 v0, p0

    iget-object v6, v0, Loz;->f:Ljava/lang/String;

    aget-object v7, v15, v14

    iget-object v7, v7, Lcom/alibaba/dt/ar/core/dt/ar/core/android/ShowObject;->mName:Ljava/lang/String;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    int-to-float v10, v10

    invoke-virtual/range {v3 .. v10}, Lcom/alibaba/dt/ar/core/ArJniWrapper;->onNativeUpdateImage(JLjava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;FF)I

    goto/16 :goto_5

    .line 9080
    .end local v8    # "bitmap":Landroid/graphics/Bitmap;
    :catch_1
    move-exception v3

    .line 9081
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 9062
    :cond_10
    iget-boolean v3, v4, Lox;->d:Z

    if-eqz v3, :cond_f

    iget-object v3, v4, Lox;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 9063
    invoke-virtual {v4}, Lox;->a()V

    goto :goto_7

    .line 10085
    :cond_11
    const/4 v8, 0x0

    goto :goto_8

    .line 193
    .end local v14    # "n":I
    :cond_12
    if-lez v16, :cond_17

    if-nez v18, :cond_17

    .line 194
    move-object/from16 v0, p0

    iget-object v3, v0, Loz;->a:Low;

    .line 13277
    iget-object v3, v3, Low;->i:Lcom/alibaba/ailabs/ar/androidar/ArActivity;

    .line 194
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->a(Z)V

    .line 201
    :goto_9
    if-nez p1, :cond_18

    .line 202
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Loz;->a(I)V

    .line 208
    :goto_a
    const/16 v17, 0x0

    .line 209
    .local v17, "stopTop":Z
    if-eqz v15, :cond_13

    .line 210
    if-nez p1, :cond_19

    .line 211
    const/16 v17, 0x1

    .line 216
    :cond_13
    :goto_b
    if-eqz v17, :cond_1a

    .line 217
    move-object/from16 v0, p0

    iget-object v3, v0, Loz;->j:Lcom/alibaba/dt/ar/core/ArJniWrapper;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/alibaba/dt/ar/core/ArJniWrapper;->setStopDetectRequest(Z)V

    .line 224
    :goto_c
    if-nez v12, :cond_14

    .line 225
    move-object/from16 v0, p0

    iget-object v3, v0, Loz;->a:Low;

    .line 14285
    iget-object v3, v3, Low;->m:Loy;

    .line 15152
    invoke-virtual {v3}, Loy;->a()V

    .line 15154
    const/4 v4, 0x1

    iput-boolean v4, v3, Loy;->e:Z

    .line 228
    :cond_14
    if-nez v11, :cond_15

    .line 229
    move-object/from16 v0, p0

    iget-object v3, v0, Loz;->a:Low;

    .line 15292
    iget-object v3, v3, Low;->n:Lox;

    .line 16091
    invoke-virtual {v3}, Lox;->a()V

    .line 16093
    const/4 v4, 0x1

    iput-boolean v4, v3, Lox;->c:Z

    .line 232
    :cond_15
    if-nez v16, :cond_16

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-wide v6, v0, Loz;->l:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x3a98

    cmp-long v3, v4, v6

    if-lez v3, :cond_16

    .line 234
    move-object/from16 v0, p0

    iget-object v3, v0, Loz;->a:Low;

    .line 16277
    iget-object v3, v3, Low;->i:Lcom/alibaba/ailabs/ar/androidar/ArActivity;

    .line 234
    new-instance v4, Loz$3;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Loz$3;-><init>(Loz;)V

    invoke-virtual {v3, v4}, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 242
    :cond_16
    return-void

    .line 197
    .end local v17    # "stopTop":Z
    :cond_17
    move-object/from16 v0, p0

    iget-object v3, v0, Loz;->a:Low;

    .line 14277
    iget-object v3, v3, Low;->i:Lcom/alibaba/ailabs/ar/androidar/ArActivity;

    .line 197
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->a(Z)V

    goto :goto_9

    .line 205
    :cond_18
    move-object/from16 v0, p1

    array-length v3, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Loz;->a(I)V

    goto :goto_a

    .line 212
    .restart local v17    # "stopTop":Z
    :cond_19
    move-object/from16 v0, p1

    array-length v3, v0

    if-nez v3, :cond_13

    .line 213
    const/16 v17, 0x1

    goto :goto_b

    .line 220
    :cond_1a
    move-object/from16 v0, p0

    iget-object v3, v0, Loz;->j:Lcom/alibaba/dt/ar/core/ArJniWrapper;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/alibaba/dt/ar/core/ArJniWrapper;->setStopDetectRequest(Z)V

    goto :goto_c

    .end local v17    # "stopTop":Z
    .restart local v14    # "n":I
    :catch_2
    move-exception v3

    goto/16 :goto_4
.end method


# virtual methods
.method public final a([Lcom/alibaba/dt/ar/core/dt/ar/core/android/TrackResult;)V
    .locals 10
    .param p1, "results"    # [Lcom/alibaba/dt/ar/core/dt/ar/core/android/TrackResult;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v9, 0x0

    .line 248
    if-eqz p1, :cond_3

    .line 249
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    array-length v1, p1

    if-ge v7, v1, :cond_4

    .line 252
    aget-object v1, p1, v7

    iget v1, v1, Lcom/alibaba/dt/ar/core/dt/ar/core/android/TrackResult;->active:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 254
    iget-object v1, p0, Loz;->e:Lgxa;

    aget-object v2, p1, v7

    iget-object v2, v2, Lcom/alibaba/dt/ar/core/dt/ar/core/android/TrackResult;->targetName:Ljava/lang/String;

    .line 17107
    iget-object v3, v1, Lgxa;->d:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 17109
    invoke-virtual {v1, v2}, Lgxa;->b(Ljava/lang/String;)V

    .line 256
    :cond_0
    iget-object v1, p0, Loz;->e:Lgxa;

    aget-object v2, p1, v7

    iget-object v2, v2, Lcom/alibaba/dt/ar/core/dt/ar/core/android/TrackResult;->targetName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lgxa;->a(Ljava/lang/String;)Lgwz;

    move-result-object v8

    .line 257
    .local v8, "targetBean":Lgwz;
    if-eqz v8, :cond_2

    .line 259
    iget-object v1, v8, Lgwz;->a:Lorg/json/JSONObject;

    if-eqz v1, :cond_2

    .line 262
    iget-object v1, p0, Loz;->j:Lcom/alibaba/dt/ar/core/ArJniWrapper;

    iget-object v2, p0, Loz;->a:Low;

    .line 17281
    iget-wide v2, v2, Low;->c:J

    .line 262
    aget-object v4, p1, v7

    iget-object v4, v4, Lcom/alibaba/dt/ar/core/dt/ar/core/android/TrackResult;->targetName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Lcom/alibaba/dt/ar/core/ArJniWrapper;->onNativeHasTarget(JLjava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    .line 263
    iget-object v1, p0, Loz;->j:Lcom/alibaba/dt/ar/core/ArJniWrapper;

    iget-object v2, p0, Loz;->a:Low;

    .line 18281
    iget-wide v2, v2, Low;->c:J

    .line 263
    aget-object v4, p1, v7

    iget-object v4, v4, Lcom/alibaba/dt/ar/core/dt/ar/core/android/TrackResult;->targetName:Ljava/lang/String;

    iget-object v5, v8, Lgwz;->a:Lorg/json/JSONObject;

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    aget-object v6, p1, v7

    iget v6, v6, Lcom/alibaba/dt/ar/core/dt/ar/core/android/TrackResult;->width:I

    int-to-float v6, v6

    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/dt/ar/core/ArJniWrapper;->onNativeSetTargetConfig(JLjava/lang/String;Ljava/lang/String;F)I

    .line 264
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "set target: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v8, Lgwz;->a:Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    :cond_1
    const/16 v1, 0x10

    new-array v0, v1, [F

    .line 268
    .local v0, "mvpMatrix":[F
    iget-object v2, p0, Loz;->d:[F

    aget-object v1, p1, v7

    iget-object v4, v1, Lcom/alibaba/dt/ar/core/dt/ar/core/android/TrackResult;->pose:[F

    move v1, v9

    move v3, v9

    move v5, v9

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 270
    iget-object v1, p0, Loz;->j:Lcom/alibaba/dt/ar/core/ArJniWrapper;

    iget-object v2, p0, Loz;->a:Low;

    .line 19281
    iget-wide v2, v2, Low;->c:J

    .line 270
    aget-object v4, p1, v7

    iget-object v4, v4, Lcom/alibaba/dt/ar/core/dt/ar/core/android/TrackResult;->targetName:Ljava/lang/String;

    aget-object v5, p1, v7

    iget-object v5, v5, Lcom/alibaba/dt/ar/core/dt/ar/core/android/TrackResult;->H:[F

    move-object v6, v0

    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/dt/ar/core/ArJniWrapper;->onNativeUpdateTrackResult(JLjava/lang/String;[F[F)I

    .line 273
    aget-object v1, p1, v7

    iget-object v1, v1, Lcom/alibaba/dt/ar/core/dt/ar/core/android/TrackResult;->targetName:Ljava/lang/String;

    iput-object v1, p0, Loz;->f:Ljava/lang/String;

    .line 275
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "targetName: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v2, p1, v7

    iget-object v2, v2, Lcom/alibaba/dt/ar/core/dt/ar/core/android/TrackResult;->targetName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    .end local v0    # "mvpMatrix":[F
    .end local v8    # "targetBean":Lgwz;
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 281
    .end local v7    # "i":I
    :cond_3
    iget-object v1, p0, Loz;->j:Lcom/alibaba/dt/ar/core/ArJniWrapper;

    iget-object v2, p0, Loz;->a:Low;

    .line 20281
    iget-wide v2, v2, Low;->c:J

    .line 281
    invoke-virtual {v1, v2, v3}, Lcom/alibaba/dt/ar/core/ArJniWrapper;->onNativeSetAllUnVisible(J)I

    .line 284
    :cond_4
    invoke-direct {p0, p1}, Loz;->b([Lcom/alibaba/dt/ar/core/dt/ar/core/android/TrackResult;)V

    .line 285
    return-void
.end method
