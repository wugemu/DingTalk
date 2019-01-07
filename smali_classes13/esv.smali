.class public final Lesv;
.super Ljava/lang/Object;
.source "DataHelper.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;ILcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;)Lcom/alibaba/android/dingtalk/search/base/model/ContactSearchResultModel;
    .locals 12
    .param p0, "keyword"    # Ljava/lang/String;
    .param p1, "offset"    # I
    .param p2, "orgNodeItemWrapperObject"    # Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 108
    if-eqz p2, :cond_0

    iget-object v7, p2, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;->orgNodeItemObjectList:Ljava/util/List;

    if-eqz v7, :cond_0

    iget-object v7, p2, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;->orgNodeItemObjectList:Ljava/util/List;

    .line 109
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-gtz v7, :cond_1

    .line 110
    :cond_0
    const/4 v4, 0x0

    .line 172
    :goto_0
    return-object v4

    .line 113
    :cond_1
    new-instance v4, Lcom/alibaba/android/dingtalk/search/base/model/ContactSearchResultModel;

    invoke-direct {v4}, Lcom/alibaba/android/dingtalk/search/base/model/ContactSearchResultModel;-><init>()V

    .line 1043
    .local v4, "result":Lcom/alibaba/android/dingtalk/search/base/model/ContactSearchResultModel;
    iput-object p0, v4, Lcom/alibaba/android/dingtalk/search/base/model/ContactSearchResultModel;->d:Ljava/lang/String;

    .line 1059
    iput p1, v4, Lcom/alibaba/android/dingtalk/search/base/model/ContactSearchResultModel;->b:I

    .line 117
    if-eqz p2, :cond_8

    iget-boolean v7, p2, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;->hasMore:Z

    if-eqz v7, :cond_8

    move v7, v8

    .line 1067
    :goto_1
    iput-boolean v7, v4, Lcom/alibaba/android/dingtalk/search/base/model/ContactSearchResultModel;->c:Z

    .line 118
    sget-object v7, Lcom/alibaba/android/dingtalk/search/base/model/ContactSearchResultModel$ContactSource;->OrgContact:Lcom/alibaba/android/dingtalk/search/base/model/ContactSearchResultModel$ContactSource;

    .line 1075
    iput-object v7, v4, Lcom/alibaba/android/dingtalk/search/base/model/ContactSearchResultModel;->e:Lcom/alibaba/android/dingtalk/search/base/model/ContactSearchResultModel$ContactSource;

    .line 120
    iget-object v3, p2, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;->orgNodeItemObjectList:Ljava/util/List;

    .line 121
    .local v3, "orgNodeItemObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    invoke-direct {v5, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 122
    .local v5, "userList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_d

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    .line 123
    .local v2, "item":Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;
    if-eqz v2, :cond_2

    iget-object v10, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->nodeType:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;

    sget-object v11, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;->EMPLOYEE:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;

    if-ne v10, v11, :cond_2

    .line 127
    iget-object v10, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->employeeObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    if-nez v10, :cond_9

    move v0, v8

    .line 128
    .local v0, "isEmployeeEmpty":Z
    :goto_3
    iget-object v10, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    if-nez v10, :cond_a

    move v1, v8

    .line 131
    .local v1, "isProfileEmpty":Z
    :goto_4
    if-eqz v0, :cond_3

    if-nez v1, :cond_2

    .line 135
    :cond_3
    new-instance v6, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    invoke-direct {v6}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;-><init>()V

    .line 136
    .local v6, "userObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    if-nez v1, :cond_4

    .line 138
    iget-object v10, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-object v10, v10, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    iput-object v10, v6, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->nick:Ljava/lang/String;

    .line 139
    iget-object v10, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-wide v10, v10, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    iput-wide v10, v6, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    .line 140
    iget-object v10, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-object v10, v10, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->avatarMediaId:Ljava/lang/String;

    iput-object v10, v6, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mediaId:Ljava/lang/String;

    .line 141
    iget-object v10, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-object v10, v10, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->email:Ljava/lang/String;

    iput-object v10, v6, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->email:Ljava/lang/String;

    .line 144
    :cond_4
    if-nez v0, :cond_7

    .line 146
    iget-object v10, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->employeeObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    iget-object v10, v10, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgUserName:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_5

    .line 147
    iget-object v10, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->employeeObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    iget-object v10, v10, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgUserName:Ljava/lang/String;

    iput-object v10, v6, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->orgUserName:Ljava/lang/String;

    .line 149
    :cond_5
    iget-object v10, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->employeeObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    iget-object v10, v10, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->companyName:Ljava/lang/String;

    iput-object v10, v6, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->company:Ljava/lang/String;

    .line 150
    iget-object v10, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->employeeObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    iget-object v10, v10, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgTitle:Ljava/lang/String;

    iput-object v10, v6, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->title:Ljava/lang/String;

    .line 152
    iget-object v10, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->employeeObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    iget-object v10, v10, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgAuthEmail:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_b

    .line 153
    iget-object v10, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->employeeObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    iget-object v10, v10, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgAuthEmail:Ljava/lang/String;

    iput-object v10, v6, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->orgMail:Ljava/lang/String;

    .line 160
    :cond_6
    :goto_5
    if-eqz v1, :cond_7

    .line 162
    iget-object v10, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->employeeObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    iget-object v10, v10, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgNickName:Ljava/lang/String;

    iput-object v10, v6, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->nick:Ljava/lang/String;

    .line 163
    iget-object v10, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->employeeObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    iget-wide v10, v10, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->uid:J

    iput-wide v10, v6, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    .line 164
    iget-object v10, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->employeeObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    iget-object v10, v10, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgAvatarMediaId:Ljava/lang/String;

    iput-object v10, v6, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mediaId:Ljava/lang/String;

    .line 168
    :cond_7
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .end local v0    # "isEmployeeEmpty":Z
    .end local v1    # "isProfileEmpty":Z
    .end local v2    # "item":Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;
    .end local v3    # "orgNodeItemObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;>;"
    .end local v5    # "userList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    .end local v6    # "userObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    :cond_8
    move v7, v9

    .line 117
    goto/16 :goto_1

    .restart local v2    # "item":Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;
    .restart local v3    # "orgNodeItemObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;>;"
    .restart local v5    # "userList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    :cond_9
    move v0, v9

    .line 127
    goto :goto_3

    .restart local v0    # "isEmployeeEmpty":Z
    :cond_a
    move v1, v9

    .line 128
    goto :goto_4

    .line 154
    .restart local v1    # "isProfileEmpty":Z
    .restart local v6    # "userObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    :cond_b
    iget-object v10, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->employeeObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    iget-object v10, v10, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgEmail:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_c

    .line 155
    iget-object v10, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->employeeObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    iget-object v10, v10, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgEmail:Ljava/lang/String;

    iput-object v10, v6, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->orgMail:Ljava/lang/String;

    goto :goto_5

    .line 156
    :cond_c
    if-nez v1, :cond_6

    .line 157
    iget-object v10, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-object v10, v10, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->orgEmail:Ljava/lang/String;

    iput-object v10, v6, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->orgMail:Ljava/lang/String;

    goto :goto_5

    .line 2051
    .end local v0    # "isEmployeeEmpty":Z
    .end local v1    # "isProfileEmpty":Z
    .end local v2    # "item":Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;
    .end local v6    # "userObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    :cond_d
    iput-object v5, v4, Lcom/alibaba/android/dingtalk/search/base/model/ContactSearchResultModel;->a:Ljava/util/List;

    goto/16 :goto_0
.end method
