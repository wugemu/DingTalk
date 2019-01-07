.class public Lcom/taobao/windmill/bundle/container/core/AppConfigModel$TabBarModel;
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
    name = "TabBarModel"
.end annotation


# instance fields
.field public backgroundColor:Ljava/lang/String;

.field public borderStyle:Ljava/lang/String;

.field public color:Ljava/lang/String;

.field public list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/taobao/windmill/bundle/container/core/AppConfigModel$TabBarItemModel;",
            ">;"
        }
    .end annotation
.end field

.field public position:Ljava/lang/String;

.field public selectedColor:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
