.class public Lcom/taobao/taolive/AudioRecord2C;
.super Ljava/lang/Object;
.source "AudioRecord2C.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/taolive/AudioRecord2C$RecordThread;,
        Lcom/taobao/taolive/AudioRecord2C$ScoBroadcastReceiver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AudioRecord2C"


# instance fields
.field private audioEncoding:I

.field private audioManager_:Landroid/media/AudioManager;

.field private channelConfig:I

.field private mContext_:Landroid/content/Context;

.field private pointer_:J

.field private record_:Landroid/media/AudioRecord;

.field private record_buffer_:Ljava/nio/ByteBuffer;

.field private record_thd_:Ljava/lang/Thread;

.field private scoBroadcastReceiver:Lcom/taobao/taolive/AudioRecord2C$ScoBroadcastReceiver;

.field private started_:Z


# direct methods
.method public constructor <init>(J)V
    .locals 7
    .param p1, "pointer"    # J

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object v4, p0, Lcom/taobao/taolive/AudioRecord2C;->record_:Landroid/media/AudioRecord;

    .line 25
    const/16 v1, 0x10

    iput v1, p0, Lcom/taobao/taolive/AudioRecord2C;->channelConfig:I

    .line 26
    const/4 v1, 0x2

    iput v1, p0, Lcom/taobao/taolive/AudioRecord2C;->audioEncoding:I

    .line 27
    iput-object v4, p0, Lcom/taobao/taolive/AudioRecord2C;->record_buffer_:Ljava/nio/ByteBuffer;

    .line 28
    iput-object v4, p0, Lcom/taobao/taolive/AudioRecord2C;->record_thd_:Ljava/lang/Thread;

    .line 29
    iput-boolean v5, p0, Lcom/taobao/taolive/AudioRecord2C;->started_:Z

    .line 30
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/taobao/taolive/AudioRecord2C;->pointer_:J

    .line 31
    iput-object v4, p0, Lcom/taobao/taolive/AudioRecord2C;->mContext_:Landroid/content/Context;

    .line 33
    iput-object v4, p0, Lcom/taobao/taolive/AudioRecord2C;->audioManager_:Landroid/media/AudioManager;

    .line 35
    iput-object v4, p0, Lcom/taobao/taolive/AudioRecord2C;->scoBroadcastReceiver:Lcom/taobao/taolive/AudioRecord2C$ScoBroadcastReceiver;

    .line 38
    iput-wide p1, p0, Lcom/taobao/taolive/AudioRecord2C;->pointer_:J

    .line 39
    const-string/jumbo v1, "AudioRecord2C"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "checkIsBluetoothConnected: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/taobao/taolive/AudioRecord2C;->checkIsBluetoothConnected()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/taobao/living/utils/TBLSLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 40
    invoke-static {}, Lcom/taobao/taolive/TaoLive;->getGlobalContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/taobao/taolive/AudioRecord2C;->mContext_:Landroid/content/Context;

    .line 41
    iget-object v1, p0, Lcom/taobao/taolive/AudioRecord2C;->mContext_:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 43
    :try_start_0
    new-instance v1, Lcom/taobao/taolive/AudioRecord2C$ScoBroadcastReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/taobao/taolive/AudioRecord2C$ScoBroadcastReceiver;-><init>(Lcom/taobao/taolive/AudioRecord2C;Lcom/taobao/taolive/AudioRecord2C$1;)V

    iput-object v1, p0, Lcom/taobao/taolive/AudioRecord2C;->scoBroadcastReceiver:Lcom/taobao/taolive/AudioRecord2C$ScoBroadcastReceiver;

    .line 44
    iget-object v1, p0, Lcom/taobao/taolive/AudioRecord2C;->mContext_:Landroid/content/Context;

    const-string/jumbo v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/taobao/taolive/AudioRecord2C;->audioManager_:Landroid/media/AudioManager;

    .line 45
    iget-object v1, p0, Lcom/taobao/taolive/AudioRecord2C;->audioManager_:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->isBluetoothScoAvailableOffCall()Z

    move-result v1

    if-nez v1, :cond_1

    .line 46
    const-string/jumbo v1, "AudioRecord2C"

    const-string/jumbo v2, "isBluetoothScoAvailableOffCall: not support"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/taobao/living/utils/TBLSLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 47
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/taobao/taolive/AudioRecord2C;->scoBroadcastReceiver:Lcom/taobao/taolive/AudioRecord2C$ScoBroadcastReceiver;

    .line 48
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/taobao/taolive/AudioRecord2C;->audioManager_:Landroid/media/AudioManager;

    .line 58
    :cond_0
    :goto_0
    return-void

    .line 50
    :cond_1
    iget-object v1, p0, Lcom/taobao/taolive/AudioRecord2C;->audioManager_:Landroid/media/AudioManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setMode(I)V

    .line 51
    iget-object v1, p0, Lcom/taobao/taolive/AudioRecord2C;->audioManager_:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->startBluetoothSco()V

    .line 52
    iget-object v1, p0, Lcom/taobao/taolive/AudioRecord2C;->audioManager_:Landroid/media/AudioManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setBluetoothScoOn(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 54
    :catch_0
    move-exception v0

    .line 55
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/taobao/taolive/AudioRecord2C;)Landroid/media/AudioManager;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/taolive/AudioRecord2C;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/taobao/taolive/AudioRecord2C;->audioManager_:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/taobao/taolive/AudioRecord2C;)Z
    .locals 1
    .param p0, "x0"    # Lcom/taobao/taolive/AudioRecord2C;

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/taobao/taolive/AudioRecord2C;->started_:Z

    return v0
