.class public Lcom/alibaba/alimei/restfulapi/request/data/migrate/MigrateUpdateStatus;
.super Lcom/alibaba/alimei/restfulapi/request/data/RestfulBaseRequestData;
.source "MigrateUpdateStatus.java"


# instance fields
.field private errorMessage:Ljava/lang/String;

.field private migrateStatusInfo:Lcom/alibaba/alimei/restfulapi/response/data/migrate/MigrateStatusInfo;

.field private migrateStatusStep:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/alibaba/alimei/restfulapi/request/data/RestfulBaseRequestData;-><init>()V

    return-void
.end method


# virtual methods
.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/request/data/migrate/MigrateUpdateStatus;->errorMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getMigrateStatusInfo()Lcom/alibaba/alimei/restfulapi/response/data/migrate/MigrateStatusInfo;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/request/data/migrate/MigrateUpdateStatus;->migrateStatusInfo:Lcom/alibaba/alimei/restfulapi/response/data/migrate/MigrateStatusInfo;

    return-object v0
.end method

.method public getMigrateStatusStep()I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcom/alibaba/alimei/restfulapi/request/data/migrate/MigrateUpdateStatus;->migrateStatusStep:I

    return v0
.end method

.method public setErrorMessage(Ljava/lang/String;)V
    .locals 0
    .param p1, "errorMessage"    # Ljava/lang/String;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/request/data/migrate/MigrateUpdateStatus;->errorMessage:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public setMigrateStatusInfo(Lcom/alibaba/alimei/restfulapi/response/data/migrate/MigrateStatusInfo;)V
    .locals 0
    .param p1, "migrateStatusInfo"    # Lcom/alibaba/alimei/restfulapi/response/data/migrate/MigrateStatusInfo;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/request/data/migrate/MigrateUpdateStatus;->migrateStatusInfo:Lcom/alibaba/alimei/restfulapi/response/data/migrate/MigrateStatusInfo;

    .line 46
    return-void
.end method

.method public setMigrateStatusStep(I)V
    .locals 0
    .param p1, "migrateStatusStep"    # I

    .prologue
    .line 33
    iput p1, p0, Lcom/alibaba/alimei/restfulapi/request/data/migrate/MigrateUpdateStatus;->migrateStatusStep:I

    .line 34
    return-void
.end method
