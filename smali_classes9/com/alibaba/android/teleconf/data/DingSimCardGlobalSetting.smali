.class public Lcom/alibaba/android/teleconf/data/DingSimCardGlobalSetting;
.super Lcom/alibaba/dingtalk/telebase/models/DingSimCardBaseSetting;
.source "DingSimCardGlobalSetting.java"


# static fields
.field public static final KEY_IS_ALL_OPEN:Ljava/lang/String; = "all"

.field public static final KEY_ORG_IDS:Ljava/lang/String; = "orgIds"

.field public static final KEY_ORG_LEVELS:Ljava/lang/String; = "orgLevels"


# instance fields
.field private isAllOpen:Z

.field private orgIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private orgLevels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/alibaba/dingtalk/telebase/models/DingSimCardBaseSetting;-><init>()V

    return-void
.end method


# virtual methods
.method public getOrgIds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 55
    iget-object v0, p0, Lcom/alibaba/android/teleconf/data/DingSimCardGlobalSetting;->orgIds:Ljava/util/List;

    return-object v0
.end method

.method public getOrgLevels()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 63
    iget-object v0, p0, Lcom/alibaba/android/teleconf/data/DingSimCardGlobalSetting;->orgLevels:Ljava/util/List;

    return-object v0
.end method

.method public isAllOpen()Z
    .locals 1

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/alibaba/android/teleconf/data/DingSimCardGlobalSetting;->isAllOpen:Z

    return v0
.end method

.method public setAllOpen(Z)V
    .locals 0
    .param p1, "allOpen"    # Z

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/alibaba/android/teleconf/data/DingSimCardGlobalSetting;->isAllOpen:Z

    .line 48
    return-void
.end method

.method public setOrgIds(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 59
    .local p1, "orgIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    iput-object p1, p0, Lcom/alibaba/android/teleconf/data/DingSimCardGlobalSetting;->orgIds:Ljava/util/List;

    .line 60
    return-void
.end method

.method public setOrgLevels(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 67
    .local p1, "orgLevels":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iput-object p1, p0, Lcom/alibaba/android/teleconf/data/DingSimCardGlobalSetting;->orgLevels:Ljava/util/List;

    .line 68
    return-void
.end method
