.class public Lcom/alibaba/alimei/restfulapi/response/data/migrate/MigrateGetStatus$MigrateGetSubStatus;
.super Ljava/lang/Object;
.source "MigrateGetStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/restfulapi/response/data/migrate/MigrateGetStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MigrateGetSubStatus"
.end annotation


# instance fields
.field private importMailMaxSize:J

.field private migrateFolderId:Ljava/lang/String;

.field private migrateStatusInfo:Lcom/alibaba/alimei/restfulapi/response/data/migrate/MigrateStatusInfo;

.field private sourceAccount:Ljava/lang/String;

.field private sourceIp:Ljava/lang/String;

.field private sourcePassword:Ljava/lang/String;

.field private sourcePort:Ljava/lang/String;

.field private transMethod:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    return-void
.end method


# virtual methods
.method public getImportMailMaxSize()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 44
    iget-wide v0, p0, Lcom/alibaba/alimei/restfulapi/response/data/migrate/MigrateGetStatus$MigrateGetSubStatus;->importMailMaxSize:J

    return-wide v0
.end method

.method public getMigrateFolderId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/response/data/migrate/MigrateGetStatus$MigrateGetSubStatus;->migrateFolderId:Ljava/lang/String;

    return-object v0
.end method

.method public getMigrateStatusInfo()Lcom/alibaba/alimei/restfulapi/response/data/migrate/MigrateStatusInfo;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/response/data/migrate/MigrateGetStatus$MigrateGetSubStatus;->migrateStatusInfo:Lcom/alibaba/alimei/restfulapi/response/data/migrate/MigrateStatusInfo;

    return-object v0
.end method

.method public getSourceAccount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/response/data/migrate/MigrateGetStatus$MigrateGetSubStatus;->sourceAccount:Ljava/lang/String;

    return-object v0
.end method

.method public getSourceIp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/response/data/migrate/MigrateGetStatus$MigrateGetSubStatus;->sourceIp:Ljava/lang/String;

    return-object v0
.end method

.method public getSourcePassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/response/data/migrate/MigrateGetStatus$MigrateGetSubStatus;->sourcePassword:Ljava/lang/String;

    return-object v0
.end method

.method public getSourcePort()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/response/data/migrate/MigrateGetStatus$MigrateGetSubStatus;->sourcePort:Ljava/lang/String;

    return-object v0
.end method

.method public getTransMethod()I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/alibaba/alimei/restfulapi/response/data/migrate/MigrateGetStatus$MigrateGetSubStatus;->transMethod:I

    return v0
.end method

.method public setImportMailMaxSize(J)V
    .locals 1
    .param p1, "importMailMaxSize"    # J

    .prologue
    .line 47
    iput-wide p1, p0, Lcom/alibaba/alimei/restfulapi/response/data/migrate/MigrateGetStatus$MigrateGetSubStatus;->importMailMaxSize:J

    .line 48
    return-void
.end method

.method public setMigrateFolderId(Ljava/lang/String;)V
    .locals 0
    .param p1, "migrateFolderId"    # Ljava/lang/String;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/response/data/migrate/MigrateGetStatus$MigrateGetSubStatus;->migrateFolderId:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public setMigrateStatusInfo(Lcom/alibaba/alimei/restfulapi/response/data/migrate/MigrateStatusInfo;)V
    .locals 0
    .param p1, "migrateStatusInfo"    # Lcom/alibaba/alimei/restfulapi/response/data/migrate/MigrateStatusInfo;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/response/data/migrate/MigrateGetStatus$MigrateGetSubStatus;->migrateStatusInfo:Lcom/alibaba/alimei/restfulapi/response/data/migrate/MigrateStatusInfo;

    .line 90
    return-void
.end method

.method public setSourceAccount(Ljava/lang/String;)V
    .locals 0
    .param p1, "sourceAccount"    # Ljava/lang/String;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/response/data/migrate/MigrateGetStatus$MigrateGetSubStatus;->sourceAccount:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public setSourceIp(Ljava/lang/String;)V
    .locals 0
    .param p1, "sourceIp"    # Ljava/lang/String;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/response/data/migrate/MigrateGetStatus$MigrateGetSubStatus;->sourceIp:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public setSourcePassword(Ljava/lang/String;)V
    .locals 0
    .param p1, "sourcePassword"    # Ljava/lang/String;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/response/data/migrate/MigrateGetStatus$MigrateGetSubStatus;->sourcePassword:Ljava/lang/String;

    .line 84
    return-void
.end method

.method public setSourcePort(Ljava/lang/String;)V
    .locals 0
    .param p1, "sourcePort"    # Ljava/lang/String;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/response/data/migrate/MigrateGetStatus$MigrateGetSubStatus;->sourcePort:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public setTransMethod(I)V
    .locals 0
    .param p1, "transMethod"    # I

    .prologue
    .line 59
    iput p1, p0, Lcom/alibaba/alimei/restfulapi/response/data/migrate/MigrateGetStatus$MigrateGetSubStatus;->transMethod:I

    .line 60
    return-void
.end method
