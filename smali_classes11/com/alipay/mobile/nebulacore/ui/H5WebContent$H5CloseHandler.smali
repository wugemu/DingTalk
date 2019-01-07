.class Lcom/alipay/mobile/nebulacore/ui/H5WebContent$H5CloseHandler;
.super Ljava/lang/Object;
.source "H5WebContent.java"

# interfaces
.implements Lioa;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/nebulacore/ui/H5WebContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "H5CloseHandler"
.end annotation


# instance fields
.field public lastClose:J

.field final synthetic this$0:Lcom/alipay/mobile/nebulacore/ui/H5WebContent;

.field public waiting:Z


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/nebulacore/ui/H5WebContent;)V
    .locals 2

    .prologue
    .line 704
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent$H5CloseHandler;->this$0:Lcom/alipay/mobile/nebulacore/ui/H5WebContent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 705
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent$H5CloseHandler;->waiting:Z

    .line 706
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent$H5CloseHandler;->lastClose:J

    .line 707
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

    .line 711
    iput-boolean v2, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent$H5CloseHandler;->waiting:Z

    .line 712
    const-string/jumbo v1, "prevent"

    invoke-static {p1, v1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Z)Z

    move-result v0

    .line 713
    .local v0, "prevent":Z
    const-string/jumbo v1, "H5WebContent"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "close event prevent "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 714
    if-eqz v0, :cond_0

    .line 718
    :goto_0
    return-void

    .line 717
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent$H5CloseHandler;->this$0:Lcom/alipay/mobile/nebulacore/ui/H5WebContent;

    invoke-static {v1}, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->access$1200(Lcom/alipay/mobile/nebulacore/ui/H5WebContent;)V

    goto :goto_0
.end method
