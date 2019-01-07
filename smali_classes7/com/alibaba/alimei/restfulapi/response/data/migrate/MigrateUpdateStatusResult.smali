.class public Lcom/alibaba/alimei/restfulapi/response/data/migrate/MigrateUpdateStatusResult;
.super Ljava/lang/Object;
.source "MigrateUpdateStatusResult.java"


# static fields
.field public static final RESULT_1500:I = 0x5dc

.field public static final RESULT_1502:I = 0x5de

.field public static final RESULT_OK:I = 0xc8


# instance fields
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
.method public getResultCode()I
    .locals 1

    .prologue
    .line 12
    iget v0, p0, Lcom/alibaba/alimei/restfulapi/response/data/migrate/MigrateUpdateStatusResult;->resultCode:I

    return v0
.end method

.method public isSuccess()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 20
    iget v0, p0, Lcom/alibaba/alimei/restfulapi/response/data/migrate/MigrateUpdateStatusResult;->resultCode:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setResultCode(I)V
    .locals 0
    .param p1, "resultCode"    # I

    .prologue
    .line 16
    iput p1, p0, Lcom/alibaba/alimei/restfulapi/response/data/migrate/MigrateUpdateStatusResult;->resultCode:I

    .line 17
    return-void
.end method
