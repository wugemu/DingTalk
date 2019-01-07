.class public Lcom/alipay/mobile/security/faceauth/circle/workspace/NineShootManager;
.super Ljava/lang/Object;
.source "NineShootManager.java"


# instance fields
.field private a:Lcom/alipay/mobile/security/bio/service/BioServiceManager;

.field private b:Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;

.field private c:Landroid/os/Handler;

.field private d:Z

.field private e:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/alipay/mobile/security/faceauth/api/FaceFrame;",
            ">;"
        }
    .end annotation
.end field

.field private f:Z


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/security/bio/service/BioServiceManager;Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleCallBack;)V
    .locals 2
    .param p1, "bioServiceManager"    # Lcom/alipay/mobile/security/bio/service/BioServiceManager;
    .param p2, "faceCircleCallBack"    # Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleCallBack;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/NineShootManager;->d:Z

    .line 24
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/NineShootManager;->e:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 29
    iput-object p1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/NineShootManager;->a:Lcom/alipay/mobile/security/bio/service/BioServiceManager;

    .line 30
    invoke-interface {p2}, Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleCallBack;->getRemoteConfig()Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/NineShootManager;->b:Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;

    .line 31
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/NineShootManager;->c:Landroid/os/Handler;

    .line 32
    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/security/faceauth/circle/workspace/NineShootManager;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/security/faceauth/circle/workspace/NineShootManager;
    .param p1, "x1"    # Z

    .prologue
    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/NineShootManager;->f:Z

    return v0
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 70
    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/NineShootManager;->a:Lcom/alipay/mobile/security/bio/service/BioServiceManager;

    .line 71
    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/NineShootManager;->b:Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;

    .line 72
    return-void
.end method

.method public getShootList()Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/alipay/mobile/security/faceauth/api/FaceFrame;",
            ">;"
        }
    .end annotation

    .prologue
    .line 66
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/NineShootManager;->e:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method public isNeedUpload()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x1

    .line 62
    iget-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/NineShootManager;->b:Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;

    invoke-virtual {v1}, Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;->getColl()Lcom/alipay/mobile/security/bio/config/bean/Coll;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/security/bio/config/bean/Coll;->getUploadMonitorPic()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public shootFaceFrame(Lcom/alipay/mobile/security/bio/task/ActionFrame;)V
    .locals 6
    .param p1, "actionFrame"    # Lcom/alipay/mobile/security/bio/task/ActionFrame;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x1

    .line 36
    iget-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/NineShootManager;->b:Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;

    invoke-virtual {v1}, Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;->getColl()Lcom/alipay/mobile/security/bio/config/bean/Coll;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/security/bio/config/bean/Coll;->getUploadMonitorPic()I

    move-result v1

    if-ne v1, v3, :cond_0

    if-eqz p1, :cond_0

    .line 38
    invoke-virtual {p1}, Lcom/alipay/mobile/security/bio/task/ActionFrame;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/security/faceauth/api/FaceFrame;

    .line 40
    .local v0, "faceFrame":Lcom/alipay/mobile/security/faceauth/api/FaceFrame;
    iget-boolean v1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/NineShootManager;->d:Z

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    .line 41
    iget-boolean v1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/NineShootManager;->f:Z

    if-eqz v1, :cond_1

    .line 59
    .end local v0    # "faceFrame":Lcom/alipay/mobile/security/faceauth/api/FaceFrame;
    :cond_0
    :goto_0
    return-void

    .line 44
    .restart local v0    # "faceFrame":Lcom/alipay/mobile/security/faceauth/api/FaceFrame;
    :cond_1
    iput-boolean v3, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/NineShootManager;->f:Z

    .line 45
    iget-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/NineShootManager;->c:Landroid/os/Handler;

    new-instance v2, Lcom/alipay/mobile/security/faceauth/circle/workspace/NineShootManager$1;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/security/faceauth/circle/workspace/NineShootManager$1;-><init>(Lcom/alipay/mobile/security/faceauth/circle/workspace/NineShootManager;)V

    const-wide/16 v4, 0x1f4

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 51
    const-string/jumbo v1, "shootFaceFrame"

    invoke-static {v1}, Lcom/alipay/mobile/security/bio/utils/BioLog;->i(Ljava/lang/String;)V

    .line 52
    iget-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/NineShootManager;->e:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    const/16 v2, 0xa

    if-lt v1, v2, :cond_2

    .line 53
    iput-boolean v3, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/NineShootManager;->d:Z

    goto :goto_0

    .line 55
    :cond_2
    iget-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/NineShootManager;->e:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
