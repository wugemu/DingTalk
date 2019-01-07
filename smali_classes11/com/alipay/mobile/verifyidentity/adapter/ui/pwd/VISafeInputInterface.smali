.class public interface abstract Lcom/alipay/mobile/verifyidentity/adapter/ui/pwd/VISafeInputInterface;
.super Ljava/lang/Object;
.source "VISafeInputInterface.java"


# static fields
.field public static final sInjector:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Ljava/lang/String;

    :goto_0
    sput-object v0, Lcom/alipay/mobile/verifyidentity/adapter/ui/pwd/VISafeInputInterface;->sInjector:Ljava/lang/Class;

    return-void

    :cond_0
    const-class v0, Lcom/alipay/android/hackbyte/ClassVerifier;

    goto :goto_0
.end method


# virtual methods
.method public abstract clearText()V
.end method

.method public abstract getContentView()Landroid/view/View;
.end method

.method public abstract getEditContent()Ljava/lang/String;
.end method

.method public abstract getEditText()Landroid/widget/EditText;
.end method

.method public abstract setEncryptRandomStringAndType(Ljava/lang/String;Lcom/alipay/android/app/safepaybase/EncryptRandomType;)V
.end method

.method public abstract setNeedConfirmButton(Z)V
.end method

.method public abstract setOkButtonText(Ljava/lang/String;)V
.end method

.method public abstract setOnClickListener(Landroid/view/View$OnClickListener;)V
.end method

.method public abstract setOnConfirmListener(Lcom/alipay/android/app/safepaybase/OnConfirmListener;)V
.end method

.method public abstract setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V
.end method

.method public abstract setRsaPublicKey(Ljava/lang/String;)V
.end method
