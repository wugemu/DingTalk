.class public Lcom/alipay/module/face/ui/FaceInputUserInfo;
.super Lcom/alipay/mobile/verifyidentity/ui/BaseVerifyActivity;
.source "FaceInputUserInfo.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/alipay/mobile/verifyidentity/ui/validator/EditTextHasNullChecker;

.field private c:Lcom/alipay/mobile/verifyidentity/ui/APInputBox;

.field private d:Lcom/alipay/mobile/verifyidentity/ui/APInputBox;

.field private e:Landroid/widget/Button;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lcom/alipay/module/face/ui/FaceInputUserInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/module/face/ui/FaceInputUserInfo;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/alipay/mobile/verifyidentity/ui/BaseVerifyActivity;-><init>()V

    .line 31
    new-instance v0, Lcom/alipay/mobile/verifyidentity/ui/validator/EditTextHasNullChecker;

    invoke-direct {v0}, Lcom/alipay/mobile/verifyidentity/ui/validator/EditTextHasNullChecker;-><init>()V

    iput-object v0, p0, Lcom/alipay/module/face/ui/FaceInputUserInfo;->b:Lcom/alipay/mobile/verifyidentity/ui/validator/EditTextHasNullChecker;

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
.method public onBackPressed()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 141
    invoke-super {p0}, Lcom/alipay/mobile/verifyidentity/ui/BaseVerifyActivity;->onBackPressed()V

    .line 142
    iget-object v0, p0, Lcom/alipay/module/face/ui/FaceInputUserInfo;->mMicroModuleContext:Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;

    iget-object v1, p0, Lcom/alipay/module/face/ui/FaceInputUserInfo;->mModule:Lcom/alipay/mobile/verifyidentity/module/MicroModule;

    invoke-virtual {v1}, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->getVerifyId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/module/face/ui/FaceInputUserInfo;->mModule:Lcom/alipay/mobile/verifyidentity/module/MicroModule;

    invoke-virtual {v2}, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->getToken()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/module/face/ui/FaceInputUserInfo;->mModule:Lcom/alipay/mobile/verifyidentity/module/MicroModule;

    invoke-virtual {v3}, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->getModuleName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/alipay/mobile/verifyidentity/data/DefaultModuleResult;

    const-string/jumbo v5, "1003"

    invoke-direct {v4, v5}, Lcom/alipay/mobile/verifyidentity/data/DefaultModuleResult;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->notifyAndFinishModule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/verifyidentity/data/ModuleExecuteResult;)V

    .line 144
    sget-object v0, Lcom/alipay/mobile/verifyidentity/log/BehaviourIdEnum;->CLICKED:Lcom/alipay/mobile/verifyidentity/log/BehaviourIdEnum;

    const-string/jumbo v1, "UC-MobileIC-150527-12"

    const-string/jumbo v2, "20000666"

    const-string/jumbo v3, "rltxxxfh"

    iget-object v4, p0, Lcom/alipay/module/face/ui/FaceInputUserInfo;->mModule:Lcom/alipay/mobile/verifyidentity/module/MicroModule;

    .line 145
    invoke-virtual {v4}, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->getToken()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/alipay/module/face/ui/FaceInputUserInfo;->mModule:Lcom/alipay/mobile/verifyidentity/module/MicroModule;

    invoke-virtual {v5}, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->getVerifyId()Ljava/lang/String;

    move-result-object v5

    move-object v7, v6

    .line 144
    invoke-static/range {v0 .. v7}, Lcom/alipay/mobile/verifyidentity/log/VerifyBehavorLogger;->logBehavor(Lcom/alipay/mobile/verifyidentity/log/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 146
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 118
    .line 2059
    :try_start_0
    const-string/jumbo v0, "input_method"

    .line 2060
    invoke-virtual {p0, v0}, Lcom/alipay/module/face/ui/FaceInputUserInfo;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 2062
    invoke-virtual {p0}, Lcom/alipay/module/face/ui/FaceInputUserInfo;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    .line 2061
    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    :goto_0
    sget-object v0, Lcom/alipay/mobile/verifyidentity/log/BehaviourIdEnum;->CLICKED:Lcom/alipay/mobile/verifyidentity/log/BehaviourIdEnum;

    const-string/jumbo v1, "UC-MobileIC-150527-13"

    const-string/jumbo v2, "20000666"

    const-string/jumbo v3, "rltxxxtj"

    iget-object v4, p0, Lcom/alipay/module/face/ui/FaceInputUserInfo;->mModule:Lcom/alipay/mobile/verifyidentity/module/MicroModule;

    .line 120
    invoke-virtual {v4}, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->getToken()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/alipay/module/face/ui/FaceInputUserInfo;->mModule:Lcom/alipay/mobile/verifyidentity/module/MicroModule;

    invoke-virtual {v5}, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->getVerifyId()Ljava/lang/String;

    move-result-object v5

    move-object v7, v6

    .line 119
    invoke-static/range {v0 .. v7}, Lcom/alipay/mobile/verifyidentity/log/VerifyBehavorLogger;->logBehavor(Lcom/alipay/mobile/verifyidentity/log/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 121
    iget-object v0, p0, Lcom/alipay/module/face/ui/FaceInputUserInfo;->c:Lcom/alipay/mobile/verifyidentity/ui/APInputBox;

    invoke-virtual {v0}, Lcom/alipay/mobile/verifyidentity/ui/APInputBox;->getInputedText()Ljava/lang/String;

    move-result-object v1

    .line 122
    iget-object v0, p0, Lcom/alipay/module/face/ui/FaceInputUserInfo;->d:Lcom/alipay/mobile/verifyidentity/ui/APInputBox;

    invoke-virtual {v0}, Lcom/alipay/mobile/verifyidentity/ui/APInputBox;->getInputedText()Ljava/lang/String;

    move-result-object v2

    .line 2078
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2079
    const-string/jumbo v0, "[^0-9]{2,}"

    invoke-virtual {v1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v8

    .line 123
    :goto_1
    if-nez v0, :cond_1

    .line 124
    const-string/jumbo v0, "\u8bf7\u6b63\u786e\u586b\u5199\u59d3\u540d\uff0c\u4e14\u81f3\u5c11\u4e3a2\u4e2a\u5b57"

    invoke-virtual {p0, v0, v9}, Lcom/alipay/module/face/ui/FaceInputUserInfo;->toast(Ljava/lang/String;I)V

    .line 137
    :goto_2
    return-void

    .line 2063
    :catch_0
    move-exception v0

    .line 2064
    sget-object v1, Lcom/alipay/module/face/ui/FaceInputUserInfo;->a:Ljava/lang/String;

    const-string/jumbo v2, "hide InputMethod got EXCEPTION! "

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    move v0, v9

    .line 2083
    goto :goto_1

    .line 127
    :cond_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, " "

    const-string/jumbo v3, ""

    invoke-virtual {v2, v0, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 3069
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 3070
    const-string/jumbo v3, "^\\d{17}[0-9xX]$"

    invoke-virtual {v0, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v8

    .line 127
    :goto_3
    if-nez v0, :cond_4

    .line 128
    :cond_2
    const-string/jumbo v0, "\u4ec5\u652f\u630118\u4f4d\u8eab\u4efd\u8bc1\u53f7"

    invoke-virtual {p0, v0, v9}, Lcom/alipay/module/face/ui/FaceInputUserInfo;->toast(Ljava/lang/String;I)V

    goto :goto_2

    :cond_3
    move v0, v9

    .line 3074
    goto :goto_3

    .line 131
    :cond_4
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 132
    const-string/jumbo v0, "certName"

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    const-string/jumbo v0, "certNo"

    invoke-virtual {v5, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    new-instance v0, Lcom/alipay/module/face/helper/FaceCertHelper;

    iget-object v1, p0, Lcom/alipay/module/face/ui/FaceInputUserInfo;->mModule:Lcom/alipay/mobile/verifyidentity/module/MicroModule;

    iget-object v2, p0, Lcom/alipay/module/face/ui/FaceInputUserInfo;->mModule:Lcom/alipay/mobile/verifyidentity/module/MicroModule;

    invoke-virtual {v2}, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->getVerifyId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/module/face/ui/FaceInputUserInfo;->mModule:Lcom/alipay/mobile/verifyidentity/module/MicroModule;

    invoke-virtual {v3}, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->getToken()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/alipay/module/face/ui/FaceInputUserInfo;->mModule:Lcom/alipay/mobile/verifyidentity/module/MicroModule;

    check-cast v4, Lcom/alipay/module/face/FaceUserInputCertModule;

    .line 135
    invoke-virtual {v4}, Lcom/alipay/module/face/FaceUserInputCertModule;->getModuleData()Ljava/lang/String;

    move-result-object v4

    invoke-direct/range {v0 .. v5}, Lcom/alipay/module/face/helper/FaceCertHelper;-><init>(Lcom/alipay/mobile/verifyidentity/module/MicroModule;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 136
    invoke-virtual {v0}, Lcom/alipay/module/face/helper/FaceCertHelper;->a()V

    goto :goto_2
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 41
    invoke-super {p0, p1}, Lcom/alipay/mobile/verifyidentity/ui/BaseVerifyActivity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    sget v0, Ligh$g;->face_input_userinfo:I

    invoke-virtual {p0, v0}, Lcom/alipay/module/face/ui/FaceInputUserInfo;->setContentView(I)V

    .line 1087
    sget v0, Ligh$f;->userName:I

    invoke-virtual {p0, v0}, Lcom/alipay/module/face/ui/FaceInputUserInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/verifyidentity/ui/APInputBox;

    iput-object v0, p0, Lcom/alipay/module/face/ui/FaceInputUserInfo;->c:Lcom/alipay/mobile/verifyidentity/ui/APInputBox;

    .line 1088
    sget v0, Ligh$f;->userId:I

    invoke-virtual {p0, v0}, Lcom/alipay/module/face/ui/FaceInputUserInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/verifyidentity/ui/APInputBox;

    iput-object v0, p0, Lcom/alipay/module/face/ui/FaceInputUserInfo;->d:Lcom/alipay/mobile/verifyidentity/ui/APInputBox;

    .line 1089
    sget v0, Ligh$f;->confirmBtn:I

    invoke-virtual {p0, v0}, Lcom/alipay/module/face/ui/FaceInputUserInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/alipay/module/face/ui/FaceInputUserInfo;->e:Landroid/widget/Button;

    .line 1090
    iget-object v0, p0, Lcom/alipay/module/face/ui/FaceInputUserInfo;->d:Lcom/alipay/mobile/verifyidentity/ui/APInputBox;

    invoke-virtual {v0}, Lcom/alipay/mobile/verifyidentity/ui/APInputBox;->getEtContent()Lcom/alipay/mobile/verifyidentity/ui/APEditText;

    move-result-object v0

    new-instance v1, Lcom/alipay/module/face/ui/b;

    invoke-direct {v1, p0}, Lcom/alipay/module/face/ui/b;-><init>(Lcom/alipay/module/face/ui/FaceInputUserInfo;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/verifyidentity/ui/APEditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 1102
    iget-object v0, p0, Lcom/alipay/module/face/ui/FaceInputUserInfo;->e:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1104
    iget-object v0, p0, Lcom/alipay/module/face/ui/FaceInputUserInfo;->b:Lcom/alipay/mobile/verifyidentity/ui/validator/EditTextHasNullChecker;

    iget-object v1, p0, Lcom/alipay/module/face/ui/FaceInputUserInfo;->e:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/verifyidentity/ui/validator/EditTextHasNullChecker;->addNeedEnabledButton(Landroid/widget/Button;)V

    .line 1105
    iget-object v0, p0, Lcom/alipay/module/face/ui/FaceInputUserInfo;->c:Lcom/alipay/mobile/verifyidentity/ui/APInputBox;

    invoke-virtual {v0}, Lcom/alipay/mobile/verifyidentity/ui/APInputBox;->getEtContent()Lcom/alipay/mobile/verifyidentity/ui/APEditText;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/module/face/ui/FaceInputUserInfo;->b:Lcom/alipay/mobile/verifyidentity/ui/validator/EditTextHasNullChecker;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/verifyidentity/ui/APEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1106
    iget-object v0, p0, Lcom/alipay/module/face/ui/FaceInputUserInfo;->b:Lcom/alipay/mobile/verifyidentity/ui/validator/EditTextHasNullChecker;

    iget-object v1, p0, Lcom/alipay/module/face/ui/FaceInputUserInfo;->c:Lcom/alipay/mobile/verifyidentity/ui/APInputBox;

    invoke-virtual {v1}, Lcom/alipay/mobile/verifyidentity/ui/APInputBox;->getEtContent()Lcom/alipay/mobile/verifyidentity/ui/APEditText;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/verifyidentity/ui/validator/EditTextHasNullChecker;->addNeedCheckView(Landroid/widget/EditText;)V

    .line 1108
    iget-object v0, p0, Lcom/alipay/module/face/ui/FaceInputUserInfo;->d:Lcom/alipay/mobile/verifyidentity/ui/APInputBox;

    invoke-virtual {v0}, Lcom/alipay/mobile/verifyidentity/ui/APInputBox;->getEtContent()Lcom/alipay/mobile/verifyidentity/ui/APEditText;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/module/face/ui/FaceInputUserInfo;->b:Lcom/alipay/mobile/verifyidentity/ui/validator/EditTextHasNullChecker;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/verifyidentity/ui/APEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1109
    iget-object v0, p0, Lcom/alipay/module/face/ui/FaceInputUserInfo;->b:Lcom/alipay/mobile/verifyidentity/ui/validator/EditTextHasNullChecker;

    iget-object v1, p0, Lcom/alipay/module/face/ui/FaceInputUserInfo;->d:Lcom/alipay/mobile/verifyidentity/ui/APInputBox;

    invoke-virtual {v1}, Lcom/alipay/mobile/verifyidentity/ui/APInputBox;->getEtContent()Lcom/alipay/mobile/verifyidentity/ui/APEditText;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/verifyidentity/ui/validator/EditTextHasNullChecker;->addNeedCheckView(Landroid/widget/EditText;)V

    .line 1110
    iget-object v0, p0, Lcom/alipay/module/face/ui/FaceInputUserInfo;->c:Lcom/alipay/mobile/verifyidentity/ui/APInputBox;

    invoke-virtual {v0}, Lcom/alipay/mobile/verifyidentity/ui/APInputBox;->getEtContent()Lcom/alipay/mobile/verifyidentity/ui/APEditText;

    move-result-object v0

    .line 2047
    new-instance v1, Lcom/alipay/module/face/ui/a;

    invoke-direct {v1, p0, v0}, Lcom/alipay/module/face/ui/a;-><init>(Lcom/alipay/module/face/ui/FaceInputUserInfo;Landroid/view/View;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1111
    iget-object v0, p0, Lcom/alipay/module/face/ui/FaceInputUserInfo;->c:Lcom/alipay/mobile/verifyidentity/ui/APInputBox;

    invoke-virtual {v0}, Lcom/alipay/mobile/verifyidentity/ui/APInputBox;->getEtContent()Lcom/alipay/mobile/verifyidentity/ui/APEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/verifyidentity/ui/APEditText;->requestFocus()Z

    .line 1112
    sget-object v0, Lcom/alipay/mobile/verifyidentity/log/BehaviourIdEnum;->OPENPAGE:Lcom/alipay/mobile/verifyidentity/log/BehaviourIdEnum;

    const-string/jumbo v1, "UC-MobileIC-150527-11"

    const-string/jumbo v2, "20000666"

    const-string/jumbo v3, "rltxxxfw"

    iget-object v4, p0, Lcom/alipay/module/face/ui/FaceInputUserInfo;->mModule:Lcom/alipay/mobile/verifyidentity/module/MicroModule;

    .line 1113
    invoke-virtual {v4}, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->getToken()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/alipay/module/face/ui/FaceInputUserInfo;->mModule:Lcom/alipay/mobile/verifyidentity/module/MicroModule;

    invoke-virtual {v5}, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->getVerifyId()Ljava/lang/String;

    move-result-object v5

    move-object v7, v6

    .line 1112
    invoke-static/range {v0 .. v7}, Lcom/alipay/mobile/verifyidentity/log/VerifyBehavorLogger;->logBehavor(Lcom/alipay/mobile/verifyidentity/log/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 44
    return-void
.end method
