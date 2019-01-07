.class public Lcom/alipay/mobile/verifyidentity/module/ModuleMetaInfo;
.super Ljava/lang/Object;
.source "ModuleMetaInfo.java"


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/ModuleMetaInfo;->a:Ljava/util/List;

    .line 19
    new-instance v0, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;

    invoke-direct {v0}, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;-><init>()V

    .line 20
    const-string/jumbo v1, "MENU"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;->setModuleName(Ljava/lang/String;)Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;

    .line 21
    const-string/jumbo v1, "com.alipay.mobile.verifyidentity.module.menu.MenuModule"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;->setClassName(Ljava/lang/String;)Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;

    .line 22
    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/module/ModuleMetaInfo;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    new-instance v0, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;

    invoke-direct {v0}, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;-><init>()V

    .line 25
    const-string/jumbo v1, "PRIVACY_SHIELD"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;->setModuleName(Ljava/lang/String;)Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;

    .line 26
    const-string/jumbo v1, "com.alipay.mobile.verifyidentity.module.shield.ShieldModule"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;->setClassName(Ljava/lang/String;)Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;

    .line 27
    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/module/ModuleMetaInfo;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    new-instance v0, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;

    invoke-direct {v0}, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;-><init>()V

    .line 31
    const-string/jumbo v1, "SAFE_AREA"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;->setModuleName(Ljava/lang/String;)Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;

    .line 32
    const-string/jumbo v1, "com.alipay.mobile.verifyidentity.module.safezone.SafeZoneModule"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;->setClassName(Ljava/lang/String;)Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;

    .line 33
    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/module/ModuleMetaInfo;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    new-instance v0, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;

    invoke-direct {v0}, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;-><init>()V

    .line 36
    const-string/jumbo v1, "SIGN_LOGIN_FACE"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;->setModuleName(Ljava/lang/String;)Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;

    .line 37
    const-string/jumbo v1, "com.alipay.module.face.BaseFaceCertModule"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;->setClassName(Ljava/lang/String;)Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;

    .line 38
    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/module/ModuleMetaInfo;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    new-instance v0, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;

    invoke-direct {v0}, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;-><init>()V

    .line 41
    const-string/jumbo v1, "LOGIN_FACE"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;->setModuleName(Ljava/lang/String;)Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;

    .line 42
    const-string/jumbo v1, "com.alipay.module.face.BaseFaceCertModule"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;->setClassName(Ljava/lang/String;)Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;

    .line 43
    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/module/ModuleMetaInfo;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    new-instance v0, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;

    invoke-direct {v0}, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;-><init>()V

    .line 46
    const-string/jumbo v1, "BANKCARD_BINDING"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;->setModuleName(Ljava/lang/String;)Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;

    .line 47
    const-string/jumbo v1, "com.alipay.mobile.verifyidentity.module.bankcard.BankCardModule"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;->setClassName(Ljava/lang/String;)Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;

    .line 48
    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/module/ModuleMetaInfo;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    new-instance v0, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;

    invoke-direct {v0}, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;-><init>()V

    .line 51
    const-string/jumbo v1, "NO_CAPTCHA"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;->setModuleName(Ljava/lang/String;)Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;

    .line 52
    const-string/jumbo v1, "com.alipay.mobile.verifyidentity.module.nocaptcha.NoCaptchaModule"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;->setClassName(Ljava/lang/String;)Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;

    .line 53
    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/module/ModuleMetaInfo;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    new-instance v0, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;

    invoke-direct {v0}, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;-><init>()V

    .line 56
    const-string/jumbo v1, "ACCOUNT_CERT_FACE"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;->setModuleName(Ljava/lang/String;)Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;

    .line 57
    const-string/jumbo v1, "com.alipay.module.face.BaseFaceCertModule"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;->setClassName(Ljava/lang/String;)Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;

    .line 58
    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/module/ModuleMetaInfo;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    new-instance v0, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;

    invoke-direct {v0}, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;-><init>()V

    .line 61
    const-string/jumbo v1, "SYS_INPUT_CERT_FACE"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;->setModuleName(Ljava/lang/String;)Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;

    .line 62
    const-string/jumbo v1, "com.alipay.module.face.BaseFaceCertModule"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;->setClassName(Ljava/lang/String;)Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;

    .line 63
    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/module/ModuleMetaInfo;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    new-instance v0, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;

    invoke-direct {v0}, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;-><init>()V

    .line 66
    const-string/jumbo v1, "USER_INPUT_CERT_FACE"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;->setModuleName(Ljava/lang/String;)Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;

    .line 67
    const-string/jumbo v1, "com.alipay.module.face.FaceUserInputCertModule"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;->setClassName(Ljava/lang/String;)Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;

    .line 68
    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/module/ModuleMetaInfo;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    new-instance v0, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;

    invoke-direct {v0}, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;-><init>()V

    .line 71
    const-string/jumbo v1, "X_ACCOUNT_CERT_FACE"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;->setModuleName(Ljava/lang/String;)Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;

    .line 72
    const-string/jumbo v1, "com.alipay.module.face.BaseFaceCertModule"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;->setClassName(Ljava/lang/String;)Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;

    .line 73
    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/module/ModuleMetaInfo;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    new-instance v0, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;

    invoke-direct {v0}, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;-><init>()V

    .line 76
    const-string/jumbo v1, "FACEVERIFY"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;->setModuleName(Ljava/lang/String;)Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;

    .line 77
    const-string/jumbo v1, "com.alipay.module.face.BaseFaceCertModule"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;->setClassName(Ljava/lang/String;)Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;

    .line 78
    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/module/ModuleMetaInfo;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    new-instance v0, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;

    invoke-direct {v0}, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;-><init>()V

    .line 81
    const-string/jumbo v1, "FACEVERIFY_INPUT"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;->setModuleName(Ljava/lang/String;)Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;

    .line 82
    const-string/jumbo v1, "com.alipay.module.face.FaceUserInputCertModule"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;->setClassName(Ljava/lang/String;)Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;

    .line 83
    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/module/ModuleMetaInfo;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    new-instance v0, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;

    invoke-direct {v0}, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;-><init>()V

    .line 86
    const-string/jumbo v1, "IDFACE"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;->setModuleName(Ljava/lang/String;)Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;

    .line 87
    const-string/jumbo v1, "com.alipay.module.face.BaseFaceCertModule"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;->setClassName(Ljava/lang/String;)Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;

    .line 88
    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/module/ModuleMetaInfo;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    new-instance v0, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;

    invoke-direct {v0}, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;-><init>()V

    .line 91
    const-string/jumbo v1, "IDPAPERS"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;->setModuleName(Ljava/lang/String;)Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;

    .line 92
    const-string/jumbo v1, "com.alipay.module.face.BaseFaceCertModule"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;->setClassName(Ljava/lang/String;)Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;

    .line 93
    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/module/ModuleMetaInfo;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    new-instance v0, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;

    invoke-direct {v0}, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;-><init>()V

    .line 96
    const-string/jumbo v1, "NATIVE_PAYMENT_PASSWORD"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;->setModuleName(Ljava/lang/String;)Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;

    .line 97
    const-string/jumbo v1, "com.alipay.mobile.verifyidentity.module.password.pay.PayPwdModule"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;->setClassName(Ljava/lang/String;)Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;

    .line 98
    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/module/ModuleMetaInfo;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    new-instance v0, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;

    invoke-direct {v0}, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;-><init>()V

    .line 101
    const-string/jumbo v1, "PAYMENT_PASSWORD_PLUS"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;->setModuleName(Ljava/lang/String;)Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;

    .line 102
    const-string/jumbo v1, "com.alipay.mobile.verifyidentity.module.fingerprint.FingerprintModule"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;->setClassName(Ljava/lang/String;)Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;

    .line 103
    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/module/ModuleMetaInfo;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    new-instance v0, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;

    invoke-direct {v0}, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;-><init>()V

    .line 106
    const-string/jumbo v1, "SMS"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;->setModuleName(Ljava/lang/String;)Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;

    .line 107
    const-string/jumbo v1, "com.alipay.mobile.verifyidentity.module.sms.SmsModule"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;->setClassName(Ljava/lang/String;)Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;

    .line 108
    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/module/ModuleMetaInfo;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    new-instance v0, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;

    invoke-direct {v0}, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;-><init>()V

    .line 111
    const-string/jumbo v1, "ACCOUNT_BINDING_SMS"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;->setModuleName(Ljava/lang/String;)Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;

    .line 112
    const-string/jumbo v1, "com.alipay.mobile.verifyidentity.module.sms.SmsModule"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;->setClassName(Ljava/lang/String;)Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;

    .line 113
    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/module/ModuleMetaInfo;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    new-instance v0, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;

    invoke-direct {v0}, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;-><init>()V

    .line 116
    const-string/jumbo v1, "CUSTOMIZED_SMS"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;->setModuleName(Ljava/lang/String;)Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;

    .line 117
    const-string/jumbo v1, "com.alipay.mobile.verifyidentity.module.sms.SmsModule"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;->setClassName(Ljava/lang/String;)Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;

    .line 118
    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/module/ModuleMetaInfo;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    new-instance v0, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;

    invoke-direct {v0}, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;-><init>()V

    .line 121
    const-string/jumbo v1, "USER_INFO_PRIVACY"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;->setModuleName(Ljava/lang/String;)Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;

    .line 122
    const-string/jumbo v1, "com.alipay.mobile.verifyidentity.module.namebirthday.NameBirthdayModule"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;->setClassName(Ljava/lang/String;)Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;

    .line 123
    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/module/ModuleMetaInfo;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    new-instance v0, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;

    invoke-direct {v0}, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;-><init>()V

    .line 126
    const-string/jumbo v1, "X_CERT_FACE"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;->setModuleName(Ljava/lang/String;)Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;

    .line 127
    const-string/jumbo v1, "com.alipay.module.face.BaseFaceCertModule"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;->setClassName(Ljava/lang/String;)Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;

    .line 128
    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/module/ModuleMetaInfo;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    new-instance v0, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;

    invoke-direct {v0}, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;-><init>()V

    .line 131
    const-string/jumbo v1, "MOBILE_CERT"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;->setModuleName(Ljava/lang/String;)Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;

    .line 132
    const-string/jumbo v1, "com.alipay.mobile.verifyidentity.module.cert.CertModule"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;->setClassName(Ljava/lang/String;)Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;

    .line 133
    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/module/ModuleMetaInfo;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    new-instance v0, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;

    invoke-direct {v0}, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;-><init>()V

    .line 136
    const-string/jumbo v1, "HAND_WRITING"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;->setModuleName(Ljava/lang/String;)Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;

    .line 137
    const-string/jumbo v1, "com.alipay.module.face.BaseFaceCertModule"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;->setClassName(Ljava/lang/String;)Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;

    .line 138
    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/module/ModuleMetaInfo;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    new-instance v0, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;

    invoke-direct {v0}, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;-><init>()V

    .line 141
    const-string/jumbo v1, "PAPERS"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;->setModuleName(Ljava/lang/String;)Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;

    .line 142
    const-string/jumbo v1, "com.alipay.module.face.BaseFaceCertModule"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;->setClassName(Ljava/lang/String;)Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;

    .line 143
    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/module/ModuleMetaInfo;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    new-instance v0, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;

    invoke-direct {v0}, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;-><init>()V

    .line 146
    const-string/jumbo v1, "VI_DYNAMIC_CENTER"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;->setModuleName(Ljava/lang/String;)Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;

    .line 147
    const-string/jumbo v1, "com.alipay.mobile.verifyidentity.module.dynamic.DynamicModule"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;->setClassName(Ljava/lang/String;)Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;

    .line 148
    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/module/ModuleMetaInfo;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    new-instance v0, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;

    invoke-direct {v0}, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;-><init>()V

    .line 151
    const-string/jumbo v1, "SECRET_QUESTION"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;->setModuleName(Ljava/lang/String;)Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;

    .line 152
    const-string/jumbo v1, "com.alipay.mobile.verifyidentity.module.dynamic.DynamicModule"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;->setClassName(Ljava/lang/String;)Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;

    .line 153
    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/module/ModuleMetaInfo;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    new-instance v0, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;

    invoke-direct {v0}, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;-><init>()V

    .line 156
    const-string/jumbo v1, "SMS"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;->setModuleName(Ljava/lang/String;)Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;

    .line 157
    const-string/jumbo v1, "com.alipay.mobile.verifyidentity.module.dynamic.DynamicModule"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;->setClassName(Ljava/lang/String;)Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;

    .line 158
    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/module/ModuleMetaInfo;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    new-instance v0, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;

    invoke-direct {v0}, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;-><init>()V

    .line 161
    const-string/jumbo v1, "ACCOUNT_BINDING_SMS"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;->setModuleName(Ljava/lang/String;)Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;

    .line 162
    const-string/jumbo v1, "com.alipay.mobile.verifyidentity.module.dynamic.DynamicModule"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;->setClassName(Ljava/lang/String;)Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;

    .line 163
    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/module/ModuleMetaInfo;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 165
    new-instance v0, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;

    invoke-direct {v0}, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;-><init>()V

    .line 166
    const-string/jumbo v1, "CUSTOMIZED_SMS"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;->setModuleName(Ljava/lang/String;)Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;

    .line 167
    const-string/jumbo v1, "com.alipay.mobile.verifyidentity.module.dynamic.DynamicModule"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;->setClassName(Ljava/lang/String;)Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;

    .line 168
    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/module/ModuleMetaInfo;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 170
    new-instance v0, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;

    invoke-direct {v0}, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;-><init>()V

    .line 171
    const-string/jumbo v1, "PRIVACY_SHIELD"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;->setModuleName(Ljava/lang/String;)Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;

    .line 172
    const-string/jumbo v1, "com.alipay.mobile.verifyidentity.module.dynamic.DynamicModule"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;->setClassName(Ljava/lang/String;)Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;

    .line 173
    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/module/ModuleMetaInfo;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 175
    new-instance v0, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;

    invoke-direct {v0}, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;-><init>()V

    .line 176
    const-string/jumbo v1, "REGISTER_CERTIFICATE"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;->setModuleName(Ljava/lang/String;)Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;

    .line 177
    const-string/jumbo v1, "com.alipay.mobile.verifyidentity.module.dynamic.DynamicModule"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;->setClassName(Ljava/lang/String;)Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;

    .line 178
    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/module/ModuleMetaInfo;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    new-instance v0, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;

    invoke-direct {v0}, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;-><init>()V

    .line 181
    const-string/jumbo v1, "FAST_PAY_PRIVACY"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;->setModuleName(Ljava/lang/String;)Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;

    .line 182
    const-string/jumbo v1, "com.alipay.mobile.verifyidentity.module.dynamic.DynamicModule"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;->setClassName(Ljava/lang/String;)Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;

    .line 183
    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/module/ModuleMetaInfo;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    new-instance v0, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;

    invoke-direct {v0}, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;-><init>()V

    .line 186
    const-string/jumbo v1, "FAST_PAY_PRIVACY_7DAY"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;->setModuleName(Ljava/lang/String;)Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;

    .line 187
    const-string/jumbo v1, "com.alipay.mobile.verifyidentity.module.dynamic.DynamicModule"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;->setClassName(Ljava/lang/String;)Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;

    .line 188
    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/module/ModuleMetaInfo;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 190
    new-instance v0, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;

    invoke-direct {v0}, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;-><init>()V

    .line 191
    const-string/jumbo v1, "AUTH_CODE"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;->setModuleName(Ljava/lang/String;)Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;

    .line 192
    const-string/jumbo v1, "com.alipay.mobile.verifyidentity.module.qrcode.QrCodeModule"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;->setClassName(Ljava/lang/String;)Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;

    .line 193
    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/module/ModuleMetaInfo;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 195
    new-instance v0, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;

    invoke-direct {v0}, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;-><init>()V

    .line 196
    const-string/jumbo v1, "REMIND"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;->setModuleName(Ljava/lang/String;)Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;

    .line 197
    const-string/jumbo v1, "com.alipay.mobile.verifyidentity.module.dynamic.DynamicModule"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;->setClassName(Ljava/lang/String;)Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;

    .line 198
    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/module/ModuleMetaInfo;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 199
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
.method public getModules()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;",
            ">;"
        }
    .end annotation

    .prologue
    .line 202
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/ModuleMetaInfo;->a:Ljava/util/List;

    return-object v0
.end method
