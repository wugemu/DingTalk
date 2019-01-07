.class Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin$2;
.super Ljava/lang/Object;
.source "H5HttpPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;->handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;

.field final synthetic val$bridgeContext:Liny;

.field final synthetic val$event:Lcom/alipay/mobile/h5container/api/H5Event;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;Lcom/alipay/mobile/h5container/api/H5Event;Liny;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;

    .prologue
    .line 151
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin$2;->this$0:Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;

    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin$2;->val$event:Lcom/alipay/mobile/h5container/api/H5Event;

    iput-object p3, p0, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin$2;->val$bridgeContext:Liny;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 155
    :try_start_0
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin$2;->this$0:Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;

    invoke-static {v4}, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;->access$100(Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;)Liop;

    move-result-object v4

    invoke-interface {v4}, Liop;->getParams()Landroid/os/Bundle;

    move-result-object v2

    .line 156
    .local v2, "startParams":Landroid/os/Bundle;
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin$2;->this$0:Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;

    const-string/jumbo v5, "appId"

    invoke-static {v2, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;->access$202(Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;Ljava/lang/String;)Ljava/lang/String;

    .line 157
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin$2;->this$0:Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;

    const-string/jumbo v5, "publicId"

    invoke-static {v2, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;->access$302(Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;Ljava/lang/String;)Ljava/lang/String;

    .line 158
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin$2;->this$0:Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;

    const-string/jumbo v5, "release_type"

    invoke-static {v2, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;->access$402(Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;Ljava/lang/String;)Ljava/lang/String;

    .line 159
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin$2;->this$0:Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;

    const-string/jumbo v5, "appVersion"

    invoke-static {v2, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;->access$502(Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;Ljava/lang/String;)Ljava/lang/String;

    .line 160
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin$2;->this$0:Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;

    const-string/jumbo v5, "package_nick"

    invoke-static {v2, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;->access$602(Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;Ljava/lang/String;)Ljava/lang/String;

    .line 161
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin$2;->this$0:Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;

    const-string/jumbo v5, "bizScenario"

    invoke-static {v2, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;->access$702(Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;Ljava/lang/String;)Ljava/lang/String;

    .line 163
    const/4 v1, 0x0

    .line 165
    .local v1, "hasPermissionFile":Z
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getH5TinyAppService()Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 167
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getH5TinyAppService()Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;

    move-result-object v4

    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin$2;->this$0:Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;

    invoke-static {v5}, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;->access$200(Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin$2;->this$0:Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;

    invoke-static {v6}, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;->access$100(Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;)Liop;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;->hasPermissionFile(Ljava/lang/String;Liop;)Z

    move-result v1

    .line 170
    :cond_0
    const/4 v0, 0x0

    .line 171
    .local v0, "enableProxy":Z
    if-eqz v1, :cond_1

    .line 172
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getH5TinyAppService()Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;

    move-result-object v4

    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin$2;->this$0:Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;

    .line 173
    invoke-static {v5}, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;->access$200(Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const-string/jumbo v7, "Enable_Proxy"

    iget-object v8, p0, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin$2;->this$0:Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;

    invoke-static {v8}, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;->access$100(Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;)Liop;

    move-result-object v8

    invoke-interface {v4, v5, v6, v7, v8}, Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;->hasPermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Liop;)Z

    move-result v0

    .line 175
    :cond_1
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin$2;->this$0:Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;

    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin$2;->this$0:Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;

    invoke-static {v5}, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;->access$200(Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;->access$800(Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin$2;->this$0:Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;

    invoke-static {v4}, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;->access$900(Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;)Lcom/alipay/mobile/h5container/service/H5EventHandlerService;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 177
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin$2;->this$0:Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;

    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin$2;->val$event:Lcom/alipay/mobile/h5container/api/H5Event;

    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin$2;->val$bridgeContext:Liny;

    const/4 v7, 0x0

    invoke-static {v4, v5, v6, v7}, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;->access$1000(Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;Lcom/alipay/mobile/h5container/api/H5Event;Liny;Z)V

    .line 192
    .end local v0    # "enableProxy":Z
    .end local v1    # "hasPermissionFile":Z
    .end local v2    # "startParams":Landroid/os/Bundle;
    :goto_0
    return-void

    .line 180
    .restart local v0    # "enableProxy":Z
    .restart local v1    # "hasPermissionFile":Z
    .restart local v2    # "startParams":Landroid/os/Bundle;
    :cond_2
    if-eqz v0, :cond_3

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin$2;->this$0:Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;

    invoke-static {v4}, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;->access$900(Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;)Lcom/alipay/mobile/h5container/service/H5EventHandlerService;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 181
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin$2;->this$0:Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;

    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin$2;->val$event:Lcom/alipay/mobile/h5container/api/H5Event;

    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin$2;->val$bridgeContext:Liny;

    const/4 v7, 0x1

    invoke-static {v4, v5, v6, v7}, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;->access$1000(Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;Lcom/alipay/mobile/h5container/api/H5Event;Liny;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 187
    .end local v0    # "enableProxy":Z
    .end local v1    # "hasPermissionFile":Z
    .end local v2    # "startParams":Landroid/os/Bundle;
    :catch_0
    move-exception v3

    .line 188
    .local v3, "throwable":Ljava/lang/Throwable;
    const-string/jumbo v4, "H5HttpPlugin"

    invoke-static {v4, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 189
    const/16 v4, 0xc

    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin$2;->val$bridgeContext:Liny;

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;->sendFailed(ILiny;)V

    goto :goto_0

    .line 184
    .end local v3    # "throwable":Ljava/lang/Throwable;
    .restart local v0    # "enableProxy":Z
    .restart local v1    # "hasPermissionFile":Z
    .restart local v2    # "startParams":Landroid/os/Bundle;
    :cond_3
    :try_start_1
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin$2;->this$0:Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;

    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin$2;->val$event:Lcom/alipay/mobile/h5container/api/H5Event;

    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin$2;->val$bridgeContext:Liny;

    invoke-static {v4, v5, v6}, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;->access$1100(Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;Lcom/alipay/mobile/h5container/api/H5Event;Liny;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
