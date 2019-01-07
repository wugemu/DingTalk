.class public Lcom/alipay/mobile/security/faceauth/model/MetaRecord;
.super Ljava/lang/Object;
.source "MetaRecord.java"


# static fields
.field public static final PRIORITY_HIGH:I = 0x1

.field public static final PRIORITY_LOW:I = 0x3

.field public static final PRIORITY_MIDDLE:I = 0x2


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "caseID"    # Ljava/lang/String;
    .param p2, "actionID"    # Ljava/lang/String;
    .param p3, "appID"    # Ljava/lang/String;
    .param p4, "seedID"    # Ljava/lang/String;
    .param p5, "other"    # Ljava/lang/String;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const-string/jumbo v0, "Biometrics"

    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/model/MetaRecord;->a:Ljava/lang/String;

    .line 18
    const/4 v0, 0x2

    iput v0, p0, Lcom/alipay/mobile/security/faceauth/model/MetaRecord;->g:I

    .line 21
    iput-object p1, p0, Lcom/alipay/mobile/security/faceauth/model/MetaRecord;->b:Ljava/lang/String;

    .line 22
    iput-object p2, p0, Lcom/alipay/mobile/security/faceauth/model/MetaRecord;->c:Ljava/lang/String;

    .line 23
    iput-object p3, p0, Lcom/alipay/mobile/security/faceauth/model/MetaRecord;->d:Ljava/lang/String;

    .line 24
    iput-object p4, p0, Lcom/alipay/mobile/security/faceauth/model/MetaRecord;->e:Ljava/lang/String;

    .line 25
    iput-object p5, p0, Lcom/alipay/mobile/security/faceauth/model/MetaRecord;->f:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p1, "caseID"    # Ljava/lang/String;
    .param p2, "actionID"    # Ljava/lang/String;
    .param p3, "appID"    # Ljava/lang/String;
    .param p4, "seedID"    # Ljava/lang/String;
    .param p5, "other"    # Ljava/lang/String;
    .param p6, "priority"    # I

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const-string/jumbo v0, "Biometrics"

    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/model/MetaRecord;->a:Ljava/lang/String;

    .line 18
    const/4 v0, 0x2

    iput v0, p0, Lcom/alipay/mobile/security/faceauth/model/MetaRecord;->g:I

    .line 29
    iput-object p1, p0, Lcom/alipay/mobile/security/faceauth/model/MetaRecord;->b:Ljava/lang/String;

    .line 30
    iput-object p2, p0, Lcom/alipay/mobile/security/faceauth/model/MetaRecord;->c:Ljava/lang/String;

    .line 31
    iput-object p3, p0, Lcom/alipay/mobile/security/faceauth/model/MetaRecord;->d:Ljava/lang/String;

    .line 32
    iput-object p4, p0, Lcom/alipay/mobile/security/faceauth/model/MetaRecord;->e:Ljava/lang/String;

    .line 33
    iput-object p5, p0, Lcom/alipay/mobile/security/faceauth/model/MetaRecord;->f:Ljava/lang/String;

    .line 34
    iput p6, p0, Lcom/alipay/mobile/security/faceauth/model/MetaRecord;->g:I

    .line 35
    return-void
.end method


# virtual methods
.method public getActionID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/model/MetaRecord;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getAppID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/model/MetaRecord;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getBizType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/model/MetaRecord;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getCaseID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/model/MetaRecord;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getOther()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/model/MetaRecord;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lcom/alipay/mobile/security/faceauth/model/MetaRecord;->g:I

    return v0
.end method

.method public getSeedID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/model/MetaRecord;->e:Ljava/lang/String;

    return-object v0
.end method

.method public setActionID(Ljava/lang/String;)V
    .locals 0
    .param p1, "actionID"    # Ljava/lang/String;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/alipay/mobile/security/faceauth/model/MetaRecord;->c:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public setAppID(Ljava/lang/String;)V
    .locals 0
    .param p1, "appID"    # Ljava/lang/String;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/alipay/mobile/security/faceauth/model/MetaRecord;->d:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public setBizType(Ljava/lang/String;)V
    .locals 0
    .param p1, "bizType"    # Ljava/lang/String;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/alipay/mobile/security/faceauth/model/MetaRecord;->a:Ljava/lang/String;

    .line 83
    return-void
.end method

.method public setCaseID(Ljava/lang/String;)V
    .locals 0
    .param p1, "caseID"    # Ljava/lang/String;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/alipay/mobile/security/faceauth/model/MetaRecord;->b:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public setOther(Ljava/lang/String;)V
    .locals 0
    .param p1, "other"    # Ljava/lang/String;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/alipay/mobile/security/faceauth/model/MetaRecord;->f:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public setPriority(I)V
    .locals 0
    .param p1, "priority"    # I

    .prologue
    .line 90
    iput p1, p0, Lcom/alipay/mobile/security/faceauth/model/MetaRecord;->g:I

    .line 91
    return-void
.end method

.method public setSeedID(Ljava/lang/String;)V
    .locals 0
    .param p1, "seedID"    # Ljava/lang/String;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/alipay/mobile/security/faceauth/model/MetaRecord;->e:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 97
    .local v0, "sb":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "caseID:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/security/faceauth/model/MetaRecord;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "actionID:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/security/faceauth/model/MetaRecord;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "appID:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/security/faceauth/model/MetaRecord;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "seedID:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/security/faceauth/model/MetaRecord;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "bizType:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/security/faceauth/model/MetaRecord;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "priority:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/alipay/mobile/security/faceauth/model/MetaRecord;->g:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
