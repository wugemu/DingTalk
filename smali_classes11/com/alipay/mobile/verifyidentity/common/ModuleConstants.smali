.class public Lcom/alipay/mobile/verifyidentity/common/ModuleConstants;
.super Ljava/lang/Object;
.source "ModuleConstants.java"


# static fields
.field public static final MODULE_NO_NEED_TO_CALLBACK:Ljava/lang/String; = "moduleNoNeedToCallback"

.field public static final VI_MODULE_AUTH_CODE:Ljava/lang/String; = "AUTH_CODE"

.field public static final VI_MODULE_BIO_METAINFO:Ljava/lang/String; = "bioMetaInfo"

.field public static final VI_MODULE_BP:Ljava/lang/String; = "bp"

.field public static final VI_MODULE_FP_SECDATA:Ljava/lang/String; = "fpSecdata"

.field public static final VI_MODULE_IS_FIRST:Ljava/lang/String; = "isFirstModule"

.field public static final VI_MODULE_IS_SUPPORT_FP:Ljava/lang/String; = "isSupportFP"

.field public static final VI_MODULE_LOGIN_FACE:Ljava/lang/String; = "LOGIN_FACE"

.field public static final VI_MODULE_MENU:Ljava/lang/String; = "MENU"

.field public static final VI_MODULE_NAME_ACCOUNT_CERT_FACE:Ljava/lang/String; = "ACCOUNT_CERT_FACE"

.field public static final VI_MODULE_NAME_ACCOUNT_SMS:Ljava/lang/String; = "ACCOUNT_BINDING_SMS"

.field public static final VI_MODULE_NAME_ALILANG_FACE:Ljava/lang/String; = "X_CERT_FACE"

.field public static final VI_MODULE_NAME_BANKCARD_BINDING:Ljava/lang/String; = "BANKCARD_BINDING"

.field public static final VI_MODULE_NAME_CUSTOMIZED_SMS:Ljava/lang/String; = "CUSTOMIZED_SMS"

.field public static final VI_MODULE_NAME_DYNAMIC_CENTER:Ljava/lang/String; = "VI_DYNAMIC_CENTER"

.field public static final VI_MODULE_NAME_FACEVERIFY:Ljava/lang/String; = "FACEVERIFY"

.field public static final VI_MODULE_NAME_FACEVERIFY_INPUT:Ljava/lang/String; = "FACEVERIFY_INPUT"

.field public static final VI_MODULE_NAME_FAST_PAY_PRIVACY:Ljava/lang/String; = "FAST_PAY_PRIVACY"

.field public static final VI_MODULE_NAME_FAST_PAY_PRIVACY_7DAY:Ljava/lang/String; = "FAST_PAY_PRIVACY_7DAY"

.field public static final VI_MODULE_NAME_HAND_WRITING:Ljava/lang/String; = "HAND_WRITING"

.field public static final VI_MODULE_NAME_IDFACE:Ljava/lang/String; = "IDFACE"

.field public static final VI_MODULE_NAME_IDPAPERS:Ljava/lang/String; = "IDPAPERS"

.field public static final VI_MODULE_NAME_INIT:Ljava/lang/String; = "INIT"

.field public static final VI_MODULE_NAME_MOBILE_CERT:Ljava/lang/String; = "MOBILE_CERT"

.field public static final VI_MODULE_NAME_NAME_BIRTHDAY:Ljava/lang/String; = "USER_INFO_PRIVACY"

.field public static final VI_MODULE_NAME_NO_CAPTCHA:Ljava/lang/String; = "NO_CAPTCHA"

.field public static final VI_MODULE_NAME_PAPERS:Ljava/lang/String; = "PAPERS"

.field public static final VI_MODULE_NAME_PAYMENT_PASSWORD:Ljava/lang/String; = "PAYMENT_PASSWORD"

.field public static final VI_MODULE_NAME_PAYMENT_PASSWORD_PLUS:Ljava/lang/String; = "PAYMENT_PASSWORD_PLUS"

.field public static final VI_MODULE_NAME_PAY_PWD:Ljava/lang/String; = "NATIVE_PAYMENT_PASSWORD"

.field public static final VI_MODULE_NAME_PRIVACY_QUESTION:Ljava/lang/String; = "PRIVACY_SHIELD"

.field public static final VI_MODULE_NAME_REGISTER_CERTIFICATE:Ljava/lang/String; = "REGISTER_CERTIFICATE"

.field public static final VI_MODULE_NAME_REMIND:Ljava/lang/String; = "REMIND"

.field public static final VI_MODULE_NAME_SAFE_AREA:Ljava/lang/String; = "SAFE_AREA"

.field public static final VI_MODULE_NAME_SECRET_QUESTION:Ljava/lang/String; = "SECRET_QUESTION"

.field public static final VI_MODULE_NAME_SMS:Ljava/lang/String; = "SMS"

.field public static final VI_MODULE_NAME_SYS_INPUT_CERT_FACE:Ljava/lang/String; = "SYS_INPUT_CERT_FACE"

.field public static final VI_MODULE_NAME_USER_INPUT_CERT_FACE:Ljava/lang/String; = "USER_INPUT_CERT_FACE"

.field public static final VI_MODULE_NAME_X_ACCOUNT_CERT_FACE:Ljava/lang/String; = "X_ACCOUNT_CERT_FACE"

.field public static final VI_MODULE_SIGN_LOGIN_FACE:Ljava/lang/String; = "SIGN_LOGIN_FACE"

.field public static final VI_MODULE_VERIFY_INIT:Ljava/lang/String; = "VERIFY_INIT"

.field public static final VI_TASK_VERIFYCODE:Ljava/lang/String; = "verifyCode"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
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
