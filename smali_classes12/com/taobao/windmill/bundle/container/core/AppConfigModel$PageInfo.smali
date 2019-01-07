.class public Lcom/taobao/windmill/bundle/container/core/AppConfigModel$PageInfo;
.super Ljava/lang/Object;
.source "AppConfigModel.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/windmill/bundle/container/core/AppConfigModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PageInfo"
.end annotation


# instance fields
.field public downgrade:Lcom/taobao/windmill/bundle/container/core/AppConfigModel$DowngradeInfo;

.field public h5Url:Ljava/lang/String;

.field public pageName:Ljava/lang/String;

.field public pageType:Ljava/lang/String;

.field public pageUrl:Ljava/lang/String;

.field public window:Lcom/taobao/windmill/bundle/container/core/AppConfigModel$WindowModel;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
