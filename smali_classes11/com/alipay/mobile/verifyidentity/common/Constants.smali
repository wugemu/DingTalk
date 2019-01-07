.class public Lcom/alipay/mobile/verifyidentity/common/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# static fields
.field public static final BODY_CONTENT:Ljava/lang/String; = "bodyContent"

.field public static final FaceConst_IS_WELCOME_HIDDEN:Ljava/lang/String; = "isWelcomePageHidden"

.field public static final KEY_FOOTREMAEK:Ljava/lang/String; = "keyFootRemark"

.field public static final KEY_HEADLINE:Ljava/lang/String; = "keyHeadline"

.field public static final LOADING_TIP:Ljava/lang/String; = "loadingTip"

.field public static final LOGON_ID:Ljava/lang/String; = "logonId"

.field public static final PrivacyQuestionConst_STRATEGY_ID:Ljava/lang/String; = "strategy_id"

.field public static final VI_ENGINE_APPID:Ljava/lang/String; = "20000666"

.field public static final VI_ENGINE_BIZNAME:Ljava/lang/String; = "bizName"

.field public static final VI_ENGINE_CALLBACKURL:Ljava/lang/String; = "callbackUrl"

.field public static final VI_ENGINE_DO_PRE_LOAD:Ljava/lang/String; = "doPreLoad"

.field public static final VI_ENGINE_FAST_BIZDATA:Ljava/lang/String; = "bizRequestData"

.field public static final VI_ENGINE_FAST_BIZID:Ljava/lang/String; = "bizId"

.field public static final VI_ENGINE_FAST_BIZ_RES_DATA:Ljava/lang/String; = "bizResponseData"

.field public static final VI_ENGINE_FAST_LOGONID:Ljava/lang/String; = "logonId"

.field public static final VI_ENGINE_FAST_MODULEDATA:Ljava/lang/String; = "moduleData"

.field public static final VI_ENGINE_FAST_MODULENAME:Ljava/lang/String; = "nextStep"

.field public static final VI_ENGINE_FAST_SCENEID:Ljava/lang/String; = "sceneId"

.field public static final VI_ENGINE_IS_NEED_BIO:Ljava/lang/String; = "isNeedBio"

.field public static final VI_ENGINE_IS_NEED_FP:Ljava/lang/String; = "isNeedFP"

.field public static final VI_ENGINE_RESULT_CODE:Ljava/lang/String; = "code"

.field public static final VI_ENGINE_TOKEN:Ljava/lang/String; = "token"

.field public static final VI_ENGINE_VERIFYID:Ljava/lang/String; = "verifyId"

.field public static final VI_ENGINE_VERIFY_TYPE:Ljava/lang/String; = "verifyType"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 3
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
