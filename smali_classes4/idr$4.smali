.class public final Lidr$4;
.super Ljava/lang/Object;
.source "UserConverter.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lidr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/wukong/Callback",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/alibaba/wukong/im/user/UserImpl;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Map;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Lcom/alibaba/wukong/Callback;


# direct methods
.method public constructor <init>(Ljava/util/Map;Ljava/util/List;Lcom/alibaba/wukong/Callback;)V
    .locals 0

    .prologue
    .line 436
    iput-object p1, p0, Lidr$4;->a:Ljava/util/Map;

    iput-object p2, p0, Lidr$4;->b:Ljava/util/List;

    iput-object p3, p0, Lidr$4;->c:Lcom/alibaba/wukong/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 461
    const-string/jumbo v0, "UserConverter"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "get user profile error. "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    iget-object v0, p0, Lidr$4;->c:Lcom/alibaba/wukong/Callback;

    if-eqz v0, :cond_0

    .line 463
    iget-object v0, p0, Lidr$4;->c:Lcom/alibaba/wukong/Callback;

    invoke-interface {v0, p1, p2}, Lcom/alibaba/wukong/Callback;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    :cond_0
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 436
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 436
    check-cast p1, Ljava/util/List;

    .line 1439
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/user/UserImpl;

    .line 1440
    if-eqz v0, :cond_0

    .line 1442
    new-instance v2, Lcom/alibaba/wukong/im/message/MessageReceiverImpl;

    invoke-direct {v2}, Lcom/alibaba/wukong/im/message/MessageReceiverImpl;-><init>()V

    .line 1443
    iput-object v0, v2, Lcom/alibaba/wukong/im/message/MessageReceiverImpl;->mUser:Lcom/alibaba/wukong/im/User;

    .line 1444
    iget-object v3, p0, Lidr$4;->a:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/alibaba/wukong/im/user/UserImpl;->openId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/alibaba/wukong/im/Message$ReadStatus;->fromValue(I)Lcom/alibaba/wukong/im/Message$ReadStatus;

    move-result-object v0

    iput-object v0, v2, Lcom/alibaba/wukong/im/message/MessageReceiverImpl;->mStatus:Lcom/alibaba/wukong/im/Message$ReadStatus;

    .line 1445
    iget-object v0, p0, Lidr$4;->b:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1448
    :cond_1
    iget-object v0, p0, Lidr$4;->c:Lcom/alibaba/wukong/Callback;

    if-eqz v0, :cond_2

    .line 1449
    iget-object v0, p0, Lidr$4;->c:Lcom/alibaba/wukong/Callback;

    iget-object v1, p0, Lidr$4;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/alibaba/wukong/Callback;->onSuccess(Ljava/lang/Object;)V

    .line 1451
    :cond_2
    invoke-static {}, Lcom/alibaba/wukong/WKManager;->getWKExecutor()Lcom/alibaba/wukong/WKExecutor;

    move-result-object v0

    new-instance v1, Lidr$4$1;

    invoke-direct {v1, p0, p1}, Lidr$4$1;-><init>(Lidr$4;Ljava/util/List;)V

    sget-object v2, Lcom/alibaba/doraemon/Priority;->NORMAL:Lcom/alibaba/doraemon/Priority;

    invoke-interface {v0, v1, v2}, Lcom/alibaba/wukong/WKExecutor;->execute(Ljava/lang/Runnable;Lcom/alibaba/doraemon/Priority;)V

    .line 436
    return-void
.end method
