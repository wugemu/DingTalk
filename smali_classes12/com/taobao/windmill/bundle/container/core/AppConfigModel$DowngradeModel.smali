.class public Lcom/taobao/windmill/bundle/container/core/AppConfigModel$DowngradeModel;
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
    name = "DowngradeModel"
.end annotation


# instance fields
.field public appVersion:Ljava/lang/String;

.field public apps:Ljava/lang/String;

.field public deviceModel:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public osVersion:Ljava/lang/String;

.field public weexVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
