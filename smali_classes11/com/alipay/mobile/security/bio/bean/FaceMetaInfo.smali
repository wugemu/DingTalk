.class public Lcom/alipay/mobile/security/bio/bean/FaceMetaInfo;
.super Lcom/alipay/mobile/security/bio/service/BioMetaInfo;
.source "FaceMetaInfo.java"


# direct methods
.method public constructor <init>()V
    .locals 8

    .prologue
    const/16 v7, 0x64

    .line 21
    invoke-direct {p0}, Lcom/alipay/mobile/security/bio/service/BioMetaInfo;-><init>()V

    .line 34
    new-instance v2, Lcom/alipay/mobile/security/bio/service/BioServiceDescription;

    invoke-direct {v2}, Lcom/alipay/mobile/security/bio/service/BioServiceDescription;-><init>()V

    .line 35
    .local v2, "recordExtService":Lcom/alipay/mobile/security/bio/service/BioServiceDescription;
    const-class v4, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtServiceImpl;

    invoke-virtual {v2, v4}, Lcom/alipay/mobile/security/bio/service/BioServiceDescription;->setClazz(Ljava/lang/Class;)V

    .line 36
    const-class v4, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtService;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/alipay/mobile/security/bio/service/BioServiceDescription;->setInterfaceName(Ljava/lang/String;)V

    .line 37
    invoke-virtual {p0, v2}, Lcom/alipay/mobile/security/bio/bean/FaceMetaInfo;->addExtService(Lcom/alipay/mobile/security/bio/service/BioServiceDescription;)V

    .line 40
    new-instance v0, Lcom/alipay/mobile/security/bio/service/BioServiceDescription;

    invoke-direct {v0}, Lcom/alipay/mobile/security/bio/service/BioServiceDescription;-><init>()V

    .line 41
    .local v0, "faceDescription":Lcom/alipay/mobile/security/bio/service/BioServiceDescription;
    const-class v4, Lcom/alipay/mobile/security/faceauth/service/impl/FaceServiceImplExt;

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/security/bio/service/BioServiceDescription;->setClazz(Ljava/lang/Class;)V

    .line 42
    const-class v4, Lcom/alipay/mobile/security/faceauth/FaceService;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/security/bio/service/BioServiceDescription;->setInterfaceName(Ljava/lang/String;)V

    .line 43
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/bio/bean/FaceMetaInfo;->addExtService(Lcom/alipay/mobile/security/bio/service/BioServiceDescription;)V

    .line 44
    invoke-virtual {v0}, Lcom/alipay/mobile/security/bio/service/BioServiceDescription;->getExtMetaInfo()Ljava/util/Map;

    move-result-object v4

    const-string/jumbo v5, "fppVer"

    sget-object v6, Lcom/alipay/mobile/security/bio/bean/FaceConstant;->FaceSDK_Version:Ljava/lang/String;

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    invoke-virtual {v0}, Lcom/alipay/mobile/security/bio/service/BioServiceDescription;->getExtMetaInfo()Ljava/util/Map;

    move-result-object v4

    const-string/jumbo v5, "fVer"

    sget-object v6, Lcom/alipay/mobile/security/bio/bean/FaceConstant;->ClientVersion:Ljava/lang/String;

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    new-instance v3, Lcom/alipay/mobile/security/bio/service/BioAppDescription;

    invoke-direct {v3}, Lcom/alipay/mobile/security/bio/service/BioAppDescription;-><init>()V

    .line 49
    .local v3, "sampleCircleApp":Lcom/alipay/mobile/security/bio/service/BioAppDescription;
    invoke-virtual {v3, v7}, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->setBioType(I)V

    .line 50
    const/16 v4, 0x3df

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->setBioAction(I)V

    .line 51
    sget-object v4, Lcom/alipay/mobile/security/bio/config/BisSdkModuleEnum;->SME_FACE_CHERRY:Lcom/alipay/mobile/security/bio/config/BisSdkModuleEnum;

    invoke-virtual {v4}, Lcom/alipay/mobile/security/bio/config/BisSdkModuleEnum;->getProductID()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->setProductID(I)V

    .line 52
    const-class v4, Lcom/alipay/mobile/security/faceauth/circle/ui/SampleCircleActivity;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->setAppName(Ljava/lang/String;)V

    .line 53
    const-class v4, Lcom/alipay/mobile/security/faceauth/circle/ui/SampleCircleActivity;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->setAppInterfaceName(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p0, v3}, Lcom/alipay/mobile/security/bio/bean/FaceMetaInfo;->addApplication(Lcom/alipay/mobile/security/bio/service/BioAppDescription;)V

    .line 57
    new-instance v1, Lcom/alipay/mobile/security/bio/service/BioAppDescription;

    invoke-direct {v1}, Lcom/alipay/mobile/security/bio/service/BioAppDescription;-><init>()V

    .line 58
    .local v1, "loginCircleApp":Lcom/alipay/mobile/security/bio/service/BioAppDescription;
    invoke-virtual {v1, v7}, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->setBioType(I)V

    .line 59
    const/16 v4, 0x3e0

    invoke-virtual {v1, v4}, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->setBioAction(I)V

    .line 60
    const-class v4, Lcom/alipay/mobile/security/faceauth/circle/ui/LoginCircleActivity;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->setAppName(Ljava/lang/String;)V

    .line 61
    const-class v4, Lcom/alipay/mobile/security/faceauth/circle/ui/LoginCircleActivity;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->setAppInterfaceName(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p0, v1}, Lcom/alipay/mobile/security/bio/bean/FaceMetaInfo;->addApplication(Lcom/alipay/mobile/security/bio/service/BioAppDescription;)V

    .line 73
    return-void
.end method
