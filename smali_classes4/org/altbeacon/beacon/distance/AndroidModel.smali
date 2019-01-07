.class public Lorg/altbeacon/beacon/distance/AndroidModel;
.super Ljava/lang/Object;
.source "AndroidModel.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AndroidModel"


# instance fields
.field mBuildNumber:Ljava/lang/String;

.field mManufacturer:Ljava/lang/String;

.field mModel:Ljava/lang/String;

.field mVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "version"    # Ljava/lang/String;
    .param p2, "buildNumber"    # Ljava/lang/String;
    .param p3, "model"    # Ljava/lang/String;
    .param p4, "manufacturer"    # Ljava/lang/String;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lorg/altbeacon/beacon/distance/AndroidModel;->mVersion:Ljava/lang/String;

    .line 24
    iput-object p2, p0, Lorg/altbeacon/beacon/distance/AndroidModel;->mBuildNumber:Ljava/lang/String;

    .line 25
    iput-object p3, p0, Lorg/altbeacon/beacon/distance/AndroidModel;->mModel:Ljava/lang/String;

    .line 26
    iput-object p4, p0, Lorg/altbeacon/beacon/distance/AndroidModel;->mManufacturer:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public static forThisDevice()Lorg/altbeacon/beacon/distance/AndroidModel;
    .locals 5

    .prologue
    .line 30
    new-instance v0, Lorg/altbeacon/beacon/distance/AndroidModel;

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    sget-object v2, Landroid/os/Build;->ID:Ljava/lang/String;

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget-object v4, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/altbeacon/beacon/distance/AndroidModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getBuildNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lorg/altbeacon/beacon/distance/AndroidModel;->mBuildNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getManufacturer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lorg/altbeacon/beacon/distance/AndroidModel;->mManufacturer:Ljava/lang/String;

    return-object v0
.end method

.method public getModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lorg/altbeacon/beacon/distance/AndroidModel;->mModel:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lorg/altbeacon/beacon/distance/AndroidModel;->mVersion:Ljava/lang/String;

    return-object v0
.end method

.method public matchScore(Lorg/altbeacon/beacon/distance/AndroidModel;)I
    .locals 8
    .param p1, "otherModel"    # Lorg/altbeacon/beacon/distance/AndroidModel;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v3, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 77
    const/4 v0, 0x0

    .line 78
    .local v0, "score":I
    iget-object v1, p0, Lorg/altbeacon/beacon/distance/AndroidModel;->mManufacturer:Ljava/lang/String;

    iget-object v2, p1, Lorg/altbeacon/beacon/distance/AndroidModel;->mManufacturer:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 79
    const/4 v0, 0x1

    .line 81
    :cond_0
    if-ne v0, v6, :cond_1

    iget-object v1, p0, Lorg/altbeacon/beacon/distance/AndroidModel;->mModel:Ljava/lang/String;

    iget-object v2, p1, Lorg/altbeacon/beacon/distance/AndroidModel;->mModel:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 82
    const/4 v0, 0x2

    .line 84
    :cond_1
    if-ne v0, v7, :cond_2

    iget-object v1, p0, Lorg/altbeacon/beacon/distance/AndroidModel;->mBuildNumber:Ljava/lang/String;

    iget-object v2, p1, Lorg/altbeacon/beacon/distance/AndroidModel;->mBuildNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 85
    const/4 v0, 0x3

    .line 87
    :cond_2
    if-ne v0, v3, :cond_3

    iget-object v1, p0, Lorg/altbeacon/beacon/distance/AndroidModel;->mVersion:Ljava/lang/String;

    iget-object v2, p1, Lorg/altbeacon/beacon/distance/AndroidModel;->mVersion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 88
    const/4 v0, 0x4

    .line 90
    :cond_3
    const-string/jumbo v1, "AndroidModel"

    const-string/jumbo v2, "Score is %s for %s compared to %s"

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0}, Lorg/altbeacon/beacon/distance/AndroidModel;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    aput-object p1, v3, v7

    invoke-static {v1, v2, v3}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 91
    return v0
.end method

.method public setBuildNumber(Ljava/lang/String;)V
    .locals 0
    .param p1, "mBuildNumber"    # Ljava/lang/String;

    .prologue
    .line 59
    iput-object p1, p0, Lorg/altbeacon/beacon/distance/AndroidModel;->mBuildNumber:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public setManufacturer(Ljava/lang/String;)V
    .locals 0
    .param p1, "mManufacturer"    # Ljava/lang/String;

    .prologue
    .line 67
    iput-object p1, p0, Lorg/altbeacon/beacon/distance/AndroidModel;->mManufacturer:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public setModel(Ljava/lang/String;)V
    .locals 0
    .param p1, "mModel"    # Ljava/lang/String;

    .prologue
    .line 63
    iput-object p1, p0, Lorg/altbeacon/beacon/distance/AndroidModel;->mModel:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "mVersion"    # Ljava/lang/String;

    .prologue
    .line 42
    iput-object p1, p0, Lorg/altbeacon/beacon/distance/AndroidModel;->mVersion:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/altbeacon/beacon/distance/AndroidModel;->mManufacturer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/altbeacon/beacon/distance/AndroidModel;->mModel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/altbeacon/beacon/distance/AndroidModel;->mBuildNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/altbeacon/beacon/distance/AndroidModel;->mVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
