.class public Lcom/alibaba/android/user/contact/organization/impl/OrgDeptChooseControl;
.super Ljava/lang/Object;
.source "OrgDeptChooseControl.java"

# interfaces
.implements Lcom/alibaba/android/dingtalk/userbase/IChooseControl;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/android/dingtalk/userbase/IChooseControl",
        "<",
        "Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;",
        ">;"
    }
.end annotation


# instance fields
.field private mActivityContext:Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity;

.field private mChooseListener:Lfio;

.field private mChooseMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;",
            ">;"
        }
    .end annotation
.end field

.field private mDisChooseList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;",
            ">;"
        }
    .end annotation
.end field

.field private mRequestSelectList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lfio;)V
    .locals 1
    .param p1, "chooseListener"    # Lfio;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/user/contact/organization/impl/OrgDeptChooseControl;->mChooseMap:Ljava/util/Map;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/user/contact/organization/impl/OrgDeptChooseControl;->mDisChooseList:Ljava/util/List;

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/user/contact/organization/impl/OrgDeptChooseControl;->mRequestSelectList:Ljava/util/List;

    .line 47
    iput-object p1, p0, Lcom/alibaba/android/user/contact/organization/impl/OrgDeptChooseControl;->mChooseListener:Lfio;

    .line 48
    return-void
.end method


