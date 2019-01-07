.class public Lcom/alipay/mobile/verifyidentity/module/sms/SmsModule;
.super Lcom/alipay/mobile/verifyidentity/module/MicroModule;
.source "SmsModule.java"


# static fields
.field public static final DEFAULT_CODE_COUNT:I = 0x6

.field public static final KEY_CODE_COUNT:Ljava/lang/String; = "smsCodeCount"

.field public static final KEY_COUNT_DOWN:Ljava/lang/String; = "smsCountDown"

.field public static final KEY_HIGHLIGHT:Ljava/lang/String; = "smsHighlight"

.field public static final KEY_OTHERS:Ljava/lang/String; = "smsOthers"

.field public static final KEY_PHONE:Ljava/lang/String; = "smsPhone"

.field public static final KEY_SEND_SMS_RESPONSE:Ljava/lang/String; = "resendResponse"

.field public static final KEY_TIP:Ljava/lang/String; = "smsTip"

.field public static final KEY_VERIFY_ACTION:Ljava/lang/String; = "verifyAction"

.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/alipay/mobile/verifyidentity/module/sms/SmsModule;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/verifyidentity/module/sms/SmsModule;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/alipay/mobile/verifyidentity/module/MicroModule;-><init>()V

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
.method protected onCreate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 38
    sget-object v0, Lcom/alipay/mobile/verifyidentity/module/sms/SmsModule;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "module data: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    invoke-static {p3}, Lgxk;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    .line 40
    if-nez v1, :cond_0

    .line 41
    sget-object v0, Lcom/alipay/mobile/verifyidentity/module/sms/SmsModule;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "module data can\'t be converted to jsonobject: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    :goto_0
    return-void

    .line 44
    :cond_0
    const-class v0, Lcom/alipay/mobile/verifyidentity/module/sms/model/InitDataModel;

    invoke-static {v1, v0}, Lgxk;->toJavaObject(Lgxk;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/verifyidentity/module/sms/model/InitDataModel;

    .line 45
    if-nez v0, :cond_1

    .line 46
    sget-object v0, Lcom/alipay/mobile/verifyidentity/module/sms/SmsModule;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "json can\'t be converted to bean: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 49
    :cond_1
    iput-object p4, p0, Lcom/alipay/mobile/verifyidentity/module/sms/SmsModule;->b:Landroid/os/Bundle;

    .line 50
    iget-object v2, p0, Lcom/alipay/mobile/verifyidentity/module/sms/SmsModule;->b:Landroid/os/Bundle;

    if-nez v2, :cond_2

    .line 51
    sget-object v2, Lcom/alipay/mobile/verifyidentity/module/sms/SmsModule;->a:Ljava/lang/String;

    const-string/jumbo v3, "empty bundle"

    invoke-static {v2, v3}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iput-object v2, p0, Lcom/alipay/mobile/verifyidentity/module/sms/SmsModule;->b:Landroid/os/Bundle;

    .line 54
    :cond_2
    iget-object v2, p0, Lcom/alipay/mobile/verifyidentity/module/sms/SmsModule;->b:Landroid/os/Bundle;

    const-string/jumbo v3, "smsPhone"

    iget-object v4, v0, Lcom/alipay/mobile/verifyidentity/module/sms/model/InitDataModel;->mobile_no:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    iget-object v2, p0, Lcom/alipay/mobile/verifyidentity/module/sms/SmsModule;->b:Landroid/os/Bundle;

    const-string/jumbo v3, "smsCodeCount"

    iget v4, v0, Lcom/alipay/mobile/verifyidentity/module/sms/model/InitDataModel;->codeCount:I

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 56
    iget-object v2, p0, Lcom/alipay/mobile/verifyidentity/module/sms/SmsModule;->b:Landroid/os/Bundle;

    const-string/jumbo v3, "smsCountDown"

    iget v4, v0, Lcom/alipay/mobile/verifyidentity/module/sms/model/InitDataModel;->countDown:I

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 57
    iget-object v2, p0, Lcom/alipay/mobile/verifyidentity/module/sms/SmsModule;->b:Landroid/os/Bundle;

    const-string/jumbo v3, "smsOthers"

    invoke-static {v1}, Lcom/alipay/mobile/verifyidentity/utils/VIUtils;->a(Lcom/alibaba/fastjson/JSONObject;)Z

    move-result v1

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 58
    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/module/sms/SmsModule;->b:Landroid/os/Bundle;

    const-string/jumbo v2, "smsTip"

    iget-object v3, v0, Lcom/alipay/mobile/verifyidentity/module/sms/model/InitDataModel;->keyHeadline:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/module/sms/SmsModule;->b:Landroid/os/Bundle;

    const-string/jumbo v2, "smsHighlight"

    iget-object v3, v0, Lcom/alipay/mobile/verifyidentity/module/sms/model/InitDataModel;->highlightTxt:[Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 60
    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/module/sms/SmsModule;->b:Landroid/os/Bundle;

    const-string/jumbo v2, "verifyAction"

    iget-object v0, v0, Lcom/alipay/mobile/verifyidentity/module/sms/model/InitDataModel;->verifyAction:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/sms/SmsModule;->b:Landroid/os/Bundle;

    const-string/jumbo v1, "resendResponse"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 79
    return-void
.end method

.method protected onStart()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 66
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/sms/SmsModule;->b:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 67
    sget-object v0, Lcom/alipay/mobile/verifyidentity/module/sms/SmsModule;->a:Ljava/lang/String;

    const-string/jumbo v1, "wrong input params"

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/sms/SmsModule;->getMicroModuleContext()Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/sms/SmsModule;->getVerifyId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/sms/SmsModule;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/sms/SmsModule;->getModuleName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/alipay/mobile/verifyidentity/data/DefaultModuleResult;

    const-string/jumbo v5, "2002"

    invoke-direct {v4, v5}, Lcom/alipay/mobile/verifyidentity/data/DefaultModuleResult;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->notifyAndFinishModule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/verifyidentity/data/ModuleExecuteResult;)V

    .line 74
    :goto_0
    return-void

    .line 71
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->getInstance()Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 72
    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/module/sms/SmsModule;->b:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 73
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/sms/SmsModule;->getMicroModuleContext()Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->startActivity(Lcom/alipay/mobile/verifyidentity/module/MicroModule;Landroid/content/Intent;)V

    goto :goto_0
.end method
