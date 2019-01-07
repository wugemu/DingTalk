.class Lcom/alipay/mobile/nebulacore/ui/H5TransProgressContent$2;
.super Ljava/lang/Object;
.source "H5TransProgressContent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/nebulacore/ui/H5TransProgressContent;
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
    .line 130
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/ui/H5TransProgressContent$2;->this$0:Lcom/alipay/mobile/nebulacore/ui/H5TransProgressContent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 133
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5TransProgressContent$2;->this$0:Lcom/alipay/mobile/nebulacore/ui/H5TransProgressContent;

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/ui/H5TransProgressContent;->access$100(Lcom/alipay/mobile/nebulacore/ui/H5TransProgressContent;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 134
    return-void
.end method
