.class public Lcom/alibaba/alimei/mail/operation/OperationData;
.super Ljava/lang/Object;
.source "OperationData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/alimei/mail/operation/OperationData$SubOperation;,
        Lcom/alibaba/alimei/mail/operation/OperationData$ModifyType;,
        Lcom/alibaba/alimei/mail/operation/OperationData$QueryType;,
        Lcom/alibaba/alimei/mail/operation/OperationData$Action;
    }
.end annotation


# instance fields
.field public action:I

.field public email:Ljava/lang/String;

.field public fp:Ljava/lang/String;

.field public operator:Ljava/lang/String;

.field public subOption:Lcom/alibaba/alimei/mail/operation/OperationData$SubOperation;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    return-void
.end method