# virtual methods
.method public addChooseObject(Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;)Z
    .locals 6
    .param p1, "orgDeptObject"    # Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 84
    invoke-virtual {p0, p1}, Lcom/alibaba/android/user/contact/organization/impl/OrgDeptChooseControl;->isHasSelected(Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/alibaba/android/user/contact/organization/impl/OrgDeptChooseControl;->isRequestSelect(Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 85
    invoke-virtual {p0, p1}, Lcom/alibaba/android/user/contact/organization/impl/OrgDeptChooseControl;->isDisable(Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    move v1, v3

    .line 102
    :goto_0
    return v1

    .line 88
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 89
    goto :goto_0

    .line 92
    :cond_2
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/impl/OrgDeptChooseControl;->mActivityContext:Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/impl/OrgDeptChooseControl;->mActivityContext:Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity;

    instance-of v1, v1, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;

    if-eqz v1, :cond_3

    .line 93
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/impl/OrgDeptChooseControl;->mActivityContext:Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity;

    check-cast v1, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;

    invoke-virtual {v1}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->n()Ljava/util/ArrayList;

    move-result-object v0

    .line 95
    .local v0, "nodePathList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    iput-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->masterDeptNodeList:Ljava/util/ArrayList;

    .line 98
    .end local v0    # "nodePathList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    :cond_3
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/impl/OrgDeptChooseControl;->mChooseMap:Ljava/util/Map;

    iget-wide v4, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->deptId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v1, v4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/impl/OrgDeptChooseControl;->mChooseListener:Lfio;

    if-eqz v1, :cond_4

    .line 100
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/impl/OrgDeptChooseControl;->mChooseListener:Lfio;

    invoke-interface {v1, v2}, Lfio;->b(Z)V

    :cond_4
    move v1, v3

    .line 102
    goto :goto_0
.end method

.method public bridge synthetic addChooseObject(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 35
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    invoke-virtual {p0, p1}, Lcom/alibaba/android/user/contact/organization/impl/OrgDeptChooseControl;->addChooseObject(Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;)Z

    move-result v0

    return v0
.end method

.method public addChooseObject(Ljava/util/List;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;",
            ">;)Z"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .local p1, "objects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    const/4 v3, 0x0

    .line 107
    if-eqz p1, :cond_4

    .line 108
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    .line 109
    .local v1, "object":Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;
    if-eqz v1, :cond_0

    .line 112
    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/contact/organization/impl/OrgDeptChooseControl;->isHasSelected(Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/contact/organization/impl/OrgDeptChooseControl;->isRequestSelect(Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/contact/organization/impl/OrgDeptChooseControl;->isDisable(Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 116
    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/impl/OrgDeptChooseControl;->mActivityContext:Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/impl/OrgDeptChooseControl;->mActivityContext:Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity;

    instance-of v2, v2, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;

    if-eqz v2, :cond_1

    .line 117
    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/impl/OrgDeptChooseControl;->mActivityContext:Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity;

    check-cast v2, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;

    invoke-virtual {v2}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->n()Ljava/util/ArrayList;

    move-result-object v0

    .line 119
    .local v0, "nodePathList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    iput-object v0, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->masterDeptNodeList:Ljava/util/ArrayList;

    .line 122
    .end local v0    # "nodePathList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    :cond_1
    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/impl/OrgDeptChooseControl;->mChooseMap:Ljava/util/Map;

    iget-wide v6, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->deptId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v2, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 124
    .end local v1    # "object":Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;
    :cond_2
    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/impl/OrgDeptChooseControl;->mChooseListener:Lfio;

    if-eqz v2, :cond_3

    .line 125
    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/impl/OrgDeptChooseControl;->mChooseListener:Lfio;

    invoke-interface {v2, v3}, Lfio;->b(Z)V

    .line 127
    :cond_3
    const/4 v2, 0x1

    .line 129
    :goto_1
    return v2

    :cond_4
    move v2, v3

    goto :goto_1
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/impl/OrgDeptChooseControl;->mChooseMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 260
    return-void
.end method

.method public getChooseResult()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 167
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/impl/OrgDeptChooseControl;->mChooseMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    .line 168
    .local v0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    instance-of v1, v0, Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 169
    check-cast v0, Ljava/util/ArrayList;

    .line 171
    .end local v0    # "collection":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    :goto_0
    return-object v0

    .restart local v0    # "collection":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public getChooseResultHaveId()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 181
    const/4 v0, 0x0

    return-object v0
.end method

.method public getChooseResultIds()[J
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 196
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/impl/OrgDeptChooseControl;->getChooseResult()Ljava/util/ArrayList;

    move-result-object v2

    .line 197
    .local v2, "mChoosedList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v0, v3, [J

    .line 198
    .local v0, "deptIds":[J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 199
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    iget-wide v4, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->deptId:J

    aput-wide v4, v0, v1

    .line 198
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 201
    :cond_0
    return-object v0
.end method

.method public getChooseResultNoId()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 176
    const/4 v0, 0x0

    return-object v0
.end method

.method public getChosenCount(Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;)I
    .locals 10
    .param p1, "orgDeptObject"    # Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 263
    const/4 v1, 0x0

    .line 264
    .local v1, "count":I
    iget-object v4, p0, Lcom/alibaba/android/user/contact/organization/impl/OrgDeptChooseControl;->mChooseMap:Ljava/util/Map;

    if-eqz v4, :cond_0

    if-nez p1, :cond_1

    .line 265
    :cond_0
    const/4 v4, 0x0

    .line 281
    :goto_0
    return v4

    .line 268
    :cond_1
    iget-object v4, p0, Lcom/alibaba/android/user/contact/organization/impl/OrgDeptChooseControl;->mChooseMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 269
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    .line 270
    .local v0, "chosenDept":Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;
    if-eqz v0, :cond_2

    iget-object v5, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->masterDeptNodeList:Ljava/util/ArrayList;

    if-eqz v5, :cond_2

    iget-wide v6, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->orgId:J

    iget-wide v8, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->orgId:J

    cmp-long v5, v6, v8

    if-nez v5, :cond_2

    .line 275
    iget-object v5, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->masterDeptNodeList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    .line 276
    .local v2, "deptNode":Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;
    if-eqz v2, :cond_3

    iget-wide v6, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->deptId:J

    iget-wide v8, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->deptId:J

    cmp-long v6, v6, v8

    if-nez v6, :cond_3

    .line 277
    iget v6, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->memberCount:I

    add-int/2addr v1, v6

    goto :goto_1

    .end local v0    # "chosenDept":Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;
    .end local v2    # "deptNode":Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    :cond_4
    move v4, v1

    .line 281
    goto :goto_0
.end method

.method public getDisableSelectResult()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 186
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/impl/OrgDeptChooseControl;->mDisChooseList:Ljava/util/List;

    return-object v0
.end method

.method public getRequestSelectResult()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 191
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/impl/OrgDeptChooseControl;->mRequestSelectList:Ljava/util/List;

    return-object v0
.end method

.method public isDisable(Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;)Z
    .locals 6
    .param p1, "orgDeptObject"    # Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 206
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/impl/OrgDeptChooseControl;->mDisChooseList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    if-eqz p1, :cond_1

    .line 207
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/impl/OrgDeptChooseControl;->mDisChooseList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    .line 208
    .local v0, "deptObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;
    iget-wide v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->deptId:J

    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->deptId:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 209
    const/4 v1, 0x1

    .line 213
    .end local v0    # "deptObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public bridge synthetic isDisable(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 35
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    invoke-virtual {p0, p1}, Lcom/alibaba/android/user/contact/organization/impl/OrgDeptChooseControl;->isDisable(Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;)Z

    move-result v0

    return v0
.end method

.method public isHasSelected(Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;)Z
    .locals 4
    .param p1, "orgDeptObject"    # Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 218
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/impl/OrgDeptChooseControl;->mChooseMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_2

    if-eqz p1, :cond_2

    .line 219
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/impl/OrgDeptChooseControl;->mChooseMap:Ljava/util/Map;

    iget-wide v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->deptId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 220
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/impl/OrgDeptChooseControl;->mChooseMap:Ljava/util/Map;

    iget-wide v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->deptId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    .line 221
    .local v0, "deptObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;
    iget-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->deptName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->memberCount:I

    if-nez v1, :cond_1

    .line 222
    :cond_0
    iget-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->masterDeptNodeList:Ljava/util/ArrayList;

    iput-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->masterDeptNodeList:Ljava/util/ArrayList;

    .line 223
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/impl/OrgDeptChooseControl;->mChooseMap:Ljava/util/Map;

    iget-wide v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->deptId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    :cond_1
    const/4 v1, 0x1

    .line 228
    .end local v0    # "deptObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;
    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public bridge synthetic isHasSelected(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 35
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    invoke-virtual {p0, p1}, Lcom/alibaba/android/user/contact/organization/impl/OrgDeptChooseControl;->isHasSelected(Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;)Z

    move-result v0

    return v0
.end method

.method public isRequestSelect(Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;)Z
    .locals 6
    .param p1, "orgDeptObject"    # Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 233
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/impl/OrgDeptChooseControl;->mRequestSelectList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    if-eqz p1, :cond_1

    .line 234
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/impl/OrgDeptChooseControl;->mRequestSelectList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    .line 235
    .local v0, "deptObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;
    iget-wide v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->deptId:J

    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->deptId:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 236
    const/4 v1, 0x1

    .line 240
    .end local v0    # "deptObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public bridge synthetic isRequestSelect(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 35
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    invoke-virtual {p0, p1}, Lcom/alibaba/android/user/contact/organization/impl/OrgDeptChooseControl;->isRequestSelect(Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;)Z

    move-result v0

    return v0
.end method

.method public onSingleChoose(Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;)Z
    .locals 5
    .param p1, "orgDeptObject"    # Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 245
    invoke-virtual {p0, p1}, Lcom/alibaba/android/user/contact/organization/impl/OrgDeptChooseControl;->isHasSelected(Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/alibaba/android/user/contact/organization/impl/OrgDeptChooseControl;->isRequestSelect(Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 246
    invoke-virtual {p0, p1}, Lcom/alibaba/android/user/contact/organization/impl/OrgDeptChooseControl;->isDisable(Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 254
    :cond_0
    :goto_0
    return v4

    .line 249
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/impl/OrgDeptChooseControl;->mChooseMap:Ljava/util/Map;

    iget-wide v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->deptId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/impl/OrgDeptChooseControl;->mChooseListener:Lfio;

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/impl/OrgDeptChooseControl;->mChooseListener:Lfio;

    invoke-interface {v0, p1}, Lfio;->a(Ljava/io/Serializable;)V

    goto :goto_0
.end method

.method public bridge synthetic onSingleChoose(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 35
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    invoke-virtual {p0, p1}, Lcom/alibaba/android/user/contact/organization/impl/OrgDeptChooseControl;->onSingleChoose(Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;)Z

    move-result v0

    return v0
.end method

.method public removeChooseObject(Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;)Z
    .locals 4
    .param p1, "orgDeptObject"    # Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v0, 0x1

    .line 134
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/impl/OrgDeptChooseControl;->mChooseMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_1

    if-eqz p1, :cond_1

    .line 135
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/impl/OrgDeptChooseControl;->mChooseMap:Ljava/util/Map;

    iget-wide v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->deptId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/impl/OrgDeptChooseControl;->mChooseListener:Lfio;

    if-eqz v1, :cond_0

    .line 137
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/impl/OrgDeptChooseControl;->mChooseListener:Lfio;

    invoke-interface {v1, v0}, Lfio;->b(Z)V

    .line 141
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic removeChooseObject(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 35
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    invoke-virtual {p0, p1}, Lcom/alibaba/android/user/contact/organization/impl/OrgDeptChooseControl;->removeChooseObject(Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;)Z

    move-result v0

    return v0
.end method

.method public removeChooseObject(Ljava/util/ArrayList;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;",
            ">;)Z"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .local p1, "objects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    const/4 v1, 0x1

    .line 146
    if-eqz p1, :cond_3

    .line 147
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    .line 148
    .local v0, "object":Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;
    if-eqz v0, :cond_0

    .line 151
    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/organization/impl/OrgDeptChooseControl;->isRequestSelect(Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 154
    iget-object v3, p0, Lcom/alibaba/android/user/contact/organization/impl/OrgDeptChooseControl;->mChooseMap:Ljava/util/Map;

    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->deptId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 156
    .end local v0    # "object":Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;
    :cond_1
    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/impl/OrgDeptChooseControl;->mChooseListener:Lfio;

    if-eqz v2, :cond_2

    .line 157
    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/impl/OrgDeptChooseControl;->mChooseListener:Lfio;

    invoke-interface {v2, v1}, Lfio;->b(Z)V

    .line 161
    :cond_2
    :goto_1
    return v1

    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public setActivityContext(Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity;)V
    .locals 0
    .param p1, "activityContext"    # Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/alibaba/android/user/contact/organization/impl/OrgDeptChooseControl;->mActivityContext:Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity;

    .line 52
    return-void
.end method

.method public setChoosedList(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 56
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/impl/OrgDeptChooseControl;->mChooseMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 57
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 58
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    .line 59
    .local v0, "deptObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;
    if-eqz v0, :cond_0

    .line 60
    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/impl/OrgDeptChooseControl;->mChooseMap:Ljava/util/Map;

    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->deptId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 64
    .end local v0    # "deptObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;
    :cond_1
    return-void
.end method

.method public setDisChooseList(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 68
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/impl/OrgDeptChooseControl;->mDisChooseList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 69
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 70
    iput-object p1, p0, Lcom/alibaba/android/user/contact/organization/impl/OrgDeptChooseControl;->mDisChooseList:Ljava/util/List;

    .line 72
    :cond_0
    return-void
.end method

.method public setRequestSelectList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 76
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/impl/OrgDeptChooseControl;->mRequestSelectList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 77
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 78
    iput-object p1, p0, Lcom/alibaba/android/user/contact/organization/impl/OrgDeptChooseControl;->mRequestSelectList:Ljava/util/List;

    .line 80
    :cond_0
    return-void
.end method
