.class public interface abstract Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleCallBack;
.super Ljava/lang/Object;
.source "FaceCircleCallBack.java"


# virtual methods
.method public abstract alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;ZZ)V
.end method

.method public abstract finishActivity(Z)V
.end method

.method public abstract getAppDescription()Lcom/alipay/mobile/security/bio/service/BioAppDescription;
.end method

.method public abstract getFaceCircleMode()Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleMode;
.end method

.method public abstract getRemoteConfig()Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;
.end method

.method public abstract getUserVerifyInfo()Lcom/alipay/mobile/security/faceauth/UserVerifyInfo;
.end method

.method public abstract gotoSettings()V
.end method

.method public abstract hasCameraPermission()Z
.end method

.method public abstract sendResponse(I)V
.end method

.method public abstract sendResponse(Lcom/alipay/mobile/security/bio/workspace/BioFragmentResponse;)V
.end method

.method public abstract sendResponse(Ljava/lang/String;ILjava/lang/String;)V
.end method

.method public abstract setCameraPermission(Z)V
.end method
