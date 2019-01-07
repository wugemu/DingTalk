.class final Lbws$2;
.super Ljava/lang/Object;
.source "PlayerManager.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbws;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/wukong/Callback",
        "<",
        "Lbuq;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lbws;


# direct methods
.method constructor <init>(Lbws;)V
    .locals 0
    .param p1, "this$0"    # Lbws;

    .prologue
    .line 372
    iput-object p1, p0, Lbws$2;->a:Lbws;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 393
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "enter room rpc failed, code="

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, ", reason="

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object p2, v0, v1

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1013
    const-string/jumbo v1, "live"

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 372
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 372
    check-cast p1, Lbuq;

    .line 1375
    invoke-static {p1}, Lcom/alibaba/android/dingtalk/live/rpc/model/LiveDetailObject;->fromIdl(Lbuq;)Lcom/alibaba/android/dingtalk/live/rpc/model/LiveDetailObject;

    move-result-object v0

    .line 1376
    if-eqz v0, :cond_0

    iget-object v1, p0, Lbws$2;->a:Lbws;

    invoke-static {v1}, Lbws;->a(Lbws;)Lbwq;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1377
    iget-object v1, p0, Lbws$2;->a:Lbws;

    invoke-static {v1}, Lbws;->a(Lbws;)Lbwq;

    move-result-object v1

    invoke-virtual {v1, v0}, Lbwq;->a(Lcom/alibaba/android/dingtalk/live/rpc/model/LiveDetailObject;)V

    :goto_0
    return-void

    .line 1379
    :cond_0
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    .line 1380
    const-string/jumbo v2, "failed refresh after enterRoom"

    invoke-virtual {v1, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1381
    if-nez v0, :cond_1

    .line 1382
    const-string/jumbo v0, ", enterRoomRspModel is null"

    invoke-virtual {v1, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1384
    :cond_1
    iget-object v0, p0, Lbws$2;->a:Lbws;

    invoke-static {v0}, Lbws;->a(Lbws;)Lbwq;

    move-result-object v0

    if-nez v0, :cond_2

    .line 1385
    const-string/jumbo v0, ", mLivePlayer is null"

    invoke-virtual {v1, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1387
    :cond_2
    invoke-virtual {v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2013
    const-string/jumbo v1, "live"

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
