.class public Lcom/taobao/windmill/bundle/container/core/AppConfigModel$TabBarItemModel;
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
    name = "TabBarItemModel"
.end annotation


# instance fields
.field public iconPath:Ljava/lang/String;

.field public pageName:Ljava/lang/String;

.field public selectedIconPath:Ljava/lang/String;

.field public text:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
