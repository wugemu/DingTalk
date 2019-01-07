.class public Lcom/alipay/mobile/security/faceauth/behavior/Behavior;
.super Ljava/lang/Object;
.source "Behavior.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Lcom/alipay/mobile/security/faceauth/InvokeType;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/security/faceauth/behavior/BehaviorTask;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/behavior/Behavior;->a:Ljava/lang/String;

    .line 12
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/behavior/Behavior;->b:Ljava/lang/String;

    .line 13
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/behavior/Behavior;->c:Ljava/lang/String;

    .line 14
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/behavior/Behavior;->d:Ljava/lang/String;

    .line 15
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/behavior/Behavior;->e:Ljava/lang/String;

    .line 16
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/behavior/Behavior;->f:Ljava/lang/String;

    .line 18
    const-string/jumbo v0, "3.1"

    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/behavior/Behavior;->h:Ljava/lang/String;

    .line 19
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/behavior/Behavior;->i:Ljava/lang/String;

    .line 20
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/behavior/Behavior;->j:Ljava/lang/String;

    .line 21
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/behavior/Behavior;->k:Ljava/lang/String;

    .line 22
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/behavior/Behavior;->l:Ljava/lang/String;

    .line 23
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/behavior/Behavior;->m:Ljava/lang/String;

    .line 24
    const-string/jumbo v0, "android"

    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/behavior/Behavior;->n:Ljava/lang/String;

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/behavior/Behavior;->o:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addTask(Lcom/alipay/mobile/security/faceauth/behavior/BehaviorTask;)V
    .locals 1
    .param p1, "task"    # Lcom/alipay/mobile/security/faceauth/behavior/BehaviorTask;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/behavior/Behavior;->o:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    return-void
.end method

.method public getActid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/behavior/Behavior;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getApdid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/behavior/Behavior;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getAppid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/behavior/Behavior;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getBehid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/behavior/Behavior;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getBistoken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/behavior/Behavior;->k:Ljava/lang/String;

    return-object v0
.end method

.method public getIdx()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/behavior/Behavior;->m:Ljava/lang/String;

    return-object v0
.end method

.method public getInvtp()Lcom/alipay/mobile/security/faceauth/InvokeType;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/behavior/Behavior;->g:Lcom/alipay/mobile/security/faceauth/InvokeType;

    return-object v0
.end method

.method public getMirror()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/behavior/Behavior;->i:Ljava/lang/String;

    return-object v0
.end method

.method public getOs()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/behavior/Behavior;->n:Ljava/lang/String;

    return-object v0
.end method

.method public getSceid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/behavior/Behavior;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getTasks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/security/faceauth/behavior/BehaviorTask;",
            ">;"
        }
    .end annotation

    .prologue
    .line 105
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/behavior/Behavior;->o:Ljava/util/List;

    return-object v0
.end method

.method public getTm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/behavior/Behavior;->l:Ljava/lang/String;

    return-object v0
.end method

.method public getUserid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/behavior/Behavior;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getVer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/behavior/Behavior;->h:Ljava/lang/String;

    return-object v0
.end method

.method public getVtoken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/behavior/Behavior;->j:Ljava/lang/String;

    return-object v0
.end method

.method public setActid(Ljava/lang/String;)V
    .locals 0
    .param p1, "actid"    # Ljava/lang/String;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/alipay/mobile/security/faceauth/behavior/Behavior;->e:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public setApdid(Ljava/lang/String;)V
    .locals 0
    .param p1, "apdid"    # Ljava/lang/String;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/alipay/mobile/security/faceauth/behavior/Behavior;->b:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public setAppid(Ljava/lang/String;)V
    .locals 0
    .param p1, "appid"    # Ljava/lang/String;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/alipay/mobile/security/faceauth/behavior/Behavior;->c:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public setBehid(Ljava/lang/String;)V
    .locals 0
    .param p1, "behid"    # Ljava/lang/String;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/alipay/mobile/security/faceauth/behavior/Behavior;->d:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public setBistoken(Ljava/lang/String;)V
    .locals 0
    .param p1, "bistoken"    # Ljava/lang/String;

    .prologue
    .line 149
    iput-object p1, p0, Lcom/alipay/mobile/security/faceauth/behavior/Behavior;->k:Ljava/lang/String;

    .line 150
    return-void
.end method

.method public setIdx(Ljava/lang/String;)V
    .locals 0
    .param p1, "idx"    # Ljava/lang/String;

    .prologue
    .line 141
    iput-object p1, p0, Lcom/alipay/mobile/security/faceauth/behavior/Behavior;->m:Ljava/lang/String;

    .line 142
    return-void
.end method

.method public setInvtp(Lcom/alipay/mobile/security/faceauth/InvokeType;)V
    .locals 0
    .param p1, "invtp"    # Lcom/alipay/mobile/security/faceauth/InvokeType;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/alipay/mobile/security/faceauth/behavior/Behavior;->g:Lcom/alipay/mobile/security/faceauth/InvokeType;

    .line 94
    return-void
.end method

.method public setMirror(Ljava/lang/String;)V
    .locals 0
    .param p1, "mirror"    # Ljava/lang/String;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/alipay/mobile/security/faceauth/behavior/Behavior;->i:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public setOs(Ljava/lang/String;)V
    .locals 0
    .param p1, "os"    # Ljava/lang/String;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/alipay/mobile/security/faceauth/behavior/Behavior;->n:Ljava/lang/String;

    .line 118
    return-void
.end method

.method public setSceid(Ljava/lang/String;)V
    .locals 0
    .param p1, "sceid"    # Ljava/lang/String;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/alipay/mobile/security/faceauth/behavior/Behavior;->f:Ljava/lang/String;

    .line 86
    return-void
.end method

.method public setTasks(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/security/faceauth/behavior/BehaviorTask;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 109
    .local p1, "tasks":Ljava/util/List;, "Ljava/util/List<Lcom/alipay/mobile/security/faceauth/behavior/BehaviorTask;>;"
    iput-object p1, p0, Lcom/alipay/mobile/security/faceauth/behavior/Behavior;->o:Ljava/util/List;

    .line 110
    return-void
.end method

.method public setTm(Ljava/lang/String;)V
    .locals 0
    .param p1, "tm"    # Ljava/lang/String;

    .prologue
    .line 133
    iput-object p1, p0, Lcom/alipay/mobile/security/faceauth/behavior/Behavior;->l:Ljava/lang/String;

    .line 134
    return-void
.end method

.method public setUserid(Ljava/lang/String;)V
    .locals 0
    .param p1, "userid"    # Ljava/lang/String;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/alipay/mobile/security/faceauth/behavior/Behavior;->a:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public setVer(Ljava/lang/String;)V
    .locals 0
    .param p1, "ver"    # Ljava/lang/String;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/alipay/mobile/security/faceauth/behavior/Behavior;->h:Ljava/lang/String;

    .line 102
    return-void
.end method

.method public setVtoken(Ljava/lang/String;)V
    .locals 0
    .param p1, "vtoken"    # Ljava/lang/String;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/alipay/mobile/security/faceauth/behavior/Behavior;->j:Ljava/lang/String;

    .line 126
    return-void
.end method
