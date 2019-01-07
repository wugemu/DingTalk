.class public Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel;
.super Ljava/lang/Object;
.source "MiniAppListItemModel.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel$ItemType;
    }
.end annotation


# instance fields
.field private mItemType:Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel$ItemType;

.field private mMiniAppItemModel:Lcom/alibaba/lightapp/runtime/model/MiniAppItemModel;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method


# virtual methods
.method public getItemType()Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel$ItemType;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel;->mItemType:Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel$ItemType;

    return-object v0
.end method

.method public getMiniAppItemModel()Lcom/alibaba/lightapp/runtime/model/MiniAppItemModel;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel;->mMiniAppItemModel:Lcom/alibaba/lightapp/runtime/model/MiniAppItemModel;

    return-object v0
.end method

.method public setItemType(Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel$ItemType;)V
    .locals 0
    .param p1, "itemType"    # Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel$ItemType;

    .prologue
    .line 16
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel;->mItemType:Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel$ItemType;

    .line 17
    return-void
.end method

.method public setMiniAppItemModel(Lcom/alibaba/lightapp/runtime/model/MiniAppItemModel;)V
    .locals 0
    .param p1, "miniAppItemModel"    # Lcom/alibaba/lightapp/runtime/model/MiniAppItemModel;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel;->mMiniAppItemModel:Lcom/alibaba/lightapp/runtime/model/MiniAppItemModel;

    .line 25
    return-void
.end method
