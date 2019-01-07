.class Lcom/alipay/mobile/verifyidentity/module/MicroModule$1$1;
.super Ljava/lang/Object;
.source "MicroModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/alipay/mobile/verifyidentity/module/MicroModule$1;

.field final synthetic val$action:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/verifyidentity/module/MicroModule$1;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 346
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/module/MicroModule$1$1;->this$1:Lcom/alipay/mobile/verifyidentity/module/MicroModule$1;

    iput-object p2, p0, Lcom/alipay/mobile/verifyidentity/module/MicroModule$1$1;->val$action:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
.method public run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 350
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/MicroModule$1$1;->this$1:Lcom/alipay/mobile/verifyidentity/module/MicroModule$1;

    iget-object v0, v0, Lcom/alipay/mobile/verifyidentity/module/MicroModule$1;->this$0:Lcom/alipay/mobile/verifyidentity/module/MicroModule;

    invoke-static {v0}, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->access$200(Lcom/alipay/mobile/verifyidentity/module/MicroModule;)Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/MicroModule$1$1;->this$1:Lcom/alipay/mobile/verifyidentity/module/MicroModule$1;

    iget-object v0, v0, Lcom/alipay/mobile/verifyidentity/module/MicroModule$1;->this$0:Lcom/alipay/mobile/verifyidentity/module/MicroModule;

    invoke-static {v0}, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->access$200(Lcom/alipay/mobile/verifyidentity/module/MicroModule;)Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->getPluginOrProxyMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 351
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "\u666e\u901a\u6a21\u5f0f\u4e0d\u9700\u8981\u505a\u515c\u5e95\u6e05\u7406"

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    :goto_0
    return-void

    .line 354
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/MicroModule$1$1;->this$1:Lcom/alipay/mobile/verifyidentity/module/MicroModule$1;

    iget-object v0, v0, Lcom/alipay/mobile/verifyidentity/module/MicroModule$1;->this$0:Lcom/alipay/mobile/verifyidentity/module/MicroModule;

    invoke-static {v0}, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->access$300(Lcom/alipay/mobile/verifyidentity/module/MicroModule;)Lcom/alipay/mobile/verifyidentity/callback/ModuleListener;

    move-result-object v0

    if-nez v0, :cond_2

    .line 355
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "PoP\u6a21\u5f0f\u4e0b\uff0c\u53d1\u73b0\u5f53\u524dmodule\u5df2\u7ecf\u56de\u8c03\u8fc7"

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/MicroModule$1$1;->this$1:Lcom/alipay/mobile/verifyidentity/module/MicroModule$1;

    iget-object v0, v0, Lcom/alipay/mobile/verifyidentity/module/MicroModule$1;->this$0:Lcom/alipay/mobile/verifyidentity/module/MicroModule;

    iget-object v0, v0, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->needKeepInside:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 358
    const-string/jumbo v0, "KExitMiniPayViewNotification"

    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/module/MicroModule$1$1;->val$action:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 359
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "\u5f00\u59cb\u515c\u5e95\u6e05\u7406\uff01"

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    :cond_3
    :goto_1
    new-instance v0, Lcom/alipay/mobile/verifyidentity/data/DefaultModuleResult;

    const-string/jumbo v1, "1003"

    invoke-direct {v0, v1}, Lcom/alipay/mobile/verifyidentity/data/DefaultModuleResult;-><init>(Ljava/lang/String;)V

    .line 364
    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/module/MicroModule$1$1;->this$1:Lcom/alipay/mobile/verifyidentity/module/MicroModule$1;

    iget-object v1, v1, Lcom/alipay/mobile/verifyidentity/module/MicroModule$1;->this$0:Lcom/alipay/mobile/verifyidentity/module/MicroModule;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->notifyResult(Lcom/alipay/mobile/verifyidentity/data/ModuleExecuteResult;)V

    .line 365
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/MicroModule$1$1;->this$1:Lcom/alipay/mobile/verifyidentity/module/MicroModule$1;

    iget-object v0, v0, Lcom/alipay/mobile/verifyidentity/module/MicroModule$1;->this$0:Lcom/alipay/mobile/verifyidentity/module/MicroModule;

    invoke-virtual {v0}, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->destroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 366
    :catch_0
    move-exception v0

    .line 367
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "\u63a5\u5230\u6536\u94f6\u53f0\u5e7f\u64ad\u540e\uff0c1s\u540e\u5904\u7406\u65f6\u51fa\u73b0\u5f02\u5e38\uff1a "

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 360
    :cond_4
    :try_start_1
    const-string/jumbo v0, "com.alipay.closevidactivity"

    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/module/MicroModule$1$1;->val$action:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 361
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "\u6536\u94f6\u53f0\u901a\u77e5\u6838\u8eab\u5173\u95ed\u9875\u9762\uff01"

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
