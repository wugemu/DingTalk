.class public Lcom/alibaba/alimei/restfulapi/response/data/migrate/MigrateGetStatus;
.super Ljava/lang/Object;
.source "MigrateGetStatus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/alimei/restfulapi/response/data/migrate/MigrateGetStatus$MigrateGetSubStatus;
    }
.end annotation


# instance fields
.field private data:Lcom/alibaba/alimei/restfulapi/response/data/migrate/MigrateGetStatus$MigrateGetSubStatus;

.field private resultCode:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Lcom/alibaba/alimei/restfulapi/response/data/migrate/MigrateGetStatus$MigrateGetSubStatus;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/response/data/migrate/MigrateGetStatus;->data:Lcom/alibaba/alimei/restfulapi/response/data/migrate/MigrateGetStatus$MigrateGetSubStatus;

    return-object v0
.end method

.method public getResultCode()I
    .locals 1

    .prologue
    .line 11
    iget v0, p0, Lcom/alibaba/alimei/restfulapi/response/data/migrate/MigrateGetStatus;->resultCode:I

    return v0
.end method

.method public isSuccess()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 26
    iget v0, p0, Lcom/alibaba/alimei/restfulapi/response/data/migrate/MigrateGetStatus;->resultCode:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setData(Lcom/alibaba/alimei/restfulapi/response/data/migrate/MigrateGetStatus$MigrateGetSubStatus;)V
    .locals 0
    .param p1, "data"    # Lcom/alibaba/alimei/restfulapi/response/data/migrate/MigrateGetStatus$MigrateGetSubStatus;

    .prologue
    .line 22
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/response/data/migrate/MigrateGetStatus;->data:Lcom/alibaba/alimei/restfulapi/response/data/migrate/MigrateGetStatus$MigrateGetSubStatus;

    .line 23
    return-void
.end method

.method public setResultCode(I)V
    .locals 0
    .param p1, "resultCode"    # I

    .prologue
    .line 14
    iput p1, p0, Lcom/alibaba/alimei/restfulapi/response/data/migrate/MigrateGetStatus;->resultCode:I

    .line 15
    return-void
.end method
