.class public Lbwr;
.super Ljava/lang/Object;
.source "PlayerData.java"


# static fields
.field private static volatile e:Lbwr;


# instance fields
.field public a:Lcom/taobao/taolive/sdk/model/common/UrlInfo;

.field public b:Lcom/alibaba/android/dingtalk/livebase/model/LivePlayObject;

.field public c:Ljava/lang/String;

.field d:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method

.method public static a()Lbwr;
    .locals 2

    .prologue
    .line 24
    sget-object v0, Lbwr;->e:Lbwr;

    if-nez v0, :cond_1

    .line 25
    const-class v1, Lbwr;

    monitor-enter v1

    .line 26
    :try_start_0
    sget-object v0, Lbwr;->e:Lbwr;

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Lbwr;

    invoke-direct {v0}, Lbwr;-><init>()V

    sput-object v0, Lbwr;->e:Lbwr;

    .line 29
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    :cond_1
    sget-object v0, Lbwr;->e:Lbwr;

    return-object v0

    .line 29
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lbwr;->b:Lcom/alibaba/android/dingtalk/livebase/model/LivePlayObject;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lbwr;->b:Lcom/alibaba/android/dingtalk/livebase/model/LivePlayObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/livebase/model/LivePlayObject;->uuid:Ljava/lang/String;

    goto :goto_0
.end method

.method public final c()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v0, 0x1

    .line 71
    iget-object v1, p0, Lbwr;->b:Lcom/alibaba/android/dingtalk/livebase/model/LivePlayObject;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lbwr;->b:Lcom/alibaba/android/dingtalk/livebase/model/LivePlayObject;

    iget v1, v1, Lcom/alibaba/android/dingtalk/livebase/model/LivePlayObject;->liveRotation:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lbwr;->b:Lcom/alibaba/android/dingtalk/livebase/model/LivePlayObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbwr;->b:Lcom/alibaba/android/dingtalk/livebase/model/LivePlayObject;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/livebase/model/LivePlayObject;->isEnabledLinkMic()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
