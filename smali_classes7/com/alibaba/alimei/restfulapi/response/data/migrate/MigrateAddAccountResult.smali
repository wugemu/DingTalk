.class public Lcom/alibaba/alimei/restfulapi/response/data/migrate/MigrateAddAccountResult;
.super Ljava/lang/Object;
.source "MigrateAddAccountResult.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/alimei/restfulapi/response/data/migrate/MigrateAddAccountResult$MigrateAddAccountSubResult;
    }
.end annotation


# instance fields
.field private data:Lcom/alibaba/alimei/restfulapi/response/data/migrate/MigrateAddAccountResult$MigrateAddAccountSubResult;

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
.method public getData()Lcom/alibaba/alimei/restfulapi/response/data/migrate/MigrateAddAccountResult$MigrateAddAccountSubResult;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/response/data/migrate/MigrateAddAccountResult;->data:Lcom/alibaba/alimei/restfulapi/response/data/migrate/MigrateAddAccountResult$MigrateAddAccountSubResult;

    return-object v0
.end method

.method public getResultCode()I
    .locals 1

    .prologue
    .line 17
    iget v0, p0, Lcom/alibaba/alimei/restfulapi/response/data/migrate/MigrateAddAccountResult;->resultCode:I

    return v0
.end method

.method public isSuccess()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 33
    iget v0, p0, Lcom/alibaba/alimei/restfulapi/response/data/migrate/MigrateAddAccountResult;->resultCode:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setData(Lcom/alibaba/alimei/restfulapi/response/data/migrate/MigrateAddAccountResult$MigrateAddAccountSubResult;)V
    .locals 0
    .param p1, "data"    # Lcom/alibaba/alimei/restfulapi/response/data/migrate/MigrateAddAccountResult$MigrateAddAccountSubResult;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/response/data/migrate/MigrateAddAccountResult;->data:Lcom/alibaba/alimei/restfulapi/response/data/migrate/MigrateAddAccountResult$MigrateAddAccountSubResult;

    .line 30
    return-void
.end method

.method public setResultCode(I)V
    .locals 0
    .param p1, "resultCode"    # I

    .prologue
    .line 21
    iput p1, p0, Lcom/alibaba/alimei/restfulapi/response/data/migrate/MigrateAddAccountResult;->resultCode:I

    .line 22
    return-void
.end method
