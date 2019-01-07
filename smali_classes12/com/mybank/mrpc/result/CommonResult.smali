.class public Lcom/mybank/mrpc/result/CommonResult;
.super Ljfy;
.source "CommonResult.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public memo:Ljava/lang/String;

.field public redirectUrl:Ljava/lang/String;

.field public resultCode:Ljava/lang/String;

.field public resultDesc:Ljava/lang/String;

.field public resultView:Ljava/lang/String;

.field public resultViewTitle:Ljava/lang/String;

.field public showType:I

.field public success:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljfy;-><init>()V

    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mybank/mrpc/result/CommonResult;->success:Z

    .line 66
    const/4 v0, 0x0

    iput v0, p0, Lcom/mybank/mrpc/result/CommonResult;->showType:I

    return-void
.end method
