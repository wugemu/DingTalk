.class Lcom/alipay/mobile/nebula/networksupervisor/H5NetworkSuScheduler$1;
.super Ljava/lang/Object;
.source "H5NetworkSuScheduler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebula/networksupervisor/H5NetworkSuScheduler;->execInternal(Lcom/alipay/mobile/nebula/networksupervisor/H5NetworkSupervisor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebula/networksupervisor/H5NetworkSuScheduler;

.field final synthetic val$h5NetworkSupervisor:Lcom/alipay/mobile/nebula/networksupervisor/H5NetworkSupervisor;

.field final synthetic val$tmpEntityList:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebula/networksupervisor/H5NetworkSuScheduler;Ljava/util/List;Lcom/alipay/mobile/nebula/networksupervisor/H5NetworkSupervisor;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebula/networksupervisor/H5NetworkSuScheduler;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/alipay/mobile/nebula/networksupervisor/H5NetworkSuScheduler$1;->this$0:Lcom/alipay/mobile/nebula/networksupervisor/H5NetworkSuScheduler;

    iput-object p2, p0, Lcom/alipay/mobile/nebula/networksupervisor/H5NetworkSuScheduler$1;->val$tmpEntityList:Ljava/util/List;

    iput-object p3, p0, Lcom/alipay/mobile/nebula/networksupervisor/H5NetworkSuScheduler$1;->val$h5NetworkSupervisor:Lcom/alipay/mobile/nebula/networksupervisor/H5NetworkSupervisor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 68
    iget-object v1, p0, Lcom/alipay/mobile/nebula/networksupervisor/H5NetworkSuScheduler$1;->val$tmpEntityList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/networksupervisor/H5NetworkSuEntity;

    .line 69
    .local v0, "entity":Lcom/alipay/mobile/nebula/networksupervisor/H5NetworkSuEntity;
    if-eqz v0, :cond_0

    .line 70
    instance-of v2, v0, Lcom/alipay/mobile/nebula/networksupervisor/H5NetworkSuRequest;

    if-eqz v2, :cond_1

    .line 71
    iget-object v2, p0, Lcom/alipay/mobile/nebula/networksupervisor/H5NetworkSuScheduler$1;->val$h5NetworkSupervisor:Lcom/alipay/mobile/nebula/networksupervisor/H5NetworkSupervisor;

    check-cast v0, Lcom/alipay/mobile/nebula/networksupervisor/H5NetworkSuRequest;

    .end local v0    # "entity":Lcom/alipay/mobile/nebula/networksupervisor/H5NetworkSuEntity;
    invoke-interface {v2, v0}, Lcom/alipay/mobile/nebula/networksupervisor/H5NetworkSupervisor;->onSendReq(Lcom/alipay/mobile/nebula/networksupervisor/H5NetworkSuRequest;)V

    goto :goto_0

    .line 73
    .restart local v0    # "entity":Lcom/alipay/mobile/nebula/networksupervisor/H5NetworkSuEntity;
    :cond_1
    iget-object v2, p0, Lcom/alipay/mobile/nebula/networksupervisor/H5NetworkSuScheduler$1;->val$h5NetworkSupervisor:Lcom/alipay/mobile/nebula/networksupervisor/H5NetworkSupervisor;

    check-cast v0, Lcom/alipay/mobile/nebula/networksupervisor/H5NetworkSuResponse;

    .end local v0    # "entity":Lcom/alipay/mobile/nebula/networksupervisor/H5NetworkSuEntity;
    invoke-interface {v2, v0}, Lcom/alipay/mobile/nebula/networksupervisor/H5NetworkSupervisor;->onReceiveRsp(Lcom/alipay/mobile/nebula/networksupervisor/H5NetworkSuResponse;)V

    goto :goto_0

    .line 77
    :cond_2
    return-void
.end method
