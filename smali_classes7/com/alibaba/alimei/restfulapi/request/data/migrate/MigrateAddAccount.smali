.class public Lcom/alibaba/alimei/restfulapi/request/data/migrate/MigrateAddAccount;
.super Lcom/alibaba/alimei/restfulapi/request/data/RestfulBaseRequestData;
.source "MigrateAddAccount.java"


# instance fields
.field private sourceAccount:Ljava/lang/String;

.field private sourcePassword:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/alibaba/alimei/restfulapi/request/data/RestfulBaseRequestData;-><init>()V

    return-void
.end method


# virtual methods
.method public getSourceAccount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/request/data/migrate/MigrateAddAccount;->sourceAccount:Ljava/lang/String;

    return-object v0
.end method

.method public getSourcePassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/request/data/migrate/MigrateAddAccount;->sourcePassword:Ljava/lang/String;

    return-object v0
.end method

.method public setSourceAccount(Ljava/lang/String;)V
    .locals 0
    .param p1, "sourceAccount"    # Ljava/lang/String;

    .prologue
    .line 16
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/request/data/migrate/MigrateAddAccount;->sourceAccount:Ljava/lang/String;

    .line 17
    return-void
.end method

.method public setSourcePassword(Ljava/lang/String;)V
    .locals 0
    .param p1, "sourcePassword"    # Ljava/lang/String;

    .prologue
    .line 22
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/request/data/migrate/MigrateAddAccount;->sourcePassword:Ljava/lang/String;

    .line 23
    return-void
.end method
