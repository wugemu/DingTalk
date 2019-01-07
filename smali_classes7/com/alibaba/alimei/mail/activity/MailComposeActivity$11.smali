.class final Lcom/alibaba/alimei/mail/activity/MailComposeActivity$11;
.super Landroid/content/BroadcastReceiver;
.source "MailComposeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/activity/MailComposeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/activity/MailComposeActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/MailComposeActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/activity/MailComposeActivity;

    .prologue
    .line 285
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity$11;->a:Lcom/alibaba/alimei/mail/activity/MailComposeActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 20
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 288
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 289
    .local v3, "action":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity$11;->a:Lcom/alibaba/alimei/mail/activity/MailComposeActivity;

    invoke-static {v15}, Lajf;->a(Landroid/app/Activity;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 364
    :cond_0
    :goto_0
    return-void

    .line 292
    :cond_1
    sget-object v15, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->b:Ljava/lang/String;

    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_2

    sget-object v15, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->c:Ljava/lang/String;

    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 293
    :cond_2
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v15

    const-string/jumbo v16, "choose_picture_ids"

    invoke-virtual/range {v15 .. v16}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    .line 295
    .local v9, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v9, :cond_0

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-lez v15, :cond_0

    .line 296
    new-instance v11, Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v15

    invoke-direct {v11, v15}, Ljava/util/ArrayList;-><init>(I)V

    .line 297
    .local v11, "picList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_3

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 299
    .local v5, "data":Ljava/lang/String;
    :try_start_0
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    .line 300
    .local v14, "uri":Landroid/net/Uri;
    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 301
    .end local v14    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v6

    .line 302
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 305
    .end local v5    # "data":Ljava/lang/String;
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity$11;->a:Lcom/alibaba/alimei/mail/activity/MailComposeActivity;

    iget-object v15, v15, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->f:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    if-eqz v15, :cond_0

    .line 306
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity$11;->a:Lcom/alibaba/alimei/mail/activity/MailComposeActivity;

    iget-object v15, v15, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->f:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    invoke-virtual {v15, v11}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->b(Ljava/util/List;)V

    goto :goto_0

    .line 309
    .end local v9    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v11    # "picList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    :cond_4
    const-string/jumbo v15, "com.workapp.choose.people.from.contact"

    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_7

    .line 310
    const-string/jumbo v15, "activity_identify"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 311
    .local v8, "identifier":Ljava/lang/String;
    const-string/jumbo v15, "10001"

    invoke-virtual {v15, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 312
    const-string/jumbo v15, "choose_user_identities"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v10

    .line 314
    .local v10, "lists":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity$11;->a:Lcom/alibaba/alimei/mail/activity/MailComposeActivity;

    iget-object v15, v15, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->f:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    if-eqz v15, :cond_0

    .line 315
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity$11;->a:Lcom/alibaba/alimei/mail/activity/MailComposeActivity;

    iget-object v15, v15, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->f:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    const/16 v16, 0x2711

    move/from16 v0, v16

    invoke-virtual {v15, v0, v10}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->a(ILjava/util/List;)V

    goto/16 :goto_0

    .line 318
    .end local v10    # "lists":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    :cond_5
    const-string/jumbo v15, "10002"

    invoke-virtual {v15, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_6

    .line 319
    const-string/jumbo v15, "choose_user_identities"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v10

    .line 321
    .restart local v10    # "lists":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity$11;->a:Lcom/alibaba/alimei/mail/activity/MailComposeActivity;

    iget-object v15, v15, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->f:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    if-eqz v15, :cond_0

    .line 322
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity$11;->a:Lcom/alibaba/alimei/mail/activity/MailComposeActivity;

    iget-object v15, v15, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->f:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    const/16 v16, 0x2712

    move/from16 v0, v16

    invoke-virtual {v15, v0, v10}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->a(ILjava/util/List;)V

    goto/16 :goto_0

    .line 326
    .end local v10    # "lists":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    :cond_6
    const-string/jumbo v15, "10003"

    invoke-virtual {v15, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 327
    const-string/jumbo v15, "choose_user_identities"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v10

    .line 329
    .restart local v10    # "lists":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity$11;->a:Lcom/alibaba/alimei/mail/activity/MailComposeActivity;

    iget-object v15, v15, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->f:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    if-eqz v15, :cond_0

    .line 330
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity$11;->a:Lcom/alibaba/alimei/mail/activity/MailComposeActivity;

    iget-object v15, v15, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->f:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    const/16 v16, 0x2713

    move/from16 v0, v16

    invoke-virtual {v15, v0, v10}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->a(ILjava/util/List;)V

    goto/16 :goto_0

    .line 333
    .end local v8    # "identifier":Ljava/lang/String;
    .end local v10    # "lists":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    :cond_7
    sget-object v15, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->d:Ljava/lang/String;

    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_8

    .line 338
    :try_start_1
    const-class v15, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    invoke-virtual {v15}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 340
    const-string/jumbo v15, "msg_entity_list"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v13

    .line 341
    .local v13, "spaceDos":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;>;"
    if-eqz v13, :cond_0

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v15

    if-lez v15, :cond_0

    .line 342
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity$11;->a:Lcom/alibaba/alimei/mail/activity/MailComposeActivity;

    iget-object v15, v15, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->f:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    if-eqz v15, :cond_0

    .line 343
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity$11;->a:Lcom/alibaba/alimei/mail/activity/MailComposeActivity;

    iget-object v15, v15, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->f:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    invoke-virtual {v15, v13}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->d(Ljava/util/List;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 346
    .end local v13    # "spaceDos":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;>;"
    :catch_1
    move-exception v6

    .line 347
    .restart local v6    # "e":Ljava/lang/Exception;
    const-string/jumbo v15, "CMail"

    const-string/jumbo v16, "select space file"

    const-string/jumbo v17, "chooseSpaceFileToAttachment"

    const-string/jumbo v18, "-1"

    const-string/jumbo v19, "exception at broadcastReceiver when choose space files"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2, v6}, Lrv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v15 .. v17}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 350
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_8
    sget-object v15, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->e:Ljava/lang/String;

    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_9

    .line 351
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity$11;->a:Lcom/alibaba/alimei/mail/activity/MailComposeActivity;

    iget-object v15, v15, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->f:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    if-eqz v15, :cond_0

    .line 352
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v15

    const-string/jumbo v16, "choose_files_uris"

    invoke-virtual/range {v15 .. v16}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    .line 353
    .local v7, "fileUris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-lez v15, :cond_0

    .line 354
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity$11;->a:Lcom/alibaba/alimei/mail/activity/MailComposeActivity;

    iget-object v15, v15, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->f:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    invoke-virtual {v15, v7}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->b(Ljava/util/List;)V

    goto/16 :goto_0

    .line 357
    .end local v7    # "fileUris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    :cond_9
    const-string/jumbo v15, "intent_action_forward_pick_data"

    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 358
    const-string/jumbo v15, "intent_key_forward_pick_data"

    .line 359
    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 360
    .local v4, "atList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;>;"
    const-string/jumbo v15, "activity_identify"

    const/16 v16, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    .line 362
    .local v12, "requestCode":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity$11;->a:Lcom/alibaba/alimei/mail/activity/MailComposeActivity;

    invoke-static {v15, v4, v12}, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->a(Lcom/alibaba/alimei/mail/activity/MailComposeActivity;Ljava/util/List;I)V

    goto/16 :goto_0
.end method
