.class public Lcom/alibaba/android/user/contact/organization/impl/LocalContactChooseControl;
.super Ljava/lang/Object;
.source "LocalContactChooseControl.java"

# interfaces
.implements Lcom/alibaba/android/dingtalk/userbase/IChooseControl;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/android/dingtalk/userbase/IChooseControl",
        "<",
        "Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;",
        ">;"
    }
.end annotation


# instance fields
.field private mChooseListener:Lfio;

.field private mChooseMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;",
            ">;"
        }
    .end annotation
.end field

.field private mDisChooseList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;",
            ">;"
        }
    .end annotation
.end field

.field private mRequestSelectedList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;",
            ">;"
        }
    .end annotation
.end field

.field private mUserList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lfio;)V
    .locals 1
    .param p1, "chooseListener"    # Lfio;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/user/contact/organization/impl/LocalContactChooseControl;->mChooseMap:Ljava/util/Map;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/user/contact/organization/impl/LocalContactChooseControl;->mDisChooseList:Ljava/util/List;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/user/contact/organization/impl/LocalContactChooseControl;->mUserList:Ljava/util/ArrayList;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/user/contact/organization/impl/LocalContactChooseControl;->mRequestSelectedList:Ljava/util/List;

    .line 44
    iput-object p1, p0, Lcom/alibaba/android/user/contact/organization/impl/LocalContactChooseControl;->mChooseListener:Lfio;

    .line 45
    return-void
.end method


