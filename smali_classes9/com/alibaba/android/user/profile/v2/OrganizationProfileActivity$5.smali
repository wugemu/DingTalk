.class final Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity$5;
.super Ljava/lang/Object;
.source "OrganizationProfileActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;

    .prologue
    .line 334
    iput-object p1, p0, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity$5;->a:Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;

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
    .line 337
    const/4 v0, 0x0

    .line 340
    .local v0, "needUpdateOrgEmplyee":Z
    iget-object v8, p0, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity$5;->a:Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;

    invoke-static {v8}, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;->c(Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;)Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    move-result-object v8

    iget-wide v8, v8, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    iget-object v10, p0, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity$5;->a:Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;

    invoke-static {v10}, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;->c(Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;)Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    move-result-object v10

    iget-wide v10, v10, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->uid:J

    invoke-static {v8, v9, v10, v11}, Lfbm;->a(JJ)Lfrw;

    move-result-object v5

    .line 341
    .local v5, "orgUserNameObject":Lfrw;
    if-eqz v5, :cond_0

    iget-object v8, v5, Lfrw;->c:Ljava/lang/String;

    if-eqz v8, :cond_0

    iget-object v8, v5, Lfrw;->c:Ljava/lang/String;

    iget-object v9, p0, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity$5;->a:Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;

    invoke-static {v9}, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;->c(Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;)Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    move-result-object v9

    iget-object v9, v9, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgUserName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 342
    iget-object v8, p0, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity$5;->a:Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;

    invoke-static {v8}, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;->c(Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;)Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    move-result-object v8

    iget-object v8, v8, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgUserName:Ljava/lang/String;

    iput-object v8, v5, Lfrw;->c:Ljava/lang/String;

    .line 343
    const/4 v0, 0x1

    .line 346
    :cond_0
    iget-object v8, p0, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity$5;->a:Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;

    invoke-static {v8}, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;->c(Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;)Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    move-result-object v8

    iget-object v8, v8, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgUserName:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 347
    new-instance v6, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;

    sget-object v8, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;->MyOrgInfo:Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;

    invoke-direct {v6, v8}, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;-><init>(Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;)V

    .line 348
    .local v6, "userInfoItemObject":Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;
    iget-object v8, p0, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity$5;->a:Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;

    sget v9, Lezg$l;->user_profile_name:I

    invoke-virtual {v8, v9}, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mTip:Ljava/lang/String;

    .line 349
    iget-object v8, p0, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity$5;->a:Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;

    invoke-static {v8}, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;->c(Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;)Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    move-result-object v8

    invoke-static {v8}, Lfvj;->a(Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mContent:Ljava/lang/String;

    .line 350
    iget-object v8, p0, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity$5;->a:Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;

    invoke-static {v8}, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;->d(Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 353
    .end local v6    # "userInfoItemObject":Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;
    :cond_1
    iget-object v8, p0, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity$5;->a:Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;

    invoke-static {v8}, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;->c(Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;)Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    move-result-object v8

    iget-object v8, v8, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgUserMobile:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 354
    new-instance v6, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;

    sget-object v8, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;->MyOrgInfo:Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;

    invoke-direct {v6, v8}, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;-><init>(Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;)V

    .line 355
    .restart local v6    # "userInfoItemObject":Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;
    iget-object v8, p0, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity$5;->a:Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;

    sget v9, Lezg$l;->user_profile_mobile:I

    invoke-virtual {v8, v9}, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mTip:Ljava/lang/String;

    .line 356
    iget-object v8, p0, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity$5;->a:Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;

    invoke-static {v8}, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;->c(Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;)Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    move-result-object v8

    iget-object v8, v8, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgUserMobile:Ljava/lang/String;

    iput-object v8, v6, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mContent:Ljava/lang/String;

    .line 357
    iget-object v8, p0, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity$5;->a:Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;

    invoke-static {v8}, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;->d(Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 360
    .end local v6    # "userInfoItemObject":Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;
    :cond_2
    iget-object v8, p0, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity$5;->a:Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;

    invoke-static {v8}, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;->c(Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;)Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    move-result-object v8

    iget-object v1, v8, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgAuthEmail:Ljava/lang/String;

    .line 361
    .local v1, "orgEmail":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 362
    iget-object v8, p0, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity$5;->a:Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;

    invoke-static {v8}, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;->c(Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;)Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    move-result-object v8

    iget-object v1, v8, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgEmail:Ljava/lang/String;

    .line 364
    :cond_3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 365
    new-instance v6, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;

    sget-object v8, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;->MyOrgInfo:Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;

    invoke-direct {v6, v8}, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;-><init>(Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;)V

    .line 366
    .restart local v6    # "userInfoItemObject":Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;
    iget-object v8, p0, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity$5;->a:Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;

    sget v9, Lezg$l;->user_profile_email:I

    invoke-virtual {v8, v9}, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mTip:Ljava/lang/String;

    .line 367
    iput-object v1, v6, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mContent:Ljava/lang/String;

    .line 368
    iget-object v8, p0, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity$5;->a:Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;

    invoke-static {v8}, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;->d(Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 371
    .end local v6    # "userInfoItemObject":Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;
    :cond_4
    iget-object v8, p0, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity$5;->a:Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;

    invoke-static {v8}, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;->c(Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;)Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    move-result-object v8

    iget-object v8, v8, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgMasterDisplayName:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 372
    new-instance v6, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;

    sget-object v8, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;->MyOrgInfo:Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;

    invoke-direct {v6, v8}, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;-><init>(Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;)V

    .line 373
    .restart local v6    # "userInfoItemObject":Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;
    iget-object v8, p0, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity$5;->a:Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;

    sget v9, Lezg$l;->user_profile_master:I

    invoke-virtual {v8, v9}, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mTip:Ljava/lang/String;

    .line 374
    iget-object v8, p0, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity$5;->a:Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;

    invoke-static {v8}, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;->c(Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;)Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    move-result-object v8

    iget-object v8, v8, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgMasterDisplayName:Ljava/lang/String;

    iput-object v8, v6, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mContent:Ljava/lang/String;

    .line 375
    iget-object v8, p0, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity$5;->a:Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;

    invoke-static {v8}, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;->d(Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 378
    .end local v6    # "userInfoItemObject":Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;
    :cond_5
    iget-object v8, p0, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity$5;->a:Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;

    invoke-static {v8}, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;->c(Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;)Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    move-result-object v8

    iget-object v8, v8, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->nodeItemObjectList:Ljava/util/List;

    if-eqz v8, :cond_7

    iget-object v8, p0, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity$5;->a:Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;

    .line 379
    invoke-static {v8}, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;->c(Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;)Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    move-result-object v8

    iget-object v8, v8, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->nodeItemObjectList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_7

    .line 380
    iget-object v8, p0, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity$5;->a:Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;

    invoke-static {v8}, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;->c(Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;)Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    move-result-object v8

    iget-object v8, v8, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->nodeItemObjectList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_6
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    .line 381
    .local v4, "orgNodeItemObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;
    if-eqz v4, :cond_6

    .line 384
    new-instance v3, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;

    sget-object v9, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;->MyOrgInfo:Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;

    invoke-direct {v3, v9}, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;-><init>(Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;)V

    .line 385
    .local v3, "orgInfoItemObject":Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;
    iget-object v9, p0, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity$5;->a:Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;

    sget v10, Lezg$l;->user_profile_dept:I

    invoke-virtual {v9, v10}, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v3, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mTip:Ljava/lang/String;

    .line 386
    invoke-static {v4}, Lfxe;->e(Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v3, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mContent:Ljava/lang/String;

    .line 387
    iget-object v9, p0, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity$5;->a:Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;

    invoke-static {v9}, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;->d(Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 392
    .end local v3    # "orgInfoItemObject":Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;
    .end local v4    # "orgNodeItemObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;
    :cond_7
    iget-object v8, p0, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity$5;->a:Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;

    invoke-static {v8}, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;->c(Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;)Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    move-result-object v8

    iget-object v8, v8, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->extPropertyObjectList:Ljava/util/List;

    if-eqz v8, :cond_9

    iget-object v8, p0, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity$5;->a:Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;

    invoke-static {v8}, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;->c(Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;)Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    move-result-object v8

    iget-object v8, v8, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->extPropertyObjectList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_9

    .line 393
    iget-object v8, p0, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity$5;->a:Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;

    invoke-static {v8}, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;->c(Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;)Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    move-result-object v8

    iget-object v8, v8, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->extPropertyObjectList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_8
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgExtPropertyObject;

    .line 394
    .local v2, "orgExtPropertyObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgExtPropertyObject;
    if-eqz v2, :cond_8

    iget-object v9, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgExtPropertyObject;->itemName:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_8

    iget-object v9, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgExtPropertyObject;->itemValue:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_8

    .line 395
    new-instance v6, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;

    sget-object v9, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;->MyOrgInfo:Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;

    invoke-direct {v6, v9}, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;-><init>(Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;)V

    .line 396
    .restart local v6    # "userInfoItemObject":Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;
    iget-object v9, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgExtPropertyObject;->itemName:Ljava/lang/String;

    iput-object v9, v6, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mTip:Ljava/lang/String;

    .line 397
    iget-object v9, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgExtPropertyObject;->itemValue:Ljava/lang/String;

    iput-object v9, v6, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mContent:Ljava/lang/String;

    .line 398
    iget-object v9, p0, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity$5;->a:Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;

    invoke-static {v9}, Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;->d(Lcom/alibaba/android/user/profile/v2/OrganizationProfileActivity;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 403
    .end local v2    # "orgExtPropertyObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgExtPropertyObject;
    .end local v6    # "userInfoItemObject":Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;
    :cond_9
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v8

    invoke-virtual {v8}, Lccr;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v7

    .line 404
    .local v7, "userProfileExtensionObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    if-eqz v0, :cond_a

    if-eqz v7, :cond_a

    .line 405
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v8

    invoke-virtual {v8, v7}, Lccr;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;)V

    .line 406
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v8

    iget-wide v10, v7, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->uid:J

    invoke-virtual {v8, v7, v10, v11}, Lccr;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;J)V

    .line 408
    :cond_a
    return-void
.end method
