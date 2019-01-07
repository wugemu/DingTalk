.class public Lcom/alipay/mobile/verifyidentity/utils/VIUtils;
.super Ljava/lang/Object;
.source "VIUtils.java"


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lcom/alipay/mobile/verifyidentity/utils/VIUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/verifyidentity/utils/VIUtils;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
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

.method public static a(I)Ljava/lang/String;
    .locals 3

    .prologue
    .line 187
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->getInstance()Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 191
    :goto_0
    return-object v0

    .line 188
    :catch_0
    move-exception v0

    .line 189
    sget-object v1, Lcom/alipay/mobile/verifyidentity/utils/VIUtils;->a:Ljava/lang/String;

    const-string/jumbo v2, "getString \u51fa\u9519\uff01"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 191
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 208
    const-string/jumbo v0, "com.alipay.mobile.common.logging.api.LoggerFactory"

    const-string/jumbo v1, "init"

    new-array v2, v5, [Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    aput-object v3, v2, v4

    new-array v3, v5, [Ljava/lang/Object;

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/alipay/mobile/verifyidentity/utils/ReflectUtils;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/log/VITraceLogger;->getInstance()Lcom/alipay/mobile/verifyidentity/log/VITraceLogger;

    move-result-object v0

    invoke-static {p0}, Lcom/alipay/mobile/verifyidentity/uitl/PlatformUtils;->isDebug(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VITraceLogger;->setDebug(Z)V

    .line 211
    return-void
.end method

.method public static a(Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;Landroid/app/Activity;Lcom/alipay/mobile/verifyidentity/module/MicroModule;)V
    .locals 5

    .prologue
    .line 101
    const/4 v0, 0x0

    .line 102
    instance-of v1, p1, Lcom/alipay/mobile/verifyidentity/ui/BaseVerifyActivity;

    if-eqz v1, :cond_2

    move-object v0, p1

    .line 103
    check-cast v0, Lcom/alipay/mobile/verifyidentity/ui/BaseVerifyActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/verifyidentity/ui/BaseVerifyActivity;->getDialogHelper()Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper;

    move-result-object v0

    .line 107
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    new-instance v0, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper;

    invoke-direct {v0, p1}, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper;-><init>(Landroid/app/Activity;)V

    .line 108
    :cond_1
    invoke-virtual {p2}, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->getVerifyId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 109
    invoke-virtual {p2}, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->getVerifyId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->getModuleName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/alipay/mobile/verifyidentity/data/DefaultModuleResult;

    const-string/jumbo v4, "1002"

    invoke-direct {v3, v4}, Lcom/alipay/mobile/verifyidentity/data/DefaultModuleResult;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->notifyAndFinishModule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/verifyidentity/data/ModuleExecuteResult;)V

    .line 139
    :goto_1
    return-void

    .line 104
    :cond_2
    instance-of v1, p1, Lcom/alipay/mobile/verifyidentity/ui/BaseVerifyFragmentActivity;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 105
    check-cast v0, Lcom/alipay/mobile/verifyidentity/ui/BaseVerifyFragmentActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/verifyidentity/ui/BaseVerifyFragmentActivity;->getDialogHelper()Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper;

    move-result-object v0

    goto :goto_0

    .line 111
    :cond_3
    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper;->showProgressDialog(Ljava/lang/String;)V

    .line 112
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/utils/task/AsyncTaskExecutor;->a()Lcom/alipay/mobile/verifyidentity/utils/task/AsyncTaskExecutor;

    move-result-object v1

    new-instance v2, Lcom/alipay/mobile/verifyidentity/utils/b;

    invoke-direct {v2, p2, v0, p0, p1}, Lcom/alipay/mobile/verifyidentity/utils/b;-><init>(Lcom/alipay/mobile/verifyidentity/module/MicroModule;Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper;Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;Landroid/app/Activity;)V

    const-string/jumbo v0, "goOtherVerifyProduct"

    invoke-virtual {v1, v2, v0}, Lcom/alipay/mobile/verifyidentity/utils/task/AsyncTaskExecutor;->a(Ljava/lang/Runnable;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static a()Z
    .locals 6

    .prologue
    .line 146
    const/4 v1, 0x0

    .line 148
    :try_start_0
    const-string/jumbo v0, "com.alipay.mobile.verifyidentity.common.ExportBeacon"

    const-string/jumbo v2, "gotThis"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v2, v3, v4}, Lcom/alipay/mobile/verifyidentity/utils/ReflectUtils;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 151
    if-eqz v0, :cond_0

    .line 152
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 154
    :goto_0
    :try_start_1
    sget-object v1, Lcom/alipay/mobile/verifyidentity/utils/VIUtils;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "isInExport: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 158
    :goto_1
    return v0

    .line 155
    :catch_0
    move-exception v0

    move-object v5, v0

    move v0, v1

    move-object v1, v5

    .line 156
    :goto_2
    sget-object v2, Lcom/alipay/mobile/verifyidentity/utils/VIUtils;->a:Ljava/lang/String;

    const-string/jumbo v3, "isInExport \u5224\u65ad\u65f6\u5f02\u5e38"

    invoke-static {v2, v3, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 155
    :catch_1
    move-exception v1

    goto :goto_2

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static a(Lcom/alibaba/fastjson/JSONObject;)Z
    .locals 2

    .prologue
    .line 89
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 90
    if-eqz p0, :cond_0

    .line 91
    const-string/jumbo v0, "HAS_OTHERS"

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/JSONObject;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    .line 92
    if-eqz v0, :cond_0

    .line 96
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 84
    invoke-static {p0}, Lgxk;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 85
    invoke-static {v0}, Lcom/alipay/mobile/verifyidentity/utils/VIUtils;->a(Lcom/alibaba/fastjson/JSONObject;)Z

    move-result v0

    return v0
.end method

.method public static b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 198
    const-string/jumbo v0, "com.alipay.mobile.verifyidentity.alipay.util.UserInfoHelper"

    const-string/jumbo v1, "getUserId"

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/utils/ReflectUtils;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 201
    if-eqz v0, :cond_0

    .line 202
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 204
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 167
    const-string/jumbo v0, "SIGN_LOGIN_FACE"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "LOGIN_FACE"

    .line 168
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "ACCOUNT_CERT_FACE"

    .line 169
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "SYS_INPUT_CERT_FACE"

    .line 170
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "USER_INPUT_CERT_FACE"

    .line 171
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "X_ACCOUNT_CERT_FACE"

    .line 172
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "X_CERT_FACE"

    .line 173
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "FACEVERIFY"

    .line 174
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "FACEVERIFY_INPUT"

    .line 175
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "IDFACE"

    .line 176
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "IDPAPERS"

    .line 177
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "HAND_WRITING"

    .line 178
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "PAPERS"

    .line 179
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 180
    :cond_0
    const/4 v0, 0x1

    .line 182
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
