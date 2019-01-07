.class Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin$1;
.super Ljava/lang/Object;
.source "H5LoggerPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->handleRemoteLog(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;

.field final synthetic val$event:Lcom/alipay/mobile/h5container/api/H5Event;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;Lcom/alipay/mobile/h5container/api/H5Event;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;

    .prologue
    .line 448
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin$1;->this$0:Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;

    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin$1;->val$event:Lcom/alipay/mobile/h5container/api/H5Event;

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
    .line 452
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin$1;->this$0:Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin$1;->val$event:Lcom/alipay/mobile/h5container/api/H5Event;

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->access$000(Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;Lcom/alipay/mobile/h5container/api/H5Event;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 456
    :goto_0
    return-void

    .line 453
    :catch_0
    move-exception v0

    .line 454
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "H5LoggerPlugin"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
