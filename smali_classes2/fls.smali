.class public final Lfls;
.super Ljava/lang/Object;
.source "ContactUtils.java"


# static fields
.field private static a:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 117
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lfls;->a:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(J)I
    .locals 8
    .param p0, "orgId"    # J

    .prologue
    const/4 v3, -0x1

    .line 204
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v4

    invoke-virtual {v4}, Lccr;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v2

    .line 205
    .local v2, "userProfileExtensionObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    if-nez v2, :cond_1

    .line 225
    :cond_0
    :goto_0
    return v3

    .line 209
    :cond_1
    iget-object v1, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    .line 210
    .local v1, "orgEmployeeExtensionObjectList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 214
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .line 216
    .local v0, "orgEmployeeExtensionObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    if-eqz v0, :cond_2

    .line 220
    iget-wide v6, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    cmp-long v5, v6, p0

    if-nez v5, :cond_2

    .line 221
    iget v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->role:I

    goto :goto_0
.end method

.method public static a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;J)Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    .locals 7
    .param p0, "userProfileExtensionObject"    # Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    .param p1, "orgId"    # J

    .prologue
    .line 167
    const/4 v1, 0x0

    .line 168
    .local v1, "orgEmployeeExtensionObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    if-eqz p0, :cond_1

    .line 169
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    .line 170
    .local v2, "orgEmployeeExtensionObjectList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;>;"
    if-eqz v2, :cond_1

    .line 171
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .line 172
    .local v0, "item":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    if-eqz v0, :cond_0

    .line 173
    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    cmp-long v4, v4, p1

    if-nez v4, :cond_0

    .line 174
    move-object v1, v0

    .line 181
    .end local v0    # "item":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    .end local v2    # "orgEmployeeExtensionObjectList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;>;"
    :cond_1
    return-object v1
.end method

