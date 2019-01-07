.class public final Lfxz;
.super Lcom/alibaba/android/userkit/usermanager/model/BaseUserManagerModel;
.source "UserItemModel.java"


# instance fields
.field public b:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/alibaba/android/userkit/usermanager/model/BaseUserManagerModel;-><init>()V

    return-void
.end method

.method public static a(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/userkit/usermanager/model/BaseUserManagerModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 55
    .local p0, "userIdentityObjectList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_2

    .line 56
    :cond_0
    const/4 v2, 0x0

    .line 67
    :cond_1
    return-object v2

    .line 59
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 60
    .local v2, "userItemModelList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/userkit/usermanager/model/BaseUserManagerModel;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 61
    .local v0, "userIdentityObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    new-instance v1, Lfxz;

    invoke-direct {v1}, Lfxz;-><init>()V

    .line 1036
    .local v1, "userItemModel":Lfxz;
    iput-object v0, v1, Lfxz;->b:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 63
    sget-object v4, Lcom/alibaba/android/userkit/usermanager/model/BaseUserManagerModel$ClickType;->UserItem:Lcom/alibaba/android/userkit/usermanager/model/BaseUserManagerModel$ClickType;

    .line 1071
    iput-object v4, v1, Lcom/alibaba/android/userkit/usermanager/model/BaseUserManagerModel;->a:Lcom/alibaba/android/userkit/usermanager/model/BaseUserManagerModel$ClickType;

    .line 64
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
