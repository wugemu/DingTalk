.class final Lhls$4;
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
    .line 616
    iput-object p1, p0, Lhls$4;->b:Lhls;

    iput-object p2, p0, Lhls$4;->a:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;

    invoke-direct {p0}, Lcom/alipay/mobile/nebula/callback/H5UpdateAppCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onResult(ZZ)V
    .locals 5
    .param p1, "success"    # Z
    .param p2, "isLimit"    # Z

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 619
    iget-object v0, p0, Lhls$4;->a:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->setRequestEndTime(J)V

    .line 620
    if-eqz p1, :cond_0

    .line 621
    iget-object v0, p0, Lhls$4;->b:Lhls;

    iget-object v1, p0, Lhls$4;->a:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;

    invoke-static {v0, v1, v4}, Lhls;->a(Lhls;Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;I)V

    .line 631
    :goto_0
    return-void

    .line 623
    :cond_0
    iget-object v0, p0, Lhls$4;->a:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;

    const-string/jumbo v1, "0"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->setErrorCode(Ljava/lang/String;)V

    .line 624
    iget-object v0, p0, Lhls$4;->a:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->setEndTime(J)V

    .line 625
    iget-object v0, p0, Lhls$4;->a:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->uploadPrepareLog()V

    .line 626
    iget-object v0, p0, Lhls$4;->b:Lhls;

    const-string/jumbo v1, "no_app_info"

    const-string/jumbo v2, "update mini app info fail"

    invoke-static {v0, v4, v1, v2}, Lhls;->a(Lhls;ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
