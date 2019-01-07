.class public Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;
.super Ljava/lang/Object;
.source "AppInfoModel.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/windmill/bundle/container/core/AppInfoModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InfoModel"
.end annotation


# instance fields
.field public appId:Ljava/lang/String;

.field public appKey:Ljava/lang/String;

.field public appLogo:Ljava/lang/String;

.field public appName:Ljava/lang/String;

.field public drawerEnable:Z

.field public favorEnable:Z

.field public footPrintEnable:Z

.field public frameTempType:Ljava/lang/String;

.field public licenseEnable:Z

.field public messageUrl:Ljava/lang/String;

.field public minSdkVersion:I

.field public schemaData:Ljava/lang/String;

.field public templateAppId:Ljava/lang/String;

.field public templateZcacheKey:Ljava/lang/String;

.field public type:Ljava/lang/String;

.field public userAuthEnable:Z

.field public version:Ljava/lang/String;

.field public zCacheKey:Ljava/lang/String;

.field public zipUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;->drawerEnable:Z

    return-void
.end method
