.class Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity$8;
.super Ljava/lang/Object;
.source "SmsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;)V
    .locals 1

    .prologue
    .line 354
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity$8;->this$0:Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;

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
    .line 357
    :try_start_0
    new-instance v0, Lcom/alipay/mobileic/core/model/rpc/MICRpcRequest;

    invoke-direct {v0}, Lcom/alipay/mobileic/core/model/rpc/MICRpcRequest;-><init>()V

    .line 358
    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity$8;->this$0:Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;

    invoke-static {v1}, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->access$2200(Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;)Lcom/alipay/mobile/verifyidentity/module/MicroModule;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->getVerifyId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobileic/core/model/rpc/MICRpcRequest;->verifyId:Ljava/lang/String;

    .line 359
    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity$8;->this$0:Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;

    invoke-static {v1}, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->access$2300(Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;)Lcom/alipay/mobile/verifyidentity/module/MicroModule;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->getModuleName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobileic/core/model/rpc/MICRpcRequest;->module:Ljava/lang/String;

    .line 360
    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity$8;->this$0:Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;

    invoke-static {v1}, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->access$2400(Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;)Lcom/alipay/mobile/verifyidentity/module/MicroModule;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->getToken()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobileic/core/model/rpc/MICRpcRequest;->token:Ljava/lang/String;

    .line 361
    const-string/jumbo v1, "RESEND_SMS"

    iput-object v1, v0, Lcom/alipay/mobileic/core/model/rpc/MICRpcRequest;->action:Ljava/lang/String;

    .line 363
    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity$8;->this$0:Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;

    invoke-static {v1}, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->access$1800(Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;)Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBiz;

    move-result-object v1

    if-nez v1, :cond_0

    .line 364
    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity$8;->this$0:Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;

    new-instance v2, Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBiz;

    invoke-direct {v2}, Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBiz;-><init>()V

    invoke-static {v1, v2}, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->access$1802(Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBiz;)Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBiz;

    .line 367
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity$8;->this$0:Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;

    invoke-static {v1}, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->access$1800(Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;)Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBiz;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBiz;->dispatch(Lcom/alipay/mobileic/core/model/rpc/MICRpcRequest;)Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;

    move-result-object v0

    .line 368
    if-nez v0, :cond_1

    .line 369
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    throw v0
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 376
    :catch_0
    move-exception v0

    .line 377
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->access$1300()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 378
    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity$8;->this$0:Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;

    new-instance v2, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity$8$2;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity$8$2;-><init>(Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity$8;)V

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 383
    throw v0

    .line 371
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity$8;->this$0:Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;

    new-instance v2, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity$8$1;

    invoke-direct {v2, p0, v0}, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity$8$1;-><init>(Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity$8;Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;)V

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 388
    :goto_0
    return-void

    .line 384
    :catch_1
    move-exception v0

    .line 385
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->access$1300()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 386
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity$8;->this$0:Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;

    invoke-static {v0}, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->access$2000(Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;)V

    goto :goto_0
.end method
