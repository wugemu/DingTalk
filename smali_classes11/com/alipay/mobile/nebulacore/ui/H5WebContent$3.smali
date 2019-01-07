.class Lcom/alipay/mobile/nebulacore/ui/H5WebContent$3;
.super Ljava/lang/Object;
.source "H5WebContent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->initComponent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebulacore/ui/H5WebContent;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/ui/H5WebContent;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/ui/H5WebContent;

    .prologue
    .line 337
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent$3;->this$0:Lcom/alipay/mobile/nebulacore/ui/H5WebContent;

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
    .line 340
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent$3;->this$0:Lcom/alipay/mobile/nebulacore/ui/H5WebContent;

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->access$800(Lcom/alipay/mobile/nebulacore/ui/H5WebContent;)Landroid/widget/RelativeLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 341
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent$3;->this$0:Lcom/alipay/mobile/nebulacore/ui/H5WebContent;

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->access$800(Lcom/alipay/mobile/nebulacore/ui/H5WebContent;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 343
    :cond_0
    return-void
.end method
