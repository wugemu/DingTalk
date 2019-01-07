.class Lcom/alipay/mobile/nebulacore/plugin/H5UrlInterceptPlugin$2$1;
.super Ljava/lang/Object;
.source "H5UrlInterceptPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/plugin/H5UrlInterceptPlugin$2;->onQueryResult(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alipay/mobile/nebulacore/plugin/H5UrlInterceptPlugin$2;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/plugin/H5UrlInterceptPlugin$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alipay/mobile/nebulacore/plugin/H5UrlInterceptPlugin$2;

    .prologue
    .line 431
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5UrlInterceptPlugin$2$1;->this$1:Lcom/alipay/mobile/nebulacore/plugin/H5UrlInterceptPlugin$2;

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
    .line 435
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 436
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/nebula/R$string;->h5_googleplaynotinstall:I

    .line 437
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 434
    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/nebulacore/view/H5Toast;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    .line 440
    return-void
.end method
