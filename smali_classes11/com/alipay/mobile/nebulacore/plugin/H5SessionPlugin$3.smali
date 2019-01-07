.class Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin$3;
.super Ljava/lang/Object;
.source "H5SessionPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin;->pushWindow(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin;

.field final synthetic val$closeAllWindow:Z

.field final synthetic val$param:Lcom/alibaba/fastjson/JSONObject;

.field final synthetic val$popToIndex:I


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin;Lcom/alibaba/fastjson/JSONObject;IZ)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin;

    .prologue
    .line 733
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin$3;->this$0:Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin;

    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin$3;->val$param:Lcom/alibaba/fastjson/JSONObject;

    iput p3, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin$3;->val$popToIndex:I

    iput-boolean p4, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin$3;->val$closeAllWindow:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 736
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin$3;->this$0:Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin;

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin$3;->val$param:Lcom/alibaba/fastjson/JSONObject;

    iget v2, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin$3;->val$popToIndex:I

    const/4 v3, 0x1

    iget-boolean v4, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin$3;->val$closeAllWindow:Z

    invoke-static {v0, v1, v2, v3, v4}, Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin;->access$100(Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin;Lcom/alibaba/fastjson/JSONObject;IZZ)Z

    .line 737
    return-void
.end method
