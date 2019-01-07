.class public Lanetwork/channel/aidl/NetworkService;
.super Landroid/app/Service;
.source "NetworkService.java"


# instance fields
.field a:Llm$a;

.field private b:Landroid/content/Context;

.field private c:[Llr$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 16
    const/4 v0, 0x2

    new-array v0, v0, [Llr$a;

    iput-object v0, p0, Lanetwork/channel/aidl/NetworkService;->c:[Llr$a;

    .line 30
    new-instance v0, Lanetwork/channel/aidl/NetworkService$1;

    invoke-direct {v0, p0}, Lanetwork/channel/aidl/NetworkService$1;-><init>(Lanetwork/channel/aidl/NetworkService;)V

    iput-object v0, p0, Lanetwork/channel/aidl/NetworkService;->a:Llm$a;

    return-void
.end method

.method static synthetic a(Lanetwork/channel/aidl/NetworkService;)[Llr$a;
    .locals 1
    .param p0, "x0"    # Lanetwork/channel/aidl/NetworkService;

    .prologue
    .line 13
    iget-object v0, p0, Lanetwork/channel/aidl/NetworkService;->c:[Llr$a;

    return-object v0
.end method

.method static synthetic b(Lanetwork/channel/aidl/NetworkService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lanetwork/channel/aidl/NetworkService;

    .prologue
    .line 13
    iget-object v0, p0, Lanetwork/channel/aidl/NetworkService;->b:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 20
    invoke-virtual {p0}, Lanetwork/channel/aidl/NetworkService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lanetwork/channel/aidl/NetworkService;->b:Landroid/content/Context;

    .line 21
    const/4 v1, 0x2

    invoke-static {v1}, Lanet/channel/util/ALog;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 22
    const-string/jumbo v1, "ANet.NetworkService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onBind:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v0, v3}, Lanet/channel/util/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 24
    :cond_0
    const-class v1, Llm;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 25
    iget-object v0, p0, Lanetwork/channel/aidl/NetworkService;->a:Llm$a;

    .line 27
    :cond_1
    return-object v0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 53
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 49
    const/4 v0, 0x2

    return v0
.end method
