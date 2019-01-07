.class public Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment;
.super Lcom/alibaba/android/dingtalk/guard/ui/fragment/BaseFragment;
.source "GroupFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment$a;
    }
.end annotation


# instance fields
.field private a:Landroid/widget/ListView;

.field private b:Landroid/view/View;

.field private c:Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment$a;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/lang/String;

.field private f:Landroid/view/View;

.field private g:I

.field private h:I

.field private i:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BaseFragment;-><init>()V

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment;->d:Ljava/util/List;

    .line 239
    new-instance v0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment$3;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment$3;-><init>(Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment;->i:Landroid/content/BroadcastReceiver;

    .line 403
    return-void
.end method

.method public static a(II)Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment;
    .locals 3
    .param p0, "devServiceId"    # I
    .param p1, "devTypeCode"    # I

    .prologue
    .line 61
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 62
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "device_service_id"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 63
    const-string/jumbo v2, "device_type_code"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 65
    new-instance v1, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment;

    invoke-direct {v1}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment;-><init>()V

    .line 66
    .local v1, "fragment":Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment;
    invoke-virtual {v1, v0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment;->setArguments(Landroid/os/Bundle;)V

    .line 67
    return-object v1
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment;->e:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment;)Z
    .locals 6
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 53
    .line 1367
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1368
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;

    .line 1369
    if-eqz v0, :cond_0

    iget-object v4, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment;->e:Ljava/lang/String;

    iget-object v5, v0, Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;->corpId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1376
    :goto_0
    if-nez v0, :cond_1

    .line 1377
    sget v0, Lbrx$g;->dt_door_guard_pickup_orgs_tips:I

    invoke-static {v0}, Lcms;->a(I)V

    move v0, v1

    .line 1378
    :goto_1
    return v0

    .line 1380
    :cond_1
    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment;->a(Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;)V

    .line 1382
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment;->l()Lbsw$c;

    move-result-object v0

    instance-of v0, v0, Lbss;

    if-eqz v0, :cond_2

    .line 1383
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment;->t()V

    .line 1384
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "GroupFragment"

    const-string/jumbo v3, "alpha_create_team_finish"

    invoke-interface {v0, v1, v3, v2}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 1400
    :goto_2
    const/4 v0, 0x1

    .line 53
    goto :goto_1

    .line 1386
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 1388
    new-instance v0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment$4;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment$4;-><init>(Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment;)V

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment;->c(Lbsy$b;)V

    goto :goto_2

    :cond_3
    move-object v0, v2

    goto :goto_0
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment;

    .prologue
    .line 53
    iget v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment;->g:I

    return v0
.end method

.method static synthetic c(Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment;

    .prologue
    .line 53
    iget v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment;->h:I

    return v0
.end method

.method private d()V
    .locals 13

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v12, 0x1

    .line 185
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v10

    invoke-virtual {v10}, Lccr;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v6

    .line 187
    .local v6, "userProfileExtentionObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    if-eqz v6, :cond_3

    iget-object v10, v6, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->userPermissionObject:Lcom/alibaba/android/dingtalk/userbase/model/UserPermissionObject;

    if-eqz v10, :cond_3

    iget-object v10, v6, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->userPermissionObject:Lcom/alibaba/android/dingtalk/userbase/model/UserPermissionObject;

    iget-boolean v10, v10, Lcom/alibaba/android/dingtalk/userbase/model/UserPermissionObject;->couldCreateOrg:Z

    if-eqz v10, :cond_3

    .line 188
    iget v10, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment;->g:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_0

    .line 189
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 190
    .local v1, "bundle":Landroid/os/Bundle;
    const-string/jumbo v10, "intent_key_lower_limit"

    invoke-virtual {v1, v10, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 192
    const-string/jumbo v10, "key_create_org_jump_url"

    const-string/jumbo v11, "dingtalk://dingtalkclient/page/devicebindui?connType=ble&from=native&action=createGroupSuccess&corpId=__CORPID__&orgId=__ORGID__&orgName=__ORGNAME__"

    invoke-virtual {v1, v10, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v10

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v11

    invoke-virtual {v10, v11, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->d(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 231
    .end local v1    # "bundle":Landroid/os/Bundle;
    :goto_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 232
    .local v2, "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v10, "_field_event_id"

    const-string/jumbo v11, "2101"

    invoke-interface {v2, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    const-string/jumbo v10, "spm"

    const-string/jumbo v11, "a2q0r.11900333.1.create_org"

    invoke-interface {v2, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    const-string/jumbo v10, "device_type"

    iget v11, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment;->g:I

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v2, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    const-string/jumbo v10, "device_server"

    iget v11, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment;->h:I

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v2, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v10

    const-string/jumbo v11, "Page_Smart_Device_Set_Org"

    const-string/jumbo v12, "Page_Smart_Device_Set_Org_Button-create_org"

    invoke-interface {v10, v11, v12, v2}, Lcom/alibaba/doraemon/statistics/Statistics;->customEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 237
    return-void

    .line 194
    .end local v2    # "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    iget v10, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment;->g:I

    const/4 v11, 0x5

    if-ne v10, v11, :cond_1

    .line 195
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 196
    .restart local v1    # "bundle":Landroid/os/Bundle;
    const-string/jumbo v10, "intent_key_lower_limit"

    invoke-virtual {v1, v10, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 198
    const-string/jumbo v5, "https://focus.dingtalk.com/focusApp/index.html"

    .line 199
    .local v5, "suffixUrl":Ljava/lang/String;
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 200
    .local v4, "suffixUri":Landroid/net/Uri;
    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v10

    const-string/jumbo v11, "createOrgSuccess"

    invoke-virtual {v10, v11}, Landroid/net/Uri$Builder;->fragment(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    .line 201
    .local v3, "suffixBuilder":Landroid/net/Uri$Builder;
    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v10}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    .line 203
    const-string/jumbo v9, "dingtalk://dingtalkclient/page/link"

    .line 204
    .local v9, "wholeUrl":Ljava/lang/String;
    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 205
    .local v8, "wholeUri":Landroid/net/Uri;
    invoke-virtual {v8}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v10

    const-string/jumbo v11, "url"

    invoke-virtual {v10, v11, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v7

    .line 206
    .local v7, "wholeBuilder":Landroid/net/Uri$Builder;
    invoke-virtual {v7}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v10}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    .line 208
    const-string/jumbo v10, "key_create_org_jump_url"

    invoke-virtual {v1, v10, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v10

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v11

    invoke-virtual {v10, v11, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->d(Landroid/app/Activity;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 211
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v3    # "suffixBuilder":Landroid/net/Uri$Builder;
    .end local v4    # "suffixUri":Landroid/net/Uri;
    .end local v5    # "suffixUrl":Ljava/lang/String;
    .end local v7    # "wholeBuilder":Landroid/net/Uri$Builder;
    .end local v8    # "wholeUri":Landroid/net/Uri;
    .end local v9    # "wholeUrl":Ljava/lang/String;
    :cond_1
    iget v10, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment;->g:I

    const/4 v11, 0x4

    if-ne v10, v11, :cond_2

    .line 213
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 214
    .restart local v1    # "bundle":Landroid/os/Bundle;
    const-string/jumbo v10, "intent_key_lower_limit"

    invoke-virtual {v1, v10, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 215
    const-string/jumbo v10, "key_create_org_jump_url"

    const-string/jumbo v11, "dingtalk://dingtalkclient/page/devicebindui?conn=lan&code=4&service=14&from=native&action=createGroupSuccess&corpId=__CORPID__&orgId=__ORGID__&orgName=__ORGNAME__"

    invoke-virtual {v1, v10, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v10

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v11

    invoke-virtual {v10, v11, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->d(Landroid/app/Activity;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 218
    .end local v1    # "bundle":Landroid/os/Bundle;
    :cond_2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 219
    .restart local v1    # "bundle":Landroid/os/Bundle;
    const-string/jumbo v10, "intent_key_lower_limit"

    invoke-virtual {v1, v10, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 221
    const-string/jumbo v10, "key_create_org_jump_url"

    const-string/jumbo v11, "dingtalk://dingtalkclient/page/devicebindui?connType=ble&from=native&action=createGroupSuccess&corpId=__CORPID__&orgId=__ORGID__&orgName=__ORGNAME__"

    invoke-virtual {v1, v10, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v10

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v11

    invoke-virtual {v10, v11, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->d(Landroid/app/Activity;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 225
    .end local v1    # "bundle":Landroid/os/Bundle;
    :cond_3
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v10

    invoke-direct {v0, v10}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 226
    .local v0, "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    sget v10, Lbrx$g;->create_org_unable_toast:I

    invoke-virtual {p0, v10}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 227
    sget v10, Lbrx$g;->sure:I

    const/4 v11, 0x0

    invoke-virtual {v0, v10, v11}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 228
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    goto/16 :goto_0
.end method

.method static synthetic d(Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment;->d()V

    return-void
.end method

.method static synthetic e(Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment;->b:Landroid/view/View;

    return-object v0
.end method

.method static synthetic g(Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment;->d:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public final A()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment;->l()Lbsw$c;

    move-result-object v0

    instance-of v0, v0, Lbss;

    if-eqz v0, :cond_0

    .line 93
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment;->t()V

    .line 94
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "GroupFragment"

    const-string/jumbo v2, "alpha_create_team_cancel"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 98
    :goto_0
    return-void

    .line 96
    :cond_0
    invoke-super {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BaseFragment;->A()V

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 2
    .param p1, "corpId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 358
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 359
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment;->e:Ljava/lang/String;

    .line 360
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment;->c:Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment$a;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment$a;->notifyDataSetChanged()V

    .line 361
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment;->b:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 363
    :cond_0
    return-void
.end method

.method public final c()V
    .locals 12

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 280
    .line 1312
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1314
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v2

    .line 1315
    if-eqz v2, :cond_1

    iget-object v4, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    if-eqz v4, :cond_1

    .line 1316
    iget-object v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .line 1317
    if-eqz v2, :cond_0

    .line 1322
    iget-wide v6, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    const-wide/16 v8, 0x5209

    cmp-long v5, v6, v8

    if-eqz v5, :cond_0

    .line 1326
    invoke-static {v2}, Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;->parseGroupData(Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;)Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;

    move-result-object v2

    .line 1327
    if-eqz v2, :cond_0

    .line 1328
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1335
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment;->w()Ljava/util/List;

    move-result-object v2

    .line 1336
    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 1337
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;

    .line 1338
    if-eqz v2, :cond_2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1339
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1346
    :cond_3
    new-instance v2, Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData$a;

    invoke-direct {v2}, Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData$a;-><init>()V

    invoke-static {v3, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1348
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1349
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment;->d:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 282
    :goto_2
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 284
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment;->e:Ljava/lang/String;

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v11, :cond_6

    .line 285
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment;->d:Ljava/util/List;

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;

    .line 286
    .local v1, "data":Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;
    iget-boolean v2, v1, Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;->isAdmin:Z

    if-eqz v2, :cond_4

    .line 287
    iget-object v2, v1, Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;->corpId:Ljava/lang/String;

    iput-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment;->e:Ljava/lang/String;

    .line 288
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment;->b:Landroid/view/View;

    invoke-virtual {v2, v11}, Landroid/view/View;->setEnabled(Z)V

    .line 307
    .end local v1    # "data":Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;
    :cond_4
    :goto_3
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment;->c:Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment$a;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment$a;->notifyDataSetChanged()V

    .line 308
    return-void

    .line 1351
    :cond_5
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 1352
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment;->d:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 290
    :cond_6
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment;->e:Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 291
    const/4 v0, 0x0

    .line 292
    .local v0, "contain":Z
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;

    .line 293
    .restart local v1    # "data":Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment;->e:Ljava/lang/String;

    iget-object v4, v1, Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;->corpId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 294
    const/4 v0, 0x1

    .line 296
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment;->b:Landroid/view/View;

    iget-boolean v3, v1, Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;->isAdmin:Z

    invoke-virtual {v2, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 301
    .end local v1    # "data":Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;
    :cond_8
    if-nez v0, :cond_4

    .line 302
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment;->e:Ljava/lang/String;

    .line 303
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment;->b:Landroid/view/View;

    invoke-virtual {v2, v10}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_3
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v11, 0x0

    .line 102
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 104
    sget v8, Lbrx$d;->layout_org:I

    invoke-virtual {p0, v8}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment;->a(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment;->f:Landroid/view/View;

    .line 105
    sget v8, Lbrx$d;->list_view:I

    invoke-virtual {p0, v8}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment;->a(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ListView;

    iput-object v8, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment;->a:Landroid/widget/ListView;

    .line 106
    sget v8, Lbrx$d;->finish_button:I

    invoke-virtual {p0, v8}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment;->a(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment;->b:Landroid/view/View;

    .line 107
    iget-object v8, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment;->b:Landroid/view/View;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setEnabled(Z)V

    .line 109
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 110
    .local v1, "bundle":Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 112
    :try_start_0
    const-string/jumbo v8, "device_service_id"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment;->h:I

    .line 113
    const-string/jumbo v8, "device_type_code"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment;->g:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    :cond_0
    :goto_0
    iget-object v8, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment;->b:Landroid/view/View;

    new-instance v9, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment$1;

    invoke-direct {v9, p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment$1;-><init>(Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment;)V

    invoke-virtual {v8, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    new-instance v8, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment$a;

    invoke-direct {v8, p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment$a;-><init>(Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment;)V

    iput-object v8, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment;->c:Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment$a;

    .line 133
    iget-object v8, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment;->a:Landroid/widget/ListView;

    iget-object v9, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment;->c:Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment$a;

    invoke-virtual {v8, v9}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 135
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v8

    sget v9, Lbrx$e;->device_config_add_item_org:I

    invoke-virtual {v8, v9, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 136
    .local v2, "convertView":Landroid/view/View;
    new-instance v8, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment$2;

    invoke-direct {v8, p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment$2;-><init>(Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment;)V

    invoke-virtual {v2, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    iget-object v8, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment;->a:Landroid/widget/ListView;

    invoke-virtual {v8, v2}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 150
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment;->c()V

    .line 152
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 153
    .local v4, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v8, "com.workapp.org_employee_change"

    invoke-virtual {v4, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 154
    const-string/jumbo v8, "com.workapp.org.sync"

    invoke-virtual {v4, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 156
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v8

    iget-object v9, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment;->i:Landroid/content/BroadcastReceiver;

    invoke-virtual {v8, v9, v4}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 158
    iget-object v8, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment;->d:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v6

    .line 160
    .local v6, "size":I
    if-nez v6, :cond_1

    .line 161
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment;->d()V

    .line 163
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment;->l()Lbsw$c;

    move-result-object v8

    instance-of v8, v8, Lbsz;

    if-eqz v8, :cond_5

    .line 164
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 165
    .local v0, "args":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v9, "source"

    if-eqz v6, :cond_4

    const-string/jumbo v8, "1"

    :goto_1
    invoke-interface {v0, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v8

    const-string/jumbo v9, "GroupFragment"

    const-string/jumbo v10, "alpha_bind_team_enter"

    invoke-interface {v8, v9, v10, v0}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 177
    .end local v0    # "args":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    :goto_2
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment;->m()Lbsw$b;

    move-result-object v7

    .line 178
    .local v7, "source":Lbsw$b;
    if-eqz v7, :cond_3

    invoke-interface {v7}, Lbsw$b;->a()Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 179
    invoke-interface {v7}, Lbsw$b;->a()Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;

    move-result-object v5

    .line 180
    .local v5, "groupData":Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;
    iget-object v8, v5, Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;->corpId:Ljava/lang/String;

    invoke-virtual {p0, v8}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment;->b(Ljava/lang/String;)V

    .line 182
    .end local v5    # "groupData":Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;
    :cond_3
    return-void

    .line 114
    .end local v2    # "convertView":Landroid/view/View;
    .end local v4    # "filter":Landroid/content/IntentFilter;
    .end local v6    # "size":I
    .end local v7    # "source":Lbsw$b;
    :catch_0
    move-exception v3

    .line 115
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 165
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v0    # "args":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v2    # "convertView":Landroid/view/View;
    .restart local v4    # "filter":Landroid/content/IntentFilter;
    .restart local v6    # "size":I
    :cond_4
    const-string/jumbo v8, "2"

    goto :goto_1

    .line 167
    .end local v0    # "args":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_5
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment;->l()Lbsw$c;

    move-result-object v8

    instance-of v8, v8, Lbsv;

    if-eqz v8, :cond_2

    .line 168
    if-nez v6, :cond_6

    .line 169
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v8

    const-string/jumbo v9, "GroupFragment"

    const-string/jumbo v10, "oa_bravo_attendance_teammember_create_click"

    invoke-interface {v8, v9, v10, v11}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_2

    .line 170
    :cond_6
    const/4 v8, 0x1

    if-ne v6, v8, :cond_7

    .line 171
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v8

    const-string/jumbo v9, "GroupFragment"

    const-string/jumbo v10, "oa_bravo_attendance_teammember_list_one_click"

    invoke-interface {v8, v9, v10, v11}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_2

    .line 173
    :cond_7
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v8

    const-string/jumbo v9, "GroupFragment"

    const-string/jumbo v10, "oa_bravo_attendance_teammember_list_overone_click"

    invoke-interface {v8, v9, v10, v11}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_2
.end method

.method public onDestroy()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 275
    invoke-super {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BaseFragment;->onDestroy()V

    .line 276
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment;->i:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 277
    return-void
.end method

.method public onPause()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 251
    invoke-super {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BaseFragment;->onPause()V

    .line 253
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 254
    .local v0, "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "spm"

    const-string/jumbo v2, "a2q0r.11900333"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment;->m()Lbsw$b;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 256
    const-string/jumbo v1, "device_type"

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment;->m()Lbsw$b;

    move-result-object v2

    invoke-interface {v2}, Lbsw$b;->c()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    :cond_0
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    const-string/jumbo v2, "Smart_Device_Set_Org"

    invoke-interface {v1, p0, v2, v0}, Lcom/alibaba/doraemon/statistics/Statistics;->leavePage(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 259
    return-void
.end method

.method public onResume()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 263
    invoke-super {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BaseFragment;->onResume()V

    .line 265
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 266
    .local v0, "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "spm"

    const-string/jumbo v2, "a2q0r.11900333"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment;->m()Lbsw$b;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 268
    const-string/jumbo v1, "device_type"

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment;->m()Lbsw$b;

    move-result-object v2

    invoke-interface {v2}, Lbsw$b;->c()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    :cond_0
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    const-string/jumbo v2, "Smart_Device_Set_Org"

    invoke-interface {v1, p0, v2, v0}, Lcom/alibaba/doraemon/statistics/Statistics;->enterPage(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 271
    return-void
.end method

.method protected final r_()I
    .locals 1

    .prologue
    .line 86
    sget v0, Lbrx$e;->activity_device_config_orgs:I

    return v0
.end method
