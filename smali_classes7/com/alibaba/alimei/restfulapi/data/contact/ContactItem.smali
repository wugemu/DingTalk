.class public Lcom/alibaba/alimei/restfulapi/data/contact/ContactItem;
.super Lcom/alibaba/alimei/restfulapi/data/Item;
.source "ContactItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/alimei/restfulapi/data/contact/ContactItem$ContactFolderType;
    }
.end annotation


# instance fields
.field private avatarAddr:Ljava/lang/String;

.field private defaultSendMail:Ljava/lang/String;

.field private email:Ljava/lang/String;

.field private extend:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/data/contact/ContactItemExtend;",
            ">;"
        }
    .end annotation
.end field

.field private folderId:Ljava/lang/String;

.field private folderType:I

.field private mobile:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private nameInJianpin:Ljava/lang/String;

.field private nameInPinyin:Ljava/lang/String;

.field private remark:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/alibaba/alimei/restfulapi/data/Item;-><init>()V

    .line 53
    return-void
.end method


# virtual methods
.method public getAction()I
    .locals 1

    .prologue
    .line 128
    iget v0, p0, Lcom/alibaba/alimei/restfulapi/data/contact/ContactItem;->action:I

    return v0
.end method

.method public getAvatarAddr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/data/contact/ContactItem;->avatarAddr:Ljava/lang/String;

    return-object v0
.end method

.method public getDefaultSendMail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/data/contact/ContactItem;->defaultSendMail:Ljava/lang/String;

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/data/contact/ContactItem;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getExtend()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/data/contact/ContactItemExtend;",
            ">;"
        }
    .end annotation

    .prologue
    .line 135
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/data/contact/ContactItem;->extend:Ljava/util/List;

    return-object v0
.end method

.method public getFolderId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/data/contact/ContactItem;->folderId:Ljava/lang/String;

    return-object v0
.end method

.method public getFolderType()I
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lcom/alibaba/alimei/restfulapi/data/contact/ContactItem;->folderType:I

    return v0
.end method

.method public getMobile()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/data/contact/ContactItem;->mobile:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/data/contact/ContactItem;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNameInJianpin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/data/contact/ContactItem;->nameInJianpin:Ljava/lang/String;

    return-object v0
.end method

.method public getNameInPinyin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/data/contact/ContactItem;->nameInPinyin:Ljava/lang/String;

    return-object v0
.end method

.method public getRemark()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/data/contact/ContactItem;->remark:Ljava/lang/String;

    return-object v0
.end method

.method public setAction(I)V
    .locals 0
    .param p1, "action"    # I

    .prologue
    .line 131
    iput p1, p0, Lcom/alibaba/alimei/restfulapi/data/contact/ContactItem;->action:I

    .line 132
    return-void
.end method

.method public setAvatarAddr(Ljava/lang/String;)V
    .locals 0
    .param p1, "avatarAddr"    # Ljava/lang/String;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/data/contact/ContactItem;->avatarAddr:Ljava/lang/String;

    .line 96
    return-void
.end method

.method public setDefaultSendMail(Ljava/lang/String;)V
    .locals 0
    .param p1, "defaultSendMail"    # Ljava/lang/String;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/data/contact/ContactItem;->defaultSendMail:Ljava/lang/String;

    .line 83
    return-void
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 0
    .param p1, "email"    # Ljava/lang/String;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/data/contact/ContactItem;->email:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public setExtend(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/data/contact/ContactItemExtend;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 139
    .local p1, "extend":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/data/contact/ContactItemExtend;>;"
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/data/contact/ContactItem;->extend:Ljava/util/List;

    .line 140
    return-void
.end method

.method public setFolderId(Ljava/lang/String;)V
    .locals 0
    .param p1, "folderId"    # Ljava/lang/String;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/data/contact/ContactItem;->folderId:Ljava/lang/String;

    .line 114
    return-void
.end method

.method public setFolderType(I)V
    .locals 0
    .param p1, "folderType"    # I

    .prologue
    .line 68
    iput p1, p0, Lcom/alibaba/alimei/restfulapi/data/contact/ContactItem;->folderType:I

    .line 69
    return-void
.end method

.method public setMobile(Ljava/lang/String;)V
    .locals 0
    .param p1, "mobile"    # Ljava/lang/String;

    .prologue
    .line 119
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/data/contact/ContactItem;->mobile:Ljava/lang/String;

    .line 120
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/data/contact/ContactItem;->name:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public setNameInJianpin(Ljava/lang/String;)V
    .locals 0
    .param p1, "nameInJianpin"    # Ljava/lang/String;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/data/contact/ContactItem;->nameInJianpin:Ljava/lang/String;

    .line 108
    return-void
.end method

.method public setNameInPinyin(Ljava/lang/String;)V
    .locals 0
    .param p1, "nameInPinyin"    # Ljava/lang/String;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/data/contact/ContactItem;->nameInPinyin:Ljava/lang/String;

    .line 102
    return-void
.end method

.method public setRemark(Ljava/lang/String;)V
    .locals 0
    .param p1, "remark"    # Ljava/lang/String;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/data/contact/ContactItem;->remark:Ljava/lang/String;

    .line 126
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "ContactItem [folderType="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/alibaba/alimei/restfulapi/data/contact/ContactItem;->folderType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/restfulapi/data/contact/ContactItem;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "defaultSendMail="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/restfulapi/data/contact/ContactItem;->defaultSendMail:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", email="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/restfulapi/data/contact/ContactItem;->email:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", avatarAddr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/restfulapi/data/contact/ContactItem;->avatarAddr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", nameInPinyin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/restfulapi/data/contact/ContactItem;->nameInPinyin:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", nameInJianpin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/restfulapi/data/contact/ContactItem;->nameInJianpin:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", folderId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/restfulapi/data/contact/ContactItem;->folderId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mobile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/restfulapi/data/contact/ContactItem;->mobile:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", remark="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/restfulapi/data/contact/ContactItem;->remark:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", extend="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/restfulapi/data/contact/ContactItem;->extend:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
