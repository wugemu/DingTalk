.class public Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavTask;
.super Ljava/lang/Object;
.source "BisBehavTask.java"


# instance fields
.field public dur:I

.field public extInfo:Ljava/lang/String;

.field public idx:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public quality:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavTask;->name:Ljava/lang/String;

    .line 9
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavTask;->idx:Ljava/lang/String;

    .line 10
    iput v1, p0, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavTask;->dur:I

    .line 11
    iput v1, p0, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavTask;->quality:I

    .line 12
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavTask;->extInfo:Ljava/lang/String;

    return-void
.end method
