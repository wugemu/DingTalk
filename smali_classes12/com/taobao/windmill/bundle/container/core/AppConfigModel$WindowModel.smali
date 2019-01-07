.class public Lcom/taobao/windmill/bundle/container/core/AppConfigModel$WindowModel;
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
    name = "WindowModel"
.end annotation


# instance fields
.field public backgroundTextStyle:Ljava/lang/String;

.field public navigationBarBackgroundBg:Ljava/lang/String;

.field public navigationBarBackgroundColor:Ljava/lang/String;

.field public navigationBarLogo:Ljava/lang/String;

.field public navigationBarTag:Ljava/lang/String;

.field public navigationBarTitleBg:Ljava/lang/String;

.field public navigationBarTitleText:Ljava/lang/String;

.field public showNavigationBar:Z

.field public translucent:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/taobao/windmill/bundle/container/core/AppConfigModel$WindowModel;->showNavigationBar:Z

    return-void
.end method
