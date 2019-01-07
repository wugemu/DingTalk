.class public Lcom/alibaba/android/dingtalkim/impls/MsgForwardContactChooseControl;
.super Ljava/lang/Object;
.source "MsgForwardContactChooseControl.java"

# interfaces
.implements Lcom/alibaba/android/dingtalk/userbase/IChooseControl;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/android/dingtalk/userbase/IChooseControl",
        "<",
        "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
        ">;"
    }
.end annotation


# instance fields
.field private mChooseListener:Lccp;

.field private mChooseMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;"
        }
    .end annotation
.end field

.field private mDisChooseList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;"
        }
    .end annotation
.end field

.field private mRequestSelectedList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;"
        }
    .end annotation
.end field

.field private mUserList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lccp;)V
    .locals 1
    .param p1, "chooseListener"    # Lccp;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/impls/MsgForwardContactChooseControl;->mChooseMap:Ljava/util/Map;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/impls/MsgForwardContactChooseControl;->mDisChooseList:Ljava/util/List;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/impls/MsgForwardContactChooseControl;->mUserList:Ljava/util/ArrayList;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/impls/MsgForwardContactChooseControl;->mRequestSelectedList:Ljava/util/List;

    .line 44
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/impls/MsgForwardContactChooseControl;->mChooseListener:Lccp;

    .line 45
    return-void
.end method


