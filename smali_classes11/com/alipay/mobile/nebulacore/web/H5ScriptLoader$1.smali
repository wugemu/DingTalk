.class Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader$1;
.super Ljava/lang/Object;
.source "H5ScriptLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->loadDynamic(Lcom/alipay/mobile/nebulacore/web/H5WebView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;

.field final synthetic val$h5_DynamicScript:Ljava/lang/String;

.field final synthetic val$webView:Lcom/alipay/mobile/nebulacore/web/H5WebView;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;Lcom/alipay/mobile/nebulacore/web/H5WebView;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;

    .prologue
    .line 234
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader$1;->this$0:Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;

    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader$1;->val$webView:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    iput-object p3, p0, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader$1;->val$h5_DynamicScript:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 237
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader$1;->this$0:Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader$1;->val$webView:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader$1;->val$h5_DynamicScript:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->loadDynamicJs(Lcom/alipay/mobile/nebulacore/web/H5WebView;Ljava/lang/String;)V

    .line 239
    return-void
.end method
