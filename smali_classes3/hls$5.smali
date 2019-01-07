.class final Lhls$5;
.super Lcom/alipay/mobile/nebula/callback/H5UpdateAppCallback;
.source "MiniappInstance.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhls;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;

.field final synthetic b:Lhls;


# direct methods
.method constructor <init>(Lhls;Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;)V
    .locals 0
    .param p1, "this$0"    # Lhls;

    .prologue
    .line 648
    iput-object p1, p0, Lhls$5;->b:Lhls;

    iput-object p2, p0, Lhls$5;->a:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;

    invoke-direct {p0}, Lcom/alipay/mobile/nebula/callback/H5UpdateAppCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onResult(ZZ)V
    .locals 4
    .param p1, "success"    # Z
    .param p2, "isLimit"    # Z

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 651
    iget-object v0, p0, Lhls$5;->a:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->setRequestEndTime(J)V

    .line 652
    if-eqz p1, :cond_0

    .line 653
    iget-object v0, p0, Lhls$5;->b:Lhls;

    iget-object v1, p0, Lhls$5;->a:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;

    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, Lhls;->a(Lhls;Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;I)V

    .line 664
    :goto_0
    return-void

    .line 655
    :cond_0
    iget-object v0, p0, Lhls$5;->a:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;

    const-string/jumbo v1, "0"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->setErrorCode(Ljava/lang/String;)V

    .line 656
    iget-object v0, p0, Lhls$5;->a:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->setEndTime(J)V

    .line 657
    iget-object v0, p0, Lhls$5;->a:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->uploadPrepareLog()V

    .line 659
    iget-object v0, p0, Lhls$5;->b:Lhls;

    const/4 v1, 0x0

    const-string/jumbo v2, "sync_try_fail"

    const-string/jumbo v3, "try sync app fail"

    invoke-static {v0, v1, v2, v3}, Lhls;->a(Lhls;ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