# virtual methods
.method public addChooseObject(Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;)Z
    .locals 5
    .param p1, "userIdentityObject"    # Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v4, 0x1

    .line 83
    invoke-virtual {p0, p1}, Lcom/alibaba/android/user/contact/organization/impl/LocalContactChooseControl;->isHasSelected(Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/alibaba/android/user/contact/organization/impl/LocalContactChooseControl;->isRequestSelect(Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 84
    invoke-virtual {p0, p1}, Lcom/alibaba/android/user/contact/organization/impl/LocalContactChooseControl;->isDisable(Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 95
    :cond_0
    :goto_0
    return v4

    .line 87
    :cond_1
    iget-wide v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->uid:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 88
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/impl/LocalContactChooseControl;->mChooseMap:Ljava/util/Map;

    iget-wide v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->uid:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    :goto_1
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/impl/LocalContactChooseControl;->mChooseListener:Lfio;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/impl/LocalContactChooseControl;->mChooseListener:Lfio;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lfio;->b(Z)V

    goto :goto_0

    .line 90
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/impl/LocalContactChooseControl;->mUserList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public bridge synthetic addChooseObject(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 31
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;

    invoke-virtual {p0, p1}, Lcom/alibaba/android/user/contact/organization/impl/LocalContactChooseControl;->addChooseObject(Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;)Z

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
            "Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;",
            ">;)Z"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .local p1, "objects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;>;"
    const/4 v1, 0x0

    .line 100
    if-eqz p1, :cond_4

    .line 101
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;

    .line 102
    .local v0, "object":Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;
    if-eqz v0, :cond_0

    .line 105
    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/organization/impl/LocalContactChooseControl;->isHasSelected(Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/organization/impl/LocalContactChooseControl;->isRequestSelect(Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/organization/impl/LocalContactChooseControl;->isDisable(Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 108
    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->uid:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-eqz v3, :cond_1

    .line 109
    iget-object v3, p0, Lcom/alibaba/android/user/contact/organization/impl/LocalContactChooseControl;->mChooseMap:Ljava/util/Map;

    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->uid:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 111
    :cond_1
    iget-object v3, p0, Lcom/alibaba/android/user/contact/organization/impl/LocalContactChooseControl;->mUserList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 113
    .end local v0    # "object":Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;
    :cond_2
    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/impl/LocalContactChooseControl;->mChooseListener:Lfio;

    if-eqz v2, :cond_3

    .line 114
    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/impl/LocalContactChooseControl;->mChooseListener:Lfio;

    invoke-interface {v2, v1}, Lfio;->b(Z)V

    .line 116
    :cond_3
    const/4 v1, 0x1

    .line 118
    :cond_4
    return v1
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/impl/LocalContactChooseControl;->mChooseMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 279
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/impl/LocalContactChooseControl;->mUserList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 280
    return-void
.end method

.method public getChooseResult()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 163
    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/impl/LocalContactChooseControl;->mChooseMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    .line 165
    .local v0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;>;"
    instance-of v2, v0, Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 166
    check-cast v1, Ljava/util/ArrayList;

    .line 170
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;>;"
    :goto_0
    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/impl/LocalContactChooseControl;->mUserList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 171
    return-object v1

    .line 168
    .end local v1    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;>;"
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .restart local v1    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;>;"
    goto :goto_0
.end method

.method public getChooseResultHaveId()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 181
    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/impl/LocalContactChooseControl;->mChooseMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    .line 183
    .local v0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;>;"
    instance-of v2, v0, Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 184
    check-cast v1, Ljava/util/ArrayList;

    .line 188
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;>;"
    :goto_0
    return-object v1

    .line 186
    .end local v1    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;>;"
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .restart local v1    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;>;"
    goto :goto_0
.end method

.method public getChooseResultIds()[J
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 203
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/impl/LocalContactChooseControl;->getChooseResultHaveId()Ljava/util/ArrayList;

    move-result-object v1

    .line 204
    .local v1, "mChoosedList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    new-array v2, v3, [J

    .line 205
    .local v2, "uids":[J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 206
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;

    iget-wide v4, v3, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->uid:J

    aput-wide v4, v2, v0

    .line 205
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 208
    :cond_0
    return-object v2
.end method

.method public getChooseResultNoId()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 176
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/impl/LocalContactChooseControl;->mUserList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getDisableSelectResult()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 193
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/impl/LocalContactChooseControl;->mDisChooseList:Ljava/util/List;

    return-object v0
.end method

.method public getRequestSelectResult()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 198
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/impl/LocalContactChooseControl;->mRequestSelectedList:Ljava/util/List;

    return-object v0
.end method

.method public isDisable(Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;)Z
    .locals 6
    .param p1, "userIdentityObject"    # Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 213
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/impl/LocalContactChooseControl;->mDisChooseList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    if-eqz p1, :cond_2

    .line 214
    iget-wide v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->uid:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    .line 215
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/impl/LocalContactChooseControl;->mDisChooseList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;

    .line 216
    .local v0, "userObject":Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;
    iget-wide v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->uid:J

    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->uid:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 217
    const/4 v1, 0x1

    .line 224
    .end local v0    # "userObject":Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;
    :goto_0
    return v1

    .line 221
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/impl/LocalContactChooseControl;->mDisChooseList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    .line 224
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public bridge synthetic isDisable(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 31
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;

    invoke-virtual {p0, p1}, Lcom/alibaba/android/user/contact/organization/impl/LocalContactChooseControl;->isDisable(Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;)Z

    move-result v0

    return v0
.end method

.method public isHasSelected(Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;)Z
    .locals 4
    .param p1, "userIdentityObject"    # Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 229
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/impl/LocalContactChooseControl;->mChooseMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/impl/LocalContactChooseControl;->mUserList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    if-eqz p1, :cond_2

    .line 230
    iget-wide v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->uid:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 231
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/impl/LocalContactChooseControl;->mChooseMap:Ljava/util/Map;

    iget-wide v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->uid:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 232
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/impl/LocalContactChooseControl;->mChooseMap:Ljava/util/Map;

    iget-wide v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->uid:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    const/4 v0, 0x1

    .line 239
    :goto_0
    return v0

    .line 236
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/impl/LocalContactChooseControl;->mUserList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 239
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic isHasSelected(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 31
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;

    invoke-virtual {p0, p1}, Lcom/alibaba/android/user/contact/organization/impl/LocalContactChooseControl;->isHasSelected(Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;)Z

    move-result v0

    return v0
.end method

.method public isRequestSelect(Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;)Z
    .locals 6
    .param p1, "userIdentityObject"    # Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 244
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/impl/LocalContactChooseControl;->mRequestSelectedList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    if-eqz p1, :cond_2

    .line 245
    iget-wide v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->uid:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    .line 246
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/impl/LocalContactChooseControl;->mRequestSelectedList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;

    .line 247
    .local v0, "userObject":Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;
    iget-wide v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->uid:J

    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->uid:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 248
    const/4 v1, 0x1

    .line 255
    .end local v0    # "userObject":Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;
    :goto_0
    return v1

    .line 252
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/impl/LocalContactChooseControl;->mRequestSelectedList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    .line 255
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public bridge synthetic isRequestSelect(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 31
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;

    invoke-virtual {p0, p1}, Lcom/alibaba/android/user/contact/organization/impl/LocalContactChooseControl;->isRequestSelect(Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;)Z

    move-result v0

    return v0
.end method

.method public onSingleChoose(Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;)Z
    .locals 5
    .param p1, "userIdentityObject"    # Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 260
    invoke-virtual {p0, p1}, Lcom/alibaba/android/user/contact/organization/impl/LocalContactChooseControl;->isRequestSelect(Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/alibaba/android/user/contact/organization/impl/LocalContactChooseControl;->isDisable(Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 273
    :cond_0
    :goto_0
    return v4

    .line 263
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/impl/LocalContactChooseControl;->clear()V

    .line 264
    iget-wide v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->uid:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 265
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/impl/LocalContactChooseControl;->mChooseMap:Ljava/util/Map;

    iget-wide v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->uid:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    :goto_1
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/impl/LocalContactChooseControl;->mChooseListener:Lfio;

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/impl/LocalContactChooseControl;->mChooseListener:Lfio;

    invoke-interface {v0, p1}, Lfio;->a(Ljava/io/Serializable;)V

    goto :goto_0

    .line 267
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/impl/LocalContactChooseControl;->mUserList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public bridge synthetic onSingleChoose(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 31
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;

    invoke-virtual {p0, p1}, Lcom/alibaba/android/user/contact/organization/impl/LocalContactChooseControl;->onSingleChoose(Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;)Z

    move-result v0

    return v0
.end method

.method public removeChooseObject(Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;)Z
    .locals 6
    .param p1, "userIdentityObject"    # Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v0, 0x1

    .line 123
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/impl/LocalContactChooseControl;->mChooseMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-gtz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/impl/LocalContactChooseControl;->mUserList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    :cond_0
    if-eqz p1, :cond_3

    .line 124
    iget-wide v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->uid:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_2

    .line 125
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/impl/LocalContactChooseControl;->mChooseMap:Ljava/util/Map;

    iget-wide v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->uid:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    :goto_0
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/impl/LocalContactChooseControl;->mChooseListener:Lfio;

    if-eqz v1, :cond_1

    .line 130
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/impl/LocalContactChooseControl;->mChooseListener:Lfio;

    invoke-interface {v1, v0}, Lfio;->b(Z)V

    .line 134
    :cond_1
    :goto_1
    return v0

    .line 127
    :cond_2
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/impl/LocalContactChooseControl;->mUserList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 134
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public bridge synthetic removeChooseObject(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 31
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;

    invoke-virtual {p0, p1}, Lcom/alibaba/android/user/contact/organization/impl/LocalContactChooseControl;->removeChooseObject(Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;)Z

    move-result v0

    return v0
.end method

.method public removeChooseObject(Ljava/util/ArrayList;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;",
            ">;)Z"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .local p1, "objects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;>;"
    const/4 v1, 0x1

    .line 139
    if-eqz p1, :cond_4

    .line 140
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;

    .line 141
    .local v0, "object":Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;
    if-eqz v0, :cond_0

    .line 144
    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/organization/impl/LocalContactChooseControl;->isRequestSelect(Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 147
    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->uid:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-eqz v3, :cond_1

    .line 148
    iget-object v3, p0, Lcom/alibaba/android/user/contact/organization/impl/LocalContactChooseControl;->mChooseMap:Ljava/util/Map;

    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->uid:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 150
    :cond_1
    iget-object v3, p0, Lcom/alibaba/android/user/contact/organization/impl/LocalContactChooseControl;->mUserList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 153
    .end local v0    # "object":Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;
    :cond_2
    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/impl/LocalContactChooseControl;->mChooseListener:Lfio;

    if-eqz v2, :cond_3

    .line 154
    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/impl/LocalContactChooseControl;->mChooseListener:Lfio;

    invoke-interface {v2, v1}, Lfio;->b(Z)V

    .line 158
    :cond_3
    :goto_1
    return v1

    :cond_4
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public setChoosedList(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 49
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;>;"
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/impl/LocalContactChooseControl;->mChooseMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 50
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/impl/LocalContactChooseControl;->mUserList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 51
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 52
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;

    .line 53
    .local v0, "userIdentityObject":Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;
    if-eqz v0, :cond_0

    .line 56
    iget-wide v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->uid:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    .line 57
    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/impl/LocalContactChooseControl;->mChooseMap:Ljava/util/Map;

    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->uid:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 59
    :cond_1
    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/impl/LocalContactChooseControl;->mUserList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 63
    .end local v0    # "userIdentityObject":Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;
    :cond_2
    return-void
.end method

.method public setDisChooseList(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 67
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;>;"
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/impl/LocalContactChooseControl;->mDisChooseList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 68
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/impl/LocalContactChooseControl;->mDisChooseList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 71
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
            "Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 75
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;>;"
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/impl/LocalContactChooseControl;->mRequestSelectedList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 76
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/impl/LocalContactChooseControl;->mRequestSelectedList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 79
    :cond_0
    return-void
.end method
