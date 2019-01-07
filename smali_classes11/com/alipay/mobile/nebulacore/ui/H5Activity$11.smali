.class Lcom/alipay/mobile/nebulacore/ui/H5Activity$11;
.super Ljava/lang/Object;
.source "H5Activity.java"

# interfaces
.implements Lcom/alipay/mobile/nebula/provider/H5DialogManagerProvider$OnClickPositiveListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/ui/H5Activity;->showSessionTabErrorDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebulacore/ui/H5Activity;

.field final synthetic val$h5DialogManagerProvider:Lcom/alipay/mobile/nebula/provider/H5DialogManagerProvider;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/ui/H5Activity;Lcom/alipay/mobile/nebula/provider/H5DialogManagerProvider;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    .prologue
    .line 789
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity$11;->this$0:Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity$11;->val$h5DialogManagerProvider:Lcom/alipay/mobile/nebula/provider/H5DialogManagerProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 792
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity$11;->val$h5DialogManagerProvider:Lcom/alipay/mobile/nebula/provider/H5DialogManagerProvider;

    invoke-interface {v1}, Lcom/alipay/mobile/nebula/provider/H5DialogManagerProvider;->disMissDialog()V

    .line 793
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity$11;->val$h5DialogManagerProvider:Lcom/alipay/mobile/nebula/provider/H5DialogManagerProvider;

    invoke-interface {v1}, Lcom/alipay/mobile/nebula/provider/H5DialogManagerProvider;->release()V

    .line 794
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isInTinyProcess()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 795
    const-class v1, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/process/H5EventHandler;

    .line 796
    .local v0, "h5EventHandlerService":Lcom/alipay/mobile/nebula/process/H5EventHandler;
    if-eqz v0, :cond_0

    .line 797
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity$11;->this$0:Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/nebula/process/H5EventHandler;->moveTaskToBackAndStop(Landroid/app/Activity;Z)V

    .line 802
    .end local v0    # "h5EventHandlerService":Lcom/alipay/mobile/nebula/process/H5EventHandler;
    :cond_0
    :goto_0
    return-void

    .line 800
    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity$11;->this$0:Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->finish()V

    goto :goto_0
.end method
