.class final Lcom/alipay/mobile/nebulauc/impl/setup/UcVideoSetup$5;
.super Ljava/lang/Object;
.source "UcVideoSetup.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulauc/impl/setup/UcVideoSetup;->initVideoControl(Landroid/content/Context;ZLjava/lang/String;ZZ)J
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Landroid/content/Context;


# direct methods
.method constructor <init>(ZLandroid/content/Context;)V
    .locals 0

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/alipay/mobile/nebulauc/impl/setup/UcVideoSetup$5;->a:Z

    iput-object p2, p0, Lcom/alipay/mobile/nebulauc/impl/setup/UcVideoSetup$5;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 69
    .line 1072
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulauc/impl/setup/UcVideoSetup$5;->a:Z

    if-eqz v0, :cond_0

    .line 1073
    const-string/jumbo v0, "H5UcService::UcVideoSetup"

    const-string/jumbo v1, "downloadApolloIn4G config yes"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1074
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    return-object v0

    .line 1076
    :cond_0
    const-string/jumbo v0, "WIFI"

    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/impl/setup/UcVideoSetup$5;->b:Landroid/content/Context;

    .line 1077
    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getNetworkType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 1076
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    .line 1078
    const-string/jumbo v1, "H5UcService::UcVideoSetup"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "updateUCPlayer isWifi "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1079
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method
