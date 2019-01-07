.class Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl$4;
.super Landroid/content/BroadcastReceiver;
.source "NebulaServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->registerH5BugMeStartUp()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;

    .prologue
    .line 888
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl$4;->this$0:Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 891
    const-string/jumbo v2, "H5NebulaService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "h5bugMeStartUpReceiver"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl$4;->this$0:Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 892
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "h5bugMeStartUp"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 916
    :goto_0
    return-void

    .line 898
    :cond_0
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 899
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "h5devType"

    .line 898
    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "h5devH5App"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    if-eqz v2, :cond_1

    .line 901
    :try_start_1
    new-instance v1, Landroid/content/Intent;

    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevSettingsActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 903
    .local v1, "startIntent":Landroid/content/Intent;
    const-string/jumbo v2, "h5devType"

    const-string/jumbo v3, "h5devH5App"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 904
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 905
    const/4 v2, 0x0

    invoke-static {v2, v1}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->startActivity(Lcom/alipay/mobile/h5container/api/H5Context;Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 906
    .end local v1    # "startIntent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 907
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v2, "H5NebulaService"

    invoke-static {v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 912
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 913
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string/jumbo v2, "H5NebulaService"

    invoke-static {v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 910
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :try_start_3
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl$4;->this$0:Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;

    invoke-virtual {v2}, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->getBugMeManager()Lcom/alipay/mobile/nebula/dev/H5BugMeManager;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/alipay/mobile/nebula/dev/H5BugMeManager;->openSettingPanel(Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0
.end method