.end method

.method static synthetic access$202(Lcom/taobao/taolive/AudioRecord2C;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/taobao/taolive/AudioRecord2C;
    .param p1, "x1"    # Z

    .prologue
    .line 22
    iput-boolean p1, p0, Lcom/taobao/taolive/AudioRecord2C;->started_:Z

    return p1
.end method

.method static synthetic access$300(Lcom/taobao/taolive/AudioRecord2C;)Ljava/nio/ByteBuffer;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/taolive/AudioRecord2C;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/taobao/taolive/AudioRecord2C;->record_buffer_:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method static synthetic access$400(Lcom/taobao/taolive/AudioRecord2C;)Landroid/media/AudioRecord;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/taolive/AudioRecord2C;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/taobao/taolive/AudioRecord2C;->record_:Landroid/media/AudioRecord;

    return-object v0
.end method

.method static synthetic access$500(Lcom/taobao/taolive/AudioRecord2C;)J
    .locals 2
    .param p0, "x0"    # Lcom/taobao/taolive/AudioRecord2C;

    .prologue
    .line 22
    iget-wide v0, p0, Lcom/taobao/taolive/AudioRecord2C;->pointer_:J

    return-wide v0
.end method

.method static synthetic access$600(Lcom/taobao/taolive/AudioRecord2C;Ljava/nio/ByteBuffer;IJ)V
    .locals 1
    .param p0, "x0"    # Lcom/taobao/taolive/AudioRecord2C;
    .param p1, "x1"    # Ljava/nio/ByteBuffer;
    .param p2, "x2"    # I
    .param p3, "x3"    # J

    .prologue
    .line 22
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/taobao/taolive/AudioRecord2C;->onAudioFrame(Ljava/nio/ByteBuffer;IJ)V

    return-void
.end method

.method private checkIsBluetoothConnected()Z
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x1

    .line 61
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 62
    .local v0, "ba":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 64
    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->getProfileConnectionState(I)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 68
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private native onAudioFrame(Ljava/nio/ByteBuffer;IJ)V
.end method


# virtual methods
.method public close()I
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 102
    const-string/jumbo v0, "AudioRecord2C"

    const-string/jumbo v1, "close audio"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/living/utils/TBLSLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 103
    const-class v1, Lcom/taobao/taolive/AudioRecord2C;

    monitor-enter v1

    .line 104
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/taobao/taolive/AudioRecord2C;->record_:Landroid/media/AudioRecord;

    .line 105
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/taobao/taolive/AudioRecord2C;->record_buffer_:Ljava/nio/ByteBuffer;

    .line 106
    iget-object v0, p0, Lcom/taobao/taolive/AudioRecord2C;->mContext_:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/taobao/taolive/AudioRecord2C;->mContext_:Landroid/content/Context;

    iget-object v2, p0, Lcom/taobao/taolive/AudioRecord2C;->scoBroadcastReceiver:Lcom/taobao/taolive/AudioRecord2C$ScoBroadcastReceiver;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 108
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/taobao/taolive/AudioRecord2C;->scoBroadcastReceiver:Lcom/taobao/taolive/AudioRecord2C$ScoBroadcastReceiver;

    .line 109
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/taobao/taolive/AudioRecord2C;->mContext_:Landroid/content/Context;

    .line 111
    :cond_0
    monitor-exit v1

    .line 112
    return v3

    .line 111
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public open(III)I
    .locals 9
    .param p1, "freq"    # I
    .param p2, "channels"    # I
    .param p3, "sample_bytes"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v7, 0x0

    .line 72
    const-string/jumbo v0, "AudioRecord2C"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "open audio, freq: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", channels: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/living/utils/TBLSLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 73
    const-class v8, Lcom/taobao/taolive/AudioRecord2C;

    monitor-enter v8

    .line 74
    :try_start_0
    iget-object v0, p0, Lcom/taobao/taolive/AudioRecord2C;->mContext_:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 75
    new-instance v6, Landroid/content/IntentFilter;

    const-string/jumbo v0, "android.bluetooth.headset.profile.action.AUDIO_STATE_CHANGED"

    invoke-direct {v6, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 76
    .local v6, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 77
    const-string/jumbo v0, "android.media.SCO_AUDIO_STATE_CHANGED"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 78
    const-string/jumbo v0, "android.media.ACTION_SCO_AUDIO_STATE_UPDATED"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lcom/taobao/taolive/AudioRecord2C;->mContext_:Landroid/content/Context;

    iget-object v1, p0, Lcom/taobao/taolive/AudioRecord2C;->scoBroadcastReceiver:Lcom/taobao/taolive/AudioRecord2C$ScoBroadcastReceiver;

    invoke-virtual {v0, v1, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 81
    .end local v6    # "intentFilter":Landroid/content/IntentFilter;
    :cond_0
    if-ne p2, v3, :cond_3

    .line 82
    const/16 v0, 0x10

    iput v0, p0, Lcom/taobao/taolive/AudioRecord2C;->channelConfig:I

    .line 85
    :cond_1
    :goto_0
    if-ne p3, v4, :cond_4

    .line 86
    const/4 v0, 0x2

    iput v0, p0, Lcom/taobao/taolive/AudioRecord2C;->audioEncoding:I

    .line 89
    :cond_2
    :goto_1
    iget v0, p0, Lcom/taobao/taolive/AudioRecord2C;->channelConfig:I

    iget v1, p0, Lcom/taobao/taolive/AudioRecord2C;->audioEncoding:I

    invoke-static {p1, v0, v1}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v5

    .line 90
    .local v5, "record_buf_size":I
    const-string/jumbo v0, "AudioRecord2C"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "record_buf_size: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/living/utils/TBLSLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 91
    new-instance v0, Landroid/media/AudioRecord;

    const/4 v1, 0x1

    iget v3, p0, Lcom/taobao/taolive/AudioRecord2C;->channelConfig:I

    iget v4, p0, Lcom/taobao/taolive/AudioRecord2C;->audioEncoding:I

    move v2, p1

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v0, p0, Lcom/taobao/taolive/AudioRecord2C;->record_:Landroid/media/AudioRecord;

    .line 93
    iget-object v0, p0, Lcom/taobao/taolive/AudioRecord2C;->record_:Landroid/media/AudioRecord;

    if-nez v0, :cond_5

    .line 94
    const/4 v0, -0x1

    monitor-exit v8

    .line 98
    :goto_2
    return v0

    .line 83
    .end local v5    # "record_buf_size":I
    :cond_3
    if-ne p2, v4, :cond_1

    .line 84
    const/16 v0, 0xc

    iput v0, p0, Lcom/taobao/taolive/AudioRecord2C;->channelConfig:I

    goto :goto_0

    .line 97
    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 87
    :cond_4
    if-ne p3, v3, :cond_2

    .line 88
    const/4 v0, 0x3

    :try_start_1
    iput v0, p0, Lcom/taobao/taolive/AudioRecord2C;->audioEncoding:I

    goto :goto_1

    .line 96
    .restart local v5    # "record_buf_size":I
    :cond_5
    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/taolive/AudioRecord2C;->record_buffer_:Ljava/nio/ByteBuffer;

    .line 97
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v7

    .line 98
    goto :goto_2
.end method

.method public start()I
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 116
    const-class v2, Lcom/taobao/taolive/AudioRecord2C;

    monitor-enter v2

    .line 117
    :try_start_0
    iget-boolean v1, p0, Lcom/taobao/taolive/AudioRecord2C;->started_:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/taobao/taolive/AudioRecord2C;->record_:Landroid/media/AudioRecord;

    if-eqz v1, :cond_0

    .line 118
    const-string/jumbo v1, "AudioRecord2C"

    const-string/jumbo v3, "start audio"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v3, v4}, Lcom/taobao/living/utils/TBLSLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    :try_start_1
    iget-object v1, p0, Lcom/taobao/taolive/AudioRecord2C;->record_:Landroid/media/AudioRecord;

    invoke-virtual {v1}, Landroid/media/AudioRecord;->startRecording()V

    .line 121
    new-instance v1, Lcom/taobao/taolive/AudioRecord2C$RecordThread;

    invoke-direct {v1, p0}, Lcom/taobao/taolive/AudioRecord2C$RecordThread;-><init>(Lcom/taobao/taolive/AudioRecord2C;)V

    iput-object v1, p0, Lcom/taobao/taolive/AudioRecord2C;->record_thd_:Ljava/lang/Thread;

    .line 122
    iget-object v1, p0, Lcom/taobao/taolive/AudioRecord2C;->record_thd_:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 127
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v2

    .line 128
    return v5

    .line 123
    :catch_0
    move-exception v0

    .line 124
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    .line 127
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public stop()I
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 132
    const-class v2, Lcom/taobao/taolive/AudioRecord2C;

    monitor-enter v2

    .line 133
    :try_start_0
    iget-boolean v1, p0, Lcom/taobao/taolive/AudioRecord2C;->started_:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/taobao/taolive/AudioRecord2C;->record_:Landroid/media/AudioRecord;

    if-eqz v1, :cond_1

    .line 134
    const-string/jumbo v1, "AudioRecord2C"

    const-string/jumbo v3, "stop audio"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v3, v4}, Lcom/taobao/living/utils/TBLSLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 135
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/taobao/taolive/AudioRecord2C;->started_:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    :try_start_1
    iget-object v1, p0, Lcom/taobao/taolive/AudioRecord2C;->audioManager_:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->isBluetoothScoOn()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 138
    iget-object v1, p0, Lcom/taobao/taolive/AudioRecord2C;->audioManager_:Landroid/media/AudioManager;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/media/AudioManager;->setBluetoothScoOn(Z)V

    .line 139
    iget-object v1, p0, Lcom/taobao/taolive/AudioRecord2C;->audioManager_:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->stopBluetoothSco()V

    .line 141
    :cond_0
    iget-object v1, p0, Lcom/taobao/taolive/AudioRecord2C;->record_:Landroid/media/AudioRecord;

    invoke-virtual {v1}, Landroid/media/AudioRecord;->stop()V

    .line 142
    iget-object v1, p0, Lcom/taobao/taolive/AudioRecord2C;->record_thd_:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 147
    :cond_1
    :goto_0
    :try_start_2
    monitor-exit v2

    .line 148
    return v5

    .line 143
    :catch_0
    move-exception v0

    .line 144
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 147
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
