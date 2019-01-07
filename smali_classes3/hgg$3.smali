.class final Lhgg$3;
.super Ljava/lang/Object;
.source "KaoQinManager.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhgg;->a(Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;Ljava/lang/Integer;Ljava/lang/Long;Lcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcma;

.field final synthetic b:Lhgg;


# direct methods
.method constructor <init>(Lhgg;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lhgg;

    .prologue
    .line 416
    iput-object p1, p0, Lhgg$3;->b:Lhgg;

    iput-object p2, p0, Lhgg$3;->a:Lcma;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 416
    check-cast p1, Ljava/lang/Void;

    .line 1420
    const-string/jumbo v0, "Beacon"

    const-string/jumbo v1, "KaoQinManager"

    const-string/jumbo v2, "[Device Beacon] dingxAtmCheck success"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1421
    iget-object v0, p0, Lhgg$3;->a:Lcma;

    if-eqz v0, :cond_0

    .line 1422
    iget-object v0, p0, Lhgg$3;->a:Lcma;

    invoke-interface {v0, p1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 416
    :cond_0
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 435
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "[Device Beacon] dingxAtmCheck fail, code="

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "; msg="

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object p2, v1, v2

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 436
    .local v0, "log":Ljava/lang/String;
    const-string/jumbo v1, "Beacon"

    const-string/jumbo v2, "KaoQinManager"

    invoke-static {v1, v2, v0}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    iget-object v1, p0, Lhgg$3;->a:Lcma;

    if-eqz v1, :cond_0

    .line 438
    iget-object v1, p0, Lhgg$3;->a:Lcma;

    invoke-interface {v1, p1, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    :cond_0
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 428
    iget-object v0, p0, Lhgg$3;->a:Lcma;

    if-eqz v0, :cond_0

    .line 429
    iget-object v0, p0, Lhgg$3;->a:Lcma;

    invoke-interface {v0, p1, p2}, Lcma;->onProgress(Ljava/lang/Object;I)V

    .line 431
    :cond_0
    return-void
.end method
