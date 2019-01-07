.class public Lcom/alipay/mobile/security/bio/config/bean/SceneEnv;
.super Ljava/lang/Object;
.source "SceneEnv.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/security/bio/config/bean/SceneEnv;->a:Ljava/lang/String;

    .line 7
    const-string/jumbo v0, "normal"

    iput-object v0, p0, Lcom/alipay/mobile/security/bio/config/bean/SceneEnv;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getSceneCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/alipay/mobile/security/bio/config/bean/SceneEnv;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getSceneType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/alipay/mobile/security/bio/config/bean/SceneEnv;->b:Ljava/lang/String;

    return-object v0
.end method

.method public setSceneCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "sceneCode"    # Ljava/lang/String;

    .prologue
    .line 11
    iput-object p1, p0, Lcom/alipay/mobile/security/bio/config/bean/SceneEnv;->a:Ljava/lang/String;

    .line 12
    return-void
.end method

.method public setSceneType(Ljava/lang/String;)V
    .locals 0
    .param p1, "sceneType"    # Ljava/lang/String;

    .prologue
    .line 19
    iput-object p1, p0, Lcom/alipay/mobile/security/bio/config/bean/SceneEnv;->b:Ljava/lang/String;

    .line 20
    return-void
.end method