# virtual methods
.method public addChooseObject(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)Z
    .locals 5
    .param p1, "userIdentityObject"    # Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v4, 0x1

    .line 83
    invoke-virtual {p0, p1}, Lcom/alibaba/android/dingtalkim/impls/MsgForwardContactChooseControl;->isHasSelected(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/alibaba/android/dingtalkim/impls/MsgForwardContactChooseControl;->isRequestSelect(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 84
    invoke-virtual {p0, p1}, Lcom/alibaba/android/dingtalkim/impls/MsgForwardContactChooseControl;->isDisable(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 95
    :cond_0
    :goto_0
    return v4

    .line 87
    :cond_1
    iget-wide v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 88
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/impls/MsgForwardContactChooseControl;->mChooseMap:Ljava/util/Map;

    iget-wide v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    :goto_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/impls/MsgForwardContactChooseControl;->mChooseListener:Lccp;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/impls/MsgForwardContactChooseControl;->mChooseListener:Lccp;

    invoke-interface {v0}, Lccp;->a()V

    goto :goto_0

    .line 90
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/impls/MsgForwardContactChooseControl;->mUserList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public bridge synthetic addChooseObject(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 31
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    invoke-virtual {p0, p1}, Lcom/alibaba/android/dingtalkim/impls/MsgForwardContactChooseControl;->addChooseObject(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)Z

    move-result v0

    return v0
.end method

.method public addChooseObject(Ljava/util/List;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;)Z"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 100
    .local p1, "objects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    if-eqz p1, :cond_4

    .line 101
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 102
    .local v0, "object":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    if-eqz v0, :cond_0

    .line 105
    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/impls/MsgForwardContactChooseControl;->isHasSelected(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/impls/MsgForwardContactChooseControl;->isRequestSelect(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/impls/MsgForwardContactChooseControl;->isDisable(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 108
    iget-wide v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    .line 109
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/impls/MsgForwardContactChooseControl;->mChooseMap:Ljava/util/Map;

    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 111
    :cond_1
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/impls/MsgForwardContactChooseControl;->mUserList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 114
    .end local v0    # "object":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    :cond_2
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/impls/MsgForwardContactChooseControl;->mChooseListener:Lccp;

    if-eqz v1, :cond_3

    .line 115
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/impls/MsgForwardContactChooseControl;->mChooseListener:Lccp;

    invoke-interface {v1}, Lccp;->a()V

    .line 117
    :cond_3
    const/4 v1, 0x1

    .line 119
    :goto_1
    return v1

    :cond_4
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/impls/MsgForwardContactChooseControl;->mChooseMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 285
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/impls/MsgForwardContactChooseControl;->mUserList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 286
    return-void
.end method

.method public getChooseResult()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 164
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/impls/MsgForwardContactChooseControl;->mChooseMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    .line 166
    .local v0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    instance-of v2, v0, Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 167
    check-cast v1, Ljava/util/ArrayList;

    .line 171
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    :goto_0
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/impls/MsgForwardContactChooseControl;->mUserList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 172
    return-object v1

    .line 169
    .end local v1    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .restart local v1    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    goto :goto_0
.end method

.method public getChooseResultHaveId()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 182
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/impls/MsgForwardContactChooseControl;->mChooseMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    .line 184
    .local v0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    instance-of v2, v0, Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 185
    check-cast v1, Ljava/util/ArrayList;

    .line 189
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    :goto_0
    return-object v1

    .line 187
    .end local v1    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .restart local v1    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    goto :goto_0
.end method

.method public getChooseResultIds()[J
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 204
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/impls/MsgForwardContactChooseControl;->getChooseResultHaveId()Ljava/util/ArrayList;

    move-result-object v1

    .line 205
    .local v1, "mChoosedList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    new-array v2, v3, [J

    .line 206
    .local v2, "uids":[J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 207
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-wide v4, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    aput-wide v4, v2, v0

    .line 206
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 209
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
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 177
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/impls/MsgForwardContactChooseControl;->mUserList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getDisableSelectResult()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 194
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/impls/MsgForwardContactChooseControl;->mDisChooseList:Ljava/util/List;

    return-object v0
.end method

.method public getRequestSelectResult()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 199
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/impls/MsgForwardContactChooseControl;->mRequestSelectedList:Ljava/util/List;

    return-object v0
.end method

.method public isDisable(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)Z
    .locals 6
    .param p1, "userIdentityObject"    # Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 214
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/impls/MsgForwardContactChooseControl;->mDisChooseList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    if-eqz p1, :cond_2

    .line 215
    iget-wide v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    .line 216
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/impls/MsgForwardContactChooseControl;->mDisChooseList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 217
    .local v0, "userObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    iget-wide v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 218
    const/4 v1, 0x1

    .line 225
    .end local v0    # "userObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    :goto_0
    return v1

    .line 222
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/impls/MsgForwardContactChooseControl;->mDisChooseList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    .line 225
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public bridge synthetic isDisable(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 31
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    invoke-virtual {p0, p1}, Lcom/alibaba/android/dingtalkim/impls/MsgForwardContactChooseControl;->isDisable(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)Z

    move-result v0

    return v0
.end method

.method public isHasSelected(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)Z
    .locals 4
    .param p1, "userIdentityObject"    # Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 230
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/impls/MsgForwardContactChooseControl;->mChooseMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/impls/MsgForwardContactChooseControl;->mUserList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_0
    if-eqz p1, :cond_3

    .line 231
    iget-wide v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 232
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/impls/MsgForwardContactChooseControl;->mChooseMap:Ljava/util/Map;

    iget-wide v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 234
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/impls/MsgForwardContactChooseControl;->mChooseMap:Ljava/util/Map;

    iget-wide v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->source:I

    if-nez v0, :cond_1

    .line 235
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/impls/MsgForwardContactChooseControl;->mChooseMap:Ljava/util/Map;

    iget-wide v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    :cond_1
    const/4 v0, 0x1

    .line 243
    :goto_0
    return v0

    .line 240
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/impls/MsgForwardContactChooseControl;->mUserList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 243
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic isHasSelected(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 31
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    invoke-virtual {p0, p1}, Lcom/alibaba/android/dingtalkim/impls/MsgForwardContactChooseControl;->isHasSelected(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)Z

    move-result v0

    return v0
.end method

.method public isRequestSelect(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)Z
    .locals 6
    .param p1, "userIdentityObject"    # Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 248
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/impls/MsgForwardContactChooseControl;->mRequestSelectedList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    if-eqz p1, :cond_2

    .line 249
    iget-wide v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    .line 250
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/impls/MsgForwardContactChooseControl;->mRequestSelectedList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 251
    .local v0, "userObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    iget-wide v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 252
    const/4 v1, 0x1

    .line 259
    .end local v0    # "userObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    :goto_0
    return v1

    .line 256
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/impls/MsgForwardContactChooseControl;->mRequestSelectedList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    .line 259
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public bridge synthetic isRequestSelect(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 31
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    invoke-virtual {p0, p1}, Lcom/alibaba/android/dingtalkim/impls/MsgForwardContactChooseControl;->isRequestSelect(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized onSingleChoose(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)Z
    .locals 5
    .param p1, "userIdentityObject"    # Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 264
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/alibaba/android/dingtalkim/impls/MsgForwardContactChooseControl;->isRequestSelect(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/alibaba/android/dingtalkim/impls/MsgForwardContactChooseControl;->isDisable(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 279
    :cond_0
    :goto_0
    monitor-exit p0

    return v4

    .line 268
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/impls/MsgForwardContactChooseControl;->clear()V

    .line 269
    iget-wide v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 270
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/impls/MsgForwardContactChooseControl;->mChooseMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 271
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/impls/MsgForwardContactChooseControl;->mChooseMap:Ljava/util/Map;

    iget-wide v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    :goto_1
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/impls/MsgForwardContactChooseControl;->mChooseListener:Lccp;

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/impls/MsgForwardContactChooseControl;->mChooseListener:Lccp;

    invoke-interface {v0, p1}, Lccp;->a(Ljava/io/Serializable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 264
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 273
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/impls/MsgForwardContactChooseControl;->mUserList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public bridge synthetic onSingleChoose(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 31
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    invoke-virtual {p0, p1}, Lcom/alibaba/android/dingtalkim/impls/MsgForwardContactChooseControl;->onSingleChoose(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)Z

    move-result v0

    return v0
.end method

.method public removeChooseObject(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)Z
    .locals 4
    .param p1, "userIdentityObject"    # Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 124
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/impls/MsgForwardContactChooseControl;->mChooseMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/impls/MsgForwardContactChooseControl;->mUserList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_0
    if-eqz p1, :cond_3

    .line 125
    iget-wide v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 126
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/impls/MsgForwardContactChooseControl;->mChooseMap:Ljava/util/Map;

    iget-wide v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    :goto_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/impls/MsgForwardContactChooseControl;->mChooseListener:Lccp;

    if-eqz v0, :cond_1

    .line 131
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/impls/MsgForwardContactChooseControl;->mChooseListener:Lccp;

    invoke-interface {v0}, Lccp;->a()V

    .line 133
    :cond_1
    const/4 v0, 0x1

    .line 135
    :goto_1
    return v0

    .line 128
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/impls/MsgForwardContactChooseControl;->mUserList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 135
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public bridge synthetic removeChooseObject(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 31
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    invoke-virtual {p0, p1}, Lcom/alibaba/android/dingtalkim/impls/MsgForwardContactChooseControl;->removeChooseObject(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)Z

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
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;)Z"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 140
    .local p1, "objects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    if-eqz p1, :cond_4

    .line 141
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 142
    .local v0, "object":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    if-eqz v0, :cond_0

    .line 145
    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/impls/MsgForwardContactChooseControl;->isRequestSelect(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 148
    iget-wide v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    .line 149
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/impls/MsgForwardContactChooseControl;->mChooseMap:Ljava/util/Map;

    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 151
    :cond_1
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/impls/MsgForwardContactChooseControl;->mUserList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 154
    .end local v0    # "object":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    :cond_2
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/impls/MsgForwardContactChooseControl;->mChooseListener:Lccp;

    if-eqz v1, :cond_3

    .line 155
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/impls/MsgForwardContactChooseControl;->mChooseListener:Lccp;

    invoke-interface {v1}, Lccp;->a()V

    .line 157
    :cond_3
    const/4 v1, 0x1

    .line 159
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
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 49
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/impls/MsgForwardContactChooseControl;->mChooseMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 50
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/impls/MsgForwardContactChooseControl;->mUserList:Ljava/util/ArrayList;

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

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 53
    .local v0, "userIdentityObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    if-eqz v0, :cond_0

    .line 56
    iget-wide v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    .line 57
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/impls/MsgForwardContactChooseControl;->mChooseMap:Ljava/util/Map;

    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 59
    :cond_1
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/impls/MsgForwardContactChooseControl;->mUserList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 63
    .end local v0    # "userIdentityObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
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
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 67
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/impls/MsgForwardContactChooseControl;->mDisChooseList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 68
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/impls/MsgForwardContactChooseControl;->mDisChooseList:Ljava/util/List;

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
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 75
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/impls/MsgForwardContactChooseControl;->mRequestSelectedList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 76
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/impls/MsgForwardContactChooseControl;->mRequestSelectedList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 79
    :cond_0
    return-void
.end method
