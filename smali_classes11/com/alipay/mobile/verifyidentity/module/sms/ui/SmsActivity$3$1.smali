.class Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity$3$1;
.super Ljava/lang/Object;
.source "SmsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity$3;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity$3;)V
    .locals 1

    .prologue
    .line 163
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity$3$1;->this$1:Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity$3;

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
    .line 165
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity$3$1;->this$1:Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity$3;

    iget-object v0, v0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity$3;->this$0:Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;

    invoke-static {v0}, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->access$600(Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;)Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity$3$1;->this$1:Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity$3;

    iget-object v1, v1, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity$3;->this$0:Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;

    iget-object v2, p0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity$3$1;->this$1:Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity$3;

    iget-object v2, v2, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity$3;->this$0:Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;

    invoke-static {v2}, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->access$700(Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;)Lcom/alipay/mobile/verifyidentity/module/MicroModule;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/verifyidentity/utils/VIUtils;->a(Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;Landroid/app/Activity;Lcom/alipay/mobile/verifyidentity/module/MicroModule;)V

    .line 166
    return-void
.end method
