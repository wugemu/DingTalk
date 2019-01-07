.class public Lcom/taobao/wireless/security/sdk/SecurityGuardManager;
.super Ljava/lang/Object;


# static fields
.field private static volatile a:Lcom/taobao/wireless/security/sdk/SecurityGuardManager;

.field private static volatile b:Lcom/taobao/wireless/security/sdk/initialize/IInitializeComponent;

.field private static final c:Ljava/lang/Object;


# instance fields
.field private d:Lcom/alibaba/wireless/security/open/SecurityGuardManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->c:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    invoke-static {p1}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/wireless/security/open/SecurityGuardManager;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->d:Lcom/alibaba/wireless/security/open/SecurityGuardManager;
    :try_end_0
    .catch Lcom/alibaba/wireless/security/open/SecException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/alibaba/wireless/security/open/SecException;->printStackTrace()V

    goto :goto_0
.end method

.method private a(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->d:Lcom/alibaba/wireless/security/open/SecurityGuardManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->d:Lcom/alibaba/wireless/security/open/SecurityGuardManager;

    invoke-virtual {v0, p1}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getInterface(Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/alibaba/wireless/security/open/SecException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/alibaba/wireless/security/open/SecException;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getInitializer()Lcom/taobao/wireless/security/sdk/initialize/IInitializeComponent;
    .locals 2

    sget-object v0, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->b:Lcom/taobao/wireless/security/sdk/initialize/IInitializeComponent;

    if-nez v0, :cond_1

    sget-object v1, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->b:Lcom/taobao/wireless/security/sdk/initialize/IInitializeComponent;

    if-nez v0, :cond_0

    new-instance v0, Lcom/taobao/wireless/security/sdk/initialize/a;

    invoke-direct {v0}, Lcom/taobao/wireless/security/sdk/initialize/a;-><init>()V

    sput-object v0, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->b:Lcom/taobao/wireless/security/sdk/initialize/IInitializeComponent;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->b:Lcom/taobao/wireless/security/sdk/initialize/IInitializeComponent;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/taobao/wireless/security/sdk/SecurityGuardManager;
    .locals 2

    sget-object v0, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->a:Lcom/taobao/wireless/security/sdk/SecurityGuardManager;

    if-nez v0, :cond_2

    const-class v1, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;

    monitor-enter v1

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :try_start_0
    monitor-exit v1

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->a:Lcom/taobao/wireless/security/sdk/SecurityGuardManager;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->getInitializer()Lcom/taobao/wireless/security/sdk/initialize/IInitializeComponent;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/taobao/wireless/security/sdk/initialize/IInitializeComponent;->initialize(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;

    invoke-direct {v0, p0}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->a:Lcom/taobao/wireless/security/sdk/SecurityGuardManager;

    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    sget-object v0, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->a:Lcom/taobao/wireless/security/sdk/SecurityGuardManager;

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public getAtlasEncryptComp()Lcom/taobao/wireless/security/sdk/atlasencrypt/IAtlasEncryptComponent;
    .locals 1

    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->getComponent(I)Lcom/taobao/wireless/security/sdk/IComponent;

    move-result-object v0

    check-cast v0, Lcom/taobao/wireless/security/sdk/atlasencrypt/IAtlasEncryptComponent;

    return-object v0
.end method

.method public getComponent(I)Lcom/taobao/wireless/security/sdk/IComponent;
    .locals 1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-object v0

    :pswitch_1
    const-class v0, Lcom/taobao/wireless/security/sdk/securesignature/ISecureSignatureComponent;

    invoke-direct {p0, v0}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/wireless/security/sdk/IComponent;

    goto :goto_0

    :pswitch_2
    const-class v0, Lcom/taobao/wireless/security/sdk/dynamicdatastore/IDynamicDataStoreComponent;

    invoke-direct {p0, v0}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/wireless/security/sdk/IComponent;

    goto :goto_0

    :pswitch_3
    const-class v0, Lcom/taobao/wireless/security/sdk/staticdatastore/IStaticDataStoreComponent;

    invoke-direct {p0, v0}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/wireless/security/sdk/IComponent;

    goto :goto_0

    :pswitch_4
    const-class v0, Lcom/taobao/wireless/security/sdk/indiekit/IIndieKitComponent;

    invoke-direct {p0, v0}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/wireless/security/sdk/IComponent;

    goto :goto_0

    :pswitch_5
    const-class v0, Lcom/taobao/wireless/security/sdk/rootdetect/IRootDetectComponent;

    invoke-direct {p0, v0}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/wireless/security/sdk/IComponent;

    goto :goto_0

    :pswitch_6
    const-class v0, Lcom/taobao/wireless/security/sdk/datacollection/IDataCollectionComponent;

    invoke-direct {p0, v0}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/wireless/security/sdk/IComponent;

    goto :goto_0

    :pswitch_7
    const-class v0, Lcom/taobao/wireless/security/sdk/staticdataencrypt/IStaticDataEncryptComponent;

    invoke-direct {p0, v0}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/wireless/security/sdk/IComponent;

    goto :goto_0

    :pswitch_8
    const-class v0, Lcom/taobao/wireless/security/sdk/securitybody/ISecurityBodyComponent;

    invoke-direct {p0, v0}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/wireless/security/sdk/IComponent;

    goto :goto_0

    :pswitch_9
    const-class v0, Lcom/taobao/wireless/security/sdk/dynamicdataencrypt/IDynamicDataEncryptComponent;

    invoke-direct {p0, v0}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/wireless/security/sdk/IComponent;

    goto :goto_0

    :pswitch_a
    const-class v0, Lcom/taobao/wireless/security/sdk/simulatordetect/ISimulatorDetectComponent;

    invoke-direct {p0, v0}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/wireless/security/sdk/IComponent;

    goto :goto_0

    :pswitch_b
    const-class v0, Lcom/taobao/wireless/security/sdk/securityDNS/ISecurityDNSComponent;

    invoke-direct {p0, v0}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/wireless/security/sdk/IComponent;

    goto :goto_0

    :pswitch_c
    const-class v0, Lcom/taobao/wireless/security/sdk/pkgvaliditycheck/IPkgValidityCheckComponent;

    invoke-direct {p0, v0}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/wireless/security/sdk/IComponent;

    goto/16 :goto_0

    :pswitch_d
    const-class v0, Lcom/taobao/wireless/security/sdk/nocaptcha/INoCaptchaComponent;

    invoke-direct {p0, v0}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/wireless/security/sdk/IComponent;

    goto/16 :goto_0

    :pswitch_e
    const-class v0, Lcom/taobao/wireless/security/sdk/atlasencrypt/IAtlasEncryptComponent;

    invoke-direct {p0, v0}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/wireless/security/sdk/IComponent;

    goto/16 :goto_0

    :pswitch_f
    const-class v0, Lcom/taobao/wireless/security/sdk/safetoken/ISafeTokenComponent;

    invoke-direct {p0, v0}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/wireless/security/sdk/IComponent;

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_0
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method

.method public getDataCollectionComp()Lcom/taobao/wireless/security/sdk/datacollection/IDataCollectionComponent;
    .locals 1

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->getComponent(I)Lcom/taobao/wireless/security/sdk/IComponent;

    move-result-object v0

    check-cast v0, Lcom/taobao/wireless/security/sdk/datacollection/IDataCollectionComponent;

    return-object v0
.end method

.method public getDynamicDataEncryptComp()Lcom/taobao/wireless/security/sdk/dynamicdataencrypt/IDynamicDataEncryptComponent;
    .locals 1

    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->getComponent(I)Lcom/taobao/wireless/security/sdk/IComponent;

    move-result-object v0

    check-cast v0, Lcom/taobao/wireless/security/sdk/dynamicdataencrypt/IDynamicDataEncryptComponent;

    return-object v0
.end method

.method public getDynamicDataStoreComp()Lcom/taobao/wireless/security/sdk/dynamicdatastore/IDynamicDataStoreComponent;
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->getComponent(I)Lcom/taobao/wireless/security/sdk/IComponent;

    move-result-object v0

    check-cast v0, Lcom/taobao/wireless/security/sdk/dynamicdatastore/IDynamicDataStoreComponent;

    return-object v0
.end method

.method public getIndieKitComp()Lcom/taobao/wireless/security/sdk/indiekit/IIndieKitComponent;
    .locals 1

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->getComponent(I)Lcom/taobao/wireless/security/sdk/IComponent;

    move-result-object v0

    check-cast v0, Lcom/taobao/wireless/security/sdk/indiekit/IIndieKitComponent;

    return-object v0
.end method

.method public getInterface(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->d:Lcom/alibaba/wireless/security/open/SecurityGuardManager;

    invoke-virtual {v0, p1}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getInterface(Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/alibaba/wireless/security/open/SecException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/alibaba/wireless/security/open/SecException;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getNoCaptchaComp()Lcom/taobao/wireless/security/sdk/nocaptcha/INoCaptchaComponent;
    .locals 1

    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->getComponent(I)Lcom/taobao/wireless/security/sdk/IComponent;

    move-result-object v0

    check-cast v0, Lcom/taobao/wireless/security/sdk/nocaptcha/INoCaptchaComponent;

    return-object v0
.end method

.method public getPackageValidityCheckComp()Lcom/taobao/wireless/security/sdk/pkgvaliditycheck/IPkgValidityCheckComponent;
    .locals 1

    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->getComponent(I)Lcom/taobao/wireless/security/sdk/IComponent;

    move-result-object v0

    check-cast v0, Lcom/taobao/wireless/security/sdk/pkgvaliditycheck/IPkgValidityCheckComponent;

    return-object v0
.end method

.method public getRootDetectComp()Lcom/taobao/wireless/security/sdk/rootdetect/IRootDetectComponent;
    .locals 1

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->getComponent(I)Lcom/taobao/wireless/security/sdk/IComponent;

    move-result-object v0

    check-cast v0, Lcom/taobao/wireless/security/sdk/rootdetect/IRootDetectComponent;

    return-object v0
.end method

.method public getSDKVerison()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->d:Lcom/alibaba/wireless/security/open/SecurityGuardManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->d:Lcom/alibaba/wireless/security/open/SecurityGuardManager;

    invoke-virtual {v0}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getSDKVerison()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSafeTokenComp()Lcom/taobao/wireless/security/sdk/safetoken/ISafeTokenComponent;
    .locals 1

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->getComponent(I)Lcom/taobao/wireless/security/sdk/IComponent;

    move-result-object v0

    check-cast v0, Lcom/taobao/wireless/security/sdk/safetoken/ISafeTokenComponent;

    return-object v0
.end method

.method public getSecureSignatureComp()Lcom/taobao/wireless/security/sdk/securesignature/ISecureSignatureComponent;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->getComponent(I)Lcom/taobao/wireless/security/sdk/IComponent;

    move-result-object v0

    check-cast v0, Lcom/taobao/wireless/security/sdk/securesignature/ISecureSignatureComponent;

    return-object v0
.end method

.method public getSecurityBodyComp()Lcom/taobao/wireless/security/sdk/securitybody/ISecurityBodyComponent;
    .locals 1

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->getComponent(I)Lcom/taobao/wireless/security/sdk/IComponent;

    move-result-object v0

    check-cast v0, Lcom/taobao/wireless/security/sdk/securitybody/ISecurityBodyComponent;

    return-object v0
.end method

.method public getSecurityDNSComp()Lcom/taobao/wireless/security/sdk/securityDNS/ISecurityDNSComponent;
    .locals 1

    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->getComponent(I)Lcom/taobao/wireless/security/sdk/IComponent;

    move-result-object v0

    check-cast v0, Lcom/taobao/wireless/security/sdk/securityDNS/ISecurityDNSComponent;

    return-object v0
.end method

.method public getSimulatorDetectComp()Lcom/taobao/wireless/security/sdk/simulatordetect/ISimulatorDetectComponent;
    .locals 1

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->getComponent(I)Lcom/taobao/wireless/security/sdk/IComponent;

    move-result-object v0

    check-cast v0, Lcom/taobao/wireless/security/sdk/simulatordetect/ISimulatorDetectComponent;

    return-object v0
.end method

.method public getStaticDataEncryptComp()Lcom/taobao/wireless/security/sdk/staticdataencrypt/IStaticDataEncryptComponent;
    .locals 1

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->getComponent(I)Lcom/taobao/wireless/security/sdk/IComponent;

    move-result-object v0

    check-cast v0, Lcom/taobao/wireless/security/sdk/staticdataencrypt/IStaticDataEncryptComponent;

    return-object v0
.end method

.method public getStaticDataStoreComp()Lcom/taobao/wireless/security/sdk/staticdatastore/IStaticDataStoreComponent;
    .locals 1

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->getComponent(I)Lcom/taobao/wireless/security/sdk/IComponent;

    move-result-object v0

    check-cast v0, Lcom/taobao/wireless/security/sdk/staticdatastore/IStaticDataStoreComponent;

    return-object v0
.end method

.method public isOpen()Ljava/lang/Boolean;
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
