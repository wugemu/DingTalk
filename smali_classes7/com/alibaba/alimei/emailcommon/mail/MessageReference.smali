.class public Lcom/alibaba/alimei/emailcommon/mail/MessageReference;
.super Ljava/lang/Object;
.source "MessageReference.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final IDENTITY_SEPARATOR:Ljava/lang/String; = ":"

.field private static final IDENTITY_VERSION_1:Ljava/lang/String; = "!"


# instance fields
.field public accountUuid:Ljava/lang/String;

.field public flag:Lcom/alibaba/alimei/emailcommon/mail/Flag;

.field public folderName:Ljava/lang/String;

.field public uid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 24
    instance-of v2, p1, Lcom/alibaba/alimei/emailcommon/mail/MessageReference;

    if-nez v2, :cond_1

    .line 35
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 28
    check-cast v0, Lcom/alibaba/alimei/emailcommon/mail/MessageReference;

    .line 29
    .local v0, "other":Lcom/alibaba/alimei/emailcommon/mail/MessageReference;
    iget-object v2, p0, Lcom/alibaba/alimei/emailcommon/mail/MessageReference;->accountUuid:Ljava/lang/String;

    iget-object v3, v0, Lcom/alibaba/alimei/emailcommon/mail/MessageReference;->accountUuid:Ljava/lang/String;

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/alibaba/alimei/emailcommon/mail/MessageReference;->accountUuid:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alibaba/alimei/emailcommon/mail/MessageReference;->accountUuid:Ljava/lang/String;

    iget-object v3, v0, Lcom/alibaba/alimei/emailcommon/mail/MessageReference;->accountUuid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    iget-object v2, p0, Lcom/alibaba/alimei/emailcommon/mail/MessageReference;->folderName:Ljava/lang/String;

    iget-object v3, v0, Lcom/alibaba/alimei/emailcommon/mail/MessageReference;->folderName:Ljava/lang/String;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/alibaba/alimei/emailcommon/mail/MessageReference;->folderName:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alibaba/alimei/emailcommon/mail/MessageReference;->folderName:Ljava/lang/String;

    iget-object v3, v0, Lcom/alibaba/alimei/emailcommon/mail/MessageReference;->folderName:Ljava/lang/String;

    .line 30
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_3
    iget-object v2, p0, Lcom/alibaba/alimei/emailcommon/mail/MessageReference;->uid:Ljava/lang/String;

    iget-object v3, v0, Lcom/alibaba/alimei/emailcommon/mail/MessageReference;->uid:Ljava/lang/String;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/alibaba/alimei/emailcommon/mail/MessageReference;->uid:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alibaba/alimei/emailcommon/mail/MessageReference;->uid:Ljava/lang/String;

    iget-object v3, v0, Lcom/alibaba/alimei/emailcommon/mail/MessageReference;->uid:Ljava/lang/String;

    .line 31
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 33
    :cond_4
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 44
    iget-object v1, p0, Lcom/alibaba/alimei/emailcommon/mail/MessageReference;->accountUuid:Ljava/lang/String;

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    add-int/lit8 v0, v1, 0x1f

    .line 45
    .local v0, "result":I
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/alibaba/alimei/emailcommon/mail/MessageReference;->folderName:Ljava/lang/String;

    if-nez v1, :cond_1

    move v1, v2

    :goto_1
    add-int v0, v3, v1

    .line 46
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lcom/alibaba/alimei/emailcommon/mail/MessageReference;->uid:Ljava/lang/String;

    if-nez v3, :cond_2

    :goto_2
    add-int v0, v1, v2

    .line 47
    return v0

    .line 44
    .end local v0    # "result":I
    :cond_0
    iget-object v1, p0, Lcom/alibaba/alimei/emailcommon/mail/MessageReference;->accountUuid:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    .line 45
    .restart local v0    # "result":I
    :cond_1
    iget-object v1, p0, Lcom/alibaba/alimei/emailcommon/mail/MessageReference;->folderName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_1

    .line 46
    :cond_2
    iget-object v2, p0, Lcom/alibaba/alimei/emailcommon/mail/MessageReference;->uid:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_2
.end method

.method public toIdentityString()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 68
    .local v0, "refString":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    iget-object v1, p0, Lcom/alibaba/alimei/emailcommon/mail/MessageReference;->accountUuid:Ljava/lang/String;

    invoke-static {v1}, Lvv;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    iget-object v1, p0, Lcom/alibaba/alimei/emailcommon/mail/MessageReference;->folderName:Ljava/lang/String;

    invoke-static {v1}, Lvv;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    iget-object v1, p0, Lcom/alibaba/alimei/emailcommon/mail/MessageReference;->uid:Ljava/lang/String;

    invoke-static {v1}, Lvv;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    iget-object v1, p0, Lcom/alibaba/alimei/emailcommon/mail/MessageReference;->flag:Lcom/alibaba/alimei/emailcommon/mail/Flag;

    if-eqz v1, :cond_0

    .line 76
    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    iget-object v1, p0, Lcom/alibaba/alimei/emailcommon/mail/MessageReference;->flag:Lcom/alibaba/alimei/emailcommon/mail/Flag;

    invoke-virtual {v1}, Lcom/alibaba/alimei/emailcommon/mail/Flag;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "MessageReference{accountUuid = \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alibaba/alimei/emailcommon/mail/MessageReference;->accountUuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\', folderName = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/emailcommon/mail/MessageReference;->folderName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\', uid = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/emailcommon/mail/MessageReference;->uid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\'}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
