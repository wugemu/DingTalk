.class final Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin$2;
.super Ljava/lang/Object;
.source "H5NativeInputPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->showNativeInputInternal(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/nebula/embedviewcommon/H5NewEmbedCommonLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:F

.field final synthetic b:F

.field final synthetic c:I

.field final synthetic d:I

.field final synthetic e:Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;FFII)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;

    .prologue
    .line 366
    iput-object p1, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin$2;->e:Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;

    iput p2, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin$2;->a:F

    iput p3, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin$2;->b:F

    iput p4, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin$2;->c:I

    iput p5, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin$2;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 369
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin$2;->e:Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;

    invoke-static {v0}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->access$100(Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;)I

    .line 370
    const-string/jumbo v0, "H5NativeInputPlugin"

    const-string/jumbo v1, "execScrollWebContent when native input already exists"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin$2;->e:Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;

    iget v1, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin$2;->a:F

    iget v2, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin$2;->b:F

    iget v3, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin$2;->c:I

    iget v4, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin$2;->d:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->access$200(Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;FFII)V

    .line 372
    return-void
.end method
