.class public Lcom/taobao/windmill/bundle/container/core/AppInfoModel;
.super Ljava/lang/Object;
.source "AppInfoModel.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;
    }
.end annotation


# instance fields
.field public appInfo:Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;

.field public downgradeUrl:Ljava/lang/String;

.field public licenses:Ljava/lang/String;

.field public serverDomainList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method
