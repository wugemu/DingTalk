.class Lcom/alipay/mobile/nebulacore/ui/H5Activity$8;
.super Ljava/lang/Object;
.source "H5Activity.java"

# interfaces
.implements Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabInfoParser$H5SessionTabInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/ui/H5Activity;->initPageContent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebulacore/ui/H5Activity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/ui/H5Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    .prologue
    .line 678
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity$8;->this$0:Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetAsyncData(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 1
    .param p1, "data"    # Lcom/alibaba/fastjson/JSONObject;

    .prologue
    .line 686
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity$8;->this$0:Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    invoke-static {v0, p1}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->access$400(Lcom/alipay/mobile/nebulacore/ui/H5Activity;Lcom/alibaba/fastjson/JSONObject;)V

    .line 687
    return-void
.end method

.method public onGetSyncData(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 1
    .param p1, "data"    # Lcom/alibaba/fastjson/JSONObject;

    .prologue
    .line 681
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity$8;->this$0:Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    invoke-static {v0, p1}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->access$400(Lcom/alipay/mobile/nebulacore/ui/H5Activity;Lcom/alibaba/fastjson/JSONObject;)V

    .line 682
    return-void
.end method

.method public onShowDefaultTab()V
    .locals 1

    .prologue
    .line 691
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity$8;->this$0:Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->access$500(Lcom/alipay/mobile/nebulacore/ui/H5Activity;)V

    .line 692
    return-void
.end method
