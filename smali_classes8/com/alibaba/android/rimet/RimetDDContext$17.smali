.class final Lcom/alibaba/android/rimet/RimetDDContext$17;
.super Ljava/lang/Object;
.source "RimetDDContext.java"

# interfaces
.implements Lcjo$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/rimet/RimetDDContext;->initReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/rimet/RimetDDContext;


# direct methods
.method constructor <init>(Lcom/alibaba/android/rimet/RimetDDContext;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/rimet/RimetDDContext;

    .prologue
    .line 2251
    iput-object p1, p0, Lcom/alibaba/android/rimet/RimetDDContext$17;->a:Lcom/alibaba/android/rimet/RimetDDContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcjo$b;)V
    .locals 23
    .param p1, "message"    # Lcjo$b;

    .prologue
    .line 2254
    if-nez p1, :cond_1

    .line 2372
    :cond_0
    :goto_0
    return-void

    .line 2258
    :cond_1
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->l()V

    .line 2259
    move-object/from16 v0, p1

    iget v3, v0, Lcjo$b;->b:I

    const/16 v4, 0x3e9

    if-ne v3, v4, :cond_2

    .line 2260
    move-object/from16 v0, p1

    iget-object v3, v0, Lcjo$b;->a:Ljava/lang/Object;

    if-eqz v3, :cond_0

    .line 2264
    move-object/from16 v0, p1

    iget-object v9, v0, Lcjo$b;->a:Ljava/lang/Object;

    check-cast v9, Lcom/alibaba/android/dingtalk/userbase/model/OrganizationChangeObject;

    .line 2265
    .local v9, "changeObject":Lcom/alibaba/android/dingtalk/userbase/model/OrganizationChangeObject;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v4, v9, Lcom/alibaba/android/dingtalk/userbase/model/OrganizationChangeObject;->orgId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " org_change_time"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcpk;->d(Ljava/lang/String;)J

    move-result-wide v14

    .line 2266
    .local v14, "lastTime":J
    iget-wide v4, v9, Lcom/alibaba/android/dingtalk/userbase/model/OrganizationChangeObject;->time:J

    cmp-long v3, v4, v14

    if-lez v3, :cond_0

    .line 2267
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/rimet/RimetDDContext$17;->a:Lcom/alibaba/android/rimet/RimetDDContext;

    invoke-virtual {v4}, Lcom/alibaba/android/rimet/RimetDDContext;->getCurrentUid()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    new-instance v8, Lcom/alibaba/android/rimet/RimetDDContext$17$1;

    move-object/from16 v0, p0

    invoke-direct {v8, v0, v9}, Lcom/alibaba/android/rimet/RimetDDContext$17$1;-><init>(Lcom/alibaba/android/rimet/RimetDDContext$17;Lcom/alibaba/android/dingtalk/userbase/model/OrganizationChangeObject;)V

    invoke-virtual/range {v3 .. v8}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(JJLcma;)V

    goto :goto_0

    .line 2320
    .end local v9    # "changeObject":Lcom/alibaba/android/dingtalk/userbase/model/OrganizationChangeObject;
    .end local v14    # "lastTime":J
    :cond_2
    move-object/from16 v0, p1

    iget v3, v0, Lcjo$b;->b:I

    const/16 v4, 0x3ea

    if-ne v3, v4, :cond_3

    .line 2321
    move-object/from16 v0, p1

    iget-object v0, v0, Lcjo$b;->a:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Lcom/alibaba/android/dingtalk/userbase/model/OrganizationChangeObject;

    .line 2322
    .local v18, "oaChangeObject":Lcom/alibaba/android/dingtalk/userbase/model/OrganizationChangeObject;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/rimet/RimetDDContext$17;->a:Lcom/alibaba/android/rimet/RimetDDContext;

    invoke-virtual {v3}, Lcom/alibaba/android/rimet/RimetDDContext;->getApplication()Landroid/app/Application;

    move-result-object v3

    invoke-static {v3}, Lcms;->s(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrganizationChangeObject;->brief:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    move-object/from16 v0, v18

    iget-boolean v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrganizationChangeObject;->isLevelChange:Z

    if-nez v3, :cond_0

    .line 2323
    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrganizationChangeObject;->brief:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcms;->a(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 2325
    .end local v18    # "oaChangeObject":Lcom/alibaba/android/dingtalk/userbase/model/OrganizationChangeObject;
    :cond_3
    move-object/from16 v0, p1

    iget v3, v0, Lcjo$b;->b:I

    const/16 v4, 0x3eb

    if-ne v3, v4, :cond_d

    .line 2326
    move-object/from16 v0, p1

    iget-object v11, v0, Lcjo$b;->a:Ljava/lang/Object;

    check-cast v11, Lcom/alibaba/android/dingtalkbase/models/dos/idl/GuideObject;

    .line 2327
    .local v11, "guideObject":Lcom/alibaba/android/dingtalkbase/models/dos/idl/GuideObject;
    if-eqz v11, :cond_0

    iget-object v3, v11, Lcom/alibaba/android/dingtalkbase/models/dos/idl/GuideObject;->msg:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, v11, Lcom/alibaba/android/dingtalkbase/models/dos/idl/GuideObject;->url:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2328
    iget-boolean v3, v11, Lcom/alibaba/android/dingtalkbase/models/dos/idl/GuideObject;->showGuide:Z

    if-eqz v3, :cond_4

    .line 2329
    const-string/jumbo v3, "pref.key.new.user.lifestyle.guide.json"

    iget-object v4, v11, Lcom/alibaba/android/dingtalkbase/models/dos/idl/GuideObject;->msg:Ljava/lang/String;

    invoke-static {v3, v4}, Lcpk;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2330
    const-string/jumbo v3, "pref.key.new.user.lifestyle.guide.url"

    iget-object v4, v11, Lcom/alibaba/android/dingtalkbase/models/dos/idl/GuideObject;->url:Ljava/lang/String;

    invoke-static {v3, v4}, Lcpk;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2331
    const-string/jumbo v3, "pref.key.new.user.lifestyle.guide.is.show"

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcpk;->b(Ljava/lang/String;Z)V

    .line 2332
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object v3

    invoke-static {v3}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v3

    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v5, "com.workapp.new.user.lifestyle.guide"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2333
    invoke-virtual {v3, v4}, Ldq;->a(Landroid/content/Intent;)Z

    .line 2335
    :cond_4
    iget-boolean v3, v11, Lcom/alibaba/android/dingtalkbase/models/dos/idl/GuideObject;->showXpn:Z

    if-eqz v3, :cond_0

    .line 2336
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v3

    iget-object v4, v11, Lcom/alibaba/android/dingtalkbase/models/dos/idl/GuideObject;->msg:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 2337
    .local v10, "content":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2338
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/rimet/RimetDDContext$17;->a:Lcom/alibaba/android/rimet/RimetDDContext;

    invoke-virtual {v3}, Lcom/alibaba/android/rimet/RimetDDContext;->getApplication()Landroid/app/Application;

    move-result-object v3

    invoke-static {v3}, Lekg;->a(Landroid/content/Context;)Lekg;

    move-result-object v5

    move-object/from16 v0, p1

    iget v6, v0, Lcjo$b;->c:I

    iget-boolean v3, v11, Lcom/alibaba/android/dingtalkbase/models/dos/idl/GuideObject;->showGuide:Z

    if-eqz v3, :cond_7

    const/4 v3, 0x0

    .line 3195
    :goto_1
    const/4 v4, 0x0

    .line 3196
    const/4 v7, 0x1

    if-ne v6, v7, :cond_6

    .line 3197
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v6

    invoke-virtual {v6}, Lcid;->c()Landroid/app/Application;

    move-result-object v6

    invoke-static {v6}, Lcom/alibaba/laiwang/xpn/XpnUtils;->isSupportMIUIPush(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_5

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v6

    invoke-virtual {v6}, Lcid;->c()Landroid/app/Application;

    move-result-object v6

    invoke-static {v6}, Lcom/alibaba/laiwang/xpn/XpnUtils;->isSupportHuaweiPush(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 3198
    :cond_5
    const/4 v4, 0x1

    .line 2932
    :cond_6
    if-eqz v4, :cond_8

    .line 2933
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2934
    const-string/jumbo v4, "pref_key_xpn_jump_url"

    invoke-static {v4, v3}, Lcpk;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2935
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object v3

    invoke-static {v3}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v3

    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v5, "com.workapp.show.jump_xpn_url"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2936
    invoke-virtual {v3, v4}, Ldq;->a(Landroid/content/Intent;)Z

    goto/16 :goto_0

    .line 2338
    :cond_7
    iget-object v3, v11, Lcom/alibaba/android/dingtalkbase/models/dos/idl/GuideObject;->url:Ljava/lang/String;

    goto :goto_1

    .line 2942
    :cond_8
    :try_start_0
    iget-object v4, v5, Lekg;->b:Landroid/app/NotificationManager;

    const/16 v6, 0x1388

    invoke-virtual {v4, v6}, Landroid/app/NotificationManager;->cancel(I)V

    .line 2944
    iget-object v4, v5, Lekg;->a:Landroid/content/Context;

    sget-object v6, Lcom/alibaba/android/dingtalkbase/notification/DtChannel;->Message:Lcom/alibaba/android/dingtalkbase/notification/DtChannel;

    invoke-static {v4, v6}, Lekf;->a(Landroid/content/Context;Lcom/alibaba/android/dingtalkbase/notification/DtChannel;)Lekf;

    move-result-object v4

    .line 2947
    invoke-virtual {v4, v10}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v6

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v7

    invoke-virtual {v7}, Lcid;->c()Landroid/app/Application;

    move-result-object v7

    const v8, 0x7f090035

    invoke-virtual {v7, v8}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v6

    iget-object v7, v5, Lekg;->a:Landroid/content/Context;

    .line 2948
    invoke-virtual {v7}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f020dfe

    invoke-static {v7, v8}, Lcms;->a(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v6

    const v7, 0x7f020dff

    .line 2949
    invoke-virtual {v6, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setPriority(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v6

    const v7, -0xffff01

    const/16 v8, 0x3e8

    const/16 v22, 0x3e8

    move/from16 v0, v22

    invoke-virtual {v6, v7, v8, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setLights(III)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 2952
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 2953
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 2954
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 2955
    const-string/jumbo v3, "to_page"

    const-string/jumbo v8, "to_chat"

    invoke-virtual {v7, v3, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2956
    const-string/jumbo v3, "/ding/home.html"

    invoke-static {v3, v7}, Lemd;->a(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v3

    .line 2958
    :cond_9
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v6, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 2959
    iget-object v3, v5, Lekg;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 2960
    const-string/jumbo v3, "android.intent.action.VIEW"

    invoke-virtual {v6, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2961
    iget-object v3, v5, Lekg;->a:Landroid/content/Context;

    const/4 v7, 0x0

    const/high16 v8, 0x8000000

    invoke-static {v3, v7, v6, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 2962
    invoke-virtual {v4, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 2963
    invoke-virtual {v5, v4}, Lekg;->a(Landroid/support/v4/app/NotificationCompat$Builder;)V

    .line 2964
    const/4 v3, 0x1

    invoke-virtual {v4, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 2965
    invoke-static {}, Lcmp;->a()Lcmp;

    move-result-object v3

    invoke-virtual {v3}, Lcmp;->d()Z

    move-result v3

    if-nez v3, :cond_c

    invoke-virtual {v5}, Lekg;->b()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 2966
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->D()Lccq;

    move-result-object v3

    invoke-virtual {v3}, Lccq;->d()Lchj;

    move-result-object v3

    invoke-virtual {v3}, Lchj;->b()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 2967
    const/4 v3, 0x2

    invoke-virtual {v4, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setDefaults(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 2969
    :cond_a
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->D()Lccq;

    move-result-object v3

    invoke-virtual {v3}, Lccq;->d()Lchj;

    move-result-object v3

    .line 4029
    iget v3, v3, Lchj;->a:I

    .line 2970
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v6

    invoke-virtual {v6}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->D()Lccq;

    move-result-object v6

    invoke-virtual {v6}, Lccq;->d()Lchj;

    move-result-object v6

    invoke-virtual {v6}, Lchj;->a()Z

    move-result v6

    if-eqz v6, :cond_b

    .line 2971
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v6

    invoke-virtual {v6}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->D()Lccq;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7, v3}, Lccq;->a(II)Landroid/net/Uri;

    move-result-object v3

    const/4 v6, 0x5

    invoke-virtual {v4, v3, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setSound(Landroid/net/Uri;I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 2979
    :goto_2
    const/16 v3, 0x7c9

    invoke-virtual {v4}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v4

    const/4 v6, 0x1

    invoke-virtual {v5, v3, v4, v6}, Lekg;->a(ILandroid/app/Notification;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 2980
    :catch_0
    move-exception v3

    .line 2981
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 2973
    :cond_b
    :try_start_1
    sget-object v3, Lcom/alibaba/android/dingtalkbase/notification/DtChannel;->Mute:Lcom/alibaba/android/dingtalkbase/notification/DtChannel;

    invoke-static {v4, v3}, Lekg;->a(Landroid/support/v4/app/NotificationCompat$Builder;Lcom/alibaba/android/dingtalkbase/notification/DtChannel;)V

    goto :goto_2

    .line 2976
    :cond_c
    sget-object v3, Lcom/alibaba/android/dingtalkbase/notification/DtChannel;->Mute:Lcom/alibaba/android/dingtalkbase/notification/DtChannel;

    invoke-static {v4, v3}, Lekg;->a(Landroid/support/v4/app/NotificationCompat$Builder;Lcom/alibaba/android/dingtalkbase/notification/DtChannel;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 2343
    .end local v10    # "content":Ljava/lang/String;
    .end local v11    # "guideObject":Lcom/alibaba/android/dingtalkbase/models/dos/idl/GuideObject;
    :cond_d
    move-object/from16 v0, p1

    iget v3, v0, Lcjo$b;->b:I

    const/16 v4, 0x3ec

    if-ne v3, v4, :cond_e

    .line 2344
    invoke-static {}, Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;->s()Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;

    move-result-object v16

    .line 2345
    .local v16, "mailInterface":Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcjo$b;->d:Ljava/lang/String;

    move-object/from16 v17, v0

    .line 2346
    .local v17, "messageContent":Ljava/lang/String;
    invoke-virtual/range {v16 .. v17}, Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2347
    .end local v16    # "mailInterface":Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;
    .end local v17    # "messageContent":Ljava/lang/String;
    :cond_e
    move-object/from16 v0, p1

    iget v3, v0, Lcjo$b;->b:I

    const/16 v4, 0x3ee

    if-ne v3, v4, :cond_f

    .line 2348
    move-object/from16 v0, p1

    iget-object v2, v0, Lcjo$b;->a:Ljava/lang/Object;

    check-cast v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgManageInfoObject;

    .line 2349
    .local v2, "authStatusChangeObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgManageInfoObject;
    if-eqz v2, :cond_0

    .line 2350
    new-instance v12, Landroid/content/Intent;

    const-string/jumbo v3, "com.workapp.ACTION_MANAGE_ORG_UPDATE_VERIFY"

    invoke-direct {v12, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2351
    .local v12, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "key_org_manage_info"

    invoke-virtual {v12, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 2352
    const-string/jumbo v3, "org_id"

    iget-wide v4, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgManageInfoObject;->orgId:J

    invoke-virtual {v12, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2353
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object v3

    invoke-static {v3}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v3

    .line 2354
    invoke-virtual {v3, v12}, Ldq;->a(Landroid/content/Intent;)Z

    goto/16 :goto_0

    .line 2356
    .end local v2    # "authStatusChangeObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgManageInfoObject;
    .end local v12    # "intent":Landroid/content/Intent;
    :cond_f
    move-object/from16 v0, p1

    iget v3, v0, Lcjo$b;->b:I

    const/16 v4, 0x3ef

    if-ne v3, v4, :cond_0

    .line 2357
    move-object/from16 v0, p1

    iget-object v0, v0, Lcjo$b;->a:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Lcom/alibaba/android/dingtalk/userbase/model/RedDotObject;

    .line 2358
    .local v20, "redDotObject":Lcom/alibaba/android/dingtalk/userbase/model/RedDotObject;
    if-eqz v20, :cond_0

    .line 2359
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/rimet/RimetDDContext$17;->a:Lcom/alibaba/android/rimet/RimetDDContext;

    invoke-virtual {v3}, Lcom/alibaba/android/rimet/RimetDDContext;->getGson()Lcom/google/gson/Gson;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-static {v3, v0}, Lcpt;->a(Lcom/google/gson/Gson;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    .line 2360
    .local v19, "reaDotData":Ljava/lang/String;
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/AccountInterface;->a()Lcom/alibaba/android/dingtalk/userbase/AccountInterface;

    invoke-static {}, Lcom/alibaba/android/rimet/RimetDDContext;->access$000()Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v19, v3, v4

    .line 2361
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "prefKeyRecommendJs_"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v5

    invoke-virtual {v5}, Lccr;->c()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 2362
    .local v13, "jsonKey":Ljava/lang/String;
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "pref_key_recommend_info_first_show_"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v5

    invoke-virtual {v5}, Lccr;->c()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 2363
    .local v21, "showKey":Ljava/lang/String;
    move-object/from16 v0, v19

    invoke-static {v13, v0}, Lcpk;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2364
    const/4 v3, 0x1

    move-object/from16 v0, v21

    invoke-static {v0, v3}, Lcpk;->b(Ljava/lang/String;Z)V

    .line 2367
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object v3

    invoke-static {v3}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v3

    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v5, "pref_key_recommend_info_first_show_"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2368
    invoke-virtual {v3, v4}, Ldq;->a(Landroid/content/Intent;)Z

    goto/16 :goto_0
.end method
