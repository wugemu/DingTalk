.class public Lcom/alipay/mobile/security/bio/common/record/MetaRecord;
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

.field private f:I

.field private g:Z

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private l:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const-string/jumbo v0, "Biometrics"

    iput-object v0, p0, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;->a:Ljava/lang/String;

    .line 23
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;->g:Z

    .line 24
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;->h:Ljava/lang/String;

    .line 25
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;->i:Ljava/lang/String;

    .line 26
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;->j:Ljava/lang/String;

    .line 28
    const/4 v0, 0x2

    iput v0, p0, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;->l:I

    .line 32
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "caseID"    # Ljava/lang/String;
    .param p2, "actionID"    # Ljava/lang/String;
    .param p3, "appID"    # Ljava/lang/String;
    .param p4, "seedID"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const-string/jumbo v0, "Biometrics"

    iput-object v0, p0, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;->a:Ljava/lang/String;

    .line 23
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;->g:Z

    .line 24
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;->h:Ljava/lang/String;

    .line 25
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;->i:Ljava/lang/String;

    .line 26
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;->j:Ljava/lang/String;

    .line 28
    const/4 v0, 0x2

    iput v0, p0, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;->l:I

    .line 35
    iput-object p1, p0, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;->b:Ljava/lang/String;

    .line 36
    iput-object p2, p0, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;->c:Ljava/lang/String;

    .line 37
    iput-object p3, p0, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;->d:Ljava/lang/String;

    .line 38
    iput-object p4, p0, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;->e:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p1, "caseID"    # Ljava/lang/String;
    .param p2, "actionID"    # Ljava/lang/String;
    .param p3, "appID"    # Ljava/lang/String;
    .param p4, "seedID"    # Ljava/lang/String;
    .param p5, "priority"    # I

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const-string/jumbo v0, "Biometrics"

    iput-object v0, p0, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;->a:Ljava/lang/String;

    .line 23
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;->g:Z

    .line 24
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;->h:Ljava/lang/String;

    .line 25
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;->i:Ljava/lang/String;

    .line 26
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;->j:Ljava/lang/String;

    .line 28
    const/4 v0, 0x2

    iput v0, p0, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;->l:I

    .line 43
    iput-object p1, p0, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;->b:Ljava/lang/String;

    .line 44
    iput-object p2, p0, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;->c:Ljava/lang/String;

    .line 45
    iput-object p3, p0, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;->d:Ljava/lang/String;

    .line 46
    iput-object p4, p0, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;->e:Ljava/lang/String;

    .line 47
    iput p5, p0, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;->l:I

    .line 48
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "caseID"    # Ljava/lang/String;
    .param p2, "actionID"    # Ljava/lang/String;
    .param p3, "appID"    # Ljava/lang/String;
    .param p4, "seedID"    # Ljava/lang/String;
    .param p5, "isEnbleSequence"    # Z

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const-string/jumbo v0, "Biometrics"

    iput-object v0, p0, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;->a:Ljava/lang/String;

    .line 23
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;->g:Z

    .line 24
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;->h:Ljava/lang/String;

    .line 25
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;->i:Ljava/lang/String;

    .line 26
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;->j:Ljava/lang/String;

    .line 28
    const/4 v0, 0x2

    iput v0, p0, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;->l:I

    .line 51
    iput-object p1, p0, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;->b:Ljava/lang/String;

    .line 52
    iput-object p2, p0, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;->c:Ljava/lang/String;

    .line 53
    iput-object p3, p0, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;->d:Ljava/lang/String;

    .line 54
    iput-object p4, p0, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;->e:Ljava/lang/String;

    .line 55
    iput-boolean p5, p0, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;->g:Z

    .line 57
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 1
    .param p1, "caseID"    # Ljava/lang/String;
    .param p2, "actionID"    # Ljava/lang/String;
    .param p3, "appID"    # Ljava/lang/String;
    .param p4, "seedID"    # Ljava/lang/String;
    .param p5, "isEnbleSequence"    # Z
    .param p6, "priority"    # I

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const-string/jumbo v0, "Biometrics"

    iput-object v0, p0, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;->a:Ljava/lang/String;

    .line 23
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;->g:Z

    .line 24
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;->h:Ljava/lang/String;

    .line 25
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;->i:Ljava/lang/String;

    .line 26
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;->j:Ljava/lang/String;

    .line 28
    const/4 v0, 0x2

    iput v0, p0, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;->l:I

    .line 60
    iput-object p1, p0, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;->b:Ljava/lang/String;

    .line 61
    iput-object p2, p0, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;->c:Ljava/lang/String;

    .line 62
    iput-object p3, p0, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;->d:Ljava/lang/String;

    .line 63
    iput-object p4, p0, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;->e:Ljava/lang/String;

    .line 64
    iput-boolean p5, p0, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;->g:Z

    .line 65
    iput p6, p0, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;->l:I

    .line 66
    return-void
