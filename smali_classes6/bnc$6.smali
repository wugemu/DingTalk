.class final Lbnc$6;
.super Lcmi;
.source "ApDeviceService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbnc;->a(Lcom/alibaba/android/dingtalk/alpha/rpc/idl/model/BindAndSettingModel;Lcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmi",
        "<",
        "Lbsa;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcma;

.field final synthetic b:Lbnc;


# direct methods
.method constructor <init>(Lbnc;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lbnc;

    .prologue
    .line 224
    iput-object p1, p0, Lbnc$6;->b:Lbnc;

    iput-object p2, p0, Lbnc$6;->a:Lcma;

    invoke-direct {p0}, Lcmi;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 235
    const-string/jumbo v0, "ApDeviceService"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "bindAndSettings code = "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, ", reason = "

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object p2, v1, v2

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    iget-object v0, p0, Lbnc$6;->a:Lcma;

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lbnc$6;->a:Lcma;

    invoke-interface {v0, p1, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    :cond_0
    return-void
.end method

.method public final synthetic onLoadSuccess(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 224
    check-cast p1, Lbsa;

    .line 1227
    const-string/jumbo v0, "ApDeviceService"

    const-string/jumbo v1, "bindAndSettings success"

    invoke-static {v0, v1}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1228
    iget-object v0, p0, Lbnc$6;->a:Lcma;

    if-eqz v0, :cond_0

    .line 1229
    iget-object v0, p0, Lbnc$6;->a:Lcma;

    invoke-interface {v0, p1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 224
    :cond_0
    return-void
.end method
