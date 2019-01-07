.class Lcom/alipay/mobile/nebulacore/web/H5WebView$4;
.super Ljava/lang/Object;
.source "H5WebView.java"

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/web/H5WebView;->loadUrlInternal(Ljava/lang/String;Lcom/alipay/mobile/nebula/view/IH5EmbedViewJSCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/webkit/ValueCallback",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebulacore/web/H5WebView;

.field final synthetic val$jsCallback:Lcom/alipay/mobile/nebula/view/IH5EmbedViewJSCallback;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/web/H5WebView;Lcom/alipay/mobile/nebula/view/IH5EmbedViewJSCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/web/H5WebView;

    .prologue
    .line 661
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView$4;->this$0:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView$4;->val$jsCallback:Lcom/alipay/mobile/nebula/view/IH5EmbedViewJSCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 661
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/nebulacore/web/H5WebView$4;->onReceiveValue(Ljava/lang/String;)V

    return-void
.end method

.method public onReceiveValue(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 664
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView$4;->val$jsCallback:Lcom/alipay/mobile/nebula/view/IH5EmbedViewJSCallback;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/nebula/view/IH5EmbedViewJSCallback;->onReceiveValue(Ljava/lang/String;)V

    .line 665
    return-void
.end method
