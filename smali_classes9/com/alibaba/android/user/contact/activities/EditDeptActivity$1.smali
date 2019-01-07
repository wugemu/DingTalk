.class final Lcom/alibaba/android/user/contact/activities/EditDeptActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "EditDeptActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/activities/EditDeptActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/activities/EditDeptActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/activities/EditDeptActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/activities/EditDeptActivity;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/alibaba/android/user/contact/activities/EditDeptActivity$1;->a:Lcom/alibaba/android/user/contact/activities/EditDeptActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 109
    const-string/jumbo v10, "com.workapp.choose.people.from.dept"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 110
    iget-object v10, p0, Lcom/alibaba/android/user/contact/activities/EditDeptActivity$1;->a:Lcom/alibaba/android/user/contact/activities/EditDeptActivity;

    const-string/jumbo v11, "choose_user_identities"

    invoke-virtual {p2, v11}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->a(Lcom/alibaba/android/user/contact/activities/EditDeptActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 112
    iget-object v10, p0, Lcom/alibaba/android/user/contact/activities/EditDeptActivity$1;->a:Lcom/alibaba/android/user/contact/activities/EditDeptActivity;

    invoke-static {v10}, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->a(Lcom/alibaba/android/user/contact/activities/EditDeptActivity;)Lfrt;

    move-result-object v10

    iget-object v10, v10, Lfrt;->e:Ljava/util/List;

    if-eqz v10, :cond_1

    .line 113
    iget-object v10, p0, Lcom/alibaba/android/user/contact/activities/EditDeptActivity$1;->a:Lcom/alibaba/android/user/contact/activities/EditDeptActivity;

    invoke-static {v10}, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->a(Lcom/alibaba/android/user/contact/activities/EditDeptActivity;)Lfrt;

    move-result-object v10

    iget-object v10, v10, Lfrt;->e:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->clear()V

    .line 117
    :goto_0
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v6

    .line 118
    .local v6, "managerNames":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    iget-object v10, p0, Lcom/alibaba/android/user/contact/activities/EditDeptActivity$1;->a:Lcom/alibaba/android/user/contact/activities/EditDeptActivity;

    invoke-static {v10}, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->b(Lcom/alibaba/android/user/contact/activities/EditDeptActivity;)Ljava/util/ArrayList;

    move-result-object v10

    if-eqz v10, :cond_2

    .line 119
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v10, p0, Lcom/alibaba/android/user/contact/activities/EditDeptActivity$1;->a:Lcom/alibaba/android/user/contact/activities/EditDeptActivity;

    invoke-static {v10}, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->b(Lcom/alibaba/android/user/contact/activities/EditDeptActivity;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v2, v10, :cond_2

    .line 120
    iget-object v10, p0, Lcom/alibaba/android/user/contact/activities/EditDeptActivity$1;->a:Lcom/alibaba/android/user/contact/activities/EditDeptActivity;

    invoke-static {v10}, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->b(Lcom/alibaba/android/user/contact/activities/EditDeptActivity;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 121
    .local v8, "userIdentityObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    new-instance v7, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    invoke-direct {v7}, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;-><init>()V

    .line 122
    .local v7, "newModel":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;
    iget-object v10, v8, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->orgUserName:Ljava/lang/String;

    iput-object v10, v7, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgUserName:Ljava/lang/String;

    .line 123
    iget-wide v10, v8, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    iput-wide v10, v7, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->uid:J

    .line 124
    iget-object v10, v8, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mobile:Ljava/lang/String;

    iput-object v10, v7, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgUserMobile:Ljava/lang/String;

    .line 125
    iget-object v10, v8, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mediaId:Ljava/lang/String;

    iput-object v10, v7, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgAvatarMediaId:Ljava/lang/String;

    .line 126
    iget-object v10, p0, Lcom/alibaba/android/user/contact/activities/EditDeptActivity$1;->a:Lcom/alibaba/android/user/contact/activities/EditDeptActivity;

    invoke-static {v10}, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->a(Lcom/alibaba/android/user/contact/activities/EditDeptActivity;)Lfrt;

    move-result-object v10

    iget-object v10, v10, Lfrt;->e:Ljava/util/List;

    invoke-interface {v10, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    iget-object v10, v8, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->orgUserName:Ljava/lang/String;

    invoke-virtual {v6, v10}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 128
    iget-object v10, p0, Lcom/alibaba/android/user/contact/activities/EditDeptActivity$1;->a:Lcom/alibaba/android/user/contact/activities/EditDeptActivity;

    invoke-static {v10}, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->b(Lcom/alibaba/android/user/contact/activities/EditDeptActivity;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    if-eq v2, v10, :cond_0

    .line 129
    const-string/jumbo v10, ","

    invoke-virtual {v6, v10}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 119
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 115
    .end local v2    # "i":I
    .end local v6    # "managerNames":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    .end local v7    # "newModel":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;
    .end local v8    # "userIdentityObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    :cond_1
    iget-object v10, p0, Lcom/alibaba/android/user/contact/activities/EditDeptActivity$1;->a:Lcom/alibaba/android/user/contact/activities/EditDeptActivity;

    invoke-static {v10}, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->a(Lcom/alibaba/android/user/contact/activities/EditDeptActivity;)Lfrt;

    move-result-object v10

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, v10, Lfrt;->e:Ljava/util/List;

    goto :goto_0

    .line 133
    .restart local v6    # "managerNames":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    :cond_2
    iget-object v10, p0, Lcom/alibaba/android/user/contact/activities/EditDeptActivity$1;->a:Lcom/alibaba/android/user/contact/activities/EditDeptActivity;

    invoke-static {v10}, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->c(Lcom/alibaba/android/user/contact/activities/EditDeptActivity;)Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;->setHintViewVisibility(I)V

    .line 134
    iget-object v10, p0, Lcom/alibaba/android/user/contact/activities/EditDeptActivity$1;->a:Lcom/alibaba/android/user/contact/activities/EditDeptActivity;

    invoke-static {v10}, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->c(Lcom/alibaba/android/user/contact/activities/EditDeptActivity;)Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;

    move-result-object v10

    const-string/jumbo v11, ""

    invoke-virtual {v10, v11}, Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;->setHint(Ljava/lang/String;)V

    .line 135
    invoke-virtual {v6}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->length()I

    move-result v10

    if-lez v10, :cond_3

    .line 136
    iget-object v10, p0, Lcom/alibaba/android/user/contact/activities/EditDeptActivity$1;->a:Lcom/alibaba/android/user/contact/activities/EditDeptActivity;

    invoke-static {v10}, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->c(Lcom/alibaba/android/user/contact/activities/EditDeptActivity;)Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;

    move-result-object v10

    invoke-virtual {v6}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;->setHint(Ljava/lang/String;)V

    .line 186
    .end local v6    # "managerNames":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    :cond_3
    :goto_2
    return-void

    .line 138
    :cond_4
    const-string/jumbo v10, "com.workapp.choose.org.department"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 139
    const-string/jumbo v10, "key_org_selected_single_dept"

    invoke-virtual {p2, v10}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    .line 140
    .local v1, "deptObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;
    iget-object v10, p0, Lcom/alibaba/android/user/contact/activities/EditDeptActivity$1;->a:Lcom/alibaba/android/user/contact/activities/EditDeptActivity;

    invoke-static {v10}, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->d(Lcom/alibaba/android/user/contact/activities/EditDeptActivity;)Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;->setHintViewVisibility(I)V

    .line 141
    iget-object v10, p0, Lcom/alibaba/android/user/contact/activities/EditDeptActivity$1;->a:Lcom/alibaba/android/user/contact/activities/EditDeptActivity;

    invoke-static {v10}, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->d(Lcom/alibaba/android/user/contact/activities/EditDeptActivity;)Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;

    move-result-object v10

    iget-object v11, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->deptName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;->setHint(Ljava/lang/String;)V

    .line 142
    iget-object v10, p0, Lcom/alibaba/android/user/contact/activities/EditDeptActivity$1;->a:Lcom/alibaba/android/user/contact/activities/EditDeptActivity;

    invoke-static {v10}, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->a(Lcom/alibaba/android/user/contact/activities/EditDeptActivity;)Lfrt;

    move-result-object v10

    iput-object v1, v10, Lfrt;->b:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    goto :goto_2

    .line 143
    .end local v1    # "deptObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;
    :cond_5
    const-string/jumbo v10, "com.workapp.choose.people.from.new.contact"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 144
    const-string/jumbo v10, "activity_identify"

    invoke-virtual {p2, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 145
    .local v4, "indentify":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 148
    const-string/jumbo v10, "select_tag_hide"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 149
    const-string/jumbo v10, "choose_user_identities"

    invoke-virtual {p2, v10}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 150
    .local v5, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    iget-object v10, p0, Lcom/alibaba/android/user/contact/activities/EditDeptActivity$1;->a:Lcom/alibaba/android/user/contact/activities/EditDeptActivity;

    invoke-static {v10}, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->e(Lcom/alibaba/android/user/contact/activities/EditDeptActivity;)Lfru;

    move-result-object v10

    if-nez v10, :cond_6

    .line 151
    iget-object v10, p0, Lcom/alibaba/android/user/contact/activities/EditDeptActivity$1;->a:Lcom/alibaba/android/user/contact/activities/EditDeptActivity;

    new-instance v11, Lfru;

    invoke-direct {v11}, Lfru;-><init>()V

    invoke-static {v10, v11}, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->a(Lcom/alibaba/android/user/contact/activities/EditDeptActivity;Lfru;)Lfru;

    .line 153
    :cond_6
    if-eqz v5, :cond_9

    .line 154
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 155
    .local v9, "users":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 156
    .local v3, "identityObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    invoke-static {v3}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->toUserProfileObject(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    move-result-object v11

    invoke-interface {v9, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 159
    .end local v3    # "identityObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    :cond_7
    iget-object v10, p0, Lcom/alibaba/android/user/contact/activities/EditDeptActivity$1;->a:Lcom/alibaba/android/user/contact/activities/EditDeptActivity;

    invoke-static {v10}, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->e(Lcom/alibaba/android/user/contact/activities/EditDeptActivity;)Lfru;

    move-result-object v10

    iput-object v9, v10, Lfru;->c:Ljava/util/List;

    .line 164
    .end local v9    # "users":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;"
    :goto_4
    const-string/jumbo v10, "choose_department_array"

    invoke-virtual {p2, v10}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 165
    .local v0, "deptList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    iget-object v10, p0, Lcom/alibaba/android/user/contact/activities/EditDeptActivity$1;->a:Lcom/alibaba/android/user/contact/activities/EditDeptActivity;

    invoke-static {v10}, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->e(Lcom/alibaba/android/user/contact/activities/EditDeptActivity;)Lfru;

    move-result-object v10

    iput-object v0, v10, Lfru;->d:Ljava/util/List;

    .line 184
    .end local v0    # "deptList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    .end local v5    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    :cond_8
    :goto_5
    sget v10, Lezg$l;->select_success_tip:I

    invoke-static {v10}, Lcms;->a(I)V

    goto/16 :goto_2

    .line 161
    .restart local v5    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    :cond_9
    iget-object v10, p0, Lcom/alibaba/android/user/contact/activities/EditDeptActivity$1;->a:Lcom/alibaba/android/user/contact/activities/EditDeptActivity;

    invoke-static {v10}, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->e(Lcom/alibaba/android/user/contact/activities/EditDeptActivity;)Lfru;

    move-result-object v10

    const/4 v11, 0x0

    iput-object v11, v10, Lfru;->c:Ljava/util/List;

    goto :goto_4

    .line 166
    .end local v5    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    :cond_a
    const-string/jumbo v10, "select_tag_outer"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 167
    const-string/jumbo v10, "choose_user_identities"

    invoke-virtual {p2, v10}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 168
    .restart local v5    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    iget-object v10, p0, Lcom/alibaba/android/user/contact/activities/EditDeptActivity$1;->a:Lcom/alibaba/android/user/contact/activities/EditDeptActivity;

    iget-object v10, v10, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->a:Lfru;

    if-nez v10, :cond_b

    .line 169
    iget-object v10, p0, Lcom/alibaba/android/user/contact/activities/EditDeptActivity$1;->a:Lcom/alibaba/android/user/contact/activities/EditDeptActivity;

    new-instance v11, Lfru;

    invoke-direct {v11}, Lfru;-><init>()V

    iput-object v11, v10, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->a:Lfru;

    .line 171
    :cond_b
    if-eqz v5, :cond_d

    .line 172
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 173
    .restart local v9    # "users":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_6
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_c

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 174
    .restart local v3    # "identityObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    invoke-static {v3}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->toUserProfileObject(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    move-result-object v11

    invoke-interface {v9, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 176
    .end local v3    # "identityObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    :cond_c
    iget-object v10, p0, Lcom/alibaba/android/user/contact/activities/EditDeptActivity$1;->a:Lcom/alibaba/android/user/contact/activities/EditDeptActivity;

    iget-object v10, v10, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->a:Lfru;

    iput-object v9, v10, Lfru;->c:Ljava/util/List;

    .line 181
    .end local v9    # "users":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;"
    :goto_7
    const-string/jumbo v10, "choose_department_array"

    invoke-virtual {p2, v10}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 182
    .restart local v0    # "deptList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    iget-object v10, p0, Lcom/alibaba/android/user/contact/activities/EditDeptActivity$1;->a:Lcom/alibaba/android/user/contact/activities/EditDeptActivity;

    iget-object v10, v10, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->a:Lfru;

    iput-object v0, v10, Lfru;->d:Ljava/util/List;

    goto :goto_5

    .line 178
    .end local v0    # "deptList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    :cond_d
    iget-object v10, p0, Lcom/alibaba/android/user/contact/activities/EditDeptActivity$1;->a:Lcom/alibaba/android/user/contact/activities/EditDeptActivity;

    iget-object v10, v10, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->a:Lfru;

    const/4 v11, 0x0

    iput-object v11, v10, Lfru;->c:Ljava/util/List;

    goto :goto_7
.end method
