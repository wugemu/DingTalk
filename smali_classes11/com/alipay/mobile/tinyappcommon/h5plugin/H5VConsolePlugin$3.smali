.class Lcom/alipay/mobile/tinyappcommon/h5plugin/H5VConsolePlugin$3;
.super Ljava/lang/Object;
.source "H5VConsolePlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/tinyappcommon/h5plugin/H5VConsolePlugin;->a(Landroid/app/Activity;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/tinyappcommon/h5plugin/H5VConsolePlugin;

.field final synthetic val$mainRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/tinyappcommon/h5plugin/H5VConsolePlugin;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/tinyappcommon/h5plugin/H5VConsolePlugin;

    .prologue
    .line 244
    iput-object p1, p0, Lcom/alipay/mobile/tinyappcommon/h5plugin/H5VConsolePlugin$3;->this$0:Lcom/alipay/mobile/tinyappcommon/h5plugin/H5VConsolePlugin;

    iput-object p2, p0, Lcom/alipay/mobile/tinyappcommon/h5plugin/H5VConsolePlugin$3;->val$mainRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 248
    iget-object v0, p0, Lcom/alipay/mobile/tinyappcommon/h5plugin/H5VConsolePlugin$3;->this$0:Lcom/alipay/mobile/tinyappcommon/h5plugin/H5VConsolePlugin;

    iget-object v1, p0, Lcom/alipay/mobile/tinyappcommon/h5plugin/H5VConsolePlugin$3;->this$0:Lcom/alipay/mobile/tinyappcommon/h5plugin/H5VConsolePlugin;

    invoke-virtual {v1}, Lcom/alipay/mobile/tinyappcommon/h5plugin/H5VConsolePlugin;->getVConsoleAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/tinyappcommon/h5plugin/H5VConsolePlugin;->ensurePackageReady(Ljava/lang/String;)Z

    .line 251
    iget-object v0, p0, Lcom/alipay/mobile/tinyappcommon/h5plugin/H5VConsolePlugin$3;->val$mainRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->runOnMain(Ljava/lang/Runnable;)V

    .line 252
    return-void
.end method
