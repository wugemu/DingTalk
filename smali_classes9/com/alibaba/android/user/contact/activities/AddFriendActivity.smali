.class public Lcom/alibaba/android/user/contact/activities/AddFriendActivity;
.super Lcom/alibaba/android/user/UserBaseActivity;
.source "AddFriendActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Z

.field private b:I

.field private c:Z

.field private d:Z

.field private e:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

.field private f:Z

.field private g:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 69
    invoke-direct {p0}, Lcom/alibaba/android/user/UserBaseActivity;-><init>()V

    .line 74
    iput-boolean v0, p0, Lcom/alibaba/android/user/contact/activities/AddFriendActivity;->a:Z

    .line 76
    iput v0, p0, Lcom/alibaba/android/user/contact/activities/AddFriendActivity;->b:I

    .line 78
    iput-boolean v0, p0, Lcom/alibaba/android/user/contact/activities/AddFriendActivity;->c:Z

    .line 80
    iput-boolean v0, p0, Lcom/alibaba/android/user/contact/activities/AddFriendActivity;->d:Z

    .line 86
    iput-boolean v0, p0, Lcom/alibaba/android/user/contact/activities/AddFriendActivity;->f:Z

    .line 87
    new-instance v0, Lcom/alibaba/android/user/contact/activities/AddFriendActivity$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/user/contact/activities/AddFriendActivity$1;-><init>(Lcom/alibaba/android/user/contact/activities/AddFriendActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/AddFriendActivity;->g:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/activities/AddFriendActivity;Ljava/lang/String;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/AddFriendActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 69
    .line 2271
    :try_start_0
    invoke-static {p1}, Lgxk;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 2272
    const-string/jumbo v1, "MPHONE"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2273
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2274
    const-string/jumbo v0, "scan phone null"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lfxo;->o(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2275
    sget v0, Lezg$l;->dt_user_scan_fail_phone:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 2317
    :goto_0
    return-void

    .line 2278
    :cond_0
    new-instance v0, Lcom/alibaba/android/user/contact/activities/AddFriendActivity$4;

    invoke-direct {v0, p0, v1}, Lcom/alibaba/android/user/contact/activities/AddFriendActivity$4;-><init>(Lcom/alibaba/android/user/contact/activities/AddFriendActivity;Ljava/lang/String;)V

    const-class v2, Lcma;

    invoke-static {v0, v2, p0}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 2313
    invoke-static {}, Lfbg;->a()Lfac;

    move-result-object v2

    invoke-interface {v2, v1, v0}, Lfac;->a(Ljava/lang/String;Lcma;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2314
    :catch_0
    move-exception v0

    .line 2315
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2316
    const-string/jumbo v0, "json exception"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lfxo;->o(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 234
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 235
    if-eqz p3, :cond_0

    .line 236
    const-string/jumbo v1, "employee_info"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .line 237
    .local v0, "orgEmployeeExtensionObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    if-eqz v0, :cond_0

    iget-wide v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 238
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    iget-wide v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    invoke-virtual {v1, p0, v2, v3}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->f(Landroid/content/Context;J)V

    .line 242
    .end local v0    # "orgEmployeeExtensionObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 178
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lezg$h;->my_name_qrcode:I

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lezg$h;->if_my_qrcode:I

    if-ne v0, v1, :cond_3

    .line 179
    :cond_0
    invoke-static {}, Lcom/alibaba/android/user/contact/utils/UserUtils;->j()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/alibaba/android/user/contact/utils/UserUtils;->h()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 180
    invoke-static {p0}, Lcmx;->a(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/share_namecard.html"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;)V

    .line 230
    :cond_1
    :goto_0
    return-void

    .line 182
    :cond_2
    invoke-static {p0}, Lcmx;->a(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/user/my_qrcode.html"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;)V

    goto :goto_0

    .line 184
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lezg$h;->tc_add_friend_search:I

    if-ne v0, v1, :cond_4

    .line 185
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/search_mobile_contacts.html"

    .line 186
    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;)V

    goto :goto_0

    .line 187
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lezg$h;->tc_add_friend_scan:I

    if-ne v0, v1, :cond_5

    .line 188
    invoke-static {}, Lcom/alibaba/dingtalk/scanbase/QRCodeInterface;->a()Lcom/alibaba/dingtalk/scanbase/QRCodeInterface;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/alibaba/dingtalk/scanbase/QRCodeInterface;->a(Landroid/content/Context;)V

    goto :goto_0

    .line 189
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lezg$h;->tc_add_friend_mobile:I

    if-ne v0, v1, :cond_6

    .line 190
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    .line 191
    invoke-interface {v0, p0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/local_contact.html"

    new-instance v2, Lcom/alibaba/android/user/contact/activities/AddFriendActivity$2;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/contact/activities/AddFriendActivity$2;-><init>(Lcom/alibaba/android/user/contact/activities/AddFriendActivity;)V

    .line 192
    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto :goto_0

    .line 199
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lezg$h;->tc_add_2_org:I

    if-ne v0, v1, :cond_7

    .line 200
    invoke-static {p0}, Lfls;->c(Landroid/app/Activity;)V

    .line 201
    const-string/jumbo v0, "contact_add_2_org_click"

    invoke-static {v0}, Lfxo;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 202
    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lezg$h;->tc_create_org:I

    if-ne v0, v1, :cond_8

    .line 203
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/AddFriendActivity;->e:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    invoke-static {p0, v0}, Lfls;->a(Landroid/content/Context;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;)V

    goto/16 :goto_0

    .line 204
    :cond_8
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lezg$h;->rl_join_org:I

    if-ne v0, v1, :cond_9

    .line 205
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 206
    .local v6, "bundle":Landroid/os/Bundle;
    const-string/jumbo v0, "from"

    const-string/jumbo v1, "intent_value_from_contact"

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    invoke-virtual {v0, p0, v6}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->z(Landroid/app/Activity;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 208
    .end local v6    # "bundle":Landroid/os/Bundle;
    :cond_9
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lezg$h;->tc_add_external:I

    if-ne v0, v1, :cond_a

    .line 209
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Landroid/content/Context;JLcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;I)V

    goto/16 :goto_0

    .line 210
    :cond_a
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lezg$h;->tc_add_fav:I

    if-ne v0, v1, :cond_b

    .line 211
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Landroid/app/Activity;)V

    goto/16 :goto_0

    .line 212
    :cond_b
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lezg$h;->tc_create_group_f2f:I

    if-ne v0, v1, :cond_c

    .line 214
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 215
    .local v7, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v0, "type"

    const-string/jumbo v1, "2"

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "f2f_create_group_clicked"

    invoke-interface {v0, v1, v7}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/util/Map;)V

    .line 217
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->e(Landroid/app/Activity;)V

    goto/16 :goto_0

    .line 218
    .end local v7    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_c
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lezg$h;->rl_exchange_card:I

    if-ne v0, v1, :cond_d

    .line 219
    invoke-static {p0}, Lcmx;->a(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/exchange_namecard.html"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 220
    :cond_d
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lezg$h;->rl_scan_card:I

    if-ne v0, v1, :cond_1

    .line 221
    invoke-static {p0}, Lcmx;->a(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/camera_recognize_card.html"

    new-instance v2, Lcom/alibaba/android/user/contact/activities/AddFriendActivity$3;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/contact/activities/AddFriendActivity$3;-><init>(Lcom/alibaba/android/user/contact/activities/AddFriendActivity;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto/16 :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v7, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x8

    .line 104
    invoke-super {p0, p1}, Lcom/alibaba/android/user/UserBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 105
    sget v1, Lezg$j;->activity_add_friend_v2:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/contact/activities/AddFriendActivity;->setContentView(I)V

    .line 106
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/activities/AddFriendActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v4, "intent_key_is_add_contact_mode"

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alibaba/android/user/contact/activities/AddFriendActivity;->a:Z

    .line 107
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/activities/AddFriendActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v4, "show_header_f2f_create_group"

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alibaba/android/user/contact/activities/AddFriendActivity;->f:Z

    .line 1115
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v1

    invoke-virtual {v1}, Lccr;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/user/contact/activities/AddFriendActivity;->e:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    .line 1248
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/AddFriendActivity;->e:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/AddFriendActivity;->e:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    if-eqz v1, :cond_3

    .line 1249
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/AddFriendActivity;->e:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Lcom/alibaba/android/user/contact/activities/AddFriendActivity;->b:I

    .line 1250
    iget v1, p0, Lcom/alibaba/android/user/contact/activities/AddFriendActivity;->b:I

    if-lez v1, :cond_3

    .line 1251
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/AddFriendActivity;->e:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .line 1252
    if-eqz v1, :cond_0

    .line 1255
    iget-object v5, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->roles:Ljava/util/List;

    if-eqz v5, :cond_2

    iget-object v5, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->roles:Ljava/util/List;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->roles:Ljava/util/List;

    const/4 v6, 0x2

    .line 1256
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1257
    :cond_1
    iput-boolean v7, p0, Lcom/alibaba/android/user/contact/activities/AddFriendActivity;->c:Z

    .line 1259
    :cond_2
    iget-object v5, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->empSetting:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmpSettingObject;

    if-eqz v5, :cond_0

    iget-object v5, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    if-eqz v5, :cond_0

    iget-object v5, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    iget-object v5, v5, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->settingsObject:Lcom/alibaba/android/dingtalk/userbase/model/OrganizationSettingsObject;

    if-eqz v5, :cond_0

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->settingsObject:Lcom/alibaba/android/dingtalk/userbase/model/OrganizationSettingsObject;

    iget-boolean v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrganizationSettingsObject;->openInvite:Z

    if-eqz v1, :cond_0

    .line 1262
    iput-boolean v7, p0, Lcom/alibaba/android/user/contact/activities/AddFriendActivity;->d:Z

    goto :goto_0

    .line 1120
    :cond_3
    sget v1, Lezg$h;->include_name_card:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/contact/activities/AddFriendActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1121
    invoke-static {}, Lcom/alibaba/android/user/contact/utils/UserUtils;->j()Z

    move-result v4

    if-nez v4, :cond_5

    .line 1122
    invoke-static {v1, v3}, Lfxp;->a(Landroid/view/View;I)V

    .line 1127
    :goto_1
    iget-boolean v1, p0, Lcom/alibaba/android/user/contact/activities/AddFriendActivity;->a:Z

    if-eqz v1, :cond_9

    .line 1128
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/AddFriendActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    sget v4, Lezg$l;->dt_user_add_contacts:I

    invoke-virtual {v1, v4}, Landroid/support/v7/app/ActionBar;->setTitle(I)V

    .line 1129
    sget v1, Lezg$h;->tv_add_friends_sub_title:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/contact/activities/AddFriendActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1130
    iget-boolean v1, p0, Lcom/alibaba/android/user/contact/activities/AddFriendActivity;->c:Z

    if-eqz v1, :cond_6

    .line 1131
    sget v1, Lezg$h;->tv_add_colleague_sub_title:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/contact/activities/AddFriendActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1132
    sget v1, Lezg$h;->tc_add_2_org:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/contact/activities/AddFriendActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1141
    :goto_2
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v1

    const-string/jumbo v4, "f_contact_find_more_team_from_contact_adding"

    .line 2083
    invoke-virtual {v1, v4, v7}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v1

    .line 1141
    if-eqz v1, :cond_8

    .line 1142
    sget v1, Lezg$h;->v_divider_create_org:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/contact/activities/AddFriendActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1143
    sget v1, Lezg$h;->rl_join_org:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/contact/activities/AddFriendActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1167
    :goto_3
    iget-boolean v1, p0, Lcom/alibaba/android/user/contact/activities/AddFriendActivity;->f:Z

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    const-string/jumbo v4, "im_f2f_create_group_enabled"

    invoke-virtual {v1, v4, v2}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1168
    sget v1, Lezg$h;->tc_create_group_f2f:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/contact/activities/AddFriendActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1171
    :cond_4
    sget v1, Lezg$h;->my_name_qrcode:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/contact/activities/AddFriendActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1173
    sget v1, Lezg$h;->tv_create_org_tip_only_show_in_chinese:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/contact/activities/AddFriendActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-static {}, Lcms;->c()Z

    move-result v1

    if-eqz v1, :cond_a

    move v1, v2

    :goto_4
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 109
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "com.workapp.recognize.card.from.camera"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 110
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/AddFriendActivity;->g:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 111
    return-void

    .line 1124
    .end local v0    # "intentFilter":Landroid/content/IntentFilter;
    :cond_5
    sget v1, Lezg$h;->rl_exchange_card:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/contact/activities/AddFriendActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1125
    sget v1, Lezg$h;->rl_scan_card:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/contact/activities/AddFriendActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    .line 1133
    :cond_6
    iget-boolean v1, p0, Lcom/alibaba/android/user/contact/activities/AddFriendActivity;->d:Z

    if-eqz v1, :cond_7

    .line 1134
    sget v1, Lezg$h;->tv_add_colleague_sub_title:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/contact/activities/AddFriendActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1135
    sget v1, Lezg$h;->tc_add_2_org:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/contact/activities/AddFriendActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    .line 1137
    :cond_7
    sget v1, Lezg$h;->tv_add_colleague_sub_title:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/contact/activities/AddFriendActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1138
    sget v1, Lezg$h;->tc_add_2_org:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/contact/activities/AddFriendActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    .line 1145
    :cond_8
    sget v1, Lezg$h;->v_divider_create_org:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/contact/activities/AddFriendActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1146
    sget v1, Lezg$h;->rl_join_org:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/contact/activities/AddFriendActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3

    .line 1149
    :cond_9
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/AddFriendActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    sget v4, Lezg$l;->add_friend:I

    invoke-virtual {v1, v4}, Landroid/support/v7/app/ActionBar;->setTitle(I)V

    .line 1150
    sget v1, Lezg$h;->tc_create_org:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/contact/activities/AddFriendActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1151
    sget v1, Lezg$h;->v_divider_create_org:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/contact/activities/AddFriendActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1152
    sget v1, Lezg$h;->rl_join_org:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/contact/activities/AddFriendActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1153
    sget v1, Lezg$h;->tv_add_friends_sub_title:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/contact/activities/AddFriendActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1154
    sget v1, Lezg$h;->tv_add_colleague_sub_title:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/contact/activities/AddFriendActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1155
    sget v1, Lezg$h;->tc_add_2_org:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/contact/activities/AddFriendActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1158
    sget v1, Lezg$h;->tv_add_external:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/contact/activities/AddFriendActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1159
    sget v1, Lezg$h;->tc_add_external:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/contact/activities/AddFriendActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1162
    sget v1, Lezg$h;->tv_add_fav:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/contact/activities/AddFriendActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1163
    sget v1, Lezg$h;->tc_add_fav:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/contact/activities/AddFriendActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1164
    sget v1, Lezg$h;->tv_add_fav_footer:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/contact/activities/AddFriendActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3

    :cond_a
    move v1, v3

    .line 1173
    goto/16 :goto_4
.end method

.method protected onDestroy()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 322
    invoke-super {p0}, Lcom/alibaba/android/user/UserBaseActivity;->onDestroy()V

    .line 323
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/AddFriendActivity;->g:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 324
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/AddFriendActivity;->g:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 326
    :cond_0
    return-void
.end method
