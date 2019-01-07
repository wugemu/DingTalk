.class public interface abstract Lcom/alipay/mobile/security/faceauth/config/DetectionActionConfig;
.super Ljava/lang/Object;
.source "DetectionActionConfig.java"


# virtual methods
.method public abstract getAlgorithm()Lcom/alipay/mobile/security/faceauth/config/AlgorithmNetConfig;
.end method

.method public abstract getDetect()Lcom/alipay/mobile/security/faceauth/config/DetectNetConfig;
.end method

.method public abstract getDeviceSettings()[Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;
.end method

.method public abstract getEnable()Lcom/alipay/mobile/security/faceauth/config/SwitchNetConfig;
.end method

.method public abstract getEnv()I
.end method

.method public abstract getMine()Lcom/alipay/mobile/security/faceauth/config/MineNetConfig;
.end method

.method public abstract getModes()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getUpload()Lcom/alipay/mobile/security/faceauth/config/UploadNetConfig;
.end method
