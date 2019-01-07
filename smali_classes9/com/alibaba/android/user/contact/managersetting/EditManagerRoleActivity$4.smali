.class final Lcom/alibaba/android/user/contact/managersetting/EditManagerRoleActivity$4;
.super Landroid/content/BroadcastReceiver;
.source "EditManagerRoleActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/managersetting/EditManagerRoleActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/managersetting/EditManagerRoleActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/managersetting/EditManagerRoleActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/managersetting/EditManagerRoleActivity;

    .prologue
    .line 308
    iput-object p1, p0, Lcom/alibaba/android/user/contact/managersetting/EditManagerRoleActivity$4;->a:Lcom/alibaba/android/user/contact/managersetting/EditManagerRoleActivity;

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
    .line 311
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 312
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v4, "action_selected_contacts_result"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string/jumbo v4, "com.workapp.choose.people.from.contact"

    .line 313
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 325
    :cond_0
    :goto_0
    return-void

    .line 316
    :cond_1
    const-string/jumbo v4, "activity_identify"

    invoke-static {p2, v4}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 317
    .local v2, "identify":Ljava/lang/String;
    const-string/jumbo v4, "CHOOSE_MEMBER"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 318
    const-string/jumbo v4, "choose_user_identities"

    invoke-static {p2, v4}, Lcoy;->d(Landroid/content/Intent;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 319
    .local v3, "profiles":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    iget-object v6, p0, Lcom/alibaba/android/user/contact/managersetting/EditManagerRoleActivity$4;->a:Lcom/alibaba/android/user/contact/managersetting/EditManagerRoleActivity;

    .line 1132
    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1133
    :cond_2
    const/4 v4, 0x0

    .line 319
    :goto_1
    invoke-static {v6, v4}, Lcom/alibaba/android/user/contact/managersetting/EditManagerRoleActivity;->a(Lcom/alibaba/android/user/contact/managersetting/EditManagerRoleActivity;Ljava/util/List;)V

    goto :goto_0

    .line 1135
    :cond_3
    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v5, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 1137
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_4
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 1138
    if-eqz v4, :cond_4

    .line 1141
    new-instance v8, Lcom/alibaba/android/user/model/OrgEmployeeSimpleObject;

    invoke-direct {v8}, Lcom/alibaba/android/user/model/OrgEmployeeSimpleObject;-><init>()V

    .line 1142
    iget-wide v10, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->oid:J

    iput-wide v10, v8, Lcom/alibaba/android/user/model/OrgEmployeeSimpleObject;->orgId:J

    .line 1143
    iget-object v9, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->staffId:Ljava/lang/String;

    iput-object v9, v8, Lcom/alibaba/android/user/model/OrgEmployeeSimpleObject;->staffId:Ljava/lang/String;

    .line 1144
    iget-wide v10, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    iput-wide v10, v8, Lcom/alibaba/android/user/model/OrgEmployeeSimpleObject;->uid:J

    .line 1145
    iget-object v4, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->displayName:Ljava/lang/String;

    iput-object v4, v8, Lcom/alibaba/android/user/model/OrgEmployeeSimpleObject;->name:Ljava/lang/String;

    .line 1146
    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    move-object v4, v5

    .line 1148
    goto :goto_1

    .line 320
    .end local v3    # "profiles":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    :cond_6
    const-string/jumbo v4, "CHOOSE_DEPT"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 321
    const-string/jumbo v4, "choose_department_array"

    invoke-static {p2, v4}, Lcoy;->d(Landroid/content/Intent;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 322
    .local v1, "depts":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    iget-object v4, p0, Lcom/alibaba/android/user/contact/managersetting/EditManagerRoleActivity$4;->a:Lcom/alibaba/android/user/contact/managersetting/EditManagerRoleActivity;

    invoke-static {v1}, Lfhu;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alibaba/android/user/contact/managersetting/EditManagerRoleActivity;->b(Lcom/alibaba/android/user/contact/managersetting/EditManagerRoleActivity;Ljava/util/List;)V

    goto :goto_0
.end method