.end method


# virtual methods
.method public getActionID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getAppID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getBizType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getCaseID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getParam1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;->h:Ljava/lang/String;

    return-object v0
.end method

.method public getParam2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;->i:Ljava/lang/String;

    return-object v0
.end method

.method public getParam3()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;->j:Ljava/lang/String;

    return-object v0
.end method

.method public getParam4()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 134
    iget-object v0, p0, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;->k:Ljava/util/Map;

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    .prologue
    .line 186
    iget v0, p0, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;->l:I

    return v0
.end method

.method public getSeedID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getSequenceId()I
    .locals 1

    .prologue
    .line 102
    iget v0, p0, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;->f:I

    return v0
.end method

.method public isEnableSequence()Z
    .locals 1

    .prologue
    .line 142
    iget-boolean v0, p0, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;->g:Z

    return v0
.end method

.method public setActionID(Ljava/lang/String;)V
    .locals 0
    .param p1, "actionID"    # Ljava/lang/String;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;->c:Ljava/lang/String;

    .line 83
    return-void
.end method

.method public setAppID(Ljava/lang/String;)V
    .locals 0
    .param p1, "appID"    # Ljava/lang/String;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;->d:Ljava/lang/String;

    .line 91
    return-void
.end method

.method public setBizType(Ljava/lang/String;)V
    .locals 0
    .param p1, "bizType"    # Ljava/lang/String;

    .prologue
    .line 182
    iput-object p1, p0, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;->a:Ljava/lang/String;

    .line 183
    return-void
.end method

.method public setCaseID(Ljava/lang/String;)V
    .locals 0
    .param p1, "caseID"    # Ljava/lang/String;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;->b:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public setEnableSequence(Z)V
    .locals 0
    .param p1, "enableSequence"    # Z

    .prologue
    .line 146
    iput-boolean p1, p0, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;->g:Z

    .line 147
    return-void
.end method

.method public setParam1(Ljava/lang/String;)V
    .locals 0
    .param p1, "param1"    # Ljava/lang/String;

    .prologue
    .line 114
    iput-object p1, p0, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;->h:Ljava/lang/String;

    .line 115
    return-void
.end method

.method public setParam2(Ljava/lang/String;)V
    .locals 0
    .param p1, "param2"    # Ljava/lang/String;

    .prologue
    .line 122
    iput-object p1, p0, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;->i:Ljava/lang/String;

    .line 123
    return-void
.end method

.method public setParam3(Ljava/lang/String;)V
    .locals 0
    .param p1, "param3"    # Ljava/lang/String;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;->j:Ljava/lang/String;

    .line 131
    return-void
.end method

.method public setParam4(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 138
    .local p1, "param4":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;->k:Ljava/util/Map;

    .line 139
    return-void
.end method

.method public setPriority(I)V
    .locals 0
    .param p1, "priority"    # I

    .prologue
    .line 190
    iput p1, p0, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;->l:I

    .line 191
    return-void
.end method

.method public setSeedID(Ljava/lang/String;)V
    .locals 0
    .param p1, "seedID"    # Ljava/lang/String;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;->e:Ljava/lang/String;

    .line 99
    return-void
.end method

.method public setSequenceId(I)V
    .locals 0
    .param p1, "sequenceId"    # I

    .prologue
    .line 106
    iput p1, p0, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;->f:I

    .line 107
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 152
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 153
    .local v3, "sb":Ljava/lang/StringBuilder;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "caseID:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;->b:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "#"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "actionID:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;->c:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "#"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "appID:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;->d:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "#"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "seedID:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;->e:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "#"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "bizType:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;->a:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "#"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "priority:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p0, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;->l:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "#"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "param1:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;->h:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "#"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "param2:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;->i:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "#"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "param3:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;->j:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "#"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    const-string/jumbo v5, "param4:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    iget-object v5, p0, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;->k:Ljava/util/Map;

    if-eqz v5, :cond_0

    .line 165
    iget-object v5, p0, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;->k:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 166
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 167
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 168
    .local v0, "entry":Ljava/util/Map$Entry;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    .line 169
    .local v2, "key":Ljava/lang/Object;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 170
    .local v4, "val":Ljava/lang/Object;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "@"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 174
    .end local v0    # "entry":Ljava/util/Map$Entry;
    .end local v1    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .end local v2    # "key":Ljava/lang/Object;
    .end local v4    # "val":Ljava/lang/Object;
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method
