.class public Lcom/alibaba/doraemon/impl/bluetooth/RpcProxy;
.super Ljava/lang/Object;
.source "RpcProxy.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/doraemon/impl/bluetooth/RpcProxy$BluetoothInternalListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BleRpcProxy"


# instance fields
.field private mBluetoothId:Ljava/lang/String;

.field private mBluetoothIdentify:Ljava/lang/String;

.field private mChannel:Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannel;

.field private mFutures:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/doraemon/impl/bluetooth/BluetoothRpcFuture;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mIdentifyType:Ljava/lang/String;

.field private mInternalListener:Lcom/alibaba/doraemon/impl/bluetooth/RpcProxy$BluetoothInternalListener;

.field private mPacketCast:Ljaf;

.field private mProxyClassName:Ljava/lang/String;

.field private mRpcType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;Lcom/alibaba/doraemon/bluetooth/BluetoothStateListener;Ljava/lang/Class;Z)V
    .locals 3
    .param p1, "bluetoothDevice"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "bluetoothId"    # Ljava/lang/String;
    .param p3, "listener"    # Lcom/alibaba/doraemon/bluetooth/BluetoothStateListener;
    .param p4, "proxy"    # Ljava/lang/Class;
    .param p5, "isBle"    # Z

    .prologue
    .line 75
    invoke-direct {p0, p2, p3, p4}, Lcom/alibaba/doraemon/impl/bluetooth/RpcProxy;-><init>(Ljava/lang/String;Lcom/alibaba/doraemon/bluetooth/BluetoothStateListener;Ljava/lang/Class;)V

    .line 76
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/RpcProxy;->mBluetoothIdentify:Ljava/lang/String;

    .line 77
    const-string/jumbo v0, "MAC_"

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/RpcProxy;->mIdentifyType:Ljava/lang/String;

    .line 79
    invoke-static {}, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannelManager;->getInstance()Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannelManager;

    move-result-object v0

    invoke-static {p2}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/doraemon/impl/bluetooth/RpcProxy;->mInternalListener:Lcom/alibaba/doraemon/impl/bluetooth/RpcProxy$BluetoothInternalListener;

    invoke-virtual {v0, p1, v1, v2, p5}, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannelManager;->createClientChannel(Landroid/bluetooth/BluetoothDevice;Ljava/util/UUID;Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannel$Listener;Z)Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannel;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/RpcProxy;->mChannel:Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannel;

    .line 80
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Lcom/alibaba/doraemon/bluetooth/BluetoothStateListener;Ljava/lang/Class;)V
    .locals 2
    .param p1, "bluetoothId"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/alibaba/doraemon/bluetooth/BluetoothStateListener;
    .param p3, "proxy"    # Ljava/lang/Class;

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/RpcProxy;->mFutures:Ljava/util/Map;

    .line 53
    new-instance v0, Lcom/alibaba/doraemon/impl/bluetooth/RpcProxy$BluetoothInternalListener;

    invoke-direct {v0, p0, p2}, Lcom/alibaba/doraemon/impl/bluetooth/RpcProxy$BluetoothInternalListener;-><init>(Lcom/alibaba/doraemon/impl/bluetooth/RpcProxy;Lcom/alibaba/doraemon/bluetooth/BluetoothStateListener;)V

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/RpcProxy;->mInternalListener:Lcom/alibaba/doraemon/impl/bluetooth/RpcProxy$BluetoothInternalListener;

    .line 55
    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/RpcProxy;->mProxyClassName:Ljava/lang/String;

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/RpcProxy;->mRpcType:Ljava/lang/String;

    .line 57
    const-string/jumbo v0, "msgpack"

    invoke-static {v0}, Ljad;->a(Ljava/lang/String;)Ljac;

    move-result-object v0

    check-cast v0, Ljaf;

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/RpcProxy;->mPacketCast:Ljaf;

    .line 58
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/RpcProxy;->mHandler:Landroid/os/Handler;

    .line 60
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/bluetooth/RpcProxy;->mBluetoothId:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/doraemon/bluetooth/BluetoothStateListener;Ljava/lang/Class;Ljava/lang/String;Z)V
    .locals 6
    .param p1, "bluetoothIndentify"    # Ljava/lang/String;
    .param p2, "bluetoothId"    # Ljava/lang/String;
    .param p3, "listener"    # Lcom/alibaba/doraemon/bluetooth/BluetoothStateListener;
    .param p4, "proxy"    # Ljava/lang/Class;
    .param p5, "identifyType"    # Ljava/lang/String;
    .param p6, "isBle"    # Z

    .prologue
    .line 64
    invoke-direct {p0, p2, p3, p4}, Lcom/alibaba/doraemon/impl/bluetooth/RpcProxy;-><init>(Ljava/lang/String;Lcom/alibaba/doraemon/bluetooth/BluetoothStateListener;Ljava/lang/Class;)V

    .line 69
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/bluetooth/RpcProxy;->mBluetoothIdentify:Ljava/lang/String;

    .line 70
    iput-object p5, p0, Lcom/alibaba/doraemon/impl/bluetooth/RpcProxy;->mIdentifyType:Ljava/lang/String;

    .line 71
    invoke-static {}, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannelManager;->getInstance()Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannelManager;

    move-result-object v0

    invoke-static {p2}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/doraemon/impl/bluetooth/RpcProxy;->mInternalListener:Lcom/alibaba/doraemon/impl/bluetooth/RpcProxy$BluetoothInternalListener;

    move-object v1, p1

    move-object v4, p5

    move v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannelManager;->createClientChannel(Ljava/lang/String;Ljava/util/UUID;Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannel$Listener;Ljava/lang/String;Z)Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannel;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/RpcProxy;->mChannel:Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannel;

    .line 72
    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/doraemon/impl/bluetooth/RpcProxy;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/doraemon/impl/bluetooth/RpcProxy;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/RpcProxy;->mFutures:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$100(Lcom/alibaba/doraemon/impl/bluetooth/RpcProxy;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/doraemon/impl/bluetooth/RpcProxy;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/RpcProxy;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/alibaba/doraemon/impl/bluetooth/RpcProxy;)Ljaf;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/doraemon/impl/bluetooth/RpcProxy;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/RpcProxy;->mPacketCast:Ljaf;

    return-object v0
