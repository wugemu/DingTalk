.class public Lcom/alipay/bkmobileappcommon/core/model/switches/SwitchInfoResp;
.super Ljava/lang/Object;
.source "SwitchInfoResp.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public deleteKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public increment:Z

.field public responseTime:Ljava/lang/String;

.field public success:Z

.field public switches:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
