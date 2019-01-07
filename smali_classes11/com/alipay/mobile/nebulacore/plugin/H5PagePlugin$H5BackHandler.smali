.class Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$H5BackHandler;
.super Ljava/lang/Object;
.source "H5PagePlugin.java"

# interfaces
.implements Lioa;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "H5BackHandler"
.end annotation


# instance fields
.field public lastBack:J

.field final synthetic this$0:Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;

.field public waiting:Z


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;)V
    .locals 2
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;

    .prologue
    .line 693
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$H5BackHandler;->this$0:Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 694
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$H5BackHandler;->waiting:Z

    .line 695
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$H5BackHandler;->lastBack:J

    .line 696
    return-void
.end method


# virtual methods
.method public onCallBack(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 4
    .param p1, "param"    # Lcom/alibaba/fastjson/JSONObject;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 700
    iput-boolean v2, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$H5BackHandler;->waiting:Z

    .line 701
    const-string/jumbo v1, "prevent"

    invoke-static {p1, v1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Z)Z

    move-result v0

    .line 702
    .local v0, "prevent":Z
    const-string/jumbo v1, "H5PagePlugin"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "back event prevent "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 703
    if-eqz v0, :cond_0

    .line 707
    :goto_0
    return-void

    .line 706
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$H5BackHandler;->this$0:Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;

    invoke-static {v1}, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->access$100(Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;)V

    goto :goto_0
.end method
