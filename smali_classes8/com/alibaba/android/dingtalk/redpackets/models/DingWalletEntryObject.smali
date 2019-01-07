.class public Lcom/alibaba/android/dingtalk/redpackets/models/DingWalletEntryObject;
.super Ljava/lang/Object;
.source "DingWalletEntryObject.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x5f8de15e86bbb9c3L


# instance fields
.field public bizType:Ljava/lang/String;

.field public comment:Ljava/lang/String;

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

.method public static fromIDL(Lcav;)Lcom/alibaba/android/dingtalk/redpackets/models/DingWalletEntryObject;
    .locals 2
    .param p0, "model"    # Lcav;

    .prologue
    .line 32
    if-nez p0, :cond_0

    .line 33
    const/4 v0, 0x0

    .line 42
    :goto_0
    return-object v0

    .line 35
    :cond_0
    new-instance v0, Lcom/alibaba/android/dingtalk/redpackets/models/DingWalletEntryObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/redpackets/models/DingWalletEntryObject;-><init>()V

    .line 36
    .local v0, "object":Lcom/alibaba/android/dingtalk/redpackets/models/DingWalletEntryObject;
    iget-object v1, p0, Lcav;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/redpackets/models/DingWalletEntryObject;->title:Ljava/lang/String;

    .line 37
    iget-object v1, p0, Lcav;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/redpackets/models/DingWalletEntryObject;->comment:Ljava/lang/String;

    .line 38
    iget-object v1, p0, Lcav;->c:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/redpackets/models/DingWalletEntryObject;->logoMediaId:Ljava/lang/String;

    .line 39
    iget-object v1, p0, Lcav;->d:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/redpackets/models/DingWalletEntryObject;->linkUrl:Ljava/lang/String;

    .line 40
    iget-object v1, p0, Lcav;->e:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/redpackets/models/DingWalletEntryObject;->bizType:Ljava/lang/String;

    goto :goto_0
.end method

.method public static fromIDL(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcav;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/redpackets/models/DingWalletEntryObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 46
    .local p0, "models":Ljava/util/List;, "Ljava/util/List<Lcav;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 47
    .local v2, "objects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/redpackets/models/DingWalletEntryObject;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 58
    :cond_0
    return-object v2

    .line 51
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

    check-cast v0, Lcav;

    .line 52
    .local v0, "model":Lcav;
    invoke-static {v0}, Lcom/alibaba/android/dingtalk/redpackets/models/DingWalletEntryObject;->fromIDL(Lcav;)Lcom/alibaba/android/dingtalk/redpackets/models/DingWalletEntryObject;

    move-result-object v1

    .line 53
    .local v1, "object":Lcom/alibaba/android/dingtalk/redpackets/models/DingWalletEntryObject;
    if-eqz v1, :cond_2

    .line 54
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
