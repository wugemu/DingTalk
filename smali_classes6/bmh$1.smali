.class final Lbmh$1;
.super Ljava/lang/Object;
.source "DeviceNpcWrapper.java"

# interfaces
.implements Lcom/alibaba/android/dingtalk/alpha/npc/DeviceNpc;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbmh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbmh;


# direct methods
.method constructor <init>(Lbmh;)V
    .locals 0
    .param p1, "this$0"    # Lbmh;

    .prologue
    .line 42
    iput-object p1, p0, Lbmh$1;->a:Lbmh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bindAndActive(Lcom/alibaba/android/dingtalk/alpha/npc/model/AssistActiveRequest;)Lbmd;
    .locals 4
    .param p1, "request"    # Lcom/alibaba/android/dingtalk/alpha/npc/model/AssistActiveRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/dingtalk/alpha/npc/model/AssistActiveRequest;",
            ")",
            "Lbmd",
            "<",
            "Lbmj;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 45
    iget-object v1, p0, Lbmh$1;->a:Lbmh;

    .line 1033
    iget-object v1, v1, Lbmh;->b:Lcom/alibaba/android/dingtalk/alpha/AlphaInterface;

    .line 45
    if-nez v1, :cond_0

    .line 46
    const-string/jumbo v1, "DeviceNpcWrapper"

    const-string/jumbo v2, "AlphaInterface is null"

    invoke-static {v1, v2}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    :goto_0
    return-object v0

    .line 49
    :cond_0
    if-nez p1, :cond_1

    .line 50
    const-string/jumbo v1, "DeviceNpcWrapper"

    const-string/jumbo v2, "bindAndActive request is null"

    invoke-static {v1, v2}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 54
    :cond_1
    :try_start_0
    const-string/jumbo v0, "DeviceNpcWrapper"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "bindAndActive "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    iget-object v0, p0, Lbmh$1;->a:Lbmh;

    .line 2033
    iput-object p1, v0, Lbmh;->d:Lcom/alibaba/android/dingtalk/alpha/npc/model/AssistActiveRequest;

    .line 56
    iget-object v0, p0, Lbmh$1;->a:Lbmh;

    .line 3033
    iget-object v0, v0, Lbmh;->b:Lcom/alibaba/android/dingtalk/alpha/AlphaInterface;

    .line 56
    invoke-interface {v0}, Lcom/alibaba/android/dingtalk/alpha/AlphaInterface;->stopTimeoutTask()V

    .line 57
    new-instance v0, Lbmd;

    invoke-direct {v0}, Lbmd;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    iget-object v1, p0, Lbmh$1;->a:Lbmh;

    invoke-static {v1, p1}, Lbmh;->a(Lbmh;Lcom/alibaba/android/dingtalk/alpha/npc/model/AssistActiveRequest;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lbmh$1;->a:Lbmh;

    invoke-static {v1, p1}, Lbmh;->a(Lbmh;Lcom/alibaba/android/dingtalk/alpha/npc/model/AssistActiveRequest;)V

    throw v0
.end method

.method public final connectInternet(Lbmk;)V
    .locals 4
    .param p1, "request"    # Lbmk;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 126
    if-nez p1, :cond_0

    .line 127
    const-string/jumbo v0, "DeviceNpcWrapper"

    const-string/jumbo v1, "request is null"

    invoke-static {v0, v1}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    :goto_0
    return-void

    .line 130
    :cond_0
    const-string/jumbo v0, "DeviceNpcWrapper"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "connect internet link = "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p1, Lbmk;->a:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lbmh$1$3;

    invoke-direct {v1, p0, p1}, Lbmh$1$3;-><init>(Lbmh$1;Lbmk;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public final getCorpIds()Lbml;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 65
    iget-object v2, p0, Lbmh$1;->a:Lbmh;

    .line 4033
    iget-object v2, v2, Lbmh;->b:Lcom/alibaba/android/dingtalk/alpha/AlphaInterface;

    .line 65
    if-nez v2, :cond_0

    .line 66
    const-string/jumbo v2, "DeviceNpcWrapper"

    const-string/jumbo v3, "AlphaInterface is null"

    invoke-static {v2, v3}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    :goto_0
    return-object v0

    .line 69
    :cond_0
    const-string/jumbo v2, "DeviceNpcWrapper"

    const-string/jumbo v3, "getCorpIds"

    invoke-static {v2, v3}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    iget-object v2, p0, Lbmh$1;->a:Lbmh;

    .line 5033
    iget-object v2, v2, Lbmh;->b:Lcom/alibaba/android/dingtalk/alpha/AlphaInterface;

    .line 70
    invoke-interface {v2}, Lcom/alibaba/android/dingtalk/alpha/AlphaInterface;->stopTimeoutTask()V

    .line 72
    invoke-static {}, Lbly;->a()Lblt;

    move-result-object v1

    .line 73
    .local v1, "result":Lblt;
    if-eqz v1, :cond_1

    iget-object v2, v1, Lblt;->b:Ljava/util/List;

    if-eqz v2, :cond_1

    .line 75
    :try_start_0
    new-instance v0, Lbml;

    invoke-direct {v0}, Lbml;-><init>()V

    .line 76
    .local v0, "response":Lbml;
    new-instance v2, Lbmo;

    invoke-direct {v2}, Lbmo;-><init>()V

    iput-object v2, v0, Lbml;->a:Lbmo;

    .line 77
    iget-object v2, v0, Lbml;->a:Lbmo;

    const/16 v3, 0xc8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v2, Lbmo;->a:Ljava/lang/Integer;

    .line 78
    iget-object v2, v1, Lblt;->b:Ljava/util/List;

    iput-object v2, v0, Lbml;->b:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    iget-object v2, p0, Lbmh$1;->a:Lbmh;

    invoke-static {v2}, Lbmh;->a(Lbmh;)V

    goto :goto_0

    .end local v0    # "response":Lbml;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lbmh$1;->a:Lbmh;

    invoke-static {v3}, Lbmh;->a(Lbmh;)V

    throw v2

    .line 84
    :cond_1
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v2

    new-instance v3, Lbmh$1$1;

    invoke-direct {v3, p0}, Lbmh$1$1;-><init>(Lbmh$1;)V

    invoke-virtual {v2, v3}, Lhcv;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public final showMeshResult(Lbmp;)V
    .locals 6
    .param p1, "request"    # Lbmp;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 99
    iget-object v0, p0, Lbmh$1;->a:Lbmh;

    .line 6033
    iget-object v0, v0, Lbmh;->b:Lcom/alibaba/android/dingtalk/alpha/AlphaInterface;

    .line 99
    if-nez v0, :cond_0

    .line 100
    const-string/jumbo v0, "DeviceNpcWrapper"

    const-string/jumbo v1, "AlphaInterface is null"

    invoke-static {v0, v1}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    :goto_0
    return-void

    .line 103
    :cond_0
    if-nez p1, :cond_1

    .line 104
    const-string/jumbo v0, "DeviceNpcWrapper"

    const-string/jumbo v1, "request is null"

    invoke-static {v0, v1}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 107
    :cond_1
    const-string/jumbo v0, "DeviceNpcWrapper"

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "mesh result = "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p1, Lbmp;->a:Ljava/lang/Integer;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, ", corpId = "

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-virtual {p1}, Lbmp;->a()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string/jumbo v3, ", deviceId = "

    aput-object v3, v1, v2

    const/4 v2, 0x5

    invoke-virtual {p1}, Lbmp;->b()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    invoke-virtual {p1}, Lbmp;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 109
    iget-object v0, p0, Lbmh$1;->a:Lbmh;

    .line 7033
    iget-object v0, v0, Lbmh;->b:Lcom/alibaba/android/dingtalk/alpha/AlphaInterface;

    .line 109
    invoke-interface {v0}, Lcom/alibaba/android/dingtalk/alpha/AlphaInterface;->stopAloneTask()V

    .line 111
    :cond_2
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lbmh$1$2;

    invoke-direct {v1, p0, p1}, Lbmh$1$2;-><init>(Lbmh$1;Lbmp;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
