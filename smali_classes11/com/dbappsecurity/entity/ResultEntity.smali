.class public Lcom/dbappsecurity/entity/ResultEntity;
.super Ljava/lang/Object;
.source "ResultEntity.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private domainName:Ljava/lang/String;

.field private errcode:I

.field private errmsg:Ljava/lang/String;

.field private msglen:I

.field private msgtype:I

.field private ret:Ljava/lang/String;

.field private rets:Ljava/lang/String;

.field private retslen:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDomainName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/dbappsecurity/entity/ResultEntity;->domainName:Ljava/lang/String;

    return-object v0
.end method

.method public getErrcode()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/dbappsecurity/entity/ResultEntity;->errcode:I

    return v0
.end method

.method public getErrmsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/dbappsecurity/entity/ResultEntity;->errmsg:Ljava/lang/String;

    return-object v0
.end method

.method public getMsglen()I
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lcom/dbappsecurity/entity/ResultEntity;->msglen:I

    return v0
.end method

.method public getMsgtype()I
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Lcom/dbappsecurity/entity/ResultEntity;->msgtype:I

    return v0
.end method

.method public getRet()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/dbappsecurity/entity/ResultEntity;->ret:Ljava/lang/String;

    return-object v0
.end method

.method public getRets()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/dbappsecurity/entity/ResultEntity;->rets:Ljava/lang/String;

    return-object v0
.end method

.method public getRetslen()I
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lcom/dbappsecurity/entity/ResultEntity;->retslen:I

    return v0
.end method

.method public setDomainName(Ljava/lang/String;)V
    .locals 0
    .param p1, "domainName"    # Ljava/lang/String;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/dbappsecurity/entity/ResultEntity;->domainName:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public setErrcode(I)V
    .locals 0
    .param p1, "errcode"    # I

    .prologue
    .line 57
    iput p1, p0, Lcom/dbappsecurity/entity/ResultEntity;->errcode:I

    .line 58
    return-void
.end method

.method public setErrmsg(Ljava/lang/String;)V
    .locals 0
    .param p1, "errmsg"    # Ljava/lang/String;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/dbappsecurity/entity/ResultEntity;->errmsg:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public setMsglen(I)V
    .locals 0
    .param p1, "msglen"    # I

    .prologue
    .line 73
    iput p1, p0, Lcom/dbappsecurity/entity/ResultEntity;->msglen:I

    .line 74
    return-void
.end method

.method public setMsgtype(I)V
    .locals 0
    .param p1, "msgtype"    # I

    .prologue
    .line 32
    iput p1, p0, Lcom/dbappsecurity/entity/ResultEntity;->msgtype:I

    .line 33
    return-void
.end method

.method public setRet(Ljava/lang/String;)V
    .locals 0
    .param p1, "ret"    # Ljava/lang/String;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/dbappsecurity/entity/ResultEntity;->ret:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public setRets(Ljava/lang/String;)V
    .locals 0
    .param p1, "rets"    # Ljava/lang/String;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/dbappsecurity/entity/ResultEntity;->rets:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public setRetslen(I)V
    .locals 0
    .param p1, "retslen"    # I

    .prologue
    .line 82
    iput p1, p0, Lcom/dbappsecurity/entity/ResultEntity;->retslen:I

    .line 83
    return-void
.end method
