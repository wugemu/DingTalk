.class public final Lblq;
.super Lcom/alibaba/android/dingtalk/alpha/AlphaCallback;
.source "AlphaHandler.java"


# instance fields
.field public a:Lcom/alibaba/android/dingtalk/alpha/AlphaInterface;

.field public b:Lbmh;

.field public c:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lbmd;",
            ">;"
        }
    .end annotation
.end field

.field public d:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lbmg;",
            ">;"
        }
    .end annotation
.end field

.field public e:Lcom/alibaba/doraemon/impl/nfcprotocol/NfcDataPack;

.field public f:Ljaf;

.field public g:I

.field public h:Lblp;

.field public i:Z

.field public j:I

.field public k:Lblr;

.field private l:Landroid/content/Context;

.field private m:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field

.field private n:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/alibaba/android/dingtalk/alpha/AlphaInterface;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "alphaInterface"    # Lcom/alibaba/android/dingtalk/alpha/AlphaInterface;

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/alpha/AlphaCallback;-><init>()V

    .line 65
    iput-object p1, p0, Lblq;->l:Landroid/content/Context;

    .line 66
    iput-object p2, p0, Lblq;->a:Lcom/alibaba/android/dingtalk/alpha/AlphaInterface;

    .line 1074
    new-instance v0, Lbmh;

    iget-object v1, p0, Lblq;->l:Landroid/content/Context;

    iget-object v2, p0, Lblq;->a:Lcom/alibaba/android/dingtalk/alpha/AlphaInterface;

    invoke-direct {v0, v1, v2}, Lbmh;-><init>(Landroid/content/Context;Lcom/alibaba/android/dingtalk/alpha/AlphaInterface;)V

    iput-object v0, p0, Lblq;->b:Lbmh;

    .line 1075
    iget-object v0, p0, Lblq;->b:Lbmh;

    .line 1153
    iget-object v0, v0, Lbmh;->e:Lcom/alibaba/android/dingtalk/alpha/npc/DeviceNpc;

    .line 1076
    if-eqz v0, :cond_2

    .line 1077
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 1078
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1079
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_2

    aget-object v3, v1, v0

    .line 1080
    iget-object v4, p0, Lblq;->m:Ljava/util/HashMap;

    if-nez v4, :cond_0

    .line 1081
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lblq;->m:Ljava/util/HashMap;

    .line 1083
    :cond_0
    iget-object v4, p0, Lblq;->m:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1084
    iget-object v4, p0, Lblq;->m:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1085
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 1079
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 68
    :cond_2
    const/16 v0, 0x2800

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lblq;->n:Ljava/nio/ByteBuffer;

    .line 69
    new-instance v0, Lcom/alibaba/doraemon/impl/nfcprotocol/NfcDataPack;

    invoke-direct {v0}, Lcom/alibaba/doraemon/impl/nfcprotocol/NfcDataPack;-><init>()V

    iput-object v0, p0, Lblq;->e:Lcom/alibaba/doraemon/impl/nfcprotocol/NfcDataPack;

    .line 70
    const-string/jumbo v0, "msgpack"

    invoke-static {v0}, Ljad;->a(Ljava/lang/String;)Ljac;

    move-result-object v0

    check-cast v0, Ljaf;

    iput-object v0, p0, Lblq;->f:Ljaf;

    .line 71
    return-void
.end method

.method static synthetic a(Lblq;)Z
    .locals 1
    .param p0, "x0"    # Lblq;

    .prologue
    .line 38
    iget-boolean v0, p0, Lblq;->i:Z

    return v0
.end method

.method static synthetic b(Lblq;)Lblr;
    .locals 1
    .param p0, "x0"    # Lblq;

    .prologue
    .line 38
    iget-object v0, p0, Lblq;->k:Lblr;

    return-object v0
.end method

.method static synthetic c(Lblq;)Lblp;
    .locals 1
    .param p0, "x0"    # Lblq;

    .prologue
    .line 38
    iget-object v0, p0, Lblq;->h:Lblp;

    return-object v0
.end method


