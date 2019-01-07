.class public Lcom/laiwang/protocol/android/NotifyReceiver;
.super Ljava/lang/Object;
.source "NotifyReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/laiwang/protocol/android/NotifyReceiver$INotifierServiceImpl;
    }
.end annotation


# instance fields
.field bundleChunkMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/laiwang/protocol/android/be$a;",
            ">;"
        }
    .end annotation
.end field

.field context:Landroid/content/Context;

.field extension:Lcom/laiwang/protocol/android/Extension;

.field notifierService:Lcom/laiwang/protocol/c;

.field remoteAgent:Lcom/laiwang/protocol/android/c;

.field private serviceConnection:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/laiwang/protocol/android/NotifyReceiver;->bundleChunkMap:Ljava/util/Map;

    .line 148
    new-instance v0, Lcom/laiwang/protocol/android/NotifyReceiver$1;

    invoke-direct {v0, p0}, Lcom/laiwang/protocol/android/NotifyReceiver$1;-><init>(Lcom/laiwang/protocol/android/NotifyReceiver;)V

    iput-object v0, p0, Lcom/laiwang/protocol/android/NotifyReceiver;->serviceConnection:Landroid/content/ServiceConnection;

    .line 45
    iput-object p1, p0, Lcom/laiwang/protocol/android/NotifyReceiver;->context:Landroid/content/Context;

    .line 46
    new-instance v0, Lcom/laiwang/protocol/android/NotifyReceiver$INotifierServiceImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/laiwang/protocol/android/NotifyReceiver$INotifierServiceImpl;-><init>(Lcom/laiwang/protocol/android/NotifyReceiver;Lcom/laiwang/protocol/android/NotifyReceiver$1;)V

    iput-object v0, p0, Lcom/laiwang/protocol/android/NotifyReceiver;->notifierService:Lcom/laiwang/protocol/c;

    .line 47
    new-instance v0, Lcom/laiwang/protocol/android/c;

    invoke-direct {v0}, Lcom/laiwang/protocol/android/c;-><init>()V

    iput-object v0, p0, Lcom/laiwang/protocol/android/NotifyReceiver;->remoteAgent:Lcom/laiwang/protocol/android/c;

    .line 48
    invoke-direct {p0}, Lcom/laiwang/protocol/android/NotifyReceiver;->getExtension()Lcom/laiwang/protocol/android/Extension;

    move-result-object v0

    iput-object v0, p0, Lcom/laiwang/protocol/android/NotifyReceiver;->extension:Lcom/laiwang/protocol/android/Extension;

    .line 49
    iget-object v0, p0, Lcom/laiwang/protocol/android/NotifyReceiver;->remoteAgent:Lcom/laiwang/protocol/android/c;

    invoke-static {v0}, Lcom/laiwang/protocol/android/LWP;->setAgent(Lcom/laiwang/protocol/android/a;)V

    .line 50
    iget-object v0, p0, Lcom/laiwang/protocol/android/NotifyReceiver;->remoteAgent:Lcom/laiwang/protocol/android/c;

    invoke-static {v0}, Lcom/laiwang/protocol/push/PushDispatch;->setRemoteAgent(Lcom/laiwang/protocol/android/c;)V

    .line 51
    invoke-direct {p0}, Lcom/laiwang/protocol/android/NotifyReceiver;->bindService()V

    .line 52
    return-void
.end method

