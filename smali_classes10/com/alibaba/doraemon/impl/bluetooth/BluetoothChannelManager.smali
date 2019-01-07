.class public Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannelManager;
.super Ljava/lang/Object;
.source "BluetoothChannelManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannelManager$BluetoothClientRef;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BluetoothChannelManager"

.field private static sBluetoothChannelManager:Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannelManager;


# instance fields
.field private mClientChannel:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannelManager$BluetoothClientRef;",
            ">;>;"
        }
    .end annotation
.end field

.field private mServerChannel:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannelManager;->mClientChannel:Ljava/util/Map;

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannelManager;->mServerChannel:Ljava/util/Map;

    .line 196
    return-void
.end method

.method public static getInstance()Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannelManager;
    .locals 2

    .prologue
    .line 26
    sget-object v0, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannelManager;->sBluetoothChannelManager:Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannelManager;

    if-nez v0, :cond_1

    .line 27
    const-class v1, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannelManager;

    monitor-enter v1

    .line 28
    :try_start_0
    sget-object v0, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannelManager;->sBluetoothChannelManager:Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannelManager;

    if-nez v0, :cond_0

    .line 29
    new-instance v0, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannelManager;

    invoke-direct {v0}, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannelManager;-><init>()V

    sput-object v0, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannelManager;->sBluetoothChannelManager:Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannelManager;

    .line 30
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    :cond_1
    sget-object v0, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannelManager;->sBluetoothChannelManager:Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannelManager;

    return-object v0

    .line 30
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public declared-synchronized createClientChannel(Landroid/bluetooth/BluetoothDevice;Ljava/util/UUID;Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannel$Listener;Z)Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannel;
    .locals 7
    .param p1, "bluetoothDevice"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "uuid"    # Ljava/util/UUID;
    .param p3, "listener"    # Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannel$Listener;
    .param p4, "isBle"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 110
    monitor-enter p0

    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "MAC_"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 111
    .local v2, "bluetoothKey":Ljava/lang/String;
    iget-object v4, p0, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannelManager;->mClientChannel:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 112
    iget-object v4, p0, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannelManager;->mClientChannel:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 113
    .local v1, "bluetoothChannelMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannelManager$BluetoothClientRef;>;"
    invoke-virtual {p2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 114
    invoke-virtual {p2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannelManager$BluetoothClientRef;

    .line 115
    .local v3, "channelRef":Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannelManager$BluetoothClientRef;
    iget-object v4, v3, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannelManager$BluetoothClientRef;->mChannel:Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannel;

    invoke-interface {v4, p3}, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannel;->addEventListener(Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannel$Listener;)V

    .line 116
    iget v4, v3, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannelManager$BluetoothClientRef;->mRef:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannelManager$BluetoothClientRef;->mRef:I

    .line 117
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getDebugMode()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 118
    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "get channel "

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v2, v4, v5

    const/4 v5, 0x2

    const-string/jumbo v6, "@"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    aput-object p2, v4, v5

    const/4 v5, 0x4

    const-string/jumbo v6, " ref "

    aput-object v6, v4, v5

    const/4 v5, 0x5

    iget v6, v3, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannelManager$BluetoothClientRef;->mRef:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v4}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    .line 120
    :cond_0
    iget-object v0, v3, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannelManager$BluetoothClientRef;->mChannel:Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    :goto_0
    monitor-exit p0

    return-object v0

    .line 124
    .end local v1    # "bluetoothChannelMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannelManager$BluetoothClientRef;>;"
    .end local v3    # "channelRef":Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannelManager$BluetoothClientRef;
    :cond_1
    if-eqz p4, :cond_4

    .line 125
    :try_start_1
    new-instance v0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;

    invoke-direct {v0, p3, p1, p2}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;-><init>(Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannel$Listener;Landroid/bluetooth/BluetoothDevice;Ljava/util/UUID;)V

    .line 128
    .local v0, "bluetoothChannel":Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannel;
    :goto_1
    invoke-interface {v0}, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannel;->findAndConnectDevice()V

    .line 130
    new-instance v3, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannelManager$BluetoothClientRef;

    invoke-direct {v3, p0}, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannelManager$BluetoothClientRef;-><init>(Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannelManager;)V

    .line 131
    .restart local v3    # "channelRef":Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannelManager$BluetoothClientRef;
    iput-object v0, v3, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannelManager$BluetoothClientRef;->mChannel:Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannel;

    .line 132
    iget v4, v3, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannelManager$BluetoothClientRef;->mRef:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannelManager$BluetoothClientRef;->mRef:I

    .line 134
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getDebugMode()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 135
    const/16 v4, 0x8

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "create channel "

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v2, v4, v5

    const/4 v5, 0x2

    const-string/jumbo v6, "@"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    aput-object p2, v4, v5

    const/4 v5, 0x4

    const-string/jumbo v6, " ref "

    aput-object v6, v4, v5

    const/4 v5, 0x5

    iget v6, v3, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannelManager$BluetoothClientRef;->mRef:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x6

    const-string/jumbo v6, "ble "

    aput-object v6, v4, v5

    const/4 v5, 0x7

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v4}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    .line 138
    :cond_2
    iget-object v4, p0, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannelManager;->mClientChannel:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 139
    .restart local v1    # "bluetoothChannelMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannelManager$BluetoothClientRef;>;"
    if-nez v1, :cond_3

    .line 140
    new-instance v1, Ljava/util/HashMap;

    .end local v1    # "bluetoothChannelMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannelManager$BluetoothClientRef;>;"
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 141
    .restart local v1    # "bluetoothChannelMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannelManager$BluetoothClientRef;>;"
    iget-object v4, p0, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannelManager;->mClientChannel:Ljava/util/Map;

    invoke-interface {v4, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    :cond_3
    invoke-virtual {p2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 110
    .end local v0    # "bluetoothChannel":Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannel;
    .end local v1    # "bluetoothChannelMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannelManager$BluetoothClientRef;>;"
    .end local v2    # "bluetoothKey":Ljava/lang/String;
    .end local v3    # "channelRef":Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannelManager$BluetoothClientRef;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 127
    .restart local v2    # "bluetoothKey":Ljava/lang/String;
    :cond_4
    :try_start_2
    new-instance v0, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;

    invoke-direct {v0, p3, p1, p2}, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;-><init>(Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannel$Listener;Landroid/bluetooth/BluetoothDevice;Ljava/util/UUID;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .restart local v0    # "bluetoothChannel":Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannel;
    goto :goto_1
.end method

.method public declared-synchronized createClientChannel(Ljava/lang/String;Ljava/util/UUID;Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannel$Listener;Ljava/lang/String;Z)Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannel;
    .locals 7
    .param p1, "bluetoothIdentify"    # Ljava/lang/String;
    .param p2, "uuid"    # Ljava/util/UUID;
    .param p3, "listener"    # Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannel$Listener;
    .param p4, "identifyType"    # Ljava/lang/String;
    .param p5, "isBle"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 68
    monitor-enter p0

    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 69
    .local v2, "bluetoothKey":Ljava/lang/String;
    iget-object v4, p0, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannelManager;->mClientChannel:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 70
    iget-object v4, p0, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannelManager;->mClientChannel:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 71
    .local v1, "bluetoothChannelMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannelManager$BluetoothClientRef;>;"
    invoke-virtual {p2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 72
    invoke-virtual {p2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannelManager$BluetoothClientRef;

    .line 73
    .local v3, "channelRef":Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannelManager$BluetoothClientRef;
    iget-object v4, v3, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannelManager$BluetoothClientRef;->mChannel:Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannel;

    invoke-interface {v4, p3}, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannel;->addEventListener(Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannel$Listener;)V

    .line 74
    iget v4, v3, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannelManager$BluetoothClientRef;->mRef:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannelManager$BluetoothClientRef;->mRef:I

    .line 75
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getDebugMode()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 76
    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "get channel "

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v2, v4, v5

    const/4 v5, 0x2

    const-string/jumbo v6, "@"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    aput-object p2, v4, v5

    const/4 v5, 0x4

    const-string/jumbo v6, " ref "

    aput-object v6, v4, v5

    const/4 v5, 0x5

    iget v6, v3, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannelManager$BluetoothClientRef;->mRef:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v4}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    .line 78
    :cond_0
    iget-object v0, v3, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannelManager$BluetoothClientRef;->mChannel:Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    :goto_0
    monitor-exit p0

    return-object v0

    .line 82
    .end local v1    # "bluetoothChannelMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannelManager$BluetoothClientRef;>;"
    .end local v3    # "channelRef":Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannelManager$BluetoothClientRef;
    :cond_1
    if-eqz p5, :cond_4

    .line 83
    :try_start_1
    new-instance v0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;

    invoke-direct {v0, p3, p1, p2}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;-><init>(Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannel$Listener;Ljava/lang/String;Ljava/util/UUID;)V

    .line 87
    .local v0, "bluetoothChannel":Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannel;
    :goto_1
    invoke-interface {v0}, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannel;->findAndConnectDevice()V

    .line 89
    new-instance v3, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannelManager$BluetoothClientRef;

    invoke-direct {v3, p0}, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannelManager$BluetoothClientRef;-><init>(Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannelManager;)V

    .line 90
    .restart local v3    # "channelRef":Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannelManager$BluetoothClientRef;
    iput-object v0, v3, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannelManager$BluetoothClientRef;->mChannel:Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannel;

    .line 91
    iget v4, v3, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannelManager$BluetoothClientRef;->mRef:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannelManager$BluetoothClientRef;->mRef:I

    .line 93
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getDebugMode()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 94
    const/16 v4, 0x8

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "create channel "

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v2, v4, v5

    const/4 v5, 0x2

    const-string/jumbo v6, "@"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    aput-object p2, v4, v5

    const/4 v5, 0x4

    const-string/jumbo v6, " ref "

    aput-object v6, v4, v5

    const/4 v5, 0x5

    iget v6, v3, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannelManager$BluetoothClientRef;->mRef:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x6

    const-string/jumbo v6, "ble "

    aput-object v6, v4, v5

    const/4 v5, 0x7

    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v4}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    .line 97
    :cond_2
    iget-object v4, p0, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannelManager;->mClientChannel:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 98
    .restart local v1    # "bluetoothChannelMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannelManager$BluetoothClientRef;>;"
    if-nez v1, :cond_3

    .line 99
    new-instance v1, Ljava/util/HashMap;

    .end local v1    # "bluetoothChannelMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannelManager$BluetoothClientRef;>;"
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 100
    .restart local v1    # "bluetoothChannelMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannelManager$BluetoothClientRef;>;"
    iget-object v4, p0, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannelManager;->mClientChannel:Ljava/util/Map;

    invoke-interface {v4, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    :cond_3
    invoke-virtual {p2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 68
    .end local v0    # "bluetoothChannel":Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannel;
    .end local v1    # "bluetoothChannelMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannelManager$BluetoothClientRef;>;"
    .end local v2    # "bluetoothKey":Ljava/lang/String;
    .end local v3    # "channelRef":Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannelManager$BluetoothClientRef;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 85
    .restart local v2    # "bluetoothKey":Ljava/lang/String;
    :cond_4
    :try_start_2
    new-instance v0, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;

    invoke-direct {v0, p3, p1, p2, p4}, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;-><init>(Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannel$Listener;Ljava/lang/String;Ljava/util/UUID;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .restart local v0    # "bluetoothChannel":Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannel;
    goto :goto_1
.end method

.method public declared-synchronized createServerChanel(Ljava/util/UUID;)Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer;
    .locals 4
    .param p1, "uuid"    # Ljava/util/UUID;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 41
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannelManager;->mServerChannel:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 42
    iget-object v2, p0, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannelManager;->mServerChannel:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v0, "bluetoothServer":Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer;
    move-object v1, v0

    .line 47
    .end local v0    # "bluetoothServer":Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer;
    .local v1, "bluetoothServer":Ljava/lang/Object;
    :goto_0
    monitor-exit p0

    return-object v1

    .line 45
    .end local v1    # "bluetoothServer":Ljava/lang/Object;
    :cond_0
    :try_start_1
    new-instance v0, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer;

    invoke-direct {v0, p1}, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer;-><init>(Ljava/util/UUID;)V

    .line 46
    .restart local v0    # "bluetoothServer":Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer;
    iget-object v2, p0, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannelManager;->mServerChannel:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v0

    .line 47
    .restart local v1    # "bluetoothServer":Ljava/lang/Object;
    goto :goto_0

    .line 41
    .end local v0    # "bluetoothServer":Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer;
    .end local v1    # "bluetoothServer":Ljava/lang/Object;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized stopClientChannel(Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannel;Ljava/lang/String;Ljava/util/UUID;Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannel$Listener;Ljava/lang/String;)V
    .locals 6
    .param p1, "channel"    # Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannel;
    .param p2, "bluetoothIdentify"    # Ljava/lang/String;
    .param p3, "uuid"    # Ljava/util/UUID;
    .param p4, "listener"    # Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannel$Listener;
    .param p5, "identifyType"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 173
    monitor-enter p0

    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 174
    .local v1, "bluetoothKey":Ljava/lang/String;
    iget-object v3, p0, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannelManager;->mClientChannel:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 175
    iget-object v3, p0, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannelManager;->mClientChannel:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 176
    .local v0, "bluetoothChannelMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannelManager$BluetoothClientRef;>;"
    invoke-virtual {p3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 177
    invoke-virtual {p3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannelManager$BluetoothClientRef;

    .line 178
    .local v2, "channelRef":Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannelManager$BluetoothClientRef;
    iget-object v3, v2, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannelManager$BluetoothClientRef;->mChannel:Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannel;

    invoke-interface {v3, p4}, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannel;->removeEventListener(Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannel$Listener;)V

    .line 179
    iget v3, v2, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannelManager$BluetoothClientRef;->mRef:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v2, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannelManager$BluetoothClientRef;->mRef:I

    .line 180
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getDebugMode()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 181
    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "stop channel "

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    const/4 v4, 0x2

    const-string/jumbo v5, "@"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    aput-object p3, v3, v4

    const/4 v4, 0x4

    const-string/jumbo v5, " ref "

    aput-object v5, v3, v4

    const/4 v4, 0x5

    iget v5, v2, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannelManager$BluetoothClientRef;->mRef:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v3}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    .line 183
    :cond_0
    iget v3, v2, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannelManager$BluetoothClientRef;->mRef:I

    if-nez v3, :cond_1

    .line 184
    iget-object v3, v2, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannelManager$BluetoothClientRef;->mChannel:Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannel;

    invoke-interface {v3}, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannel;->stop()V

    .line 185
    invoke-virtual {p3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 194
    .end local v0    # "bluetoothChannelMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannelManager$BluetoothClientRef;>;"
    .end local v2    # "channelRef":Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannelManager$BluetoothClientRef;
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 192
    :cond_2
    :try_start_1
    invoke-interface {p1}, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannel;->stop()V

    .line 193
    invoke-interface {p1, p4}, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannel;->removeEventListener(Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannel$Listener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 173
    .end local v1    # "bluetoothKey":Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized stopServerChannel(Ljava/util/UUID;)V
    .locals 3
    .param p1, "uuid"    # Ljava/util/UUID;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 55
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannelManager;->mServerChannel:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer;

    .line 56
    .local v0, "bluetoothServer":Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer;
    if-eqz v0, :cond_0

    .line 57
    invoke-virtual {v0}, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer;->stop()V

    .line 58
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer;->setBluetoothServerListener(Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer$BluetoothServerListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    :cond_0
    monitor-exit p0

    return-void

    .line 55
    .end local v0    # "bluetoothServer":Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
