.class public Lcom/alibaba/android/oa/model/calendar/ManagerCalTabObject;
.super Ljava/lang/Object;
.source "ManagerCalTabObject.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x3be897000f2741feL


# instance fields
.field public mAppIcon:Ljava/lang/String;

.field public mAppId:Ljava/lang/String;

.field public mAttributeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mCalTabModels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/oa/model/calendar/ManagerCalTabObject;",
            ">;"
        }
    .end annotation
.end field

.field public mExtension:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mLevel:I

.field public mLinkModel:Lcom/alibaba/android/oa/model/calendar/ManagerCalLinkObject;

.field public mOrderAttributeStr:Ljava/lang/String;

.field public mOrgNodeNum:I

.field public mOrgNodes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;",
            ">;"
        }
    .end annotation
.end field

.field public mStyleType:I

.field public mSubAppId:Ljava/lang/String;

.field public mTextModels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/oa/model/calendar/ManagerCalTextObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromIDLModel(Lefn;)Lcom/alibaba/android/oa/model/calendar/ManagerCalTabObject;
    .locals 3
    .param p0, "model"    # Lefn;

    .prologue
    const/4 v2, 0x0

    .line 49
    const/4 v0, 0x0

    .line 50
    .local v0, "object":Lcom/alibaba/android/oa/model/calendar/ManagerCalTabObject;
    if-eqz p0, :cond_0

    .line 51
    new-instance v0, Lcom/alibaba/android/oa/model/calendar/ManagerCalTabObject;

    .end local v0    # "object":Lcom/alibaba/android/oa/model/calendar/ManagerCalTabObject;
    invoke-direct {v0}, Lcom/alibaba/android/oa/model/calendar/ManagerCalTabObject;-><init>()V

    .line 52
    .restart local v0    # "object":Lcom/alibaba/android/oa/model/calendar/ManagerCalTabObject;
    iget-object v1, p0, Lefn;->a:Ljava/lang/Integer;

    .line 1033
    invoke-static {v1, v2}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v1

    .line 52
    iput v1, v0, Lcom/alibaba/android/oa/model/calendar/ManagerCalTabObject;->mStyleType:I

    .line 53
    iget-object v1, p0, Lefn;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/oa/model/calendar/ManagerCalTabObject;->mAppId:Ljava/lang/String;

    .line 54
    iget-object v1, p0, Lefn;->c:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/oa/model/calendar/ManagerCalTabObject;->mSubAppId:Ljava/lang/String;

    .line 55
    iget-object v1, p0, Lefn;->d:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/oa/model/calendar/ManagerCalTabObject;->mAppIcon:Ljava/lang/String;

    .line 56
    iget-object v1, p0, Lefn;->e:Ljava/util/List;

    invoke-static {v1}, Lcom/alibaba/android/oa/model/calendar/ManagerCalTextObject;->fromIDLModel(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/oa/model/calendar/ManagerCalTabObject;->mTextModels:Ljava/util/List;

    .line 57
    iget-object v1, p0, Lefn;->f:Lefl;

    invoke-static {v1}, Lcom/alibaba/android/oa/model/calendar/ManagerCalLinkObject;->fromIDLModel(Lefl;)Lcom/alibaba/android/oa/model/calendar/ManagerCalLinkObject;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/oa/model/calendar/ManagerCalTabObject;->mLinkModel:Lcom/alibaba/android/oa/model/calendar/ManagerCalLinkObject;

    .line 58
    iget-object v1, p0, Lefn;->g:Ljava/util/List;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->fromIdl(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/oa/model/calendar/ManagerCalTabObject;->mOrgNodes:Ljava/util/List;

    .line 59
    iget-object v1, p0, Lefn;->h:Ljava/util/List;

    invoke-static {v1}, Lcom/alibaba/android/oa/model/calendar/ManagerCalTabObject;->fromIDLModel(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/oa/model/calendar/ManagerCalTabObject;->mCalTabModels:Ljava/util/List;

    .line 60
    iget-object v1, p0, Lefn;->i:Ljava/util/Map;

    iput-object v1, v0, Lcom/alibaba/android/oa/model/calendar/ManagerCalTabObject;->mAttributeMap:Ljava/util/Map;

    .line 61
    iget-object v1, p0, Lefn;->j:Ljava/util/Map;

    iput-object v1, v0, Lcom/alibaba/android/oa/model/calendar/ManagerCalTabObject;->mExtension:Ljava/util/Map;

    .line 62
    iget-object v1, p0, Lefn;->k:Ljava/lang/Integer;

    .line 2033
    invoke-static {v1, v2}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v1

    .line 62
    iput v1, v0, Lcom/alibaba/android/oa/model/calendar/ManagerCalTabObject;->mLevel:I

    .line 63
    iget-object v1, p0, Lefn;->l:Ljava/lang/Integer;

    .line 3033
    invoke-static {v1, v2}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v1

    .line 63
    iput v1, v0, Lcom/alibaba/android/oa/model/calendar/ManagerCalTabObject;->mOrgNodeNum:I

    .line 64
    iget-object v1, p0, Lefn;->n:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/oa/model/calendar/ManagerCalTabObject;->mOrderAttributeStr:Ljava/lang/String;

    .line 66
    :cond_0
    return-object v0
.end method

.method public static fromIDLModel(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lefn;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/oa/model/calendar/ManagerCalTabObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 70
    .local p0, "models":Ljava/util/List;, "Ljava/util/List<Lefn;>;"
    const/4 v2, 0x0

    .line 71
    .local v2, "objectList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/oa/model/calendar/ManagerCalTabObject;>;"
    if-eqz p0, :cond_1

    .line 72
    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "objectList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/oa/model/calendar/ManagerCalTabObject;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 73
    .restart local v2    # "objectList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/oa/model/calendar/ManagerCalTabObject;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lefn;

    .line 74
    .local v0, "model":Lefn;
    invoke-static {v0}, Lcom/alibaba/android/oa/model/calendar/ManagerCalTabObject;->fromIDLModel(Lefn;)Lcom/alibaba/android/oa/model/calendar/ManagerCalTabObject;

    move-result-object v1

    .line 75
    .local v1, "object":Lcom/alibaba/android/oa/model/calendar/ManagerCalTabObject;
    if-eqz v1, :cond_0

    .line 76
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 80
    .end local v0    # "model":Lefn;
    .end local v1    # "object":Lcom/alibaba/android/oa/model/calendar/ManagerCalTabObject;
    :cond_1
    return-object v2
.end method
