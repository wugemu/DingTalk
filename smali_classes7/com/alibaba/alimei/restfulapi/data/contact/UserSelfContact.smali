.class public Lcom/alibaba/alimei/restfulapi/data/contact/UserSelfContact;
.super Lcom/alibaba/alimei/restfulapi/data/Item;
.source "UserSelfContact.java"


# instance fields
.field private aliases:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private avatarAddr:Ljava/lang/String;

.field public defaultName:Ljava/lang/String;

.field private defaultSendEmail:Ljava/lang/String;

.field private email:Ljava/lang/String;

.field private extend:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/data/contact/UserSelfContactExtend;",
            ">;"
        }
    .end annotation
.end field

.field private name:Ljava/lang/String;

.field private popAccounts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/data/contact/PopAccounts;",
            ">;"
        }
    .end annotation
.end field

.field private smtpAccount:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/data/contact/SmtpAccounts;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/alibaba/alimei/restfulapi/data/Item;-><init>()V

    return-void
.end method


# virtual methods
.method public getAliases()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 50
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/data/contact/UserSelfContact;->aliases:Ljava/util/List;

    return-object v0
.end method

.method public getAvatarAddr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/data/contact/UserSelfContact;->avatarAddr:Ljava/lang/String;

    return-object v0
.end method

.method public getDefaultName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/data/contact/UserSelfContact;->defaultName:Ljava/lang/String;

    return-object v0
.end method

.method public getDefaultSendEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/data/contact/UserSelfContact;->defaultSendEmail:Ljava/lang/String;

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/data/contact/UserSelfContact;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getExtend()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/data/contact/UserSelfContactExtend;",
            ">;"
        }
    .end annotation

    .prologue
    .line 98
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/data/contact/UserSelfContact;->extend:Ljava/util/List;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/data/contact/UserSelfContact;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPopAccounts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/data/contact/PopAccounts;",
            ">;"
        }
    .end annotation

    .prologue
    .line 66
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/data/contact/UserSelfContact;->popAccounts:Ljava/util/List;

    return-object v0
.end method

.method public getSmtpAccount()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/data/contact/SmtpAccounts;",
            ">;"
        }
    .end annotation

    .prologue
    .line 74
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/data/contact/UserSelfContact;->smtpAccount:Ljava/util/List;

    return-object v0
.end method

.method public setAliases(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 54
    .local p1, "aliases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/data/contact/UserSelfContact;->aliases:Ljava/util/List;

    .line 55
    return-void
.end method

.method public setAvatarAddr(Ljava/lang/String;)V
    .locals 0
    .param p1, "avatarAddr"    # Ljava/lang/String;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/data/contact/UserSelfContact;->avatarAddr:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public setDefaultName(Ljava/lang/String;)V
    .locals 0
    .param p1, "defaultName"    # Ljava/lang/String;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/data/contact/UserSelfContact;->defaultName:Ljava/lang/String;

    .line 95
    return-void
.end method

.method public setDefaultSendEmail(Ljava/lang/String;)V
    .locals 0
    .param p1, "defaultSendMail"    # Ljava/lang/String;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/data/contact/UserSelfContact;->defaultSendEmail:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 0
    .param p1, "email"    # Ljava/lang/String;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/data/contact/UserSelfContact;->email:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public setExtend(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/data/contact/UserSelfContactExtend;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 102
    .local p1, "extend":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/data/contact/UserSelfContactExtend;>;"
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/data/contact/UserSelfContact;->extend:Ljava/util/List;

    .line 103
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/data/contact/UserSelfContact;->name:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public setPopAccounts(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/data/contact/PopAccounts;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 70
    .local p1, "popAccounts":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/data/contact/PopAccounts;>;"
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/data/contact/UserSelfContact;->popAccounts:Ljava/util/List;

    .line 71
    return-void
.end method

.method public setSmtpAccount(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/data/contact/SmtpAccounts;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 78
    .local p1, "smtpAccount":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/data/contact/SmtpAccounts;>;"
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/data/contact/UserSelfContact;->smtpAccount:Ljava/util/List;

    .line 79
    return-void
.end method
