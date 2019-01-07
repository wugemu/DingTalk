.class public Lcom/taobao/media/MediaEncoderMgr;
.super Ljava/lang/Object;
.source "MediaEncoderMgr.java"


# static fields
.field private static _instance:Lcom/taobao/media/MediaEncoder;

.field private static isInited:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 173
    new-instance v0, Lcom/taobao/media/MediaEncoder;

    invoke-direct {v0}, Lcom/taobao/media/MediaEncoder;-><init>()V

    sput-object v0, Lcom/taobao/media/MediaEncoderMgr;->_instance:Lcom/taobao/media/MediaEncoder;

    .line 174
    const/4 v0, 0x0

    sput-boolean v0, Lcom/taobao/media/MediaEncoderMgr;->isInited:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static AacfileCopyToMp4(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p0, "in_mp4file"    # Ljava/lang/String;
    .param p1, "aacfile"    # Ljava/lang/String;
    .param p2, "out_mp4file"    # Ljava/lang/String;

    .prologue
    .line 113
    invoke-static {}, Lcom/taobao/media/MediaEncoderMgr;->getInstance()Lcom/taobao/media/MediaEncoder;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/taobao/media/MediaEncoder;->AacfileCopyToMp4(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static CancelTimeBackFilter()I
    .locals 1

    .prologue
    .line 121
    invoke-static {}, Lcom/taobao/media/MediaEncoderMgr;->getInstance()Lcom/taobao/media/MediaEncoder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/media/MediaEncoder;->CancelTimeBackFilter()I

    move-result v0

    return v0
.end method

.method public static CancelVideoSeekerAndRotation()I
    .locals 1

    .prologue
    .line 129
    invoke-static {}, Lcom/taobao/media/MediaEncoderMgr;->getInstance()Lcom/taobao/media/MediaEncoder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/media/MediaEncoder;->CancelVideoSeekerAndRotation()I

    move-result v0

    return v0
.end method

.method public static EncodeAudioFrame([BJJ)I
    .locals 7
    .param p0, "buf"    # [B
    .param p1, "samCount"    # J
    .param p3, "timestamp"    # J

    .prologue
    .line 86
    sget-boolean v0, Lcom/taobao/media/MediaEncoderMgr;->isInited:Z

    if-eqz v0, :cond_0

    .line 87
    invoke-static {}, Lcom/taobao/media/MediaEncoderMgr;->getInstance()Lcom/taobao/media/MediaEncoder;

    move-result-object v0

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/taobao/media/MediaEncoder;->EncodeAudioFrame([BJJ)I

    move-result v0

    .line 89
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static EncodeAudioFrameWithAACMusic(Ljava/lang/String;)I
    .locals 1
    .param p0, "aacfilename"    # Ljava/lang/String;

    .prologue
    .line 94
    sget-boolean v0, Lcom/taobao/media/MediaEncoderMgr;->isInited:Z

    if-eqz v0, :cond_0

    .line 95
    invoke-static {}, Lcom/taobao/media/MediaEncoderMgr;->getInstance()Lcom/taobao/media/MediaEncoder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/taobao/media/MediaEncoder;->EncodeAudioFrameWithAACMusic(Ljava/lang/String;)I

    move-result v0

    .line 97
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static EncodeAudioFrameWithMusicMixed(Ljava/lang/String;J)I
    .locals 1
    .param p0, "musicfilename"    # Ljava/lang/String;
    .param p1, "start_time_ms"    # J

    .prologue
    .line 101
    sget-boolean v0, Lcom/taobao/media/MediaEncoderMgr;->isInited:Z

    if-eqz v0, :cond_0

    .line 102
    invoke-static {}, Lcom/taobao/media/MediaEncoderMgr;->getInstance()Lcom/taobao/media/MediaEncoder;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/taobao/media/MediaEncoder;->EncodeAudioFrameWithMusicMixed(Ljava/lang/String;J)I

    move-result v0

    .line 104
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static EncodeVideoFrame([BJ)I
    .locals 1
    .param p0, "buf"    # [B
    .param p1, "timestamp"    # J

    .prologue
    .line 69
    sget-boolean v0, Lcom/taobao/media/MediaEncoderMgr;->isInited:Z

    if-eqz v0, :cond_0

    .line 70
    invoke-static {}, Lcom/taobao/media/MediaEncoderMgr;->getInstance()Lcom/taobao/media/MediaEncoder;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/taobao/media/MediaEncoder;->EncodeVideoFrame([BJ)I

    move-result v0

    .line 72
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static declared-synchronized Finish()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 162
    const-class v1, Lcom/taobao/media/MediaEncoderMgr;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/taobao/media/MediaEncoderMgr;->isInited:Z

    if-eqz v0, :cond_0

    .line 163
    const/4 v0, 0x0

    sput-boolean v0, Lcom/taobao/media/MediaEncoderMgr;->isInited:Z

    .line 164
    invoke-static {}, Lcom/taobao/media/MediaEncoderMgr;->getInstance()Lcom/taobao/media/MediaEncoder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/media/MediaEncoder;->Finish()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 166
    :cond_0
    monitor-exit v1

    return v2

    .line 162
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized Init(Ljava/lang/String;JJJIIII)I
    .locals 15
    .param p0, "filename"    # Ljava/lang/String;
    .param p1, "samRate"    # J
    .param p3, "channels"    # J
    .param p5, "bitsPerSample"    # J
    .param p7, "width"    # I
    .param p8, "height"    # I
    .param p9, "csp"    # I
    .param p10, "framerate"    # I

    .prologue
    .line 35
    const-class v13, Lcom/taobao/media/MediaEncoderMgr;

    monitor-enter v13

    :try_start_0
    invoke-static {}, Lcom/taobao/media/MediaEncoderMgr;->getInstance()Lcom/taobao/media/MediaEncoder;

    move-result-object v0

    move-object v1, p0

    move-wide/from16 v2, p1

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    invoke-virtual/range {v0 .. v11}, Lcom/taobao/media/MediaEncoder;->Init(Ljava/lang/String;JJJIIII)I

    move-result v12

    .line 36
    .local v12, "ret":I
    const/4 v0, 0x1

    sput-boolean v0, Lcom/taobao/media/MediaEncoderMgr;->isInited:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    monitor-exit v13

    return v12

    .line 35
    .end local v12    # "ret":I
    :catchall_0
    move-exception v0

    monitor-exit v13

    throw v0
.end method

.method public static declared-synchronized Init(Ljava/lang/String;JJJIIIII)I
    .locals 15
    .param p0, "filename"    # Ljava/lang/String;
    .param p1, "samRate"    # J
    .param p3, "channels"    # J
    .param p5, "bitsPerSample"    # J
    .param p7, "width"    # I
    .param p8, "height"    # I
    .param p9, "csp"    # I
    .param p10, "framerate"    # I
    .param p11, "quality"    # I

    .prologue
    .line 41
    const-class v14, Lcom/taobao/media/MediaEncoderMgr;

    monitor-enter v14

    :try_start_0
    invoke-static {}, Lcom/taobao/media/MediaEncoderMgr;->getInstance()Lcom/taobao/media/MediaEncoder;

    move-result-object v0

    move-object v1, p0

    move-wide/from16 v2, p1

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    invoke-virtual/range {v0 .. v12}, Lcom/taobao/media/MediaEncoder;->InitWithQuality(Ljava/lang/String;JJJIIIII)I

    move-result v13

    .line 42
    .local v13, "ret":I
    const/4 v0, 0x1

    sput-boolean v0, Lcom/taobao/media/MediaEncoderMgr;->isInited:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    monitor-exit v14

    return v13

    .line 41
    .end local v13    # "ret":I
    :catchall_0
    move-exception v0

    monitor-exit v14

    throw v0
.end method

.method public static declared-synchronized Init(Ljava/lang/String;JJJIIIIIZI)I
    .locals 17
    .param p0, "filename"    # Ljava/lang/String;
    .param p1, "samRate"    # J
    .param p3, "channels"    # J
    .param p5, "bitsPerSample"    # J
    .param p7, "width"    # I
    .param p8, "height"    # I
    .param p9, "csp"    # I
    .param p10, "framerate"    # I
    .param p11, "quality"    # I
    .param p12, "clipping"    # Z
    .param p13, "degree"    # I

    .prologue
    .line 47
    const-class v16, Lcom/taobao/media/MediaEncoderMgr;

    monitor-enter v16

    :try_start_0
    invoke-static {}, Lcom/taobao/media/MediaEncoderMgr;->getInstance()Lcom/taobao/media/MediaEncoder;

    move-result-object v0

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move/from16 v13, p12

    move/from16 v14, p13

    invoke-virtual/range {v0 .. v14}, Lcom/taobao/media/MediaEncoder;->InitWithClip(Ljava/lang/String;JJJIIIIIZI)I

    move-result v15

    .line 48
    .local v15, "ret":I
    const/4 v0, 0x1

    sput-boolean v0, Lcom/taobao/media/MediaEncoderMgr;->isInited:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    monitor-exit v16

    return v15

    .line 47
    .end local v15    # "ret":I
    :catchall_0
    move-exception v0

    monitor-exit v16

    throw v0
.end method

.method public static Init(Ljava/lang/String;JJJIIIIIZIIIIII)I
    .locals 21
    .param p0, "filename"    # Ljava/lang/String;
    .param p1, "samRate"    # J
    .param p3, "channels"    # J
    .param p5, "bitsPerSample"    # J
    .param p7, "width"    # I
    .param p8, "height"    # I
    .param p9, "csp"    # I
    .param p10, "framerate"    # I
    .param p11, "quality"    # I
    .param p12, "clipping"    # Z
    .param p13, "degree"    # I
    .param p14, "gop_size"    # I
    .param p15, "dst_str_x"    # I
    .param p16, "dst_str_y"    # I
    .param p17, "dst_width"    # I
    .param p18, "dst_height"    # I

    .prologue
    .line 54
    const-string/jumbo v0, "MediaEncoderMgr"

    const-string/jumbo v1, "Java Init 4 with resize and gop setting. "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    invoke-static {}, Lcom/taobao/media/MediaEncoderMgr;->getInstance()Lcom/taobao/media/MediaEncoder;

    move-result-object v0

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move/from16 v13, p12

    move/from16 v14, p13

    move/from16 v15, p14

    move/from16 v16, p15

    move/from16 v17, p16

    move/from16 v18, p17

    move/from16 v19, p18

    invoke-virtual/range {v0 .. v19}, Lcom/taobao/media/MediaEncoder;->InitWithClipAndDegreeAndResizeAndGop(Ljava/lang/String;JJJIIIIIZIIIIII)I

    move-result v20

    .line 56
    .local v20, "ret":I
    const/4 v0, 0x1

    sput-boolean v0, Lcom/taobao/media/MediaEncoderMgr;->isInited:Z

    .line 57
    return v20
.end method

.method public static InputSamples()J
    .locals 2

    .prologue
    .line 61
    invoke-static {}, Lcom/taobao/media/MediaEncoderMgr;->getInstance()Lcom/taobao/media/MediaEncoder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/media/MediaEncoder;->InputSamples()J

    move-result-wide v0

    return-wide v0
.end method

.method public static Mp4UpdateVideoSpeed(Ljava/lang/String;Ljava/lang/String;[J[J[F)I
    .locals 6
    .param p0, "in_mp4file"    # Ljava/lang/String;
    .param p1, "out_mp4file"    # Ljava/lang/String;
    .param p2, "start_time_us"    # [J
    .param p3, "end_time_us"    # [J
    .param p4, "speed"    # [F

    .prologue
    .line 133
    invoke-static {}, Lcom/taobao/media/MediaEncoderMgr;->getInstance()Lcom/taobao/media/MediaEncoder;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/taobao/media/MediaEncoder;->Mp4UpdateVideoSpeed(Ljava/lang/String;Ljava/lang/String;[J[J[F)I

    move-result v0

    return v0
.end method

.method public static OverAgainFilter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[J[J)J
    .locals 6
    .param p0, "root_path"    # Ljava/lang/String;
    .param p1, "in_mp4file"    # Ljava/lang/String;
    .param p2, "out_mp4file"    # Ljava/lang/String;
    .param p3, "start_time_us"    # [J
    .param p4, "end_time_us"    # [J

    .prologue
    .line 137
    invoke-static {}, Lcom/taobao/media/MediaEncoderMgr;->getInstance()Lcom/taobao/media/MediaEncoder;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/taobao/media/MediaEncoder;->OverAgainFilter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[J[J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static SetRealAudioSampleRate(I)I
    .locals 1
    .param p0, "real_sample_rate"    # I

    .prologue
    .line 65
    invoke-static {}, Lcom/taobao/media/MediaEncoderMgr;->getInstance()Lcom/taobao/media/MediaEncoder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/taobao/media/MediaEncoder;->SetRealAudioSampleRate(I)I

    move-result v0

    return v0
.end method

.method public static SetVideoWaterMark([BIIII)I
    .locals 6
    .param p0, "buf"    # [B
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 77
    const-string/jumbo v0, "MediaEncoderMgr"

    const-string/jumbo v1, "Java Video Frame to SetVideoWaterMark "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    sget-boolean v0, Lcom/taobao/media/MediaEncoderMgr;->isInited:Z

    if-eqz v0, :cond_0

    .line 79
    invoke-static {}, Lcom/taobao/media/MediaEncoderMgr;->getInstance()Lcom/taobao/media/MediaEncoder;

    move-result-object v0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/taobao/media/MediaEncoder;->SetVideoWaterMark([BIIII)I

    move-result v0

    .line 81
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static TimeBackFilter(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p0, "in_mp4file"    # Ljava/lang/String;
    .param p1, "out_mp4file"    # Ljava/lang/String;

    .prologue
    .line 117
    invoke-static {}, Lcom/taobao/media/MediaEncoderMgr;->getInstance()Lcom/taobao/media/MediaEncoder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/taobao/media/MediaEncoder;->TimeBackFilter(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static VideoSeekerAndRotationFilter(Ljava/lang/String;Ljava/lang/String;JJ)I
    .locals 8
    .param p0, "in_mp4file"    # Ljava/lang/String;
    .param p1, "out_mp4file"    # Ljava/lang/String;
    .param p2, "start_time_us"    # J
    .param p4, "end_time_us"    # J

    .prologue
    .line 125
    invoke-static {}, Lcom/taobao/media/MediaEncoderMgr;->getInstance()Lcom/taobao/media/MediaEncoder;

    move-result-object v1

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-virtual/range {v1 .. v7}, Lcom/taobao/media/MediaEncoder;->VideoSeekerAndRotationFilter(Ljava/lang/String;Ljava/lang/String;JJ)I

    move-result v0

    return v0
.end method

.method public static getInstance()Lcom/taobao/media/MediaEncoder;
    .locals 1

    .prologue
    .line 170
    sget-object v0, Lcom/taobao/media/MediaEncoderMgr;->_instance:Lcom/taobao/media/MediaEncoder;

    return-object v0
.end method

.method public static mergeMp4Files([Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p0, "input"    # [Ljava/lang/String;
    .param p1, "output"    # Ljava/lang/String;

    .prologue
    .line 109
    invoke-static {}, Lcom/taobao/media/MediaEncoderMgr;->getInstance()Lcom/taobao/media/MediaEncoder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/taobao/media/MediaEncoder;->mergeMp4Files([Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static reEncodeMp4Files_cancel(J)I
    .locals 2
    .param p0, "reEncodeHandle"    # J

    .prologue
    .line 152
    invoke-static {}, Lcom/taobao/media/MediaEncoderMgr;->getInstance()Lcom/taobao/media/MediaEncoder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/taobao/media/MediaEncoder;->reEncodeMp4FilesCancel(J)I

    move-result v0

    return v0
.end method

.method public static reEncodeMp4Files_createHandle([Ljava/lang/String;[Ljava/lang/String;DI)J
    .locals 8
    .param p0, "input"    # [Ljava/lang/String;
    .param p1, "output"    # [Ljava/lang/String;
    .param p2, "scaleFactor"    # D
    .param p4, "quality"    # I

    .prologue
    .line 144
    invoke-static {}, Lcom/taobao/media/MediaEncoderMgr;->getInstance()Lcom/taobao/media/MediaEncoder;

    move-result-object v1

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/taobao/media/MediaEncoder;->reEncodeMp4FilesCreateHandle([Ljava/lang/String;[Ljava/lang/String;DI)J

    move-result-wide v0

    return-wide v0
.end method

.method public static reEncodeMp4Files_finish(J)I
    .locals 2
    .param p0, "reEncodeHandle"    # J

    .prologue
    .line 156
    invoke-static {}, Lcom/taobao/media/MediaEncoderMgr;->getInstance()Lcom/taobao/media/MediaEncoder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/taobao/media/MediaEncoder;->reEncodeMp4FilesFinish(J)I

    move-result v0

    return v0
.end method

.method public static reEncodeMp4Files_start(J)I
    .locals 2
    .param p0, "reEncodeHandle"    # J

    .prologue
    .line 148
    invoke-static {}, Lcom/taobao/media/MediaEncoderMgr;->getInstance()Lcom/taobao/media/MediaEncoder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/taobao/media/MediaEncoder;->reEncodeMp4FilesStart(J)I

    move-result v0

    return v0
.end method
