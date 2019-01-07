.class final Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin$3;
.super Ljava/lang/Object;
.source "H5NativeInputPlugin.java"

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->adjustBaseViewHeight()V
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
.field final synthetic a:Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;

    .prologue
    .line 643
    iput-object p1, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin$3;->a:Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 643
    check-cast p1, Ljava/lang/String;

    .line 1646
    const-string/jumbo v0, "H5NativeInputPlugin"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "value "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1647
    const-string/jumbo v0, "\"YES\""

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1648
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin$3;->a:Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;

    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin$3;->a:Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;

    invoke-static {v1}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->access$300(Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->access$302(Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;I)I

    .line 643
    :cond_0
    return-void
.end method
