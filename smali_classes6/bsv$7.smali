.class final Lbsv$7;
.super Ljava/lang/Object;
.source "BleBindPresenter.java"

# interfaces
.implements Lbsv$i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbsv;->a(Lcom/alibaba/android/dingbox/btinterface/BleInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingbox/btinterface/BleInterface;

.field final synthetic b:Lbsv;


# direct methods
.method constructor <init>(Lbsv;Lcom/alibaba/android/dingbox/btinterface/BleInterface;)V
    .locals 0
    .param p1, "this$0"    # Lbsv;

    .prologue
    .line 1333
    iput-object p1, p0, Lbsv$7;->b:Lbsv;

    iput-object p2, p0, Lbsv$7;->a:Lcom/alibaba/android/dingbox/btinterface/BleInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/alibaba/android/dingbox/btinterface/BleInterface$e;)V
    .locals 11
    .param p1, "result"    # Lcom/alibaba/android/dingbox/btinterface/BleInterface$e;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1336
    if-eqz p1, :cond_0

    iget-object v0, p0, Lbsv$7;->b:Lbsv;

    iget-object v0, v0, Lbsv;->b:Lbsw$b;

    if-nez v0, :cond_1

    .line 1337
    :cond_0
    iget-object v0, p0, Lbsv$7;->b:Lbsv;

    invoke-static {v0, v3, v2}, Lbsv;->a(Lbsv;ZLjava/lang/String;)V

    .line 1400
    :goto_0
    return-void

    .line 1340
    :cond_1
    iget-object v0, p0, Lbsv$7;->b:Lbsv;

    const/4 v1, 0x1

    invoke-static {v0, v1, v2}, Lbsv;->a(Lbsv;ZLjava/lang/String;)V

    .line 1341
    iget-object v0, p0, Lbsv$7;->b:Lbsv;

    .line 2075
    iget-boolean v0, v0, Lbsv;->f:Z

    .line 1341
    if-eqz v0, :cond_2

    .line 1342
    new-instance v7, Lbsv$7$1;

    invoke-direct {v7, p0}, Lbsv$7$1;-><init>(Lbsv$7;)V

    .line 1390
    .local v7, "apiEventListener":Lcma;, "Lcma<Lbsj;>;"
    invoke-static {}, Lbso;->a()Lbso;

    move-result-object v1

    iget-object v0, p0, Lbsv$7;->b:Lbsv;

    iget-object v0, v0, Lbsv;->b:Lbsw$b;

    .line 1391
    invoke-interface {v0}, Lbsw$b;->e()I

    move-result v2

    iget-object v0, p0, Lbsv$7;->b:Lbsv;

    iget-object v0, v0, Lbsv;->b:Lbsw$b;

    .line 1392
    invoke-interface {v0}, Lbsw$b;->c()I

    move-result v3

    iget-object v0, p0, Lbsv$7;->b:Lbsv;

    iget-object v0, v0, Lbsv;->b:Lbsw$b;

    .line 1393
    invoke-interface {v0}, Lbsw$b;->f()J

    move-result-wide v4

    iget-object v0, p1, Lcom/alibaba/android/dingbox/btinterface/BleInterface$e;->a:Ljava/lang/Integer;

    .line 1394
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iget-object v0, p1, Lcom/alibaba/android/dingbox/btinterface/BleInterface$e;->b:Ljava/lang/Integer;

    .line 1395
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 1396
    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v0

    const-class v6, Lcma;

    iget-object v10, p0, Lbsv$7;->b:Lbsv;

    invoke-virtual {v10}, Lbsv;->l()Landroid/app/Activity;

    move-result-object v10

    invoke-interface {v0, v7, v6, v10}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 2214
    new-instance v6, Lbso$3;

    invoke-direct {v6, v1, v0}, Lbso$3;-><init>(Lbso;Lcma;)V

    .line 2220
    const-class v0, Lcom/alibaba/android/dingtalk/guard/idl/services/DeviceIService;

    invoke-static {v0}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/guard/idl/services/DeviceIService;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface/range {v0 .. v6}, Lcom/alibaba/android/dingtalk/guard/idl/services/DeviceIService;->getDeviceEndorsement(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Liyv;)V

    goto :goto_0

    .line 1398
    .end local v7    # "apiEventListener":Lcma;, "Lcma<Lbsj;>;"
    :cond_2
    iget-object v0, p0, Lbsv$7;->b:Lbsv;

    invoke-static {v0, v3, v2}, Lbsv;->b(Lbsv;ZLjava/lang/String;)V

    goto :goto_0
.end method
