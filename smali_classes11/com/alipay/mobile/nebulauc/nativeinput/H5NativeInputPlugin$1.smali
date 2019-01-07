.class final Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin$1;
.super Ljava/lang/Object;
.source "H5NativeInputPlugin.java"

# interfaces
.implements Lcom/alipay/mobile/nebula/embedviewcommon/H5NewEmbedBaseViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->showNativeInput(Lcom/alipay/mobile/h5container/api/H5Event;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/h5container/api/H5Event;

.field final synthetic b:Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;Lcom/alipay/mobile/h5container/api/H5Event;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;

    .prologue
    .line 275
    iput-object p1, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin$1;->b:Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;

    iput-object p2, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin$1;->a:Lcom/alipay/mobile/h5container/api/H5Event;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onNewEmbedBaseViewReady(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 278
    const-string/jumbo v0, "H5NativeInputPlugin"

    const-string/jumbo v1, "render native input in callback"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    if-eqz p1, :cond_0

    .line 280
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin$1;->b:Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;

    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin$1;->a:Lcom/alipay/mobile/h5container/api/H5Event;

    check-cast p1, Lcom/alipay/mobile/nebula/embedviewcommon/H5NewEmbedCommonLayout;

    .end local p1    # "view":Landroid/view/View;
    invoke-static {v0, v1, p1}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->access$000(Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/nebula/embedviewcommon/H5NewEmbedCommonLayout;)V

    .line 282
    :cond_0
    return-void
.end method