.method private bindService()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 137
    new-instance v0, Landroid/content/ComponentName;

    iget-object v3, p0, Lcom/laiwang/protocol/android/NotifyReceiver;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/laiwang/protocol/android/LWPService;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    .local v0, "comp":Landroid/content/ComponentName;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 139
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 140
    iget-object v3, p0, Lcom/laiwang/protocol/android/NotifyReceiver;->context:Landroid/content/Context;

    iget-object v4, p0, Lcom/laiwang/protocol/android/NotifyReceiver;->serviceConnection:Landroid/content/ServiceConnection;

    const/4 v5, 0x1

    invoke-virtual {v3, v1, v4, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    .line 141
    .local v2, "r":Z
    if-eqz v2, :cond_0

    .line 142
    const-string/jumbo v3, "lwp"

    const-string/jumbo v4, "[Processor] bind success"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :goto_0
    return-void

    .line 144
    :cond_0
    const-string/jumbo v3, "lwp"

    const-string/jumbo v4, "[Processor] bind failed"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getExtension()Lcom/laiwang/protocol/android/Extension;
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 85
    :try_start_0
    const-string/jumbo v2, "lwp.extension"

    invoke-direct {p0, v2}, Lcom/laiwang/protocol/android/NotifyReceiver;->getMetaData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 86
    .local v1, "extensionClassName":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 87
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 88
    .local v0, "extensionClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/laiwang/protocol/android/Extension;>;"
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/laiwang/protocol/android/NotifyReceiver;->context:Landroid/content/Context;

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/laiwang/protocol/android/Extension;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    .end local v0    # "extensionClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/laiwang/protocol/android/Extension;>;"
    .end local v1    # "extensionClassName":Ljava/lang/String;
    :goto_0
    return-object v2

    :catch_0
    move-exception v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getMetaData(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 97
    :try_start_0
    iget-object v1, p0, Lcom/laiwang/protocol/android/NotifyReceiver;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/laiwang/protocol/android/NotifyReceiver;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v0, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 98
    .local v0, "data":Landroid/os/Bundle;
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 101
    .end local v0    # "data":Landroid/os/Bundle;
    :goto_0
    return-object v1

    :catch_0
    move-exception v1

    const/4 v1, 0x0

    goto :goto_0
.end method

.method private receiveBundle(Landroid/os/Bundle;)Lcom/laiwang/protocol/android/be$a;
    .locals 10
    .param p1, "bundle"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 105
    const-string/jumbo v7, "bundle-id"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 106
    const-string/jumbo v7, "bundle-id"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 107
    .local v2, "id":Ljava/lang/String;
    const-string/jumbo v7, "bundle-seq"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 108
    .local v5, "seq":I
    const-string/jumbo v7, "payload"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v4

    .line 109
    .local v4, "payload":[B
    iget-object v7, p0, Lcom/laiwang/protocol/android/NotifyReceiver;->bundleChunkMap:Ljava/util/Map;

    invoke-interface {v7, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/laiwang/protocol/android/be$a;

    .line 110
    .local v0, "chunkMessage":Lcom/laiwang/protocol/android/be$a;
    if-nez v0, :cond_0

    .line 111
    new-instance v0, Lcom/laiwang/protocol/android/be$a;

    .end local v0    # "chunkMessage":Lcom/laiwang/protocol/android/be$a;
    invoke-direct {v0}, Lcom/laiwang/protocol/android/be$a;-><init>()V

    .line 112
    .restart local v0    # "chunkMessage":Lcom/laiwang/protocol/android/be$a;
    iget-object v7, p0, Lcom/laiwang/protocol/android/NotifyReceiver;->bundleChunkMap:Ljava/util/Map;

    invoke-interface {v7, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    :cond_0
    const-string/jumbo v7, "bundle-total"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 115
    const-string/jumbo v7, "bundle-total"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 116
    .local v6, "total":I
    iput-object p1, v0, Lcom/laiwang/protocol/android/be$a;->a:Landroid/os/Bundle;

    .line 117
    iput v6, v0, Lcom/laiwang/protocol/android/be$a;->b:I

    .line 119
    .end local v6    # "total":I
    :cond_1
    invoke-virtual {v0, v5, v4}, Lcom/laiwang/protocol/android/be$a;->a(I[B)V

    .line 120
    invoke-virtual {v0}, Lcom/laiwang/protocol/android/be$a;->a()Z

    move-result v7

    if-nez v7, :cond_3

    .line 121
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 122
    .local v3, "out":Ljava/io/ByteArrayOutputStream;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v7, v0, Lcom/laiwang/protocol/android/be$a;->d:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->size()I

    move-result v7

    if-ge v1, v7, :cond_2

    .line 124
    :try_start_0
    iget-object v7, v0, Lcom/laiwang/protocol/android/be$a;->d:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    invoke-virtual {v3, v7}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 128
    :cond_2
    iget-object v7, v0, Lcom/laiwang/protocol/android/be$a;->a:Landroid/os/Bundle;

    const-string/jumbo v8, "payload"

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 129
    invoke-static {v3}, Lcom/laiwang/protocol/util/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 133
    .end local v0    # "chunkMessage":Lcom/laiwang/protocol/android/be$a;
    .end local v1    # "i":I
    .end local v2    # "id":Ljava/lang/String;
    .end local v3    # "out":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "payload":[B
    .end local v5    # "seq":I
    :cond_3
    :goto_2
    return-object v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_2

    .restart local v0    # "chunkMessage":Lcom/laiwang/protocol/android/be$a;
    .restart local v1    # "i":I
    .restart local v2    # "id":Ljava/lang/String;
    .restart local v3    # "out":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "payload":[B
    .restart local v5    # "seq":I
    :catch_0
    move-exception v7

    goto :goto_1
.end method


# virtual methods
.method public onReceiveFromRemote(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "bundle"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 55
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 56
    invoke-static {p1}, Lcom/laiwang/protocol/android/LWP$Action;->of(Ljava/lang/String;)Lcom/laiwang/protocol/android/LWP$Action;

    move-result-object v0

    .line 57
    .local v0, "act":Lcom/laiwang/protocol/android/LWP$Action;
    sget-object v3, Lcom/laiwang/protocol/android/NotifyReceiver$2;->$SwitchMap$com$laiwang$protocol$android$LWP$Action:[I

    invoke-virtual {v0}, Lcom/laiwang/protocol/android/LWP$Action;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 81
    .end local v0    # "act":Lcom/laiwang/protocol/android/LWP$Action;
    :cond_0
    :goto_0
    return-void

    .line 59
    .restart local v0    # "act":Lcom/laiwang/protocol/android/LWP$Action;
    :pswitch_0
    invoke-direct {p0, p2}, Lcom/laiwang/protocol/android/NotifyReceiver;->receiveBundle(Landroid/os/Bundle;)Lcom/laiwang/protocol/android/be$a;

    move-result-object v1

    .line 60
    .local v1, "message":Lcom/laiwang/protocol/android/be$a;
    if-eqz v1, :cond_2

    .line 61
    invoke-virtual {v1}, Lcom/laiwang/protocol/android/be$a;->a()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 62
    invoke-virtual {p0, p1, p2}, Lcom/laiwang/protocol/android/NotifyReceiver;->onReceiveFromRemote(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 64
    :cond_1
    iget-object p2, v1, Lcom/laiwang/protocol/android/be$a;->a:Landroid/os/Bundle;

    .line 66
    :cond_2
    invoke-static {p2}, Lcom/laiwang/protocol/android/be;->a(Landroid/os/Bundle;)Lcom/laiwang/protocol/android/bd;

    move-result-object v2

    .line 67
    .local v2, "msg":Lcom/laiwang/protocol/android/bd;
    instance-of v3, v2, Lcom/laiwang/protocol/core/Request;

    if-eqz v3, :cond_3

    .line 68
    check-cast v2, Lcom/laiwang/protocol/core/Request;

    .end local v2    # "msg":Lcom/laiwang/protocol/android/bd;
    invoke-static {v2}, Lcom/laiwang/protocol/push/PushDispatch;->dispatch(Lcom/laiwang/protocol/core/Request;)Z

    goto :goto_0

    .line 70
    .restart local v2    # "msg":Lcom/laiwang/protocol/android/bd;
    :cond_3
    iget-object v3, p0, Lcom/laiwang/protocol/android/NotifyReceiver;->remoteAgent:Lcom/laiwang/protocol/android/c;

    check-cast v2, Lcom/laiwang/protocol/core/Response;

    .end local v2    # "msg":Lcom/laiwang/protocol/android/bd;
    invoke-virtual {v3, v2}, Lcom/laiwang/protocol/android/c;->a(Lcom/laiwang/protocol/core/Response;)V

    goto :goto_0

    .line 74
    .end local v1    # "message":Lcom/laiwang/protocol/android/be$a;
    :pswitch_1
    iget-object v3, p0, Lcom/laiwang/protocol/android/NotifyReceiver;->extension:Lcom/laiwang/protocol/android/Extension;

    invoke-virtual {v3}, Lcom/laiwang/protocol/android/Extension;->tokenInvalid()V

    goto :goto_0

    .line 77
    :pswitch_2
    iget-object v3, p0, Lcom/laiwang/protocol/android/NotifyReceiver;->extension:Lcom/laiwang/protocol/android/Extension;

    invoke-virtual {v3}, Lcom/laiwang/protocol/android/Extension;->tokenRequired()V

    goto :goto_0

    .line 57
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
