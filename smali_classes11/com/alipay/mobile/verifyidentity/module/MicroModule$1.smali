.class Lcom/alipay/mobile/verifyidentity/module/MicroModule$1;
.super Landroid/content/BroadcastReceiver;
.source "MicroModule.java"


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/verifyidentity/module/MicroModule;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/verifyidentity/module/MicroModule;)V
    .locals 1

    .prologue
    .line 335
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/module/MicroModule$1;->this$0:Lcom/alipay/mobile/verifyidentity/module/MicroModule;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/alipay/android/hackbyte/ClassVerifier;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    :cond_0
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 338
    if-nez p2, :cond_0

    const-string/jumbo v0, ""

    .line 339
    :goto_0
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Module\u4e2d\u6536\u5230\u6536\u94f6\u53f0\u9000\u51fa\u5e7f\u64ad\uff1a%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 342
    const-string/jumbo v2, "source"

    const-string/jumbo v3, "module"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    iget-object v2, p0, Lcom/alipay/mobile/verifyidentity/module/MicroModule$1;->this$0:Lcom/alipay/mobile/verifyidentity/module/MicroModule;

    const-string/jumbo v3, "syttcgb"

    const-string/jumbo v4, "UC-MobileIC-170505-5"

    invoke-static {v2, v3, v4, v1}, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->access$100(Lcom/alipay/mobile/verifyidentity/module/MicroModule;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 345
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 346
    new-instance v2, Lcom/alipay/mobile/verifyidentity/module/MicroModule$1$1;

    invoke-direct {v2, p0, v0}, Lcom/alipay/mobile/verifyidentity/module/MicroModule$1$1;-><init>(Lcom/alipay/mobile/verifyidentity/module/MicroModule$1;Ljava/lang/String;)V

    const-wide/16 v4, 0x5dc

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 371
    return-void

    .line 338
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
