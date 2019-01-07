.class public final Ljan;
.super Ljam$a;
.source "IILWAPICallbackImpl.java"


# instance fields
.field a:Lcom/laiwang/sdk/openapi/LWAPIAccount;

.field b:Ljao$a;

.field private c:Landroid/os/Handler;

.field private d:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 19
    invoke-direct {p0}, Ljam$a;-><init>()V

    .line 14
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Ljan;->c:Landroid/os/Handler;

    .line 15
    iput-object v2, p0, Ljan;->d:Landroid/content/Context;

    .line 20
    iput-object v2, p0, Ljan;->a:Lcom/laiwang/sdk/openapi/LWAPIAccount;

    .line 21
    return-void
.end method

.method static synthetic a(Ljan;)Ljao$a;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Ljan;->b:Ljao$a;

    return-object v0
.end method


# virtual methods
.method public final a(I)I
    .locals 2
    .param p1, "eventResult"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 57
    iget-object v0, p0, Ljan;->c:Landroid/os/Handler;

    new-instance v1, Ljan$2;

    invoke-direct {v1, p0, p1}, Ljan$2;-><init>(Ljan;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 67
    const/4 v0, 0x0

    return v0
.end method

.method public final a(Lcom/laiwang/sdk/message/LWMessage;)I
    .locals 2
    .param p1, "lwMessage"    # Lcom/laiwang/sdk/message/LWMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 33
    iget-object v0, p0, Ljan;->c:Landroid/os/Handler;

    new-instance v1, Ljan$1;

    invoke-direct {v1, p0, p1}, Ljan$1;-><init>(Ljan;Lcom/laiwang/sdk/message/LWMessage;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 52
    const/4 v0, 0x0

    return v0
.end method
