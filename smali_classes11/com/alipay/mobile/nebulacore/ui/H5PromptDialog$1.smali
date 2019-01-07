.class Lcom/alipay/mobile/nebulacore/ui/H5PromptDialog$1;
.super Ljava/lang/Object;
.source "H5PromptDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/ui/H5PromptDialog;->initBtn()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebulacore/ui/H5PromptDialog;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/ui/H5PromptDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/ui/H5PromptDialog;

    .prologue
    .line 118
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/ui/H5PromptDialog$1;->this$0:Lcom/alipay/mobile/nebulacore/ui/H5PromptDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 121
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5PromptDialog$1;->this$0:Lcom/alipay/mobile/nebulacore/ui/H5PromptDialog;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/ui/H5PromptDialog;->cancel()V

    .line 122
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5PromptDialog$1;->this$0:Lcom/alipay/mobile/nebulacore/ui/H5PromptDialog;

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/ui/H5PromptDialog;->access$000(Lcom/alipay/mobile/nebulacore/ui/H5PromptDialog;)Lcom/alipay/mobile/nebulacore/ui/H5PromptDialog$OnClickNegativeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5PromptDialog$1;->this$0:Lcom/alipay/mobile/nebulacore/ui/H5PromptDialog;

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/ui/H5PromptDialog;->access$000(Lcom/alipay/mobile/nebulacore/ui/H5PromptDialog;)Lcom/alipay/mobile/nebulacore/ui/H5PromptDialog$OnClickNegativeListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/nebulacore/ui/H5PromptDialog$OnClickNegativeListener;->onClick()V

    .line 125
    :cond_0
    return-void
.end method
