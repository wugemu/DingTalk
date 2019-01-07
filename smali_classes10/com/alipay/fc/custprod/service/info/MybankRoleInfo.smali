.class public Lcom/alipay/fc/custprod/service/info/MybankRoleInfo;
.super Ljava/lang/Object;
.source "MybankRoleInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public certifyStatus:Ljava/lang/String;

.field public failReason:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public finishDay:Ljava/lang/String;

.field public ipId:Ljava/lang/String;

.field public ipRoleType:Ljava/lang/String;

.field public ipTokenId:Ljava/lang/String;

.field public ipType:Ljava/lang/String;

.field public roleEnableStatus:Ljava/lang/String;

.field public roleId:Ljava/lang/String;

.field public tntInstId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
