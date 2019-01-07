.class public Lcom/alipay/android/app/safepaybase/util/EditTextManager;
.super Ljava/lang/Object;
.source "EditTextManager.java"


# static fields
.field private static mEditTextUtils:Lcom/alipay/android/app/safepaybase/util/EditTextUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/android/app/safepaybase/util/EditTextManager;->mEditTextUtils:Lcom/alipay/android/app/safepaybase/util/EditTextUtil;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getEditTextUtils()Lcom/alipay/android/app/safepaybase/util/EditTextUtil;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/alipay/android/app/safepaybase/util/EditTextManager;->mEditTextUtils:Lcom/alipay/android/app/safepaybase/util/EditTextUtil;

    if-nez v0, :cond_0

    .line 17
    new-instance v0, Lcom/alipay/android/app/safepaybase/util/EditTextUtil;

    invoke-direct {v0}, Lcom/alipay/android/app/safepaybase/util/EditTextUtil;-><init>()V

    sput-object v0, Lcom/alipay/android/app/safepaybase/util/EditTextManager;->mEditTextUtils:Lcom/alipay/android/app/safepaybase/util/EditTextUtil;

    .line 19
    :cond_0
    sget-object v0, Lcom/alipay/android/app/safepaybase/util/EditTextManager;->mEditTextUtils:Lcom/alipay/android/app/safepaybase/util/EditTextUtil;

    return-object v0
.end method