.end method

.method static synthetic access$300(Lcom/alibaba/doraemon/impl/bluetooth/RpcProxy;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/doraemon/impl/bluetooth/RpcProxy;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/RpcProxy;->mBluetoothIdentify:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/alibaba/doraemon/impl/bluetooth/RpcProxy;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/doraemon/impl/bluetooth/RpcProxy;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/RpcProxy;->mBluetoothId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/alibaba/doraemon/impl/bluetooth/RpcProxy;)Lcom/alibaba/doraemon/impl/bluetooth/RpcProxy$BluetoothInternalListener;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/doraemon/impl/bluetooth/RpcProxy;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/RpcProxy;->mInternalListener:Lcom/alibaba/doraemon/impl/bluetooth/RpcProxy$BluetoothInternalListener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/alibaba/doraemon/impl/bluetooth/RpcProxy;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/doraemon/impl/bluetooth/RpcProxy;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/RpcProxy;->mIdentifyType:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16
    .param p1, "proxy"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v15

    invoke-static {v15}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 99
    const-string/jumbo v12, "hashCode"

    invoke-virtual/range {p2 .. p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 100
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->hashCode()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 155
    :goto_0
    return-object v6

    .line 102
    :cond_0
    const-string/jumbo v12, "toString"

    invoke-virtual/range {p2 .. p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 103
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 106
    :cond_1
    const-string/jumbo v12, "equals"

    invoke-virtual/range {p2 .. p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 107
    const/4 v12, 0x0

    aget-object v12, p3, v12

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/reflect/Proxy;->isProxyClass(Ljava/lang/Class;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 108
    invoke-static/range {p1 .. p1}, Ljava/lang/reflect/Proxy;->getInvocationHandler(Ljava/lang/Object;)Ljava/lang/reflect/InvocationHandler;

    move-result-object v12

    const/4 v13, 0x0

    aget-object v13, p3, v13

    invoke-static {v13}, Ljava/lang/reflect/Proxy;->getInvocationHandler(Ljava/lang/Object;)Ljava/lang/reflect/InvocationHandler;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    goto :goto_0

    .line 110
    :cond_2
    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    goto :goto_0

    .line 113
    :cond_3
    new-instance v2, Lcom/alibaba/doraemon/impl/nfcprotocol/Call;

    invoke-direct {v2}, Lcom/alibaba/doraemon/impl/nfcprotocol/Call;-><init>()V

    .line 114
    .local v2, "call":Lcom/alibaba/doraemon/impl/nfcprotocol/Call;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alibaba/doraemon/impl/bluetooth/RpcProxy;->mProxyClassName:Ljava/lang/String;

    invoke-virtual {v2, v12}, Lcom/alibaba/doraemon/impl/nfcprotocol/Call;->clz(Ljava/lang/String;)V

    .line 115
    invoke-virtual/range {p2 .. p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Lcom/alibaba/doraemon/impl/nfcprotocol/Call;->method(Ljava/lang/String;)V

    .line 116
    invoke-static {}, Lcom/alibaba/doraemon/impl/nfcprotocol/NfcMessageIdProducer;->getInstance()Lcom/alibaba/doraemon/impl/nfcprotocol/NfcMessageIdProducer;

    move-result-object v12

    invoke-virtual {v12}, Lcom/alibaba/doraemon/impl/nfcprotocol/NfcMessageIdProducer;->messageId()Ljava/lang/String;

    move-result-object v4

    .line 117
    .local v4, "msgId":Ljava/lang/String;
    invoke-virtual {v2, v4}, Lcom/alibaba/doraemon/impl/nfcprotocol/Call;->messageId(Ljava/lang/String;)V

    .line 119
    invoke-virtual/range {p2 .. p2}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v11

    .line 120
    .local v11, "types":[Ljava/lang/reflect/Type;
    if-eqz v11, :cond_4

    array-length v12, v11

    if-lez v12, :cond_4

    .line 122
    :try_start_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alibaba/doraemon/impl/bluetooth/RpcProxy;->mPacketCast:Ljaf;

    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v12, v0, v13}, Ljaf;->a(Ljava/lang/Object;Z)[B

    move-result-object v12

    invoke-virtual {v2, v12}, Lcom/alibaba/doraemon/impl/nfcprotocol/Call;->body([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    :cond_4
    :goto_1
    invoke-virtual/range {p2 .. p2}, Ljava/lang/reflect/Method;->getGenericReturnType()Ljava/lang/reflect/Type;

    move-result-object v5

    check-cast v5, Ljava/lang/reflect/ParameterizedType;

    .line 129
    .local v5, "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    const-class v12, Lcom/alibaba/doraemon/impl/bluetooth/RpcTimeout;

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v7

    check-cast v7, Lcom/alibaba/doraemon/impl/bluetooth/RpcTimeout;

    .line 130
    .local v7, "rpcTimeout":Lcom/alibaba/doraemon/impl/bluetooth/RpcTimeout;
    const/16 v9, 0x4e20

    .line 131
    .local v9, "timeout":I
    if-eqz v7, :cond_5

    .line 132
    invoke-interface {v7}, Lcom/alibaba/doraemon/impl/bluetooth/RpcTimeout;->timeout()I

    move-result v8

    .line 133
    .local v8, "time":I
    if-lez v8, :cond_5

    .line 134
    move v9, v8

    .line 138
    .end local v8    # "time":I
    :cond_5
    new-instance v10, Lcom/alibaba/doraemon/impl/bluetooth/RpcProxy$1;

    move-object/from16 v0, p0

    invoke-direct {v10, v0, v4}, Lcom/alibaba/doraemon/impl/bluetooth/RpcProxy$1;-><init>(Lcom/alibaba/doraemon/impl/bluetooth/RpcProxy;Ljava/lang/String;)V

    .line 147
    .local v10, "timeoutRunnable":Ljava/lang/Runnable;
    new-instance v6, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothRpcFuture;

    .line 148
    invoke-interface {v5}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v12

    const/4 v13, 0x0

    aget-object v12, v12, v13

    invoke-direct {v6, v12, v10}, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothRpcFuture;-><init>(Ljava/lang/reflect/Type;Ljava/lang/Runnable;)V

    .line 150
    .local v6, "retFuture":Lcom/alibaba/doraemon/impl/bluetooth/BluetoothRpcFuture;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alibaba/doraemon/impl/bluetooth/RpcProxy;->mFutures:Ljava/util/Map;

    invoke-interface {v12, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alibaba/doraemon/impl/bluetooth/RpcProxy;->mHandler:Landroid/os/Handler;

    int-to-long v14, v9

    invoke-virtual {v12, v10, v14, v15}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 153
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alibaba/doraemon/impl/bluetooth/RpcProxy;->mChannel:Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannel;

    invoke-interface {v12, v2}, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannel;->write(Lcom/alibaba/doraemon/impl/nfcprotocol/Packet;)V

    goto/16 :goto_0

    .line 123
    .end local v5    # "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    .end local v6    # "retFuture":Lcom/alibaba/doraemon/impl/bluetooth/BluetoothRpcFuture;
    .end local v7    # "rpcTimeout":Lcom/alibaba/doraemon/impl/bluetooth/RpcTimeout;
    .end local v9    # "timeout":I
    .end local v10    # "timeoutRunnable":Ljava/lang/Runnable;
    :catch_0
    move-exception v3

    .line 124
    .local v3, "e":Ljava/lang/Exception;
    const-string/jumbo v12, "BleRpcProxy"

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    const-string/jumbo v15, "call data error:"

    aput-object v15, v13, v14

    const/4 v14, 0x1

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v13}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/alibaba/doraemon/impl/bluetooth/utils/BleTrace;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public release()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 89
    invoke-static {}, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannelManager;->getInstance()Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannelManager;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/doraemon/impl/bluetooth/RpcProxy;->mChannel:Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannel;

    iget-object v2, p0, Lcom/alibaba/doraemon/impl/bluetooth/RpcProxy;->mBluetoothIdentify:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/doraemon/impl/bluetooth/RpcProxy;->mBluetoothId:Ljava/lang/String;

    invoke-static {v3}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/doraemon/impl/bluetooth/RpcProxy;->mInternalListener:Lcom/alibaba/doraemon/impl/bluetooth/RpcProxy$BluetoothInternalListener;

    iget-object v5, p0, Lcom/alibaba/doraemon/impl/bluetooth/RpcProxy;->mIdentifyType:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannelManager;->stopClientChannel(Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannel;Ljava/lang/String;Ljava/util/UUID;Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannel$Listener;Ljava/lang/String;)V

    .line 92
    return-void
.end method
