.class public Lcom/alibaba/android/dingtalk/redpackets/models/DingWalletAdsObject;
.super Ljava/lang/Object;
.source "DingWalletAdsObject.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x132a49bdd9d96737L


# instance fields
.field public content:Ljava/lang/String;

.field public linkUrl:Ljava/lang/String;

.field public logoMediaId:Ljava/lang/String;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromIDL(Lcau;)Lcom/alibaba/android/dingtalk/redpackets/models/DingWalletAdsObject;
    .locals 2
    .param p0, "model"    # Lcau;

    .prologue
    .line 29
    if-nez p0, :cond_0

    .line 30
    const/4 v0, 0x0

    .line 38
    :goto_0
    return-object v0

    .line 32
    :cond_0
    new-instance v0, Lcom/alibaba/android/dingtalk/redpackets/models/DingWalletAdsObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/redpackets/models/DingWalletAdsObject;-><init>()V

    .line 33
    .local v0, "object":Lcom/alibaba/android/dingtalk/redpackets/models/DingWalletAdsObject;
    iget-object v1, p0, Lcau;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/redpackets/models/DingWalletAdsObject;->title:Ljava/lang/String;

    .line 34
    iget-object v1, p0, Lcau;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/redpackets/models/DingWalletAdsObject;->content:Ljava/lang/String;

    .line 35
    iget-object v1, p0, Lcau;->c:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/redpackets/models/DingWalletAdsObject;->logoMediaId:Ljava/lang/String;

    .line 36
    iget-object v1, p0, Lcau;->d:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/redpackets/models/DingWalletAdsObject;->linkUrl:Ljava/lang/String;

    goto :goto_0
.end method

.method public static fromIDL(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcau;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/redpackets/models/DingWalletAdsObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 42
    .local p0, "models":Ljava/util/List;, "Ljava/util/List<Lcau;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 43
    .local v2, "objects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/redpackets/models/DingWalletAdsObject;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 54
    :cond_0
    return-object v2

    .line 47
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcau;

    .line 48
    .local v0, "model":Lcau;
    invoke-static {v0}, Lcom/alibaba/android/dingtalk/redpackets/models/DingWalletAdsObject;->fromIDL(Lcau;)Lcom/alibaba/android/dingtalk/redpackets/models/DingWalletAdsObject;

    move-result-object v1

    .line 49
    .local v1, "object":Lcom/alibaba/android/dingtalk/redpackets/models/DingWalletAdsObject;
    if-eqz v1, :cond_2

    .line 50
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
