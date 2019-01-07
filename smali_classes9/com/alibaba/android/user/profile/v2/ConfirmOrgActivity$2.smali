.class final Lcom/alibaba/android/user/profile/v2/ConfirmOrgActivity$2;
.super Ljava/lang/Object;
.source "ConfirmOrgActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/profile/v2/ConfirmOrgActivity;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/profile/v2/ConfirmOrgActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/profile/v2/ConfirmOrgActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/profile/v2/ConfirmOrgActivity;

    .prologue
    .line 147
    iput-object p1, p0, Lcom/alibaba/android/user/profile/v2/ConfirmOrgActivity$2;->a:Lcom/alibaba/android/user/profile/v2/ConfirmOrgActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 150
    const/4 v0, 0x0

    .line 151
    .local v0, "needUpdateOrgEmplyee":Z
    iget-object v6, p0, Lcom/alibaba/android/user/profile/v2/ConfirmOrgActivity$2;->a:Lcom/alibaba/android/user/profile/v2/ConfirmOrgActivity;

    invoke-static {v6}, Lcom/alibaba/android/user/profile/v2/ConfirmOrgActivity;->b(Lcom/alibaba/android/user/profile/v2/ConfirmOrgActivity;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v6

    iget-object v6, v6, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .line 152
    .local v1, "orgEmployeeExtensionObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    if-eqz v1, :cond_0

    .line 155
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 158
    .local v2, "orgInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;>;"
    iget-wide v8, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    iget-wide v10, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->uid:J

    invoke-static {v8, v9, v10, v11}, Lfbm;->a(JJ)Lfrw;

    move-result-object v3

    .line 160
    .local v3, "orgUserNameObject":Lfrw;
    if-eqz v3, :cond_1

    iget-object v7, v3, Lfrw;->c:Ljava/lang/String;

    if-eqz v7, :cond_1

    iget-object v7, v3, Lfrw;->c:Ljava/lang/String;

    iget-object v8, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgUserName:Ljava/lang/String;

    .line 161
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 162
    iget-object v7, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgUserName:Ljava/lang/String;

    iput-object v7, v3, Lfrw;->c:Ljava/lang/String;

    .line 163
    const/4 v0, 0x1

    .line 166
    :cond_1
    iget-object v7, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgUserName:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 167
    new-instance v5, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;

    sget-object v7, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;->MyConfirmOrgInfo:Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;

    invoke-direct {v5, v7}, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;-><init>(Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;)V

    .line 168
    .local v5, "userInfoItemObject":Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;
    iget-object v7, p0, Lcom/alibaba/android/user/profile/v2/ConfirmOrgActivity$2;->a:Lcom/alibaba/android/user/profile/v2/ConfirmOrgActivity;

    sget v8, Lezg$l;->user_profile_name:I

    invoke-virtual {v7, v8}, Lcom/alibaba/android/user/profile/v2/ConfirmOrgActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mTip:Ljava/lang/String;

    .line 169
    invoke-static {v1}, Lfvj;->a(Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mContent:Ljava/lang/String;

    .line 170
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    .end local v5    # "userInfoItemObject":Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;
    :cond_2
    iget-object v7, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgUserMobile:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 174
    new-instance v4, Lcom/alibaba/doraemon/performance/DDStringBuilder;

    invoke-direct {v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;-><init>()V

    .line 175
    .local v4, "stringBuilder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    iget-object v7, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->stateCode:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 176
    const-string/jumbo v7, "+"

    invoke-virtual {v4, v7}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v7

    iget-object v8, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->stateCode:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v7

    const-string/jumbo v8, "-"

    invoke-virtual {v7, v8}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 178
    :cond_3
    iget-object v7, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgUserMobile:Ljava/lang/String;

    invoke-virtual {v4, v7}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 179
    new-instance v5, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;

    sget-object v7, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;->MyConfirmOrgInfo:Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;

    invoke-direct {v5, v7}, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;-><init>(Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;)V

    .line 180
    .restart local v5    # "userInfoItemObject":Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;
    iget-object v7, p0, Lcom/alibaba/android/user/profile/v2/ConfirmOrgActivity$2;->a:Lcom/alibaba/android/user/profile/v2/ConfirmOrgActivity;

    sget v8, Lezg$l;->and_login_confirm_phone:I

    invoke-virtual {v7, v8}, Lcom/alibaba/android/user/profile/v2/ConfirmOrgActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mTip:Ljava/lang/String;

    .line 181
    invoke-virtual {v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mContent:Ljava/lang/String;

    .line 182
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    .end local v4    # "stringBuilder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    .end local v5    # "userInfoItemObject":Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;
    :cond_4
    new-instance v5, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;

    sget-object v7, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;->MyConfirmOrgInfo:Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;

    invoke-direct {v5, v7}, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;-><init>(Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;)V

    .line 185
    .restart local v5    # "userInfoItemObject":Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;
    iget-object v7, p0, Lcom/alibaba/android/user/profile/v2/ConfirmOrgActivity$2;->a:Lcom/alibaba/android/user/profile/v2/ConfirmOrgActivity;

    sget v8, Lezg$l;->and_login_confirm_company:I

    invoke-virtual {v7, v8}, Lcom/alibaba/android/user/profile/v2/ConfirmOrgActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mTip:Ljava/lang/String;

    .line 186
    iget-object v7, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgName:Ljava/lang/String;

    iput-object v7, v5, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mContent:Ljava/lang/String;

    .line 187
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 189
    iget-object v7, p0, Lcom/alibaba/android/user/profile/v2/ConfirmOrgActivity$2;->a:Lcom/alibaba/android/user/profile/v2/ConfirmOrgActivity;

    invoke-static {v7}, Lcom/alibaba/android/user/profile/v2/ConfirmOrgActivity;->c(Lcom/alibaba/android/user/profile/v2/ConfirmOrgActivity;)Ljava/util/List;

    move-result-object v7

    iget-object v8, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgName:Ljava/lang/String;

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 190
    iget-object v7, p0, Lcom/alibaba/android/user/profile/v2/ConfirmOrgActivity$2;->a:Lcom/alibaba/android/user/profile/v2/ConfirmOrgActivity;

    invoke-static {v7}, Lcom/alibaba/android/user/profile/v2/ConfirmOrgActivity;->d(Lcom/alibaba/android/user/profile/v2/ConfirmOrgActivity;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 192
    .end local v1    # "orgEmployeeExtensionObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    .end local v2    # "orgInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;>;"
    .end local v3    # "orgUserNameObject":Lfrw;
    .end local v5    # "userInfoItemObject":Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;
    :cond_5
    if-eqz v0, :cond_6

    .line 193
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v6

    iget-object v7, p0, Lcom/alibaba/android/user/profile/v2/ConfirmOrgActivity$2;->a:Lcom/alibaba/android/user/profile/v2/ConfirmOrgActivity;

    invoke-static {v7}, Lcom/alibaba/android/user/profile/v2/ConfirmOrgActivity;->b(Lcom/alibaba/android/user/profile/v2/ConfirmOrgActivity;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v7

    invoke-virtual {v6, v7}, Lccr;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;)V

    .line 194
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v6

    iget-object v7, p0, Lcom/alibaba/android/user/profile/v2/ConfirmOrgActivity$2;->a:Lcom/alibaba/android/user/profile/v2/ConfirmOrgActivity;

    invoke-static {v7}, Lcom/alibaba/android/user/profile/v2/ConfirmOrgActivity;->b(Lcom/alibaba/android/user/profile/v2/ConfirmOrgActivity;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v7

    iget-object v8, p0, Lcom/alibaba/android/user/profile/v2/ConfirmOrgActivity$2;->a:Lcom/alibaba/android/user/profile/v2/ConfirmOrgActivity;

    invoke-static {v8}, Lcom/alibaba/android/user/profile/v2/ConfirmOrgActivity;->b(Lcom/alibaba/android/user/profile/v2/ConfirmOrgActivity;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v8

    iget-wide v8, v8, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->uid:J

    invoke-virtual {v6, v7, v8, v9}, Lccr;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;J)V

    .line 196
    :cond_6
    iget-object v6, p0, Lcom/alibaba/android/user/profile/v2/ConfirmOrgActivity$2;->a:Lcom/alibaba/android/user/profile/v2/ConfirmOrgActivity;

    new-instance v7, Lcom/alibaba/android/user/profile/v2/ConfirmOrgActivity$2$1;

    invoke-direct {v7, p0}, Lcom/alibaba/android/user/profile/v2/ConfirmOrgActivity$2$1;-><init>(Lcom/alibaba/android/user/profile/v2/ConfirmOrgActivity$2;)V

    invoke-virtual {v6, v7}, Lcom/alibaba/android/user/profile/v2/ConfirmOrgActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 202
    return-void
.end method
