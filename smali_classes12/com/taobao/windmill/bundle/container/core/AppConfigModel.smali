.class public Lcom/taobao/windmill/bundle/container/core/AppConfigModel;
.super Ljava/lang/Object;
.source "AppConfigModel.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/windmill/bundle/container/core/AppConfigModel$TabBarItemModel;,
        Lcom/taobao/windmill/bundle/container/core/AppConfigModel$TabBarModel;,
        Lcom/taobao/windmill/bundle/container/core/AppConfigModel$WindowModel;,
        Lcom/taobao/windmill/bundle/container/core/AppConfigModel$DowngradeModel;,
        Lcom/taobao/windmill/bundle/container/core/AppConfigModel$DowngradeInfo;,
        Lcom/taobao/windmill/bundle/container/core/AppConfigModel$PageInfo;
    }
.end annotation


# instance fields
.field public appJsUrl:Ljava/lang/String;

.field public appType:Ljava/lang/String;

.field public h5Pages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public pages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/taobao/windmill/bundle/container/core/AppConfigModel$PageInfo;",
            ">;"
        }
    .end annotation
.end field

.field public tabBar:Lcom/taobao/windmill/bundle/container/core/AppConfigModel$TabBarModel;

.field public useLauncherLoading:Z

.field public window:Lcom/taobao/windmill/bundle/container/core/AppConfigModel$WindowModel;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    return-void
.end method
