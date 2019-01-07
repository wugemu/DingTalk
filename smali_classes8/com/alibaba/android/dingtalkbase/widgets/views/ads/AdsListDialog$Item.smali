.class public Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsListDialog$Item;
.super Ljava/lang/Object;
.source "AdsListDialog.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsListDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Item"
.end annotation


# instance fields
.field private mActUrl:Ljava/lang/String;

.field private mContent:Ljava/lang/String;

.field private mIconMediaId:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getActUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsListDialog$Item;->mActUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsListDialog$Item;->mContent:Ljava/lang/String;

    return-object v0
.end method

.method public getIconMediaId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsListDialog$Item;->mIconMediaId:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsListDialog$Item;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public setActUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "actUrl"    # Ljava/lang/String;

    .prologue
    .line 176
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsListDialog$Item;->mActUrl:Ljava/lang/String;

    .line 177
    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 168
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsListDialog$Item;->mContent:Ljava/lang/String;

    .line 169
    return-void
.end method

.method public setIconMediaId(Ljava/lang/String;)V
    .locals 0
    .param p1, "iconMediaId"    # Ljava/lang/String;

    .prologue
    .line 152
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsListDialog$Item;->mIconMediaId:Ljava/lang/String;

    .line 153
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 160
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsListDialog$Item;->mTitle:Ljava/lang/String;

    .line 161
    return-void
.end method
