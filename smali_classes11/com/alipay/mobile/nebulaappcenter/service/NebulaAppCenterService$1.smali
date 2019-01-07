.class Lcom/alipay/mobile/nebulaappcenter/service/NebulaAppCenterService$1;
.super Ljava/lang/Object;
.source "NebulaAppCenterService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulaappcenter/service/NebulaAppCenterService;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebulaappcenter/service/NebulaAppCenterService;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulaappcenter/service/NebulaAppCenterService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulaappcenter/service/NebulaAppCenterService;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappcenter/service/NebulaAppCenterService$1;->this$0:Lcom/alipay/mobile/nebulaappcenter/service/NebulaAppCenterService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/service/NebulaAppCenterService$1;->this$0:Lcom/alipay/mobile/nebulaappcenter/service/NebulaAppCenterService;

    invoke-static {v0}, Lcom/alipay/mobile/nebulaappcenter/service/NebulaAppCenterService;->access$000(Lcom/alipay/mobile/nebulaappcenter/service/NebulaAppCenterService;)V

    .line 59
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/service/NebulaAppCenterService$1;->this$0:Lcom/alipay/mobile/nebulaappcenter/service/NebulaAppCenterService;

    invoke-static {v0}, Lcom/alipay/mobile/nebulaappcenter/service/NebulaAppCenterService;->access$100(Lcom/alipay/mobile/nebulaappcenter/service/NebulaAppCenterService;)V

    .line 60
    return-void
.end method
