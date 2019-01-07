.class public Lcom/dbappsecurity/entity/Versns;
.super Lcom/dbappsecurity/entity/ResultEntity;
.source "Versns.java"


# instance fields
.field private appkeyVersion:Ljava/lang/String;

.field private corpId:Ljava/lang/String;

.field private key:Ljava/lang/String;

.field private mathematicalVersion:Ljava/lang/String;

.field private refreshKey:Ljava/lang/String;

.field private time:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/dbappsecurity/entity/ResultEntity;-><init>()V

    .line 16
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "corpId"    # Ljava/lang/String;
    .param p2, "appkeyVersion"    # Ljava/lang/String;
    .param p3, "mathematicalVersion"    # Ljava/lang/String;
    .param p4, "key"    # Ljava/lang/String;
    .param p5, "refreshKey"    # Ljava/lang/String;
    .param p6, "time"    # Ljava/lang/String;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/dbappsecurity/entity/ResultEntity;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/dbappsecurity/entity/Versns;->corpId:Ljava/lang/String;

    .line 29
    iput-object p2, p0, Lcom/dbappsecurity/entity/Versns;->appkeyVersion:Ljava/lang/String;

    .line 30
    iput-object p3, p0, Lcom/dbappsecurity/entity/Versns;->mathematicalVersion:Ljava/lang/String;

    .line 31
    iput-object p4, p0, Lcom/dbappsecurity/entity/Versns;->key:Ljava/lang/String;

    .line 32
    iput-object p5, p0, Lcom/dbappsecurity/entity/Versns;->refreshKey:Ljava/lang/String;

    .line 33
    iput-object p6, p0, Lcom/dbappsecurity/entity/Versns;->time:Ljava/lang/String;

    .line 34
    return-void
.end method


# virtual methods
.method public getAppkeyVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/dbappsecurity/entity/Versns;->appkeyVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getCorpId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/dbappsecurity/entity/Versns;->corpId:Ljava/lang/String;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/dbappsecurity/entity/Versns;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getMathematicalVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/dbappsecurity/entity/Versns;->mathematicalVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getRefreshKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/dbappsecurity/entity/Versns;->refreshKey:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/dbappsecurity/entity/Versns;->time:Ljava/lang/String;

    return-object v0
.end method

.method public setAppkeyVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "appkeyVersion"    # Ljava/lang/String;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/dbappsecurity/entity/Versns;->appkeyVersion:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public setCorpId(Ljava/lang/String;)V
    .locals 0
    .param p1, "corpId"    # Ljava/lang/String;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/dbappsecurity/entity/Versns;->corpId:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/dbappsecurity/entity/Versns;->key:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public setMathematicalVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "mathematicalVersion"    # Ljava/lang/String;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/dbappsecurity/entity/Versns;->mathematicalVersion:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public setRefreshKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "refreshKey"    # Ljava/lang/String;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/dbappsecurity/entity/Versns;->refreshKey:Ljava/lang/String;

    .line 83
    return-void
.end method

.method public setTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "time"    # Ljava/lang/String;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/dbappsecurity/entity/Versns;->time:Ljava/lang/String;

    .line 42
    return-void
.end method
