.class public final Lesx;
.super Ljava/lang/Object;
.source "FunctionOpenHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lesx$a;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 582
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v3

    invoke-virtual {v3}, Lccr;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v0

    .line 583
    .local v0, "currentUser":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    if-eqz v0, :cond_0

    iget-object v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    if-eqz v3, :cond_0

    iget-object v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_1

    .line 596
    :cond_0
    :goto_0
    return-object v2

    .line 587
    :cond_1
    iget-object v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .line 588
    .local v1, "orgEmployeeExtensionObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    if-eqz v1, :cond_0

    .line 592
    iget-object v3, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    if-eqz v3, :cond_0

    .line 596
    iget-object v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->corpId:Ljava/lang/String;

    goto :goto_0
.end method

.method public static a(ILandroid/app/Activity;)V
    .locals 10
    .param p0, "functionId"    # I
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x0

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 616
    if-nez p1, :cond_1

    .line 717
    .end local p1    # "activity":Landroid/app/Activity;
    :cond_0
    :goto_0
    return-void

    .line 620
    .restart local p1    # "activity":Landroid/app/Activity;
    :cond_1
    invoke-static {p0}, Lcom/alibaba/android/search/utils/FunctionLocalData;->getValue(I)Lcom/alibaba/android/search/utils/FunctionLocalData;

    move-result-object v0

    .line 621
    .local v0, "value":Lcom/alibaba/android/search/utils/FunctionLocalData;
    if-eqz v0, :cond_0

    .line 625
    sget-object v1, Lesx$2;->a:[I

    invoke-virtual {v0}, Lcom/alibaba/android/search/utils/FunctionLocalData;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 1154
    :pswitch_0
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->c(Landroid/app/Activity;)V

    goto :goto_0

    .line 1375
    :pswitch_1
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1376
    const-string/jumbo v2, "im_navigator_from"

    const-string/jumbo v3, "search_result"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1377
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v2

    invoke-virtual {v2, p1, v1}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->b(Landroid/app/Activity;Landroid/os/Bundle;)V

    goto :goto_0

    .line 1386
    :pswitch_2
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v1

    const-string/jumbo v2, "search_result"

    invoke-virtual {v1, p1, v2}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->f(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 2215
    :pswitch_3
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v1

    new-instance v2, Lesx$1;

    invoke-direct {v2, p1}, Lesx$1;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Lcom/alibaba/wukong/Callback;)V

    goto :goto_0

    .line 2241
    :pswitch_4
    instance-of v1, p1, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 2242
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 2243
    const-string/jumbo v2, "im_navigator_from"

    const-string/jumbo v3, "search_result"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2244
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v2

    check-cast p1, Landroid/app/Activity;

    .end local p1    # "activity":Landroid/app/Activity;
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->b()Lchy;

    move-result-object v3

    invoke-virtual {v3}, Lchy;->getCurrentUid()J

    move-result-wide v4

    const-wide/32 v8, 0x39dfa

    invoke-static {v4, v5, v8, v9}, Lcom/alibaba/android/search/utils/SearchUtils;->a(JJ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p1, v3, v1, v7}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;Z)V

    goto/16 :goto_0

    .line 2254
    .restart local p1    # "activity":Landroid/app/Activity;
    :pswitch_5
    instance-of v1, p1, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 2255
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 2256
    const-string/jumbo v2, "im_navigator_from"

    const-string/jumbo v3, "search_result"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2258
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v2

    check-cast p1, Landroid/app/Activity;

    .end local p1    # "activity":Landroid/app/Activity;
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->b()Lchy;

    move-result-object v3

    invoke-virtual {v3}, Lchy;->getCurrentUid()J

    move-result-wide v4

    const-wide/16 v8, 0x5207

    invoke-static {v4, v5, v8, v9}, Lcom/alibaba/android/search/utils/SearchUtils;->a(JJ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p1, v3, v1, v7}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;Z)V

    goto/16 :goto_0

    .line 2395
    .restart local p1    # "activity":Landroid/app/Activity;
    :pswitch_6
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v1

    const-string/jumbo v2, "search_result"

    invoke-virtual {v1, p1, v2}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->g(Landroid/app/Activity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2404
    :pswitch_7
    const-string/jumbo v1, "NAVIGATOR"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v1, p1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v1

    const-string/jumbo v2, "https://qr.dingtalk.com/page/orgapplylist"

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3163
    :pswitch_8
    const-string/jumbo v1, "NAVIGATOR"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v1, p1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v1

    const-string/jumbo v2, "https://qr.dingtalk.com/page/add_friend"

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3364
    :pswitch_9
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 3365
    const-string/jumbo v2, "intent_key_page_source"

    const-string/jumbo v3, "search"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3366
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v2

    invoke-virtual {v2, p1, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->d(Landroid/content/Context;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 4172
    :pswitch_a
    const-string/jumbo v1, "STATISTICS"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/statistics/Statistics;

    const-string/jumbo v2, "mainpage_scan_click"

    .line 4173
    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 4174
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 4175
    const-string/jumbo v2, "completed_back_to_target_action"

    const-string/jumbo v3, "com.workapp.vcard.camera.recognized"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4178
    invoke-static {}, Lcom/alibaba/dingtalk/scanbase/QRCodeInterface;->a()Lcom/alibaba/dingtalk/scanbase/QRCodeInterface;

    move-result-object v2

    invoke-virtual {v2, p1, v1}, Lcom/alibaba/dingtalk/scanbase/QRCodeInterface;->b(Landroid/content/Context;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 4187
    :pswitch_b
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    const-string/jumbo v2, "main_search_result_call_icon_click"

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 4188
    invoke-static {}, Lcom/alibaba/dingtalk/telebase/TelConfInterface;->v()Lcom/alibaba/dingtalk/telebase/TelConfInterface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/dingtalk/telebase/TelConfInterface;->b()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4189
    new-instance v1, Lesx$a;

    invoke-direct {v1, v7}, Lesx$a;-><init>(B)V

    sget v2, Lemt$g;->conf_txt_current_conf_ongoing:I

    .line 4564
    iget-boolean v3, v1, Lesx$a;->a:Z

    if-nez v3, :cond_2

    .line 4565
    iput-boolean v5, v1, Lesx$a;->a:Z

    .line 4566
    invoke-static {v2}, Lcms;->a(I)V

    .line 4568
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lesx$a$1;

    invoke-direct {v3, v1}, Lesx$a$1;-><init>(Lesx$a;)V

    const-wide/16 v4, 0x5dc

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4190
    :cond_2
    invoke-static {}, Lcom/alibaba/dingtalk/telebase/TelConfInterface;->v()Lcom/alibaba/dingtalk/telebase/TelConfInterface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/dingtalk/telebase/TelConfInterface;->g()V

    .line 4191
    invoke-static {}, Lcom/alibaba/dingtalk/telebase/TelConfInterface;->v()Lcom/alibaba/dingtalk/telebase/TelConfInterface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/dingtalk/telebase/TelConfInterface;->f()V

    goto/16 :goto_0

    .line 4194
    :cond_3
    invoke-static {}, Lcom/alibaba/dingtalk/telebase/TelConfInterface;->v()Lcom/alibaba/dingtalk/telebase/TelConfInterface;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/alibaba/dingtalk/telebase/TelConfInterface;->a(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 5203
    :pswitch_c
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 5204
    const-string/jumbo v2, "ding_source"

    invoke-virtual {v1, v2, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5205
    invoke-static {}, Lcom/alibaba/android/ding/base/interfaces/DingInterface;->a()Lcom/alibaba/android/ding/base/interfaces/DingInterface;

    move-result-object v2

    .line 5206
    invoke-virtual {v2, p1, v1}, Lcom/alibaba/android/ding/base/interfaces/DingInterface;->b(Landroid/content/Context;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 5413
    :pswitch_d
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->b()Lchy;

    move-result-object v1

    invoke-virtual {v1}, Lchy;->getCurrentUid()J

    move-result-wide v2

    const-wide/32 v4, 0x28687

    invoke-static {v2, v3, v4, v5}, Lcom/alibaba/android/search/utils/SearchUtils;->a(JJ)Ljava/lang/String;

    move-result-object v1

    .line 5414
    invoke-static {}, Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;->s()Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;

    move-result-object v2

    .line 5415
    invoke-virtual {v2, p1, v1}, Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 5424
    :pswitch_e
    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->n()Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

    move-result-object v1

    .line 5425
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v2

    invoke-virtual {v2}, Lccr;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->a(Landroid/content/Context;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;)V

    goto/16 :goto_0

    .line 5434
    :pswitch_f
    instance-of v1, p1, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 5435
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v1

    move-object v2, p1

    check-cast v2, Landroid/app/Activity;

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->b()Lchy;

    move-result-object v3

    invoke-virtual {v3}, Lchy;->getCurrentUid()J

    move-result-wide v4

    const-wide/16 v8, 0x51f5

    invoke-static {v4, v5, v8, v9}, Lcom/alibaba/android/search/utils/SearchUtils;->a(JJ)Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, 0x5

    const-string/jumbo v6, "search_result"

    invoke-virtual/range {v1 .. v7}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Landroid/app/Activity;Ljava/lang/String;JLjava/lang/String;Z)V

    goto/16 :goto_0

    .line 6268
    :pswitch_10
    instance-of v1, p1, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 6269
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 6270
    const-string/jumbo v2, "im_navigator_from"

    const-string/jumbo v3, "search_result"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6272
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v2

    check-cast p1, Landroid/app/Activity;

    .end local p1    # "activity":Landroid/app/Activity;
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->b()Lchy;

    move-result-object v3

    invoke-virtual {v3}, Lchy;->getCurrentUid()J

    move-result-wide v4

    const-wide/32 v8, 0xa0e6ba4

    invoke-static {v4, v5, v8, v9}, Lcom/alibaba/android/search/utils/SearchUtils;->a(JJ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p1, v3, v1, v7}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;Z)V

    goto/16 :goto_0

    .line 6296
    .restart local p1    # "activity":Landroid/app/Activity;
    :pswitch_11
    instance-of v1, p1, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 6297
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 6298
    const-string/jumbo v2, "im_navigator_from"

    const-string/jumbo v3, "search_result"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6300
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v2

    check-cast p1, Landroid/app/Activity;

    .end local p1    # "activity":Landroid/app/Activity;
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->b()Lchy;

    move-result-object v3

    invoke-virtual {v3}, Lchy;->getCurrentUid()J

    move-result-wide v4

    const-wide/16 v8, 0x51fa

    invoke-static {v4, v5, v8, v9}, Lcom/alibaba/android/search/utils/SearchUtils;->a(JJ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p1, v3, v1, v7}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;Z)V

    goto/16 :goto_0

    .line 7282
    .restart local p1    # "activity":Landroid/app/Activity;
    :pswitch_12
    instance-of v1, p1, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 7283
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 7284
    const-string/jumbo v2, "im_navigator_from"

    const-string/jumbo v3, "search_result"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 7286
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v2

    check-cast p1, Landroid/app/Activity;

    .end local p1    # "activity":Landroid/app/Activity;
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->b()Lchy;

    move-result-object v3

    invoke-virtual {v3}, Lchy;->getCurrentUid()J

    move-result-wide v4

    const-wide/16 v8, 0x5201

    invoke-static {v4, v5, v8, v9}, Lcom/alibaba/android/search/utils/SearchUtils;->a(JJ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p1, v3, v1, v7}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;Z)V

    goto/16 :goto_0

    .line 7325
    .restart local p1    # "activity":Landroid/app/Activity;
    :pswitch_13
    if-eqz p1, :cond_0

    .line 7329
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->g(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 7339
    :pswitch_14
    if-eqz p1, :cond_0

    .line 7342
    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/favorite/FavoriteInterface;->b()Lcom/alibaba/dingtalk/cspacebase/favorite/FavoriteInterface;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/alibaba/dingtalk/cspacebase/favorite/FavoriteInterface;->a(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 7352
    :pswitch_15
    if-eqz p1, :cond_0

    .line 7355
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    invoke-virtual {v1, p1, v8}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->e(Landroid/app/Activity;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 7446
    :pswitch_16
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v1

    const-string/jumbo v2, "https://space.dingtalk.com/recommend.html?spm=a3140.167002.867897.1.119b51esyfMQc&spaceId=524401201#/"

    invoke-virtual {v1, p1, v2, v8}, Lgvm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 7455
    :pswitch_17
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v1

    .line 7456
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 7455
    invoke-virtual {v1, p1, v2, v8}, Lgvm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 7470
    :pswitch_18
    invoke-static {}, Lcom/alibaba/dingtalk/projection/FocusInterface;->d()Lcom/alibaba/dingtalk/projection/FocusInterface;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/alibaba/dingtalk/projection/FocusInterface;->a(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 7497
    :pswitch_19
    invoke-static {}, Lesx;->a()Ljava/lang/String;

    move-result-object v1

    .line 7498
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 7499
    new-array v1, v6, [Ljava/lang/String;

    const-string/jumbo v2, "https://attend.dingtalk.com/attend/index.html"

    aput-object v2, v1, v7

    const-string/jumbo v2, "#admin"

    aput-object v2, v1, v5

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 7503
    :goto_1
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v2

    invoke-virtual {v2, p1, v1, v8}, Lgvm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 7501
    :cond_4
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "https://attend.dingtalk.com/attend/index.html"

    aput-object v3, v2, v7

    const-string/jumbo v3, "?corpId="

    aput-object v3, v2, v5

    aput-object v1, v2, v6

    const-string/jumbo v1, "#admin"

    aput-object v1, v2, v9

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 8481
    :pswitch_1a
    invoke-static {}, Lesx;->a()Ljava/lang/String;

    move-result-object v1

    .line 8482
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 8483
    new-array v1, v6, [Ljava/lang/String;

    const-string/jumbo v2, "https://attend.dingtalk.com/attend/index.html"

    aput-object v2, v1, v7

    const-string/jumbo v2, ""

    aput-object v2, v1, v5

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 8487
    :goto_2
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v2

    invoke-virtual {v2, p1, v1, v8}, Lgvm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 8485
    :cond_5
    new-array v2, v9, [Ljava/lang/String;

    const-string/jumbo v3, "https://attend.dingtalk.com/attend/index.html"

    aput-object v3, v2, v7

    const-string/jumbo v3, "?corpId="

    aput-object v3, v2, v5

    aput-object v1, v2, v6

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 8513
    :pswitch_1b
    invoke-static {}, Lesx;->a()Ljava/lang/String;

    move-result-object v1

    .line 8514
    invoke-static {}, Lesx;->b()Ljava/lang/String;

    move-result-object v2

    .line 8515
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 8516
    :cond_6
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "https://attend.dingtalk.com/attend/index.html"

    aput-object v2, v1, v7

    const-string/jumbo v2, "?date="

    aput-object v2, v1, v5

    .line 8517
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    const-string/jumbo v2, "#user/attendSummaryNew"

    aput-object v2, v1, v9

    .line 8516
    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 8522
    :goto_3
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v2

    invoke-virtual {v2, p1, v1, v8}, Lgvm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 8519
    :cond_7
    const/16 v3, 0x8

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "https://attend.dingtalk.com/attend/index.html"

    aput-object v4, v3, v7

    const-string/jumbo v4, "?corpId="

    aput-object v4, v3, v5

    aput-object v1, v3, v6

    const-string/jumbo v1, "&userId="

    aput-object v1, v3, v9

    const/4 v1, 0x4

    aput-object v2, v3, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "&date="

    aput-object v2, v3, v1

    const/4 v1, 0x6

    .line 8520
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "#user/attendSummaryNew"

    aput-object v2, v3, v1

    .line 8519
    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 8551
    :pswitch_1c
    invoke-static {}, Lesx;->a()Ljava/lang/String;

    move-result-object v1

    .line 8552
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 8553
    new-array v1, v6, [Ljava/lang/String;

    const-string/jumbo v2, "https://attend.dingtalk.com/attend/index.html"

    aput-object v2, v1, v7

    const-string/jumbo v2, "#exportReport"

    aput-object v2, v1, v5

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 8557
    :goto_4
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v2

    invoke-virtual {v2, p1, v1, v8}, Lgvm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 8555
    :cond_8
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "https://attend.dingtalk.com/attend/index.html"

    aput-object v3, v2, v7

    const-string/jumbo v3, "?corpId="

    aput-object v3, v2, v5

    aput-object v1, v2, v6

    const-string/jumbo v1, "#exportReport"

    aput-object v1, v2, v9

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    .line 9310
    :pswitch_1d
    instance-of v1, p1, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 9311
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 9312
    const-string/jumbo v2, "im_navigator_from"

    const-string/jumbo v3, "search_result"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 9314
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v2

    check-cast p1, Landroid/app/Activity;

    .end local p1    # "activity":Landroid/app/Activity;
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->b()Lchy;

    move-result-object v3

    invoke-virtual {v3}, Lchy;->getCurrentUid()J

    move-result-wide v4

    const-wide/32 v8, 0x188b95b1

    invoke-static {v4, v5, v8, v9}, Lcom/alibaba/android/search/utils/SearchUtils;->a(JJ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p1, v3, v1, v7}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;Z)V

    goto/16 :goto_0

    .line 625
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
    .end packed-switch
.end method

.method public static b()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 601
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v3

    invoke-virtual {v3}, Lccr;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v0

    .line 602
    .local v0, "currentUser":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    if-eqz v0, :cond_0

    iget-object v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    if-eqz v3, :cond_0

    iget-object v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_1

    .line 611
    :cond_0
    :goto_0
    return-object v2

    .line 606
    :cond_1
    iget-object v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .line 607
    .local v1, "orgEmployeeExtensionObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    if-eqz v1, :cond_0

    .line 611
    iget-object v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgStaffId:Ljava/lang/String;

    goto :goto_0
.end method
