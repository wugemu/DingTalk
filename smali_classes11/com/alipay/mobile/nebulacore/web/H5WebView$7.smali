.class Lcom/alipay/mobile/nebulacore/web/H5WebView$7;
.super Ljava/lang/Object;
.source "H5WebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/web/H5WebView;->loadBlankPage(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebulacore/web/H5WebView;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/web/H5WebView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/web/H5WebView;

    .prologue
    .line 1076
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView$7;->this$0:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1079
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView$7;->this$0:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->access$300(Lcom/alipay/mobile/nebulacore/web/H5WebView;)V

    .line 1080
    return-void
.end method
