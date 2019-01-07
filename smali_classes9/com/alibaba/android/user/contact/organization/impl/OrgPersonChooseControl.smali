.class public Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;
.super Ljava/lang/Object;
.source "OrgPersonChooseControl.java"

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
.field private mActivityContext:Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity;

.field private mCallback:Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$ContactChooseCallback;

.field private mChooseListener:Lfio;

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

.field private mLimit:I

.field private mLimitTips:Ljava/lang/String;

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
.method public constructor <init>(Lfio;)V
    .locals 1
    .param p1, "chooseListener"    # Lfio;

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;->mChooseMap:Ljava/util/Map;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;->mDisChooseList:Ljava/util/List;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;->mUserList:Ljava/util/ArrayList;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;->mRequestSelectedList:Ljava/util/List;

    .line 52
    const/4 v0, -0x1

    iput v0, p0, Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;->mLimit:I

    .line 58
    iput-object p1, p0, Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;->mChooseListener:Lfio;

    .line 59
    return-void
.end method


# virtual methods
.method public addChooseObject(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)Z
    .locals 8
    .param p1, "userIdentityObject"    # Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 107
    iget v1, p0, Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;->mLimit:I

    if-lez v1, :cond_3

    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;->mChooseMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    iget v4, p0, Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;->mLimit:I

    if-ge v1, v4, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;->mUserList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v4, p0, Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;->mLimit:I

    if-lt v1, v4, :cond_3

    .line 108
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;->mLimitTips:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    sget v4, Lezg$l;->choose_limit:I

    new-array v3, v3, [Ljava/lang/Object;

    iget v5, p0, Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;->mLimit:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v2

    invoke-virtual {v1, v4, v3}, Landroid/app/Application;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-static {v1}, Lcms;->a(Ljava/lang/String;)V

    .line 110
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;->mCallback:Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$ContactChooseCallback;

    if-eqz v1, :cond_1

    .line 111
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;->mCallback:Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$ContactChooseCallback;

    iget v3, p0, Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;->mLimit:I

    iget-object v4, p0, Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;->mChooseMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    invoke-interface {v1, v3, v4}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$ContactChooseCallback;->onSelectedCountExceedsLimit(II)V

    :cond_1
    move v1, v2

    .line 133
    :goto_1
    return v1

    .line 108
    :cond_2
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;->mLimitTips:Ljava/lang/String;

    goto :goto_0

    .line 115
    :cond_3
    invoke-virtual {p0, p1}, Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;->isHasSelected(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p0, p1}, Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;->isRequestSelect(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 116
    invoke-virtual {p0, p1}, Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;->isDisable(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_4
    move v1, v3

    .line 117
    goto :goto_1

    .line 119
    :cond_5
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;->mActivityContext:Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;->mActivityContext:Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity;

    instance-of v1, v1, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;

    if-eqz v1, :cond_6

    .line 120
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;->mActivityContext:Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity;

    check-cast v1, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;

    invoke-virtual {v1}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->n()Ljava/util/ArrayList;

    move-result-object v0

    .line 122
    .local v0, "nodePathList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    iput-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->masterDeptNodeList:Ljava/util/ArrayList;

    .line 125
    .end local v0    # "nodePathList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    :cond_6
    iget-wide v4, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-eqz v1, :cond_8

    .line 126
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;->mChooseMap:Ljava/util/Map;

    iget-wide v4, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v1, v4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    :goto_2
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;->mChooseListener:Lfio;

    if-eqz v1, :cond_7

    .line 131
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;->mChooseListener:Lfio;

    invoke-interface {v1, v2}, Lfio;->b(Z)V

    :cond_7
    move v1, v3

    .line 133
    goto :goto_1

    .line 128
    :cond_8
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;->mUserList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method public bridge synthetic addChooseObject(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 40
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    invoke-virtual {p0, p1}, Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;->addChooseObject(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)Z

    move-result v0

    return v0
.end method

.method public addChooseObject(Ljava/util/List;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;)Z"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .local p1, "objects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 138
    if-eqz p1, :cond_9

    .line 139
    iget v2, p0, Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;->mLimit:I

    if-lez v2, :cond_3

    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;->mChooseMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    add-int/2addr v2, v5

    iget v5, p0, Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;->mLimit:I

    if-gt v2, v5, :cond_0

    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;->mUserList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    add-int/2addr v2, v5

    iget v5, p0, Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;->mLimit:I

    if-le v2, v5, :cond_3

    .line 140
    :cond_0
    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;->mLimitTips:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    sget v5, Lezg$l;->choose_limit:I

    new-array v4, v4, [Ljava/lang/Object;

    iget v6, p0, Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;->mLimit:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v3

    invoke-virtual {v2, v5, v4}, Landroid/app/Application;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-static {v2}, Lcms;->a(Ljava/lang/String;)V

    .line 142
    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;->mCallback:Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$ContactChooseCallback;

    if-eqz v2, :cond_1

    .line 143
    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;->mCallback:Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$ContactChooseCallback;

    iget v4, p0, Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;->mLimit:I

    iget-object v5, p0, Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;->mChooseMap:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    invoke-interface {v2, v4, v5}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$ContactChooseCallback;->onSelectedCountExceedsLimit(II)V

    :cond_1
    move v2, v3

    .line 173
    :goto_1
    return v2

    .line 140
    :cond_2
    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;->mLimitTips:Ljava/lang/String;

    goto :goto_0

    .line 148
    :cond_3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 149
    .local v1, "object":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    if-eqz v1, :cond_4

    .line 152
    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;->isHasSelected(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;->isRequestSelect(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;->isDisable(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 156
    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;->mActivityContext:Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;->mActivityContext:Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity;

    instance-of v2, v2, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;

    if-eqz v2, :cond_5

    .line 157
    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;->mActivityContext:Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity;

    check-cast v2, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;

    invoke-virtual {v2}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->n()Ljava/util/ArrayList;

    move-result-object v0

    .line 159
    .local v0, "nodePathList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    iput-object v0, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->masterDeptNodeList:Ljava/util/ArrayList;

    .line 163
    .end local v0    # "nodePathList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    :cond_5
    iget-wide v6, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    const-wide/16 v8, 0x0

    cmp-long v2, v6, v8

    if-eqz v2, :cond_6

    .line 164
    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;->mChooseMap:Ljava/util/Map;

    iget-wide v6, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v2, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 166
    :cond_6
    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;->mUserList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 168
    .end local v1    # "object":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    :cond_7
    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;->mChooseListener:Lfio;

    if-eqz v2, :cond_8

    .line 169
    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;->mChooseListener:Lfio;

    invoke-interface {v2, v3}, Lfio;->b(Z)V

    :cond_8
    move v2, v4

    .line 171
    goto :goto_1

    :cond_9
    move v2, v3

    .line 173
    goto :goto_1
.end method

.method public addDisChooseList(Ljava/util/ArrayList;)V
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
    .line 92
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;->mDisChooseList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 95
    :cond_0
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 346
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;->mChooseMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 347
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;->mUserList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 348
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

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 218
    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;->mChooseMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    .line 220
    .local v0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    instance-of v2, v0, Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 221
    check-cast v1, Ljava/util/ArrayList;

    .line 225
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    :goto_0
    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;->mUserList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 226
    return-object v1

    .line 223
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

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 236
    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;->mChooseMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    .line 238
    .local v0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    instance-of v2, v0, Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 239
    check-cast v1, Ljava/util/ArrayList;

    .line 243
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    :goto_0
    return-object v1

    .line 241
    .end local v1    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .restart local v1    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    goto :goto_0
.end method

.method public getChooseResultIds()[J
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 258
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;->getChooseResultHaveId()Ljava/util/ArrayList;

    move-result-object v1

    .line 259
    .local v1, "mChoosedList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    new-array v2, v3, [J

    .line 260
    .local v2, "uids":[J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 261
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-wide v4, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    aput-wide v4, v2, v0

    .line 260
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 263
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
    .line 231
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;->mUserList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getChosenCount(Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;)I
    .locals 12
    .param p1, "orgDeptObject"    # Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 366
    const/4 v1, 0x0

    .line 367
    .local v1, "count":I
    iget-object v5, p0, Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;->mChooseMap:Ljava/util/Map;

    if-eqz v5, :cond_0

    if-nez p1, :cond_1

    .line 368
    :cond_0
    const/4 v5, 0x0

    .line 388
    :goto_0
    return v5

    .line 370
    :cond_1
    iget-object v5, p0, Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;->mChooseMap:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 371
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 372
    .local v0, "choosedUser":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    if-eqz v0, :cond_2

    iget-object v6, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->masterDeptNodeList:Ljava/util/ArrayList;

    if-eqz v6, :cond_2

    iget-object v6, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->masterDeptNodeList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    .line 375
    iget-object v6, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->masterDeptNodeList:Ljava/util/ArrayList;

    iget-object v7, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->masterDeptNodeList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    .line 376
    .local v4, "userDeptNode":Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;
    if-eqz v4, :cond_2

    .line 377
    iget-wide v6, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->orgId:J

    iget-wide v8, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->orgId:J

    cmp-long v6, v6, v8

    if-nez v6, :cond_2

    .line 381
    iget-object v6, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->masterDeptNodeList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    .line 382
    .local v2, "deptNode":Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;
    if-eqz v2, :cond_3

    iget-wide v8, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->deptId:J

    iget-wide v10, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->deptId:J

    cmp-long v7, v8, v10

    if-nez v7, :cond_3

    .line 383
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v0    # "choosedUser":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    .end local v2    # "deptNode":Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    .end local v4    # "userDeptNode":Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;
    :cond_4
    move v5, v1

    .line 388
    goto :goto_0
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
    .line 248
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;->mDisChooseList:Ljava/util/List;

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
    .line 253
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;->mRequestSelectedList:Ljava/util/List;

    return-object v0
.end method

.method public isDisable(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)Z
    .locals 6
    .param p1, "userIdentityObject"    # Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 268
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;->mDisChooseList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    if-eqz p1, :cond_2

    .line 269
    iget-wide v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    .line 270
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;->mDisChooseList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 271
    .local v0, "userObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    iget-wide v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 272
    const/4 v1, 0x1

    .line 279
    .end local v0    # "userObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    :goto_0
    return v1

    .line 276
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;->mDisChooseList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    .line 279
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public bridge synthetic isDisable(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 40
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    invoke-virtual {p0, p1}, Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;->isDisable(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)Z

    move-result v0

    return v0
.end method

.method public isHasSelected(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)Z
    .locals 4
    .param p1, "userIdentityObject"    # Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 284
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;->mChooseMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;->mUserList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_0
    if-eqz p1, :cond_3

    .line 285
    iget-wide v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 286
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;->mChooseMap:Ljava/util/Map;

    iget-wide v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 288
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;->mChooseMap:Ljava/util/Map;

    iget-wide v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->source:I

    if-nez v0, :cond_1

    .line 289
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;->mChooseMap:Ljava/util/Map;

    iget-wide v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->masterDeptNodeList:Ljava/util/ArrayList;

    iput-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->masterDeptNodeList:Ljava/util/ArrayList;

    .line 290
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;->mChooseMap:Ljava/util/Map;

    iget-wide v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    :cond_1
    const/4 v0, 0x1

    .line 298
    :goto_0
    return v0

    .line 295
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;->mUserList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 298
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic isHasSelected(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 40
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    invoke-virtual {p0, p1}, Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;->isHasSelected(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)Z

    move-result v0

    return v0
.end method

.method public isRequestSelect(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)Z
    .locals 6
    .param p1, "userIdentityObject"    # Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 303
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;->mRequestSelectedList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    if-eqz p1, :cond_2

    .line 304
    iget-wide v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    .line 305
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;->mRequestSelectedList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 306
    .local v0, "userObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    iget-wide v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 307
    const/4 v1, 0x1

    .line 314
    .end local v0    # "userObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    :goto_0
    return v1

    .line 311
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;->mRequestSelectedList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    .line 314
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public bridge synthetic isRequestSelect(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 40
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    invoke-virtual {p0, p1}, Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;->isRequestSelect(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized onSingleChoose(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)Z
    .locals 7
    .param p1, "userIdentityObject"    # Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 319
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;->isRequestSelect(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;->isDisable(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    .line 341
    :cond_0
    :goto_0
    monitor-exit p0

    return v6

    .line 323
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;->clear()V

    .line 325
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;->mActivityContext:Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;->mActivityContext:Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity;

    instance-of v1, v1, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;

    if-eqz v1, :cond_2

    .line 326
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;->mActivityContext:Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity;

    check-cast v1, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;

    invoke-virtual {v1}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->n()Ljava/util/ArrayList;

    move-result-object v0

    .line 328
    .local v0, "nodePathList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    iput-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->masterDeptNodeList:Ljava/util/ArrayList;

    .line 331
    .end local v0    # "nodePathList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    :cond_2
    iget-wide v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_3

    .line 332
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;->mChooseMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 333
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;->mChooseMap:Ljava/util/Map;

    iget-wide v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    :goto_1
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;->mChooseListener:Lfio;

    if-eqz v1, :cond_0

    .line 339
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;->mChooseListener:Lfio;

    invoke-interface {v1, p1}, Lfio;->a(Ljava/io/Serializable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 319
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 335
    :cond_3
    :try_start_2
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;->mUserList:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public bridge synthetic onSingleChoose(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 40
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    invoke-virtual {p0, p1}, Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;->onSingleChoose(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)Z

    move-result v0

    return v0
.end method

.method public removeChooseObject(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)Z
    .locals 6
    .param p1, "userIdentityObject"    # Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v0, 0x1

    .line 178
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;->mChooseMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-gtz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;->mUserList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    :cond_0
    if-eqz p1, :cond_3

    .line 179
    iget-wide v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_2

    .line 180
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;->mChooseMap:Ljava/util/Map;

    iget-wide v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    :goto_0
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;->mChooseListener:Lfio;

    if-eqz v1, :cond_1

    .line 185
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;->mChooseListener:Lfio;

    invoke-interface {v1, v0}, Lfio;->b(Z)V

    .line 189
    :cond_1
    :goto_1
    return v0

    .line 182
    :cond_2
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;->mUserList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 189
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public bridge synthetic removeChooseObject(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 40
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    invoke-virtual {p0, p1}, Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;->removeChooseObject(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)Z

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
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;)Z"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .local p1, "objects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    const/4 v1, 0x1

    .line 194
    if-eqz p1, :cond_4

    .line 195
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 196
    .local v0, "object":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    if-eqz v0, :cond_0

    .line 199
    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;->isRequestSelect(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 202
    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-eqz v3, :cond_1

    .line 203
    iget-object v3, p0, Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;->mChooseMap:Ljava/util/Map;

    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 205
    :cond_1
    iget-object v3, p0, Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;->mUserList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 208
    .end local v0    # "object":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    :cond_2
    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;->mChooseListener:Lfio;

    if-eqz v2, :cond_3

    .line 209
    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;->mChooseListener:Lfio;

    invoke-interface {v2, v1}, Lfio;->b(Z)V

    .line 213
    :cond_3
    :goto_1
    return v1

    :cond_4
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public setActivityContext(Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity;)V
    .locals 0
    .param p1, "activityContext"    # Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;->mActivityContext:Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity;

    .line 63
    return-void
.end method

.method public setChooseCallback(Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$ContactChooseCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$ContactChooseCallback;

    .prologue
    .line 362
    iput-object p1, p0, Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;->mCallback:Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$ContactChooseCallback;

    .line 363
    return-void
.end method

.method public setChooseLimit(I)V
    .locals 0
    .param p1, "limit"    # I

    .prologue
    .line 351
    if-gez p1, :cond_0

    .line 352
    const/4 p1, 0x0

    .line 354
    :cond_0
    iput p1, p0, Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;->mLimit:I

    .line 355
    return-void
.end method

.method public setChooseLimitTips(Ljava/lang/String;)V
    .locals 0
    .param p1, "tips"    # Ljava/lang/String;

    .prologue
    .line 358
    iput-object p1, p0, Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;->mLimitTips:Ljava/lang/String;

    .line 359
    return-void
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

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 67
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;->mChooseMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 68
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;->mUserList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 69
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 70
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

    .line 71
    .local v0, "userIdentityObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    if-eqz v0, :cond_0

    .line 74
    iget-wide v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    .line 75
    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;->mChooseMap:Ljava/util/Map;

    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 77
    :cond_1
    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;->mUserList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 81
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
    .line 85
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;->mDisChooseList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 86
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;->mDisChooseList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 89
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
    .line 99
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;->mRequestSelectedList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 100
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;->mRequestSelectedList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 103
    :cond_0
    return-void
.end method
