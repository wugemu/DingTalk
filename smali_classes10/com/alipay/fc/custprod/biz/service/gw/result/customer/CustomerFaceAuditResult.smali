.class public Lcom/alipay/fc/custprod/biz/service/gw/result/customer/CustomerFaceAuditResult;
.super Lcom/alipay/fc/custprod/biz/service/gw/result/CommonRpcResult;
.source "CustomerFaceAuditResult.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public message:Ljava/lang/String;

.field public resultCode:Ljava/lang/String;

.field public resultDesc:Ljava/lang/String;

.field public status:Ljava/lang/String;

.field public success:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/alipay/fc/custprod/biz/service/gw/result/CommonRpcResult;-><init>()V

    return-void
.end method
