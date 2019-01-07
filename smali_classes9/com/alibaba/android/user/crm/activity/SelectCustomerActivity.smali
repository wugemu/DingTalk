.class public Lcom/alibaba/android/user/crm/activity/SelectCustomerActivity;
.super Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity;
.source "SelectCustomerActivity.java"

# interfaces
.implements Lfhw;


# static fields
.field private static final e:Ljava/lang/String;


# instance fields
.field private f:I

.field private g:J

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Z

.field private k:Z

.field private l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private m:Lfmm;

.field private n:Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;

.field private o:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const-class v0, Lcom/alibaba/android/user/crm/activity/SelectCustomerActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/android/user/crm/activity/SelectCustomerActivity;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity;-><init>()V

    .line 47
    const/4 v0, 0x1

    iput v0, p0, Lcom/alibaba/android/user/crm/activity/SelectCustomerActivity;->f:I

    return-void
.end method

.method private a(Lcom/alibaba/android/dingtalk/userbase/model/CrmCustomerObject;Ljava/lang/String;)V
    .locals 4
    .param p1, "crmObject"    # Lcom/alibaba/android/dingtalk/userbase/model/CrmCustomerObject;
    .param p2, "jsonObject"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 253
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "com.workapp.choose.customer.from.mycustomer"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 254
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/alibaba/android/user/crm/activity/SelectCustomerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "org_request_from_source_type"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 256
    .local v1, "source":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 257
    const-string/jumbo v2, "org_request_from_source_type"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 259
    :cond_0
    if-eqz p1, :cond_1

    .line 260
    const-string/jumbo v2, "key_select_customer_ret_object"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 262
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 263
    const-string/jumbo v2, "key_select_customer_ret_json"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 266
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/android/user/crm/activity/SelectCustomerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v2

    invoke-virtual {v2, v0}, Ldq;->a(Landroid/content/Intent;)Z

    .line 267
    invoke-virtual {p0}, Lcom/alibaba/android/user/crm/activity/SelectCustomerActivity;->finish()V

    .line 268
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/crm/activity/SelectCustomerActivity;Lcom/alibaba/android/dingtalk/userbase/model/CrmCustomerObject;Ljava/lang/String;)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/crm/activity/SelectCustomerActivity;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalk/userbase/model/CrmCustomerObject;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 41
    const/4 v0, 0x0

    invoke-direct {p0, v0, p2}, Lcom/alibaba/android/user/crm/activity/SelectCustomerActivity;->a(Lcom/alibaba/android/dingtalk/userbase/model/CrmCustomerObject;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/alibaba/android/user/crm/activity/SelectCustomerActivity;->e:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 2
    .param p1, "newText"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 180
    iget-object v0, p0, Lcom/alibaba/android/user/crm/activity/SelectCustomerActivity;->l:Ljava/util/List;

    if-nez v0, :cond_0

    .line 181
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/user/crm/activity/SelectCustomerActivity;->l:Ljava/util/List;

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/crm/activity/SelectCustomerActivity;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 184
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 185
    iget-object v0, p0, Lcom/alibaba/android/user/crm/activity/SelectCustomerActivity;->l:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 187
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/user/crm/activity/SelectCustomerActivity;->n:Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;

    if-eqz v0, :cond_2

    .line 188
    iget-object v0, p0, Lcom/alibaba/android/user/crm/activity/SelectCustomerActivity;->n:Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;

    iget-object v1, p0, Lcom/alibaba/android/user/crm/activity/SelectCustomerActivity;->l:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;->a(Ljava/util/List;)V

    .line 190
    :cond_2
    return-void
.end method

.method public final a(Z)V
    .locals 0
    .param p1, "isSearchModel"    # Z

    .prologue
    .line 102
    iput-boolean p1, p0, Lcom/alibaba/android/user/crm/activity/SelectCustomerActivity;->j:Z

    .line 103
    return-void
.end method

.method public final a(Lcom/alibaba/android/user/contact/org/model/SelectModel;)Z
    .locals 1
    .param p1, "model"    # Lcom/alibaba/android/user/contact/org/model/SelectModel;

    .prologue
    .line 206
    const/4 v0, 0x0

    return v0
.end method

.method protected final b()I
    .locals 1

    .prologue
    .line 61
    sget v0, Lezg$h;->ll_search:I

    return v0
.end method

.method public final b(Lcom/alibaba/android/user/contact/org/model/SelectModel;)Z
    .locals 1
    .param p1, "model"    # Lcom/alibaba/android/user/contact/org/model/SelectModel;

    .prologue
    .line 211
    const/4 v0, 0x0

    return v0
.end method

.method protected final c()I
    .locals 1

    .prologue
    .line 66
    sget v0, Lezg$j;->activity_select_customer:I

    return v0
.end method

.method public final c(Lcom/alibaba/android/user/contact/org/model/SelectModel;)V
    .locals 3
    .param p1, "model"    # Lcom/alibaba/android/user/contact/org/model/SelectModel;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 216
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/alibaba/android/user/contact/org/model/SelectModel;->a:Lcom/alibaba/android/user/contact/org/model/SelectModel$ModelType;

    sget-object v1, Lcom/alibaba/android/user/contact/org/model/SelectModel$ModelType;->CRM:Lcom/alibaba/android/user/contact/org/model/SelectModel$ModelType;

    if-ne v0, v1, :cond_0

    .line 217
    iget-object v0, p1, Lcom/alibaba/android/user/contact/org/model/SelectModel;->d:Lcom/alibaba/android/dingtalk/userbase/model/CrmCustomerObject;

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p1, Lcom/alibaba/android/user/contact/org/model/SelectModel;->d:Lcom/alibaba/android/dingtalk/userbase/model/CrmCustomerObject;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/alibaba/android/user/crm/activity/SelectCustomerActivity;->a(Lcom/alibaba/android/dingtalk/userbase/model/CrmCustomerObject;Ljava/lang/String;)V

    .line 220
    sget-object v0, Lcom/alibaba/android/user/crm/activity/SelectCustomerActivity;->e:Ljava/lang/String;

    const-string/jumbo v1, "Create customer from local"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 223
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const-wide/16 v4, 0x0

    const/16 v6, 0x80

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 71
    invoke-super {p0, p1}, Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity;->onCreate(Landroid/os/Bundle;)V

    .line 1106
    invoke-virtual {p0}, Lcom/alibaba/android/user/crm/activity/SelectCustomerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1107
    const-string/jumbo v1, "corp_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/user/crm/activity/SelectCustomerActivity;->h:Ljava/lang/String;

    .line 1108
    const-string/jumbo v1, "display_enterprise_oid"

    invoke-virtual {v0, v1, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alibaba/android/user/crm/activity/SelectCustomerActivity;->g:J

    .line 1110
    iget-object v1, p0, Lcom/alibaba/android/user/crm/activity/SelectCustomerActivity;->h:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1111
    invoke-static {}, Lcom/alibaba/dingtalk/oabase/OAInterface;->i()Lcom/alibaba/dingtalk/oabase/OAInterface;

    move-result-object v1

    iget-wide v2, p0, Lcom/alibaba/android/user/crm/activity/SelectCustomerActivity;->g:J

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/dingtalk/oabase/OAInterface;->a(J)Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;

    move-result-object v1

    .line 1112
    if-eqz v1, :cond_0

    .line 1113
    iget-object v1, v1, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->corpId:Ljava/lang/String;

    iput-object v1, p0, Lcom/alibaba/android/user/crm/activity/SelectCustomerActivity;->h:Ljava/lang/String;

    .line 1122
    :cond_0
    :goto_0
    iget-wide v2, p0, Lcom/alibaba/android/user/crm/activity/SelectCustomerActivity;->g:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_2

    .line 1123
    invoke-virtual {p0}, Lcom/alibaba/android/user/crm/activity/SelectCustomerActivity;->finish()V

    .line 1154
    :goto_1
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->p()I

    move-result v0

    if-nez v0, :cond_5

    .line 1155
    invoke-static {}, Lcom/alibaba/dingtalk/oabase/OAInterface;->i()Lcom/alibaba/dingtalk/oabase/OAInterface;

    move-result-object v1

    iget-wide v2, p0, Lcom/alibaba/android/user/crm/activity/SelectCustomerActivity;->g:J

    const-wide/16 v4, -0x17

    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/dingtalk/oabase/OAInterface;->a(JJI)Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;

    move-result-object v0

    if-eqz v0, :cond_4

    move v0, v7

    :goto_2
    iput-boolean v0, p0, Lcom/alibaba/android/user/crm/activity/SelectCustomerActivity;->k:Z

    .line 2138
    :goto_3
    iget-boolean v0, p0, Lcom/alibaba/android/user/crm/activity/SelectCustomerActivity;->k:Z

    if-eqz v0, :cond_8

    .line 2162
    iget-object v0, p0, Lcom/alibaba/android/user/crm/activity/SelectCustomerActivity;->n:Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;

    if-eqz v0, :cond_7

    .line 2163
    iget-object v0, p0, Lcom/alibaba/android/user/crm/activity/SelectCustomerActivity;->n:Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;

    .line 2139
    :goto_4
    iput-object v0, p0, Lcom/alibaba/android/user/crm/activity/SelectCustomerActivity;->n:Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;

    .line 2140
    invoke-virtual {p0}, Lcom/alibaba/android/user/crm/activity/SelectCustomerActivity;->getSupportFragmentManager()Lcn;

    move-result-object v0

    invoke-virtual {v0}, Lcn;->a()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 2141
    sget v1, Lezg$h;->fragment_container:I

    iget-object v2, p0, Lcom/alibaba/android/user/crm/activity/SelectCustomerActivity;->n:Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;

    const-class v3, Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->a(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 2142
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->c()I

    .line 3229
    :goto_5
    new-instance v0, Lcom/alibaba/android/user/crm/activity/SelectCustomerActivity$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/user/crm/activity/SelectCustomerActivity$1;-><init>(Lcom/alibaba/android/user/crm/activity/SelectCustomerActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/user/crm/activity/SelectCustomerActivity;->o:Landroid/content/BroadcastReceiver;

    .line 3243
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "action_crm_client_refresh"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 3244
    invoke-virtual {p0}, Lcom/alibaba/android/user/crm/activity/SelectCustomerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/user/crm/activity/SelectCustomerActivity;->o:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 76
    return-void

    .line 1116
    :cond_1
    invoke-static {}, Lcom/alibaba/dingtalk/oabase/OAInterface;->i()Lcom/alibaba/dingtalk/oabase/OAInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/user/crm/activity/SelectCustomerActivity;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/alibaba/dingtalk/oabase/OAInterface;->b(Ljava/lang/String;)Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;

    move-result-object v1

    .line 1117
    if-eqz v1, :cond_0

    .line 1118
    iget-wide v2, v1, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->orgId:J

    iput-wide v2, p0, Lcom/alibaba/android/user/crm/activity/SelectCustomerActivity;->g:J

    goto :goto_0

    .line 1127
    :cond_2
    const-string/jumbo v1, "staff_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/user/crm/activity/SelectCustomerActivity;->i:Ljava/lang/String;

    .line 1128
    sget-object v1, Lcom/alibaba/android/user/crm/activity/SelectCustomerActivity;->e:Ljava/lang/String;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    iget-wide v4, p0, Lcom/alibaba/android/user/crm/activity/SelectCustomerActivity;->g:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v8

    const-string/jumbo v3, " "

    aput-object v3, v2, v7

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/alibaba/android/user/crm/activity/SelectCustomerActivity;->i:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v8, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1130
    const-string/jumbo v1, "title"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1131
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1132
    sget v0, Lezg$l;->my_customer:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/crm/activity/SelectCustomerActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1134
    :cond_3
    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/crm/activity/SelectCustomerActivity;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_4
    move v0, v8

    .line 1155
    goto/16 :goto_2

    .line 1157
    :cond_5
    invoke-static {}, Lcom/alibaba/dingtalk/oabase/OAInterface;->i()Lcom/alibaba/dingtalk/oabase/OAInterface;

    move-result-object v1

    iget-wide v2, p0, Lcom/alibaba/android/user/crm/activity/SelectCustomerActivity;->g:J

    const-wide/16 v4, 0x41b

    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/dingtalk/oabase/OAInterface;->a(JJI)Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;

    move-result-object v0

    if-eqz v0, :cond_6

    :goto_6
    iput-boolean v7, p0, Lcom/alibaba/android/user/crm/activity/SelectCustomerActivity;->k:Z

    goto/16 :goto_3

    :cond_6
    move v7, v8

    goto :goto_6

    .line 2166
    :cond_7
    new-instance v0, Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;

    invoke-direct {v0}, Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;-><init>()V

    .line 2167
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 2168
    const-string/jumbo v2, "choose_mode"

    iget v3, p0, Lcom/alibaba/android/user/crm/activity/SelectCustomerActivity;->f:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2169
    const-string/jumbo v2, "staff_id"

    iget-object v3, p0, Lcom/alibaba/android/user/crm/activity/SelectCustomerActivity;->i:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2170
    const-string/jumbo v2, "display_enterprise_oid"

    iget-wide v4, p0, Lcom/alibaba/android/user/crm/activity/SelectCustomerActivity;->g:J

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2171
    const-string/jumbo v2, "corp_id"

    iget-object v3, p0, Lcom/alibaba/android/user/crm/activity/SelectCustomerActivity;->h:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2173
    new-instance v2, Lfmn;

    invoke-direct {v2, p0}, Lfmn;-><init>(Lfhw;)V

    .line 2380
    iput-object v2, v0, Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;->c:Lfhx;

    .line 2174
    invoke-virtual {v0, v1}, Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;->setArguments(Landroid/os/Bundle;)V

    goto/16 :goto_4

    .line 3061
    :cond_8
    sget v0, Lezg$h;->ll_search:I

    .line 2144
    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/crm/activity/SelectCustomerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2145
    sget v0, Lezg$h;->ll_select_customer_empty:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/crm/activity/SelectCustomerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_5
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 80
    iget-boolean v1, p0, Lcom/alibaba/android/user/crm/activity/SelectCustomerActivity;->k:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/alibaba/android/user/crm/activity/SelectCustomerActivity;->j:Z

    if-nez v1, :cond_0

    .line 81
    const/4 v1, 0x1

    sget v2, Lezg$l;->add_customer:I

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 82
    .local v0, "item":Landroid/view/MenuItem;
    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 84
    .end local v0    # "item":Landroid/view/MenuItem;
    :cond_0
    invoke-super {p0, p1}, Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method protected onDestroy()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 194
    iget-object v0, p0, Lcom/alibaba/android/user/crm/activity/SelectCustomerActivity;->m:Lfmm;

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/alibaba/android/user/crm/activity/SelectCustomerActivity;->m:Lfmm;

    invoke-virtual {v0}, Lfmm;->b()V

    .line 196
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/user/crm/activity/SelectCustomerActivity;->m:Lfmm;

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/crm/activity/SelectCustomerActivity;->o:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    .line 199
    invoke-virtual {p0}, Lcom/alibaba/android/user/crm/activity/SelectCustomerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/crm/activity/SelectCustomerActivity;->o:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 201
    :cond_1
    invoke-super {p0}, Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity;->onDestroy()V

    .line 202
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/alibaba/android/user/crm/activity/SelectCustomerActivity;->k:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/alibaba/android/user/crm/activity/SelectCustomerActivity;->j:Z

    if-nez v0, :cond_1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 91
    iget-object v0, p0, Lcom/alibaba/android/user/crm/activity/SelectCustomerActivity;->m:Lfmm;

    if-nez v0, :cond_0

    .line 92
    new-instance v0, Lfmm;

    iget-wide v2, p0, Lcom/alibaba/android/user/crm/activity/SelectCustomerActivity;->g:J

    iget-object v1, p0, Lcom/alibaba/android/user/crm/activity/SelectCustomerActivity;->h:Ljava/lang/String;

    invoke-direct {v0, p0, v2, v3, v1}, Lfmm;-><init>(Landroid/app/Activity;JLjava/lang/String;)V

    iput-object v0, p0, Lcom/alibaba/android/user/crm/activity/SelectCustomerActivity;->m:Lfmm;

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/crm/activity/SelectCustomerActivity;->m:Lfmm;

    invoke-virtual {v0}, Lfmm;->a()V

    .line 97
    :cond_1
    invoke-super {p0, p1}, Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method
