.class public Lcom/alibaba/android/dingtalk/redpackets/models/DingWalletInfoObject;
.super Ljava/lang/Object;
.source "DingWalletInfoObject.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x538c37d2edfbc338L


# instance fields
.field public adsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/redpackets/models/DingWalletAdsObject;",
            ">;"
        }
    .end annotation
.end field

.field public adsSectionTitle:Ljava/lang/String;

.field public alipayAccount:Ljava/lang/String;

.field public entryList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/redpackets/models/DingWalletEntryObject;",
            ">;"
        }
    .end annotation
.end field

.field public entrySectionTitle:Ljava/lang/String;

.field public totalBalance:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromIDL(Lcaw;)Lcom/alibaba/android/dingtalk/redpackets/models/DingWalletInfoObject;
    .locals 2
    .param p0, "model"    # Lcaw;

    .prologue
    .line 33
    if-nez p0, :cond_0

    .line 34
    const/4 v0, 0x0

    .line 45
    :goto_0
    return-object v0

    .line 37
    :cond_0
    new-instance v0, Lcom/alibaba/android/dingtalk/redpackets/models/DingWalletInfoObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/redpackets/models/DingWalletInfoObject;-><init>()V

    .line 38
    .local v0, "object":Lcom/alibaba/android/dingtalk/redpackets/models/DingWalletInfoObject;
    iget-object v1, p0, Lcaw;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/redpackets/models/DingWalletInfoObject;->alipayAccount:Ljava/lang/String;

    .line 39
    iget-object v1, p0, Lcaw;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/redpackets/models/DingWalletInfoObject;->totalBalance:Ljava/lang/String;

    .line 40
    iget-object v1, p0, Lcaw;->c:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/redpackets/models/DingWalletInfoObject;->entrySectionTitle:Ljava/lang/String;

    .line 41
    iget-object v1, p0, Lcaw;->d:Ljava/util/List;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/redpackets/models/DingWalletEntryObject;->fromIDL(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/redpackets/models/DingWalletInfoObject;->entryList:Ljava/util/List;

    .line 42
    iget-object v1, p0, Lcaw;->e:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/redpackets/models/DingWalletInfoObject;->adsSectionTitle:Ljava/lang/String;

    .line 43
    iget-object v1, p0, Lcaw;->f:Ljava/util/List;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/redpackets/models/DingWalletAdsObject;->fromIDL(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/redpackets/models/DingWalletInfoObject;->adsList:Ljava/util/List;

    goto :goto_0
.end method
