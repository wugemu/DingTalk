.class public Lcom/alibaba/alimei/restfulapi/response/data/migrate/MigrateAddFolderResult;
.super Ljava/lang/Object;
.source "MigrateAddFolderResult.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/alimei/restfulapi/response/data/migrate/MigrateAddFolderResult$MigrateAddFolderSubResult;
    }
.end annotation


# instance fields
.field private data:Lcom/alibaba/alimei/restfulapi/response/data/migrate/MigrateAddFolderResult$MigrateAddFolderSubResult;

.field private resultCode:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Lcom/alibaba/alimei/restfulapi/response/data/migrate/MigrateAddFolderResult$MigrateAddFolderSubResult;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/response/data/migrate/MigrateAddFolderResult;->data:Lcom/alibaba/alimei/restfulapi/response/data/migrate/MigrateAddFolderResult$MigrateAddFolderSubResult;

    return-object v0
.end method

.method public getResultCode()I
    .locals 1

    .prologue
    .line 12
    iget v0, p0, Lcom/alibaba/alimei/restfulapi/response/data/migrate/MigrateAddFolderResult;->resultCode:I

    return v0
.end method

.method public isSuccess()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 28
    iget v0, p0, Lcom/alibaba/alimei/restfulapi/response/data/migrate/MigrateAddFolderResult;->resultCode:I

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/alibaba/alimei/restfulapi/response/data/migrate/MigrateAddFolderResult;->resultCode:I

    const/16 v1, 0x60e

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setData(Lcom/alibaba/alimei/restfulapi/response/data/migrate/MigrateAddFolderResult$MigrateAddFolderSubResult;)V
    .locals 0
    .param p1, "data"    # Lcom/alibaba/alimei/restfulapi/response/data/migrate/MigrateAddFolderResult$MigrateAddFolderSubResult;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/response/data/migrate/MigrateAddFolderResult;->data:Lcom/alibaba/alimei/restfulapi/response/data/migrate/MigrateAddFolderResult$MigrateAddFolderSubResult;

    .line 25
    return-void
.end method

.method public setResultCode(I)V
    .locals 0
    .param p1, "resultCode"    # I

    .prologue
    .line 16
    iput p1, p0, Lcom/alibaba/alimei/restfulapi/response/data/migrate/MigrateAddFolderResult;->resultCode:I

    .line 17
    return-void
.end method