# virtual methods
.method public final a(Liyn;Ljava/lang/String;Lbmi;)V
    .locals 9
    .param p1, "model"    # Liyn;
    .param p2, "method"    # Ljava/lang/String;
    .param p3, "listener"    # Lbmi;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v8, -0x1

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 253
    iget v2, p0, Lblq;->j:I

    if-gtz v2, :cond_1

    .line 254
    const-string/jumbo v2, "AlphaHandler"

    new-array v3, v7, [Ljava/lang/String;

    const-string/jumbo v4, "sendAck sock error, mServerSock = "

    aput-object v4, v3, v5

    iget v4, p0, Lblq;->j:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    if-eqz p3, :cond_0

    .line 256
    const-string/jumbo v2, ""

    invoke-interface {p3, v8, v2}, Lbmi;->a(ILjava/lang/String;)V

    .line 283
    :cond_0
    :goto_0
    return-void

    .line 260
    :cond_1
    new-instance v0, Lcom/alibaba/doraemon/impl/nfcprotocol/Ack;

    invoke-direct {v0}, Lcom/alibaba/doraemon/impl/nfcprotocol/Ack;-><init>()V

    .line 261
    .local v0, "ack":Lcom/alibaba/doraemon/impl/nfcprotocol/Ack;
    const-class v2, Lcom/alibaba/android/dingtalk/alpha/npc/DeviceNpc;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alibaba/doraemon/impl/nfcprotocol/Ack;->clz(Ljava/lang/String;)V

    .line 262
    invoke-virtual {v0, p2}, Lcom/alibaba/doraemon/impl/nfcprotocol/Ack;->method(Ljava/lang/String;)V

    .line 264
    if-eqz p1, :cond_2

    .line 266
    :try_start_0
    iget-object v2, p0, Lblq;->f:Ljaf;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Ljaf;->a(Ljava/lang/Object;Z)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alibaba/doraemon/impl/nfcprotocol/Ack;->body([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 273
    :cond_2
    :goto_1
    :try_start_1
    iget-object v2, p0, Lblq;->a:Lcom/alibaba/android/dingtalk/alpha/AlphaInterface;

    iget v3, p0, Lblq;->j:I

    iget-object v4, p0, Lblq;->e:Lcom/alibaba/doraemon/impl/nfcprotocol/NfcDataPack;

    invoke-virtual {v4, v0}, Lcom/alibaba/doraemon/impl/nfcprotocol/NfcDataPack;->encode(Lcom/alibaba/doraemon/impl/nfcprotocol/Packet;)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/alibaba/android/dingtalk/alpha/AlphaInterface;->sendData(I[B)V

    .line 274
    if-eqz p3, :cond_0

    .line 275
    const/4 v2, 0x0

    invoke-interface {p3, v2}, Lbmi;->a(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 277
    :catch_0
    move-exception v1

    .line 278
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "AlphaHandler"

    new-array v3, v7, [Ljava/lang/String;

    const-string/jumbo v4, "sendAck model exp = "

    aput-object v4, v3, v5

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    if-eqz p3, :cond_0

    .line 280
    const-string/jumbo v2, ""

    invoke-interface {p3, v8, v2}, Lbmi;->a(ILjava/lang/String;)V

    goto :goto_0

    .line 267
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 268
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string/jumbo v2, "AlphaHandler"

    new-array v3, v7, [Ljava/lang/String;

    const-string/jumbo v4, "sendAck cast model exp = "

    aput-object v4, v3, v5

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public final onError(ILjava/lang/String;)V
    .locals 4
    .param p1, "code"    # I
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 234
    const-string/jumbo v0, "AlphaHandler"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "onError code = "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, ", reason = "

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object p2, v1, v2

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lblq$3;

    invoke-direct {v1, p0, p1, p2}, Lblq$3;-><init>(Lblq;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 246
    return-void
.end method

.method public final onTcpClientClosed()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 121
    invoke-super {p0}, Lcom/alibaba/android/dingtalk/alpha/AlphaCallback;->onTcpClientClosed()V

    .line 122
    const-string/jumbo v0, "AlphaHandler"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "onTcpClientClosed"

    aput-object v2, v1, v3

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    iput v3, p0, Lblq;->g:I

    .line 124
    iget-object v0, p0, Lblq;->h:Lblp;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lblq;->h:Lblp;

    invoke-interface {v0}, Lblp;->b()V

    .line 127
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lblq;->h:Lblp;

    .line 128
    iget-object v0, p0, Lblq;->a:Lcom/alibaba/android/dingtalk/alpha/AlphaInterface;

    invoke-interface {v0}, Lcom/alibaba/android/dingtalk/alpha/AlphaInterface;->reset()V

    .line 129
    return-void
.end method

.method public final onTcpClientCreated(I)V
    .locals 4
    .param p1, "sock"    # I

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 111
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalk/alpha/AlphaCallback;->onTcpClientCreated(I)V

    .line 112
    const-string/jumbo v0, "AlphaHandler"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "onTcpClientCreated sock = "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    iput p1, p0, Lblq;->g:I

    .line 114
    iget-object v0, p0, Lblq;->h:Lblp;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lblq;->h:Lblp;

    invoke-interface {v0}, Lblp;->a()V

    .line 117
    :cond_0
    return-void
.end method

.method public final onTcpReceived([BI)V
    .locals 10
    .param p1, "bytes"    # [B
    .param p2, "sock"    # I

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v4, 0x0

    .line 133
    invoke-super {p0, p1, p2}, Lcom/alibaba/android/dingtalk/alpha/AlphaCallback;->onTcpReceived([BI)V

    .line 134
    iget-boolean v2, p0, Lblq;->i:Z

    if-eqz v2, :cond_0

    .line 135
    iput p2, p0, Lblq;->j:I

    .line 137
    :cond_0
    const-string/jumbo v3, "AlphaHandler"

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v2, "onTcpReceived bytes count = "

    aput-object v2, v5, v4

    if-eqz p1, :cond_2

    array-length v2, p1

    :goto_0
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v8

    const-string/jumbo v2, ", sock = "

    aput-object v2, v5, v9

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v6

    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    if-eqz p1, :cond_1

    array-length v2, p1

    if-nez v2, :cond_3

    .line 160
    :cond_1
    :goto_1
    return-void

    :cond_2
    move v2, v4

    .line 137
    goto :goto_0

    .line 141
    :cond_3
    iget-object v2, p0, Lblq;->n:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 142
    iget-object v2, p0, Lblq;->n:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 145
    :cond_4
    :goto_2
    :try_start_0
    iget-object v2, p0, Lblq;->e:Lcom/alibaba/doraemon/impl/nfcprotocol/NfcDataPack;

    iget-object v3, p0, Lblq;->n:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v3}, Lcom/alibaba/doraemon/impl/nfcprotocol/NfcDataPack;->decode(Ljava/nio/ByteBuffer;)Lcom/alibaba/doraemon/impl/nfcprotocol/Packet;
    :try_end_0
    .catch Lcom/alibaba/doraemon/impl/nfcprotocol/NotMagicNumberException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 146
    .local v1, "inData":Lcom/alibaba/doraemon/impl/nfcprotocol/Packet;
    if-nez v1, :cond_5

    .line 159
    .end local v1    # "inData":Lcom/alibaba/doraemon/impl/nfcprotocol/Packet;
    :goto_3
    iget-object v2, p0, Lblq;->n:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    goto :goto_1

    .line 148
    .restart local v1    # "inData":Lcom/alibaba/doraemon/impl/nfcprotocol/Packet;
    :cond_5
    :try_start_1
    instance-of v2, v1, Lcom/alibaba/doraemon/impl/nfcprotocol/Call;

    if-eqz v2, :cond_9

    .line 149
    check-cast v1, Lcom/alibaba/doraemon/impl/nfcprotocol/Call;

    .line 1199
    .end local v1    # "inData":Lcom/alibaba/doraemon/impl/nfcprotocol/Packet;
    if-eqz v1, :cond_4

    .line 1203
    const-string/jumbo v2, "AlphaHandler"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "call clazz = "

    aput-object v6, v3, v5

    const/4 v5, 0x1

    invoke-virtual {v1}, Lcom/alibaba/doraemon/impl/nfcprotocol/Call;->clz()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    const/4 v5, 0x2

    const-string/jumbo v6, ", method = "

    aput-object v6, v3, v5

    const/4 v5, 0x3

    invoke-virtual {v1}, Lcom/alibaba/doraemon/impl/nfcprotocol/Call;->method()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1205
    iget-object v2, p0, Lblq;->b:Lbmh;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lblq;->b:Lbmh;

    .line 2153
    iget-object v2, v2, Lbmh;->e:Lcom/alibaba/android/dingtalk/alpha/npc/DeviceNpc;

    .line 1205
    if-eqz v2, :cond_4

    iget-object v2, p0, Lblq;->m:Ljava/util/HashMap;

    if-eqz v2, :cond_4

    .line 1206
    iget-object v2, p0, Lblq;->m:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/alibaba/doraemon/impl/nfcprotocol/Call;->method()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Method;
    :try_end_1
    .catch Lcom/alibaba/doraemon/impl/nfcprotocol/NotMagicNumberException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1207
    if-eqz v2, :cond_8

    .line 1209
    :try_start_2
    iget-object v3, p0, Lblq;->b:Lbmh;

    .line 3153
    iget-object v3, v3, Lbmh;->e:Lcom/alibaba/android/dingtalk/alpha/npc/DeviceNpc;

    .line 1209
    iget-object v5, p0, Lblq;->f:Ljaf;

    invoke-virtual {v1}, Lcom/alibaba/doraemon/impl/nfcprotocol/Call;->body()[B

    move-result-object v6

    .line 1210
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v7

    .line 1209
    invoke-virtual {v5, v6, v7}, Ljaf;->a([B[Ljava/lang/reflect/Type;)[Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 1211
    instance-of v5, v3, Liyn;

    if-eqz v5, :cond_6

    .line 1212
    check-cast v3, Liyn;

    .line 1213
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    .line 3249
    const/4 v5, 0x0

    invoke-virtual {p0, v3, v2, v5}, Lblq;->a(Liyn;Ljava/lang/String;Lbmi;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/alibaba/doraemon/impl/nfcprotocol/NotMagicNumberException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_2

    .line 1222
    :catch_0
    move-exception v2

    .line 1223
    :try_start_3
    const-string/jumbo v3, "AlphaHandler"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "call exp = "

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v6

    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Lcom/alibaba/doraemon/impl/nfcprotocol/NotMagicNumberException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_2

    .line 153
    :catch_1
    move-exception v0

    .line 154
    .local v0, "e":Lcom/alibaba/doraemon/impl/nfcprotocol/NotMagicNumberException;
    const-string/jumbo v2, "AlphaHandler"

    new-array v3, v9, [Ljava/lang/String;

    const-string/jumbo v5, "dataPack exp = "

    aput-object v5, v3, v4

    invoke-virtual {v0}, Lcom/alibaba/doraemon/impl/nfcprotocol/NotMagicNumberException;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1214
    .end local v0    # "e":Lcom/alibaba/doraemon/impl/nfcprotocol/NotMagicNumberException;
    :cond_6
    :try_start_4
    instance-of v5, v3, Lbmd;

    if-eqz v5, :cond_4

    .line 1215
    check-cast v3, Lbmd;

    .line 1216
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    .line 4022
    iput-object v5, v3, Lbmd;->a:Ljava/lang/String;

    .line 1217
    iget-object v5, p0, Lblq;->c:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v5, :cond_7

    .line 1218
    new-instance v5, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v5}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v5, p0, Lblq;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 1220
    :cond_7
    iget-object v5, p0, Lblq;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lcom/alibaba/doraemon/impl/nfcprotocol/NotMagicNumberException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_2

    .line 1226
    :cond_8
    :try_start_5
    const-string/jumbo v2, "AlphaHandler"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "cannot find call clazz = "

    aput-object v6, v3, v5

    const/4 v5, 0x1

    invoke-virtual {v1}, Lcom/alibaba/doraemon/impl/nfcprotocol/Call;->clz()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    const/4 v5, 0x2

    const-string/jumbo v6, ", method = "

    aput-object v6, v3, v5

    const/4 v5, 0x3

    invoke-virtual {v1}, Lcom/alibaba/doraemon/impl/nfcprotocol/Call;->method()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1227
    const/4 v2, 0x0

    invoke-virtual {v1}, Lcom/alibaba/doraemon/impl/nfcprotocol/Call;->method()Ljava/lang/String;

    move-result-object v3

    .line 4249
    const/4 v5, 0x0

    invoke-virtual {p0, v2, v3, v5}, Lblq;->a(Liyn;Ljava/lang/String;Lbmi;)V

    goto/16 :goto_2

    .line 150
    .restart local v1    # "inData":Lcom/alibaba/doraemon/impl/nfcprotocol/Packet;
    :cond_9
    instance-of v2, v1, Lcom/alibaba/doraemon/impl/nfcprotocol/Ack;

    if-eqz v2, :cond_4

    .line 151
    check-cast v1, Lcom/alibaba/doraemon/impl/nfcprotocol/Ack;

    .line 5163
    .end local v1    # "inData":Lcom/alibaba/doraemon/impl/nfcprotocol/Packet;
    if-eqz v1, :cond_4

    .line 5167
    const-string/jumbo v2, "AlphaHandler"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "ack clazz = "

    aput-object v6, v3, v5

    const/4 v5, 0x1

    invoke-virtual {v1}, Lcom/alibaba/doraemon/impl/nfcprotocol/Ack;->clz()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    const/4 v5, 0x2

    const-string/jumbo v6, ", method = "

    aput-object v6, v3, v5

    const/4 v5, 0x3

    invoke-virtual {v1}, Lcom/alibaba/doraemon/impl/nfcprotocol/Ack;->method()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 5168
    iget-object v2, p0, Lblq;->d:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lblq;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 5169
    iget-object v2, p0, Lblq;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Lcom/alibaba/doraemon/impl/nfcprotocol/Ack;->method()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbmg;

    .line 5170
    if-eqz v2, :cond_4

    .line 6025
    iget-object v3, v2, Lbmg;->b:Lbmi;
    :try_end_5
    .catch Lcom/alibaba/doraemon/impl/nfcprotocol/NotMagicNumberException; {:try_start_5 .. :try_end_5} :catch_1

    .line 5173
    :try_start_6
    iget-object v5, p0, Lblq;->f:Ljaf;

    invoke-virtual {v1}, Lcom/alibaba/doraemon/impl/nfcprotocol/Ack;->body()[B

    move-result-object v6

    .line 7021
    iget-object v2, v2, Lbmg;->a:Ljava/lang/reflect/Type;

    .line 5173
    invoke-virtual {v5, v6, v2}, Ljaf;->a([BLjava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v2

    .line 5174
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v5

    new-instance v6, Lblq$1;

    invoke-direct {v6, p0, v3, v2}, Lblq$1;-><init>(Lblq;Lbmi;Ljava/lang/Object;)V

    invoke-virtual {v5, v6}, Lhcv;->post(Ljava/lang/Runnable;)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catch Lcom/alibaba/doraemon/impl/nfcprotocol/NotMagicNumberException; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_2

    .line 5182
    :catch_2
    move-exception v2

    .line 5183
    const/4 v5, 0x2

    :try_start_7
    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "ack exp = "

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v6

    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 5184
    const-string/jumbo v5, "AlphaHandler"

    invoke-static {v5, v2}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 5185
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v5

    new-instance v6, Lblq$2;

    invoke-direct {v6, p0, v3, v2}, Lblq$2;-><init>(Lblq;Lbmi;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Lhcv;->post(Ljava/lang/Runnable;)Z
    :try_end_7
    .catch Lcom/alibaba/doraemon/impl/nfcprotocol/NotMagicNumberException; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_2
.end method
