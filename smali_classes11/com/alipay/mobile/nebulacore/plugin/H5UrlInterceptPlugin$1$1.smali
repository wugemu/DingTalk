.class Lcom/alipay/mobile/nebulacore/plugin/H5UrlInterceptPlugin$1$1;
.super Ljava/lang/Object;
.source "H5UrlInterceptPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/plugin/H5UrlInterceptPlugin$1;->onQueryResult(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alipay/mobile/nebulacore/plugin/H5UrlInterceptPlugin$1;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/plugin/H5UrlInterceptPlugin$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alipay/mobile/nebulacore/plugin/H5UrlInterceptPlugin$1;

    .prologue
    .line 344
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5UrlInterceptPlugin$1$1;->this$1:Lcom/alipay/mobile/nebulacore/plugin/H5UrlInterceptPlugin$1;

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
    .line 348
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 349
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/nebula/R$string;->h5_googleplaynotinstall:I

    .line 350
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 347
    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/nebulacore/view/H5Toast;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    .line 353
    return-void
.end method
