.class public Lcom/taobao/conf/TBConfController;
.super Ljava/lang/Object;
.source "TBConfController.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# static fields
.field private static final b:Ljava/lang/String;


# instance fields
.field public a:Lcom/taobao/conf/TBConf;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/taobao/conf/TBConfController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/taobao/conf/TBConfController;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Lcom/taobao/conf/TBConf;

    invoke-direct {v0, p1}, Lcom/taobao/conf/TBConf;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/taobao/conf/TBConfController;->a:Lcom/taobao/conf/TBConf;

    .line 26
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "extrMsg"    # Ljava/lang/String;
    .param p1, "userId"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-static {p0, p1}, Lcom/taobao/conf/TBConfExternal;->SetCallExtraMsg(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "code"    # I
    .param p3, "extraMsg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "---reject, callId:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lieg;->b(Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lcom/taobao/conf/TBConfController;->a:Lcom/taobao/conf/TBConf;

    if-eqz v0, :cond_1

    .line 112
    iget-object v0, p0, Lcom/taobao/conf/TBConfController;->a:Lcom/taobao/conf/TBConf;

    if-nez p3, :cond_0

    const-string/jumbo p3, ""

    .end local p3    # "extraMsg":Ljava/lang/String;
    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lcom/taobao/conf/TBConf;->rejectCall(Ljava/lang/String;ILjava/lang/String;)Z

    .line 114
    :cond_1
    return-void
.end method

.method public final declared-synchronized a(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "isYunOS"    # Z

    .prologue
    .line 201
    monitor-enter p0

    if-nez p1, :cond_0

    .line 204
    :goto_0
    monitor-exit p0

    return-void

    .line 203
    :cond_0
    :try_start_0
    invoke-static {p1, p2}, Lcom/taobao/conf/TBConfExternal;->OnReceiveSignalMsg(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 201
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Z)V
    .locals 1
    .param p1, "muteMic"    # Z

    .prologue
    .line 163
    iget-object v0, p0, Lcom/taobao/conf/TBConfController;->a:Lcom/taobao/conf/TBConf;

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/taobao/conf/TBConfController;->a:Lcom/taobao/conf/TBConf;

    invoke-virtual {v0, p1}, Lcom/taobao/conf/TBConf;->muteMic(Z)V

    .line 166
    :cond_0
    return-void
.end method
