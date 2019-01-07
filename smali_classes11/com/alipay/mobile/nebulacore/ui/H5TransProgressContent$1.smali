.class Lcom/alipay/mobile/nebulacore/ui/H5TransProgressContent$1;
.super Ljava/lang/Object;
.source "H5TransProgressContent.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/ui/H5TransProgressContent;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebulacore/ui/H5TransProgressContent;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/ui/H5TransProgressContent;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/ui/H5TransProgressContent;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/ui/H5TransProgressContent$1;->this$0:Lcom/alipay/mobile/nebulacore/ui/H5TransProgressContent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 66
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5TransProgressContent$1;->this$0:Lcom/alipay/mobile/nebulacore/ui/H5TransProgressContent;

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/ui/H5TransProgressContent;->access$000(Lcom/alipay/mobile/nebulacore/ui/H5TransProgressContent;)Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    move-result-object v0

    const-string/jumbo v1, "h5PageClose"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 67
    return-void
.end method
