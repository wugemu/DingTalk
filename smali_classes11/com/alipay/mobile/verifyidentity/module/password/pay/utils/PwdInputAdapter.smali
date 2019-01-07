.class public Lcom/alipay/mobile/verifyidentity/module/password/pay/utils/PwdInputAdapter;
.super Ljava/lang/Object;
.source "PwdInputAdapter.java"


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/alipay/mobile/verifyidentity/module/password/pay/utils/PwdInputAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/verifyidentity/module/password/pay/utils/PwdInputAdapter;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
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

.method private static a(Landroid/app/Activity;Z)Lcom/alipay/mobile/verifyidentity/adapter/ui/pwd/VISafeInputInterface;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 34
    .line 36
    :try_start_0
    const-string/jumbo v0, "com.mybank.android.phone.common.ui.SafeInputWidget"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 37
    if-eqz v0, :cond_1

    .line 38
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/app/Activity;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 39
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 41
    :goto_0
    if-eqz v0, :cond_0

    .line 42
    check-cast v0, Lcom/alipay/mobile/verifyidentity/adapter/ui/pwd/VISafeInputInterface;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    :goto_1
    return-object v0

    .line 44
    :catch_0
    move-exception v0

    .line 45
    sget-object v2, Lcom/alipay/mobile/verifyidentity/module/password/pay/utils/PwdInputAdapter;->a:Ljava/lang/String;

    const-string/jumbo v3, "\u83b7\u53d6\u7f51\u5546\u5bc6\u7801\u8f93\u5165\u6846\u5b9e\u4f8b\u5931\u8d25"

    invoke-static {v2, v3, v0}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    move-object v0, v1

    .line 47
    goto :goto_1

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public getVISafeInput(Landroid/app/Activity;ZLandroid/content/Intent;)Lcom/alipay/mobile/verifyidentity/adapter/ui/pwd/VISafeInputInterface;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 22
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 23
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 24
    const-string/jumbo v1, "VI_PWD_SCENE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 25
    const-string/jumbo v1, "MYBANK"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 26
    invoke-static {p1, p2}, Lcom/alipay/mobile/verifyidentity/module/password/pay/utils/PwdInputAdapter;->a(Landroid/app/Activity;Z)Lcom/alipay/mobile/verifyidentity/adapter/ui/pwd/VISafeInputInterface;

    move-result-object v0

    .line 30
    :goto_0
    return-object v0

    .line 29
    :cond_0
    new-instance v0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/VISafeInput;

    invoke-direct {v0, p1, p2}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/VISafeInput;-><init>(Landroid/app/Activity;Z)V

    goto :goto_0
.end method