.method public static a(I)Lecw;
    .locals 3
    .param p0, "orgAuthLevel"    # I

    .prologue
    .line 733
    packed-switch p0, :pswitch_data_0

    .line 741
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 735
    :pswitch_0
    new-instance v0, Lecw;

    sget v1, Lezg$l;->icon_certification_f:I

    invoke-static {v1}, Leda;->a(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lezg$e;->ui_common_orange_icon_bg_color:I

    invoke-static {v2}, Leda;->b(I)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lecw;-><init>(Ljava/lang/String;I)V

    goto :goto_0

    .line 737
    :pswitch_1
    new-instance v0, Lecw;

    sget v1, Lezg$l;->icon_certification_f:I

    invoke-static {v1}, Leda;->a(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lezg$e;->ui_common_theme_bg_color:I

    invoke-static {v2}, Leda;->b(I)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lecw;-><init>(Ljava/lang/String;I)V

    goto :goto_0

    .line 739
    :pswitch_2
    new-instance v0, Lecw;

    sget v1, Lezg$l;->icon_certification_f:I

    invoke-static {v1}, Leda;->a(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lezg$e;->ui_common_safe_bg_color:I

    invoke-static {v2}, Leda;->b(I)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lecw;-><init>(Ljava/lang/String;I)V

    goto :goto_0

    .line 733
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static a(Landroid/content/Intent;)Ljava/util/List;
    .locals 5
    .param p0, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1395
    if-nez p0, :cond_0

    .line 1396
    const/4 v1, 0x0

    .line 1407
    :goto_0
    return-object v1

    .line 1399
    :cond_0
    const-string/jumbo v3, "memory_file_descriptor"

    invoke-virtual {p0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1400
    .local v0, "fd":I
    if-lez v0, :cond_1

    .line 1401
    const-string/jumbo v3, "memory_file_size"

    invoke-virtual {p0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 1402
    .local v2, "size":I
    invoke-static {v0, v2}, Lcnf;->a(II)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 1403
    .local v1, "selectedUserList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    goto :goto_0

    .line 1404
    .end local v1    # "selectedUserList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    .end local v2    # "size":I
    :cond_1
    const-string/jumbo v3, "choose_user_identities"

    invoke-virtual {p0, v3}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .restart local v1    # "selectedUserList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    goto :goto_0
.end method

.method public static a(JZ)V
    .locals 6
    .param p0, "orgId"    # J
    .param p2, "isSet"    # Z

    .prologue
    const/4 v4, 0x1

    .line 750
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "pref_key_set_boss_org_id_"

    aput-object v3, v1, v2

    const-string/jumbo v2, "_"

    aput-object v2, v1, v4

    const/4 v2, 0x2

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 751
    .local v0, "key":Ljava/lang/String;
    invoke-static {v0, v4}, Lcpk;->b(Ljava/lang/String;Z)V

    .line 752
    return-void
.end method

.method public static a(Landroid/app/Activity;)V
    .locals 8
    .param p0, "context"    # Landroid/app/Activity;

    .prologue
    const/4 v4, 0x0

    .line 269
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v0

    invoke-virtual {v0}, Lccr;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v6

    .line 271
    .local v6, "mUserProfileExtObj":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    iget-object v0, v6, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, v6, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 272
    const-string/jumbo v7, "team"

    .line 276
    .local v7, "type":Ljava/lang/String;
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "https://s.dingtalk.com/market/dingtalk/createteam.php?type="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 278
    .local v2, "finalUrl":Ljava/lang/String;
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v0

    sget v1, Lezg$l;->title_activity_settings:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v1, v6, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->userPermissionObject:Lcom/alibaba/android/dingtalk/userbase/model/UserPermissionObject;

    if-eqz v1, :cond_1

    iget-object v1, v6, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->userPermissionObject:Lcom/alibaba/android/dingtalk/userbase/model/UserPermissionObject;

    iget-boolean v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserPermissionObject;->couldCreateOrg:Z

    if-eqz v1, :cond_1

    const/4 v5, 0x1

    :goto_1
    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lgvm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 280
    return-void

    .line 274
    .end local v2    # "finalUrl":Ljava/lang/String;
    .end local v7    # "type":Ljava/lang/String;
    :cond_0
    const-string/jumbo v7, "person"

    .restart local v7    # "type":Ljava/lang/String;
    goto :goto_0

    .restart local v2    # "finalUrl":Ljava/lang/String;
    :cond_1
    move v5, v4

    .line 278
    goto :goto_1
.end method

.method public static a(Landroid/app/Activity;J)V
    .locals 7
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "orgId"    # J

    .prologue
    const-wide/16 v4, 0x0

    .line 1229
    .line 12237
    if-eqz p0, :cond_0

    .line 12241
    cmp-long v0, p1, v4

    if-gtz v0, :cond_1

    .line 12242
    const-string/jumbo v0, "user"

    const-string/jumbo v1, "ContactUtils"

    const-string/jumbo v2, "nav2InviteStaffWithOrgId orgId <=0"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 12243
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    sget v1, Lezg$l;->unknown_error:I

    invoke-virtual {v0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    .line 12249
    :cond_0
    :goto_0
    return-void

    .line 12247
    :cond_1
    invoke-static {p0}, Lcms;->d(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 12248
    sget v0, Lezg$l;->network_error:I

    invoke-static {v0}, Lcms;->a(I)V

    goto :goto_0

    .line 12252
    :cond_2
    instance-of v0, p0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    if-eqz v0, :cond_3

    move-object v0, p0

    .line 12253
    check-cast v0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->showLoadingDialog()V

    .line 12257
    :cond_3
    new-instance v0, Lcom/alibaba/android/user/contact/activities/OrgInviteFuc;

    new-instance v1, Lfls$12;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v4, v5, v2}, Lfls$12;-><init>(Landroid/app/Activity;JLjava/lang/Boolean;)V

    invoke-direct {v0, v1}, Lcom/alibaba/android/user/contact/activities/OrgInviteFuc;-><init>(Lcom/alibaba/android/user/contact/activities/OrgInviteFuc$a;)V

    .line 12278
    invoke-virtual {v0, p1, p2, v4, v5}, Lcom/alibaba/android/user/contact/activities/OrgInviteFuc;->a(JJ)V

    goto :goto_0
.end method

.method static synthetic a(Landroid/app/Activity;JLjava/lang/String;)V
    .locals 3
    .param p0, "x0"    # Landroid/app/Activity;
    .param p1, "x1"    # J
    .param p3, "x2"    # Ljava/lang/String;

    .prologue
    .line 105
    .line 13943
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/contact/manage_staff.html"

    new-instance v2, Lfls$8;

    invoke-direct {v2, p1, p2, p3}, Lfls$8;-><init>(JLjava/lang/String;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 105
    return-void
.end method

.method public static a(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 7
    .param p0, "context"    # Landroid/app/Activity;
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    .line 302
    if-nez p1, :cond_0

    .line 303
    new-instance p1, Landroid/os/Bundle;

    .end local p1    # "bundle":Landroid/os/Bundle;
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 305
    .restart local p1    # "bundle":Landroid/os/Bundle;
    :cond_0
    const-string/jumbo v0, "is_finish_activity"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 306
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v0

    const-string/jumbo v2, "https://tms.dingtalk.com/markets/dingtalk/createteam-index"

    sget v1, Lezg$l;->create_org_h5_title:I

    .line 307
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v1, p0

    move-object v4, p1

    move v6, v5

    .line 306
    invoke-virtual/range {v0 .. v6}, Lgvm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZZ)V

    .line 308
    return-void
.end method

.method public static a(Landroid/app/Activity;Landroid/os/Bundle;Z)V
    .locals 2
    .param p0, "context"    # Landroid/app/Activity;
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "isFinishActivity"    # Z

    .prologue
    const/4 v1, 0x1

    .line 402
    const/4 v0, 0x0

    invoke-static {p0, v0, v1, v1}, Lfls;->a(Landroid/app/Activity;Landroid/os/Bundle;ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 403
    invoke-static {p0}, Lfls;->a(Landroid/app/Activity;)V

    .line 406
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 409
    :cond_0
    return-void
.end method

.method public static a(Landroid/app/Activity;Lcma;)V
    .locals 6
    .param p0, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcma",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1458
    .local p1, "apiEventListener":Lcma;, "Lcma<Ljava/lang/Boolean;>;"
    if-nez p1, :cond_0

    .line 1516
    :goto_0
    return-void

    .line 1462
    :cond_0
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v1

    const-string/jumbo v2, "f_show_contact_match_guide"

    .line 13083
    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v1

    .line 1462
    if-eqz v1, :cond_1

    const-string/jumbo v1, "pref_key_contact_match_blue_guide_closed"

    const/4 v2, 0x0

    .line 1463
    invoke-static {v1, v2}, Lcpk;->a(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1464
    :cond_1
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v1

    new-instance v2, Lfls$18;

    invoke-direct {v2, p1}, Lfls$18;-><init>(Lcma;)V

    invoke-virtual {v1, v2}, Lhcv;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1474
    :cond_2
    invoke-static {}, Lcms;->u()J

    move-result-wide v2

    const-string/jumbo v1, "pref_key_contact_match_switch_last_time"

    invoke-static {v1}, Lcpk;->d(Ljava/lang/String;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x5265c00

    cmp-long v1, v2, v4

    if-gez v1, :cond_3

    .line 1476
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v1

    new-instance v2, Lfls$19;

    invoke-direct {v2, p1}, Lfls$19;-><init>(Lcma;)V

    invoke-virtual {v1, v2}, Lhcv;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1488
    :cond_3
    new-instance v0, Lfls$20;

    invoke-direct {v0, p1}, Lfls$20;-><init>(Lcma;)V

    .line 1512
    .local v0, "newApiEventListener":Lcma;, "Lcma<Ljava/lang/Boolean;>;"
    invoke-static {p0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1513
    const-string/jumbo v1, "EVENTBUTLER"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/eventbus/EventButler;

    const-class v2, Lcma;

    invoke-interface {v1, v0, v2, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "newApiEventListener":Lcma;, "Lcma<Ljava/lang/Boolean;>;"
    check-cast v0, Lcma;

    .line 1515
    .restart local v0    # "newApiEventListener":Lcma;, "Lcma<Ljava/lang/Boolean;>;"
    :cond_4
    invoke-static {}, Lfaz;->a()Lezy;

    move-result-object v1

    invoke-interface {v1, v0}, Lezy;->b(Lcma;)V

    goto :goto_0
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "source"    # Ljava/lang/String;

    .prologue
    .line 1303
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/page/friendrequest"

    new-instance v2, Lfls$13;

    invoke-direct {v2, p1}, Lfls$13;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 1312
    invoke-static {}, Lfls;->h()V

    .line 1313
    invoke-static {}, Lfls;->k()V

    .line 1314
    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 121
    if-nez p0, :cond_0

    .line 143
    :goto_0
    return-void

    .line 125
    :cond_0
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;-><init>(Landroid/content/Context;)V

    .line 126
    .local v0, "customDialog":Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;
    sget v1, Lezg$g;->concern_dialog_icon:I

    .line 2243
    iput v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->h:I

    .line 127
    sget v1, Lezg$l;->concern_desc:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 3239
    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->d:Ljava/lang/String;

    .line 4230
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->k:Z

    .line 129
    sget v1, Lezg$l;->concern_title:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 5218
    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->c:Ljava/lang/String;

    .line 130
    new-instance v1, Lfls$1;

    invoke-direct {v1, v0}, Lfls$1;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;)V

    .line 5271
    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->a:Landroid/view/View$OnClickListener;

    .line 136
    sget v1, Lezg$l;->guide_text_i_know_that:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 6259
    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->f:Ljava/lang/String;

    .line 137
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v1

    new-instance v2, Lfls$11;

    invoke-direct {v2, v0}, Lfls$11;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;)V

    const-wide/16 v4, 0x1f4

    invoke-virtual {v1, v2, v4, v5}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;J)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "orgId"    # J

    .prologue
    .line 1290
    if-eqz p0, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_1

    .line 1295
    :cond_0
    :goto_0
    return-void

    .line 1293
    :cond_1
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "https://h5.dingtalk.com/orgAuthRights/index.html?lwfrom=orgAuthRights&orgId="

    aput-object v3, v1, v2

    const/4 v2, 0x1

    .line 1294
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1, p2}, Lcom/alibaba/android/user/contact/utils/UserUtils;->a(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 1293
    invoke-virtual {v0, p0, v1, v2}, Lgvm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 543
    invoke-static {}, Lfls;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 544
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/org/create_org_v4.html"

    new-instance v2, Lfls$2;

    invoke-direct {v2, p1}, Lfls$2;-><init>(Landroid/os/Bundle;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 560
    .end local p0    # "context":Landroid/content/Context;
    :cond_0
    :goto_0
    return-void

    .line 555
    .restart local p0    # "context":Landroid/content/Context;
    :cond_1
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 556
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    check-cast p0, Landroid/app/Activity;

    .end local p0    # "context":Landroid/content/Context;
    invoke-virtual {v0, p0, p1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->d(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 557
    const-string/jumbo v0, "contact_create_team_contact_tab_create_team_btn_click"

    invoke-static {v0}, Lfxo;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "colorStr"    # Ljava/lang/String;

    .prologue
    .line 147
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 161
    :cond_0
    :goto_0
    return-void

    .line 151
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 153
    :try_start_0
    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    .line 154
    .local v0, "color":I
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v0    # "color":I
    :catch_0
    move-exception v1

    .line 159
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lezg$e;->C6_9:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userProfileExtensionObject"    # Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    .prologue
    .line 496
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lfls;->a(Landroid/content/Context;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;Landroid/os/Bundle;)V

    .line 497
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;Landroid/os/Bundle;)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userProfileExtensionObject"    # Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 501
    if-eqz p1, :cond_0

    if-nez p0, :cond_1

    .line 518
    .end local p0    # "context":Landroid/content/Context;
    :cond_0
    :goto_0
    return-void

    .line 505
    .restart local p0    # "context":Landroid/content/Context;
    :cond_1
    iget-object v3, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->userPermissionObject:Lcom/alibaba/android/dingtalk/userbase/model/UserPermissionObject;

    if-eqz v3, :cond_7

    iget-object v3, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->userPermissionObject:Lcom/alibaba/android/dingtalk/userbase/model/UserPermissionObject;

    iget-boolean v3, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserPermissionObject;->couldCreateOrg:Z

    if-eqz v3, :cond_7

    .line 506
    if-nez p2, :cond_2

    .line 507
    new-instance p2, Landroid/os/Bundle;

    .end local p2    # "bundle":Landroid/os/Bundle;
    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 510
    .restart local p2    # "bundle":Landroid/os/Bundle;
    :cond_2
    const-string/jumbo v3, "key_create_org_source"

    invoke-virtual {p2, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 8567
    invoke-static {}, Lfls;->j()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 8572
    invoke-static {}, Lfvv;->a()Lfvv;

    move-result-object v3

    const-string/jumbo v4, "create_org_v4"

    .line 9217
    invoke-virtual {v3, v4, v2, v2}, Lfvv;->a(Ljava/lang/String;ZZ)Z

    move-result v3

    .line 8572
    if-eqz v3, :cond_4

    .line 8522
    :cond_3
    :goto_1
    if-eqz v1, :cond_6

    .line 8523
    const-string/jumbo v1, "NAVIGATOR"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v1, p0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v1

    const-string/jumbo v2, "https://qr.dingtalk.com/org/create_org_v4.html"

    new-instance v3, Lfls$26;

    invoke-direct {v3, p2}, Lfls$26;-><init>(Landroid/os/Bundle;)V

    invoke-interface {v1, v2, v3}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto :goto_0

    .line 8577
    :cond_4
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v3

    invoke-virtual {v3}, Lccr;->c()J

    move-result-wide v4

    .line 8578
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object v3

    const-string/jumbo v6, "pref_key_v4_rate"

    const-wide/16 v8, 0x0

    invoke-static {v3, v6, v8, v9}, Lcpk;->b(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v6

    .line 8579
    const-wide/16 v8, 0x64

    rem-long/2addr v4, v8

    cmp-long v3, v4, v6

    if-gez v3, :cond_5

    .line 8582
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object v3

    const-string/jumbo v4, "pref_key_v4_employee_old_flow"

    invoke-static {v3, v4, v2}, Lcpk;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 8583
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v3

    invoke-virtual {v3}, Lccr;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v3

    invoke-static {v3}, Lcom/alibaba/android/user/contact/utils/UserUtils;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_5
    move v1, v2

    .line 8590
    goto :goto_1

    .line 8534
    :cond_6
    instance-of v1, p0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 8535
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    check-cast p0, Landroid/app/Activity;

    .end local p0    # "context":Landroid/content/Context;
    invoke-virtual {v1, p0, p2}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->d(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 8536
    const-string/jumbo v1, "contact_create_team_contact_tab_create_team_btn_click"

    invoke-static {v1}, Lfxo;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 513
    .restart local p0    # "context":Landroid/content/Context;
    :cond_7
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 514
    .local v0, "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    sget v1, Lezg$l;->create_org_unable_toast:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 515
    sget v1, Lezg$l;->sure:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 516
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    goto/16 :goto_0
.end method

.method public static a(Landroid/content/Context;Lcom/alibaba/android/user/model/OrgInviteObject;JLjava/lang/Boolean;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "orgInviteObject"    # Lcom/alibaba/android/user/model/OrgInviteObject;
    .param p2, "departId"    # J
    .param p4, "canManager"    # Ljava/lang/Boolean;

    .prologue
    const/4 v5, 0x0

    .line 845
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 940
    :cond_0
    :goto_0
    return-void

    .line 848
    :cond_1
    const-string/jumbo v0, "contact_invite_click"

    invoke-static {v0}, Lfxo;->a(Ljava/lang/String;)V

    .line 849
    invoke-static {}, Lcke;->a()Lcke;

    move-result-object v0

    const-class v1, Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;

    invoke-virtual {v0, v1}, Lcke;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;

    .line 852
    .local v7, "shareReverseInterface":Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 855
    .local v4, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;>;"
    if-eqz p4, :cond_2

    .line 857
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_5

    move-object v6, p0

    .line 858
    check-cast v6, Landroid/app/Activity;

    .line 863
    .local v6, "activity":Landroid/app/Activity;
    :goto_1
    new-instance v0, Lfls$3;

    invoke-direct {v0, p4, v6, p1, p0}, Lfls$3;-><init>(Ljava/lang/Boolean;Landroid/app/Activity;Lcom/alibaba/android/user/model/OrgInviteObject;Landroid/content/Context;)V

    sget v1, Lezg$l;->dt_invite_title_share_contact_friend:I

    .line 882
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lezg$g;->ic_share_contact_friend_icon:I

    .line 863
    invoke-virtual {v7, p0, v0, v1, v2}, Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;->newCustomShareUnit(Landroid/content/Context;Lgwm;Ljava/lang/String;I)Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 886
    .end local v6    # "activity":Landroid/app/Activity;
    :cond_2
    sget v0, Lezg$l;->dt_invite_title_share_weixin_friend:I

    .line 887
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lfls$4;

    invoke-direct {v1}, Lfls$4;-><init>()V

    .line 886
    invoke-virtual {v7, p0, v0, v1}, Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;->newWeixinFriendShareUnit(Landroid/content/Context;Ljava/lang/String;Lgwm;)Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 898
    invoke-static {p0}, Lcom/alibaba/android/user/contact/utils/UserUtils;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 899
    invoke-virtual {v7, p0}, Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;->newWhatsAppFriendShareUnit(Landroid/content/Context;)Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 902
    :cond_3
    sget v0, Lezg$l;->dt_invite_title_share_qq_friend:I

    .line 903
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lfls$5;

    invoke-direct {v1}, Lfls$5;-><init>()V

    .line 902
    invoke-virtual {v7, p0, v0, v1}, Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;->newQQFriendShareUnit(Landroid/content/Context;Ljava/lang/String;Lgwm;)Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 913
    sget v0, Lezg$l;->dt_invite_title_share_dingtalk:I

    .line 914
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lfls$6;

    invoke-direct {v1}, Lfls$6;-><init>()V

    .line 913
    invoke-virtual {v7, p0, v0, v1}, Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;->newDingDingFriendShareUnit(Landroid/content/Context;Ljava/lang/String;Lgwm;)Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 924
    sget v0, Lezg$l;->dt_invite_title_share_sms:I

    .line 925
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lfls$7;

    invoke-direct {v1}, Lfls$7;-><init>()V

    .line 924
    invoke-virtual {v7, p0, v0, v1}, Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;->newSmsShareUnit(Landroid/content/Context;Ljava/lang/String;Lgwm;)Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 935
    invoke-static {p0}, Lcom/alibaba/android/user/contact/utils/UserUtils;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 936
    invoke-virtual {v7, p0, v5}, Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;->newAndroidSystemShareUnit(Landroid/content/Context;Ljava/lang/String;)Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    .line 11796
    invoke-static/range {v0 .. v5}, Lfls;->a(Landroid/content/Context;Lcom/alibaba/android/user/model/OrgInviteObject;JLjava/util/List;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 860
    :cond_5
    const/4 v6, 0x0

    .restart local v6    # "activity":Landroid/app/Activity;
    goto :goto_1
.end method

.method public static a(Landroid/content/Context;Lcom/alibaba/android/user/model/OrgInviteObject;JLjava/util/List;Ljava/lang/String;)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "orgInviteObject"    # Lcom/alibaba/android/user/model/OrgInviteObject;
    .param p2, "departId"    # J
    .param p5, "shareItemClickStatisticKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/alibaba/android/user/model/OrgInviteObject;",
            "J",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p4, "shareUnits":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;>;"
    const/4 v9, 0x1

    const/4 v4, 0x0

    .line 802
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 841
    :cond_0
    :goto_0
    return-void

    .line 806
    :cond_1
    iget-boolean v1, p1, Lcom/alibaba/android/user/model/OrgInviteObject;->toggle:Z

    if-nez v1, :cond_2

    .line 807
    sget v1, Lezg$l;->invite_close_tips:I

    invoke-static {v1}, Lcms;->a(I)V

    goto :goto_0

    .line 811
    :cond_2
    if-eqz p4, :cond_0

    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 815
    iget-object v8, p1, Lcom/alibaba/android/user/model/OrgInviteObject;->url:Ljava/lang/String;

    .line 816
    .local v8, "url":Ljava/lang/String;
    invoke-static {v8}, Lcpt;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 817
    const-string/jumbo v8, "https://gw.alicdn.com/tps/TB1u3jCMXXXXXcuXpXXXXXXXXXX-200-200.png"

    .line 823
    :cond_3
    :goto_1
    iget-object v1, p1, Lcom/alibaba/android/user/model/OrgInviteObject;->title:Ljava/lang/String;

    invoke-static {v1}, Lfls;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 824
    .local v7, "title":Ljava/lang/String;
    iget-object v1, p1, Lcom/alibaba/android/user/model/OrgInviteObject;->msg:Ljava/lang/String;

    invoke-static {v1}, Lfls;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 826
    .local v6, "msg":Ljava/lang/String;
    new-instance v5, Lcom/alibaba/laiwang/tide/share/business/ShareInfo;

    invoke-direct {v5}, Lcom/alibaba/laiwang/tide/share/business/ShareInfo;-><init>()V

    .line 827
    .local v5, "info":Lcom/alibaba/laiwang/tide/share/business/ShareInfo;
    invoke-virtual {v5, v7}, Lcom/alibaba/laiwang/tide/share/business/ShareInfo;->setTitle(Ljava/lang/String;)V

    .line 828
    invoke-virtual {v5, v6}, Lcom/alibaba/laiwang/tide/share/business/ShareInfo;->setContent(Ljava/lang/String;)V

    .line 829
    invoke-virtual {v5, v8}, Lcom/alibaba/laiwang/tide/share/business/ShareInfo;->setLinkUrl(Ljava/lang/String;)V

    .line 830
    const-string/jumbo v1, "https://gw.alicdn.com/tps/TB1u3jCMXXXXXcuXpXXXXXXXXXX-200-200.png"

    invoke-virtual {v5, v1}, Lcom/alibaba/laiwang/tide/share/business/ShareInfo;->setPictureUrl(Ljava/lang/String;)V

    .line 831
    const-string/jumbo v1, "invite_share_click"

    invoke-virtual {v5, v1}, Lcom/alibaba/laiwang/tide/share/business/ShareInfo;->setShareKey(Ljava/lang/String;)V

    .line 833
    invoke-static {}, Lcke;->a()Lcke;

    move-result-object v1

    const-class v2, Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;

    invoke-virtual {v1, v2}, Lcke;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;

    .line 834
    .local v0, "shareReverseInterface":Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;->newShareConstants(Landroid/content/Context;)Lcom/alibaba/laiwang/tide/share/business/excutor/common/Constants;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alibaba/laiwang/tide/share/business/excutor/ShareToManager;->init(Landroid/content/Context;Lcom/alibaba/laiwang/tide/share/business/excutor/common/Constants;)V

    .line 836
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 837
    iget-object v1, p1, Lcom/alibaba/android/user/model/OrgInviteObject;->notice:Ljava/lang/String;

    invoke-virtual {v0, p0, v1, p4, v5}, Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;->showShareActionBox(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Lcom/alibaba/laiwang/tide/share/business/ShareInfo;)V

    goto :goto_0

    .line 818
    .end local v0    # "shareReverseInterface":Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;
    .end local v5    # "info":Lcom/alibaba/laiwang/tide/share/business/ShareInfo;
    .end local v6    # "msg":Ljava/lang/String;
    .end local v7    # "title":Ljava/lang/String;
    :cond_4
    const-wide/16 v2, 0x0

    cmp-long v1, p2, v2

    if-lez v1, :cond_3

    .line 819
    invoke-static {}, Lfvv;->a()Lfvv;

    move-result-object v1

    const-string/jumbo v2, "depart_invite"

    invoke-virtual {v1, v2, v4, v9}, Lfvv;->a(Ljava/lang/String;ZZ)Z

    move-result v1

    if-nez v1, :cond_3

    .line 820
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    aput-object v8, v1, v4

    const-string/jumbo v2, "&deptId="

    aput-object v2, v1, v9

    const/4 v2, 0x2

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_1

    .line 839
    .restart local v0    # "shareReverseInterface":Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;
    .restart local v5    # "info":Lcom/alibaba/laiwang/tide/share/business/ShareInfo;
    .restart local v6    # "msg":Ljava/lang/String;
    .restart local v7    # "title":Ljava/lang/String;
    :cond_5
    iget-object v2, p1, Lcom/alibaba/android/user/model/OrgInviteObject;->notice:Ljava/lang/String;

    move-object v1, p0

    move-object v3, p5

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;->showShareActionBox(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/alibaba/laiwang/tide/share/business/ShareInfo;)V

    goto/16 :goto_0
.end method

.method public static a(Z)V
    .locals 3
    .param p0, "support"    # Z

    .prologue
    .line 708
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    .line 709
    .local v0, "context":Landroid/content/Context;
    const-string/jumbo v1, "pref_user_facebox_login_device_supported"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 710
    return-void
.end method

.method public static a()Z
    .locals 2

    .prologue
    .line 679
    const-string/jumbo v0, "pref_user_facebox_login_set"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcpk;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static a(JZI)Z
    .locals 6
    .param p0, "orgId"    # J
    .param p2, "matchOrgId"    # Z
    .param p3, "role"    # I

    .prologue
    const/4 v3, 0x0

    .line 633
    if-eqz p2, :cond_1

    const-wide/16 v4, 0x0

    cmp-long v4, p0, v4

    if-gtz v4, :cond_1

    move v0, v3

    .line 657
    :cond_0
    :goto_0
    return v0

    .line 636
    :cond_1
    const/4 v0, 0x0

    .line 637
    .local v0, "isSpecificRole":Z
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v4

    invoke-virtual {v4}, Lccr;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v2

    .line 638
    .local v2, "userProfileExtensionObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    if-eqz v2, :cond_2

    iget-object v4, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    if-eqz v4, :cond_2

    iget-object v4, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    .line 639
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-gtz v4, :cond_3

    :cond_2
    move v0, v3

    .line 640
    goto :goto_0

    .line 642
    :cond_3
    iget-object v3, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .line 644
    .local v1, "orgEmployeeExtensionObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    if-eqz v1, :cond_4

    .line 648
    if-eqz p2, :cond_5

    iget-wide v4, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    cmp-long v4, p0, v4

    if-nez v4, :cond_4

    .line 652
    :cond_5
    iget v4, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->role:I

    if-ne v4, p3, :cond_4

    .line 653
    const/4 v0, 0x1

    .line 654
    goto :goto_0
.end method

.method private static a(Landroid/app/Activity;Landroid/os/Bundle;ZZ)Z
    .locals 6
    .param p0, "context"    # Landroid/app/Activity;
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "isH5Page"    # Z
    .param p3, "isFinishActivity"    # Z

    .prologue
    const/4 v2, 0x1

    .line 325
    invoke-static {}, Lfku;->a()Lfku;

    move-result-object v3

    invoke-virtual {v3}, Lfku;->d()V

    .line 326
    invoke-static {}, Lfku;->a()Lfku;

    move-result-object v3

    invoke-virtual {v3}, Lfku;->b()Lcom/alibaba/android/user/contact/orgcreation/models/OrgCreation;

    move-result-object v1

    .line 328
    .local v1, "orgCreation":Lcom/alibaba/android/user/contact/orgcreation/models/OrgCreation;
    if-eqz v1, :cond_1

    .line 329
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 330
    .local v0, "dialog":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    sget v3, Lezg$l;->create_org_recovery_confirm:I

    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v3

    sget v4, Lezg$l;->create_org_confirm_new:I

    .line 331
    invoke-virtual {p0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lfls$22;

    invoke-direct {v5, p0, p2, p1, p3}, Lfls$22;-><init>(Landroid/app/Activity;ZLandroid/os/Bundle;Z)V

    invoke-virtual {v3, v4, v5}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v3

    sget v4, Lezg$l;->create_org_confirm_continue:I

    .line 348
    invoke-virtual {p0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lfls$21;

    invoke-direct {v5, p0, p1, p3}, Lfls$21;-><init>(Landroid/app/Activity;Landroid/os/Bundle;Z)V

    invoke-virtual {v3, v4, v5}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 361
    new-instance v3, Lfls$23;

    invoke-direct {v3, p3, p0}, Lfls$23;-><init>(ZLandroid/app/Activity;)V

    .line 7173
    iput-object v3, v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->a:Landroid/content/DialogInterface$OnDismissListener;

    .line 368
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 384
    .end local v0    # "dialog":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    :cond_0
    :goto_0
    return v2

    .line 372
    :cond_1
    const-string/jumbo v3, "pref_key_newFlow"

    invoke-static {v3}, Lcpk;->b(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 373
    invoke-static {p0}, Lfls;->b(Landroid/app/Activity;)V

    .line 374
    if-eqz p3, :cond_0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v3

    if-nez v3, :cond_0

    .line 375
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 379
    :cond_2
    if-eqz p3, :cond_3

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_3

    .line 380
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 384
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static a(Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;)Z
    .locals 1
    .param p0, "orgEmployeeExtensionObject"    # Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .prologue
    .line 973
    if-eqz p0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->settingsObject:Lcom/alibaba/android/dingtalk/userbase/model/OrganizationSettingsObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->settingsObject:Lcom/alibaba/android/dingtalk/userbase/model/OrganizationSettingsObject;

    iget-boolean v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrganizationSettingsObject;->closeExtContact:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 7
    .param p0, "phoneNum"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 697
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 704
    :cond_0
    :goto_0
    return v3

    .line 701
    :cond_1
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v5

    invoke-virtual {v5}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    .line 702
    .local v0, "context":Landroid/content/Context;
    const-string/jumbo v5, "pref_user_facebox_login_show_entry_phone"

    const-string/jumbo v6, ""

    invoke-static {v0, v5, v6}, Lcpk;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 703
    .local v2, "lastPhoneNum":Ljava/lang/String;
    const-string/jumbo v5, "pref_user_facebox_login_device_supported"

    invoke-static {v0, v5, v4}, Lcpk;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    .line 704
    .local v1, "isDeviceSupport":Z
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    if-eqz v1, :cond_0

    move v3, v4

    goto :goto_0
.end method

.method public static a(Ljava/util/List;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)Z
    .locals 10
    .param p1, "userObject"    # Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p0, "mSelectedList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    const-wide/16 v8, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 185
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    if-nez p1, :cond_2

    :cond_0
    move v1, v2

    .line 199
    :cond_1
    :goto_0
    return v1

    .line 189
    :cond_2
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 190
    .local v0, "user":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    if-eqz v0, :cond_3

    .line 193
    iget-wide v4, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    cmp-long v4, v4, v8

    if-lez v4, :cond_4

    iget-wide v4, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    iget-wide v6, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1

    .line 195
    :cond_4
    iget-wide v4, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    cmp-long v4, v4, v8

    if-nez v4, :cond_3

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_0

    .end local v0    # "user":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    :cond_5
    move v1, v2

    .line 199
    goto :goto_0
.end method

.method public static b()V
    .locals 2

    .prologue
    .line 683
    const-string/jumbo v0, "pref_user_facebox_login_set"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcpk;->b(Ljava/lang/String;Z)V

    .line 684
    return-void
.end method

.method public static b(JZ)V
    .locals 4
    .param p0, "orgId"    # J
    .param p2, "isShow"    # Z

    .prologue
    .line 984
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "pref_key_show_org_home_page_prefix_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 985
    .local v0, "key":Ljava/lang/String;
    invoke-static {v0, p2}, Lcpk;->b(Ljava/lang/String;Z)V

    .line 986
    return-void
.end method

.method public static b(Landroid/app/Activity;)V
    .locals 7
    .param p0, "context"    # Landroid/app/Activity;

    .prologue
    const/4 v5, 0x0

    .line 289
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 290
    .local v4, "bundle":Landroid/os/Bundle;
    const-string/jumbo v0, "is_finish_activity"

    const/4 v1, 0x1

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 291
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v0

    const-string/jumbo v2, "https://tms.dingtalk.com/markets/dingtalk/createteam?lwfrom=20160412104508391"

    sget v1, Lezg$l;->create_org_h5_title:I

    .line 292
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v1, p0

    move v6, v5

    .line 291
    invoke-virtual/range {v0 .. v6}, Lgvm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZZ)V

    .line 293
    return-void
.end method

.method public static b(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 4
    .param p0, "context"    # Landroid/app/Activity;
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    .line 432
    const-string/jumbo v0, "https://qr.dingtalk.com/create_org.html"

    .line 433
    .local v0, "toCreateOrg":Ljava/lang/String;
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v1

    const-string/jumbo v2, "f_user_use_create_org_v3"

    .line 8083
    invoke-virtual {v1, v2, v3}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v1

    .line 433
    if-eqz v1, :cond_0

    const-string/jumbo v1, "pref_key_create_org_v3"

    .line 434
    invoke-static {p0, v1, v3}, Lcpk;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 435
    const-string/jumbo v0, "https://qr.dingtalk.com/create_org_v3.html"

    .line 437
    :cond_0
    const-string/jumbo v1, "NAVIGATOR"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v1, p0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v1

    new-instance v2, Lfls$24;

    invoke-direct {v2, p1}, Lfls$24;-><init>(Landroid/os/Bundle;)V

    invoke-interface {v1, v0, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 447
    return-void
.end method

.method public static b(Landroid/app/Activity;Landroid/os/Bundle;Z)V
    .locals 1
    .param p0, "context"    # Landroid/app/Activity;
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "isFinishActivity"    # Z

    .prologue
    .line 426
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lfls;->a(Landroid/app/Activity;Landroid/os/Bundle;ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 427
    invoke-static {p0, p1}, Lfls;->b(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 429
    :cond_0
    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .locals 2
    .param p0, "phoneNum"    # Ljava/lang/String;

    .prologue
    .line 714
    if-nez p0, :cond_0

    .line 715
    const-string/jumbo p0, ""

    .line 717
    :cond_0
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    .line 718
    .local v0, "context":Landroid/content/Context;
    const-string/jumbo v1, "pref_user_facebox_login_show_entry_phone"

    invoke-static {v0, v1, p0}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 719
    return-void
.end method

.method public static b(Z)V
    .locals 2
    .param p0, "isShow"    # Z

    .prologue
    .line 1009
    const-string/jumbo v0, "pref_key_show_main_org_home_page_prefix_"

    .line 1010
    .local v0, "key":Ljava/lang/String;
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcpk;->b(Ljava/lang/String;Z)V

    .line 1011
    return-void
.end method

.method public static b(J)Z
    .locals 2
    .param p0, "orgId"    # J

    .prologue
    const/4 v0, 0x1

    .line 614
    .line 11618
    invoke-static {p0, p1, v0, v0}, Lfls;->a(JZI)Z

    move-result v0

    .line 614
    return v0
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 761
    invoke-static {}, Lcms;->c()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v3

    invoke-virtual {v3, p0, v5, v4}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Landroid/content/Context;ZZ)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    move v3, v5

    .line 784
    :goto_0
    return v3

    .line 765
    :cond_1
    const-class v3, Lcom/alibaba/wukong/settings/CloudSettingService;

    invoke-static {v3}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/wukong/settings/CloudSettingService;

    const-string/jumbo v6, "dt_user"

    const-string/jumbo v7, "registerIdentity"

    invoke-interface {v3, v6, v7}, Lcom/alibaba/wukong/settings/CloudSettingService;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/wukong/settings/CloudSetting;

    move-result-object v1

    .line 766
    .local v1, "setting":Lcom/alibaba/wukong/settings/CloudSetting;
    if-eqz v1, :cond_2

    invoke-interface {v1}, Lcom/alibaba/wukong/settings/CloudSetting;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v5}, Lcoc;->a(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v4, :cond_2

    move v3, v4

    .line 767
    goto :goto_0

    .line 769
    :cond_2
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v3

    invoke-virtual {v3}, Lccr;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v2

    .line 770
    .local v2, "user":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    if-eqz v2, :cond_3

    iget-object v3, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    invoke-static {v3}, Lcpd;->a(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    move v3, v5

    .line 771
    goto :goto_0

    .line 774
    :cond_4
    iget-object v3, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .line 775
    .local v0, "orgEmployee":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    if-eqz v0, :cond_5

    iget-object v6, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    if-eqz v6, :cond_5

    iget-object v6, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    iget-object v6, v6, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->settingsObject:Lcom/alibaba/android/dingtalk/userbase/model/OrganizationSettingsObject;

    if-eqz v6, :cond_5

    .line 779
    iget-object v6, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    iget-object v6, v6, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->settingsObject:Lcom/alibaba/android/dingtalk/userbase/model/OrganizationSettingsObject;

    iget-boolean v6, v6, Lcom/alibaba/android/dingtalk/userbase/model/OrganizationSettingsObject;->recruitmentOrg:Z

    if-eqz v6, :cond_5

    move v3, v4

    .line 780
    goto :goto_0

    .line 784
    .end local v0    # "orgEmployee":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    :cond_6
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v3

    const-string/jumbo v4, "general"

    const-string/jumbo v6, "my_recruit_entry"

    invoke-virtual {v3, v4, v6, v5}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    goto :goto_0
.end method

.method public static b(Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;)Z
    .locals 1
    .param p0, "org"    # Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .prologue
    .line 980
    if-eqz p0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->empSetting:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmpSettingObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->empSetting:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmpSettingObject;

    iget-boolean v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmpSettingObject;->memberView:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 3
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 1282
    if-nez p0, :cond_0

    .line 1285
    .end local p0    # "text":Ljava/lang/String;
    :goto_0
    return-object p0

    .restart local p0    # "text":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "<font color=\"#ff4141\">*</font>"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p0

    goto :goto_0
.end method

.method public static c(JZ)V
    .locals 4
    .param p0, "orgId"    # J
    .param p2, "isShow"    # Z

    .prologue
    .line 999
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "pref_key_org_home_page_prefix_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1000
    .local v0, "key":Ljava/lang/String;
    invoke-static {v0, p2}, Lcpk;->b(Ljava/lang/String;Z)V

    .line 1001
    return-void
.end method

.method public static c(Landroid/app/Activity;)V
    .locals 12
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1014
    if-nez p0, :cond_1

    .line 1082
    :cond_0
    :goto_0
    return-void

    .line 1019
    :cond_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1020
    .local v5, "organization":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1021
    .local v6, "organizationNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v9

    invoke-virtual {v9}, Lccr;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v8

    .line 1022
    .local v8, "userProfileExtensionObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    if-eqz v8, :cond_5

    iget-object v9, v8, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    if-eqz v9, :cond_5

    iget-object v9, v8, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_5

    .line 1023
    iget-object v9, v8, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_2
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .line 1024
    .local v2, "mExtensionObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    if-eqz v2, :cond_2

    .line 1027
    const/4 v1, 0x0

    .line 1028
    .local v1, "canInvite":Z
    iget-object v10, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    if-eqz v10, :cond_3

    iget-object v10, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    iget-object v10, v10, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->settingsObject:Lcom/alibaba/android/dingtalk/userbase/model/OrganizationSettingsObject;

    if-eqz v10, :cond_3

    .line 1029
    iget-object v10, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    iget-object v10, v10, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->settingsObject:Lcom/alibaba/android/dingtalk/userbase/model/OrganizationSettingsObject;

    iget-boolean v1, v10, Lcom/alibaba/android/dingtalk/userbase/model/OrganizationSettingsObject;->openInvite:Z

    .line 1031
    :cond_3
    iget-wide v10, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    invoke-static {v10, v11}, Lcom/alibaba/android/user/contact/utils/UserUtils;->a(J)Z

    move-result v10

    if-nez v10, :cond_4

    if-eqz v1, :cond_2

    .line 1034
    :cond_4
    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1035
    iget-object v10, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgName:Ljava/lang/String;

    invoke-interface {v6, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1038
    .end local v1    # "canInvite":Z
    .end local v2    # "mExtensionObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    :cond_5
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_0

    .line 1042
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_6

    .line 1043
    const/4 v9, 0x0

    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .line 1044
    .local v4, "orgObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    if-eqz v4, :cond_0

    .line 1047
    invoke-static {p0}, Lcmx;->a(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v9

    const-string/jumbo v10, "https://qr.dingtalk.com/page/add_2_org.html"

    new-instance v11, Lfls$9;

    invoke-direct {v11, v4}, Lfls$9;-><init>(Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;)V

    invoke-interface {v9, v10, v11}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 1055
    const-string/jumbo v9, "invite_new_members_enter"

    invoke-static {v9}, Lfxo;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1059
    .end local v4    # "orgObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    :cond_6
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1060
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lezg$l;->select_org_tip:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1061
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    new-array v9, v9, [Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    invoke-interface {v5, v9}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .line 1062
    .local v7, "orgs":[Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    new-array v9, v9, [Ljava/lang/String;

    invoke-interface {v6, v9}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    .line 1063
    .local v3, "orgChoices":[Ljava/lang/String;
    new-instance v9, Lfls$10;

    invoke-direct {v9, v7, p0}, Lfls$10;-><init>([Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;Landroid/app/Activity;)V

    invoke-virtual {v0, v3, v9}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1081
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0
.end method

.method public static c(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 3
    .param p0, "context"    # Landroid/app/Activity;
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 450
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/create_org.html"

    new-instance v2, Lfls$25;

    invoke-direct {v2, p1}, Lfls$25;-><init>(Landroid/os/Bundle;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 460
    return-void
.end method

.method public static c(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1298
    invoke-static {p0}, Lcmx;->a(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/page/orgapplylist"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;)V

    .line 1299
    invoke-static {}, Lfls;->k()V

    .line 1300
    return-void
.end method

.method public static c()Z
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 688
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v5

    const-string/jumbo v6, "dt_user_facebox_login_v2"

    invoke-virtual {v5, v6, v3}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/lang/String;Z)Z

    move-result v2

    .line 691
    .local v2, "remote":Z
    const-string/jumbo v5, "pref_user_facebox_login_gray_local"

    invoke-static {v5, v4}, Lcpk;->a(Ljava/lang/String;Z)Z

    move-result v1

    .line 692
    .local v1, "local":Z
    invoke-static {v4}, Lcom/alibaba/android/user/contact/utils/UserUtils;->d(Z)Z

    move-result v5

    if-nez v5, :cond_1

    move v0, v3

    .line 693
    .local v0, "allow":Z
    :goto_0
    if-eqz v0, :cond_2

    if-nez v2, :cond_0

    if-eqz v1, :cond_2

    :cond_0
    :goto_1
    return v3

    .end local v0    # "allow":Z
    :cond_1
    move v0, v4

    .line 692
    goto :goto_0

    .restart local v0    # "allow":Z
    :cond_2
    move v3, v4

    .line 693
    goto :goto_1
.end method

.method public static c(J)Z
    .locals 2
    .param p0, "orgId"    # J

    .prologue
    const/4 v0, 0x1

    .line 629
    .line 11625
    const/4 v1, 0x2

    invoke-static {p0, p1, v0, v1}, Lfls;->a(JZI)Z

    move-result v1

    .line 629
    if-nez v1, :cond_0

    invoke-static {p0, p1}, Lfls;->b(J)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static d(J)Ljava/lang/String;
    .locals 4
    .param p0, "orgId"    # J

    .prologue
    .line 746
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "PREF_KEY_VERIFY_FAILED_ORG_ID"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "_"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static d(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "checkdStr"    # Ljava/lang/String;

    .prologue
    .line 966
    invoke-static {p0}, Lcpt;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo p0, " "

    .end local p0    # "checkdStr":Ljava/lang/String;
    :cond_0
    return-object p0
.end method

.method public static d(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1
    .param p0, "context"    # Landroid/app/Activity;
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 477
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lfls;->b(Landroid/app/Activity;Landroid/os/Bundle;Z)V

    .line 478
    return-void
.end method

.method public static d(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1432
    if-nez p0, :cond_0

    .line 1433
    const-string/jumbo v1, "FriendRequest"

    const-string/jumbo v2, "showRequestReadContactPermissionConfirmDialog context is null"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1454
    :goto_0
    return-void

    .line 1437
    :cond_0
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1438
    .local v0, "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    sget v1, Lezg$l;->dt_recommend_contact_permission_dlg_title:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1439
    sget v1, Lezg$l;->dt_recommend_contact_permission_dlg_content:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1440
    sget v1, Lezg$l;->dt_user_set:I

    new-instance v2, Lfls$16;

    invoke-direct {v2, p0, v0}, Lfls$16;-><init>(Landroid/content/Context;Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;)V

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1447
    sget v1, Lezg$l;->cancel:I

    new-instance v2, Lfls$17;

    invoke-direct {v2, v0}, Lfls$17;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;)V

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1453
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    goto :goto_0
.end method

.method public static d()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 722
    const-string/jumbo v4, "pref_user_cloud_setting_face_login_key"

    const-string/jumbo v5, ""

    invoke-static {v4, v5}, Lcpk;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    move v1, v2

    .line 724
    .local v1, "remote":Z
    :goto_0
    const-string/jumbo v4, "pref_user_facebox_login_once_setting"

    invoke-static {v4, v3}, Lcpk;->a(Ljava/lang/String;Z)Z

    move-result v0

    .line 725
    .local v0, "local":Z
    if-nez v1, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    move v3, v2

    :cond_1
    return v3

    .end local v0    # "local":Z
    .end local v1    # "remote":Z
    :cond_2
    move v1, v3

    .line 722
    goto :goto_0
.end method

.method public static e()V
    .locals 2

    .prologue
    .line 729
    const-string/jumbo v0, "pref_user_facebox_login_once_setting"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcpk;->b(Ljava/lang/String;Z)V

    .line 730
    return-void
.end method

.method public static e(J)Z
    .locals 6
    .param p0, "orgId"    # J

    .prologue
    const/4 v4, 0x0

    .line 755
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "pref_key_set_boss_org_id_"

    aput-object v2, v1, v4

    const/4 v2, 0x1

    const-string/jumbo v3, "_"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 756
    .local v0, "key":Ljava/lang/String;
    invoke-static {v0, v4}, Lcpk;->a(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static f()Ljava/lang/String;
    .locals 3

    .prologue
    .line 788
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "pref_key_auth_status_org_id"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static f(J)Z
    .locals 4
    .param p0, "orgId"    # J

    .prologue
    .line 989
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "pref_key_show_org_home_page_prefix_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 990
    .local v0, "key":Ljava/lang/String;
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcpk;->a(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static g()Z
    .locals 2

    .prologue
    .line 1004
    const-string/jumbo v0, "pref_key_show_main_org_home_page_prefix_"

    .line 1005
    .local v0, "key":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcpk;->a(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static g(J)Z
    .locals 4
    .param p0, "orgId"    # J

    .prologue
    .line 994
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "pref_key_org_home_page_prefix_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 995
    .local v0, "key":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcpk;->a(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static h()V
    .locals 4

    .prologue
    .line 1353
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->W()V

    .line 1354
    invoke-static {}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->getInterfaceImpl()Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;

    move-result-object v1

    sget-object v2, Lble;->n:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->setWidgetHiden(Ljava/lang/String;Z)V

    .line 1356
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    const-wide/32 v2, 0x28425

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->j(J)Ljava/lang/String;

    move-result-object v0

    .line 1357
    .local v0, "fid":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1389
    :goto_0
    return-void

    .line 1360
    :cond_0
    const-class v1, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v1}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/im/ConversationService;

    new-instance v2, Lfls$15;

    invoke-direct {v2}, Lfls$15;-><init>()V

    invoke-interface {v1, v2, v0}, Lcom/alibaba/wukong/im/ConversationService;->getConversation(Lcom/alibaba/wukong/Callback;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static i()V
    .locals 2

    .prologue
    .line 1520
    const-string/jumbo v0, "pref_key_contact_match_blue_guide_closed"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcpk;->b(Ljava/lang/String;Z)V

    .line 1521
    return-void
.end method

.method private static j()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 596
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v2

    const-string/jumbo v3, "f_user_use_create_org_v4"

    .line 10083
    invoke-virtual {v2, v3, v1}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v2

    .line 596
    if-nez v2, :cond_1

    .line 606
    :cond_0
    :goto_0
    return v0

    .line 601
    :cond_1
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v2

    const-string/jumbo v3, "f_user_register_org_name_global"

    .line 11083
    invoke-virtual {v2, v3, v1}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v2

    .line 601
    if-eqz v2, :cond_2

    .line 602
    invoke-static {v0}, Lcom/alibaba/android/user/contact/utils/UserUtils;->d(Z)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v0}, Lcom/alibaba/android/user/contact/utils/UserUtils;->c(Z)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    move v0, v1

    .line 606
    goto :goto_0
.end method

.method private static k()V
    .locals 4

    .prologue
    .line 1317
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->X()V

    .line 1318
    invoke-static {}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->getInterfaceImpl()Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;

    move-result-object v1

    sget-object v2, Lble;->n:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->setWidgetHiden(Ljava/lang/String;Z)V

    .line 1319
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    const-wide/32 v2, 0x39dfc

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->j(J)Ljava/lang/String;

    move-result-object v0

    .line 1320
    .local v0, "gid":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1350
    :goto_0
    return-void

    .line 1323
    :cond_0
    const-class v1, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v1}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/im/ConversationService;

    new-instance v2, Lfls$14;

    invoke-direct {v2}, Lfls$14;-><init>()V

    invoke-interface {v1, v2, v0}, Lcom/alibaba/wukong/im/ConversationService;->getConversation(Lcom/alibaba/wukong/Callback;Ljava/lang/String;)V

    goto :goto_0
.end method
