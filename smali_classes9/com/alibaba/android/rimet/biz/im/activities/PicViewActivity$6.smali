.class final Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$6;
.super Ljava/lang/Object;
.source "PicViewActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;->a(Lcom/alibaba/laiwang/photokit/browser/PhotoObject;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;ILcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;

.field final synthetic b:Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

.field final synthetic c:I

.field final synthetic d:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

.field final synthetic g:Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;Lcom/alibaba/laiwang/photokit/browser/PhotoObject;ILcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;Ljava/lang/String;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;

    .prologue
    .line 582
    iput-object p1, p0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$6;->g:Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;

    iput-object p2, p0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$6;->a:Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;

    iput-object p3, p0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$6;->b:Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    iput p4, p0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$6;->c:I

    iput-object p5, p0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$6;->d:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    iput-object p6, p0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$6;->e:Ljava/lang/String;

    iput-object p7, p0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$6;->f:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 40
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 585
    if-ltz p2, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$6;->a:Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;->getCount()I

    move-result v3

    move/from16 v0, p2

    if-ge v0, v3, :cond_0

    .line 586
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$6;->a:Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Lcng;

    .line 587
    .local v36, "menu":Lcng;
    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->n()Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

    move-result-object v2

    .line 588
    .local v2, "spaceInterface":Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;
    new-instance v30, Landroid/os/Bundle;

    invoke-direct/range {v30 .. v30}, Landroid/os/Bundle;-><init>()V

    .line 589
    .local v30, "bundle":Landroid/os/Bundle;
    move-object/from16 v0, v36

    iget v3, v0, Lcng;->a:I

    sparse-switch v3, :sswitch_data_0

    .line 870
    .end local v2    # "spaceInterface":Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;
    .end local v30    # "bundle":Landroid/os/Bundle;
    .end local v36    # "menu":Lcng;
    :cond_0
    :goto_0
    return-void

    .line 591
    .restart local v2    # "spaceInterface":Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;
    .restart local v30    # "bundle":Landroid/os/Bundle;
    .restart local v36    # "menu":Lcng;
    :sswitch_0
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v3

    const-string/jumbo v4, "chat_image_view_transmit"

    invoke-interface {v3, v4}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 595
    const-string/jumbo v3, "choose_mode"

    const/4 v4, 0x0

    move-object/from16 v0, v30

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 597
    const-string/jumbo v3, "intent_key_menu_seed"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$6;->g:Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;

    invoke-virtual {v4}, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string/jumbo v5, "intent_key_menu_seed"

    const-wide/16 v8, 0x0

    .line 598
    invoke-virtual {v4, v5, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    .line 597
    move-object/from16 v0, v30

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 599
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$6;->b:Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    if-eqz v3, :cond_0

    .line 600
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$6;->b:Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    iget-object v3, v3, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->extension:Ljava/util/HashMap;

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$6;->b:Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    iget-object v3, v3, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->extension:Ljava/util/HashMap;

    const-string/jumbo v4, "conversation_id"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 601
    const-string/jumbo v4, "conversation_id"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$6;->b:Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    iget-object v3, v3, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->extension:Ljava/util/HashMap;

    const-string/jumbo v5, "conversation_id"

    .line 602
    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 601
    move-object/from16 v0, v30

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 604
    :cond_1
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$6;->g:Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$6;->b:Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    iget-wide v8, v5, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->id:J

    .line 605
    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    .line 604
    move-object/from16 v0, v30

    invoke-virtual {v3, v4, v5, v0}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 609
    :sswitch_1
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v3

    const-string/jumbo v4, "chat_image_save_to_album"

    invoke-interface {v3, v4}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 613
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$6;->g:Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;

    invoke-static {v3}, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;->a(Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;)Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$6;->c:I

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;->a(IZ)V

    goto/16 :goto_0

    .line 617
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$6;->g:Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;

    invoke-static {v3}, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;->a(Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;)Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$6;->c:I

    const/4 v5, 0x0

    new-instance v6, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$6$1;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$6$1;-><init>(Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$6;)V

    invoke-virtual {v3, v4, v5, v6}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;->a(IZLcom/alibaba/wukong/Callback;)V

    goto/16 :goto_0

    .line 637
    :sswitch_3
    move-object/from16 v0, v36

    iget-object v0, v0, Lcng;->d:Ljava/lang/Object;

    move-object/from16 v37, v0

    .line 638
    .local v37, "object":Ljava/lang/Object;
    invoke-static {}, Lcom/alibaba/dingtalk/scanbase/QRCodeInterface;->a()Lcom/alibaba/dingtalk/scanbase/QRCodeInterface;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$6;->g:Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 639
    move-object/from16 v0, v37

    invoke-virtual {v3, v4, v0, v5, v6}, Lcom/alibaba/dingtalk/scanbase/QRCodeInterface;->a(Landroid/app/Activity;Ljava/lang/Object;ZLcom/alibaba/dingtalk/scanbase/QRCodeInterface$a;)V

    goto/16 :goto_0

    .line 644
    .end local v37    # "object":Ljava/lang/Object;
    :sswitch_4
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v3

    const-string/jumbo v4, "pic_collection_click"

    invoke-interface {v3, v4}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 645
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$6;->d:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    if-eqz v3, :cond_2

    .line 646
    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/favorite/FavoriteInterface;->b()Lcom/alibaba/dingtalk/cspacebase/favorite/FavoriteInterface;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$6;->g:Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$6;->b:Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$6;->d:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    invoke-virtual {v3, v4, v5, v6}, Lcom/alibaba/dingtalk/cspacebase/favorite/FavoriteInterface;->a(Landroid/content/Context;Lcom/alibaba/laiwang/photokit/browser/PhotoObject;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;)V

    goto/16 :goto_0

    .line 649
    :cond_2
    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/favorite/FavoriteInterface;->b()Lcom/alibaba/dingtalk/cspacebase/favorite/FavoriteInterface;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$6;->g:Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$6;->b:Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    invoke-virtual {v3, v4, v5}, Lcom/alibaba/dingtalk/cspacebase/favorite/FavoriteInterface;->a(Landroid/content/Context;Lcom/alibaba/laiwang/photokit/browser/PhotoObject;)V

    goto/16 :goto_0

    .line 654
    :sswitch_5
    new-instance v39, Ljava/util/HashMap;

    invoke-direct/range {v39 .. v39}, Ljava/util/HashMap;-><init>()V

    .line 655
    .local v39, "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v3, "type"

    const-string/jumbo v4, "3"

    move-object/from16 v0, v39

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 656
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v3

    const-string/jumbo v4, "chat_image_save_to_space"

    move-object/from16 v0, v39

    invoke-interface {v3, v4, v0}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/util/Map;)V

    .line 657
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$6;->d:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    if-eqz v3, :cond_3

    .line 658
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$6;->g:Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$6;->d:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    const-wide/16 v8, 0x0

    .line 659
    invoke-virtual {v2, v3, v4, v8, v9}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->a(Landroid/content/Context;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;J)V

    goto/16 :goto_0

    .line 661
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$6;->b:Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    invoke-static {v3}, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;->a(Lcom/alibaba/laiwang/photokit/browser/PhotoObject;)Ljava/lang/String;

    move-result-object v7

    .line 662
    .local v7, "url":Ljava/lang/String;
    if-eqz v7, :cond_4

    invoke-static {v7}, Lhcs;->d(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 663
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$6;->g:Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$6;->e:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$6;->b:Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    iget-object v5, v5, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->filename:Ljava/lang/String;

    invoke-static {v3, v7, v4, v5}, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;->a(Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 665
    :cond_4
    invoke-static {v7}, Lcop;->d(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 666
    const v3, 0x7f0903ae

    invoke-static {v3}, Lcms;->a(I)V

    goto/16 :goto_0

    .line 669
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$6;->g:Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;

    invoke-static {v3}, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;->f(Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 670
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v3

    const-string/jumbo v4, "mail_attachments_saveto_space_click"

    invoke-interface {v3, v4}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 672
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$6;->g:Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;

    invoke-static {v3}, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;->g(Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;)J

    move-result-wide v4

    const-wide/16 v8, 0x0

    cmp-long v3, v4, v8

    if-nez v3, :cond_7

    .line 673
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$6;->g:Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;

    .line 674
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v4

    .line 675
    invoke-virtual {v4}, Lccr;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v4

    const/4 v5, 0x0

    .line 673
    invoke-virtual {v2, v3, v4, v5, v7}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->a(Landroid/content/Context;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;Landroid/os/Bundle;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 679
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$6;->g:Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$6;->g:Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;

    .line 681
    invoke-static {v4}, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;->g(Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;)J

    move-result-wide v4

    const/4 v6, 0x0

    .line 683
    invoke-virtual {v2}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->e()Lcma;

    move-result-object v8

    .line 680
    invoke-virtual/range {v2 .. v8}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->a(Landroid/content/Context;JLandroid/os/Bundle;Ljava/lang/String;Lcma;)V

    goto/16 :goto_0

    .line 688
    .end local v7    # "url":Ljava/lang/String;
    .end local v39    # "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :sswitch_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$6;->d:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    if-eqz v3, :cond_0

    .line 689
    invoke-static {}, Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;->s()Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;

    move-result-object v35

    .line 690
    .local v35, "mailInterface":Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;
    new-instance v12, Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-direct {v12, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 691
    .local v12, "spaceDos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$6;->d:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 692
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$6;->g:Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$6;->g:Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;

    .line 693
    invoke-static {v4}, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;->g(Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;)J

    const/4 v4, 0x0

    move-object/from16 v0, v35

    invoke-virtual {v0, v3, v12, v4}, Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;->a(Landroid/content/Context;Ljava/util/ArrayList;Lcma;)V

    goto/16 :goto_0

    .line 698
    .end local v12    # "spaceDos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;>;"
    .end local v35    # "mailInterface":Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;
    :sswitch_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$6;->d:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    if-eqz v3, :cond_c

    .line 699
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$6;->d:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    iget-object v3, v3, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->orgId:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    const-string/jumbo v3, "0"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$6;->d:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    iget-object v4, v4, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->orgId:Ljava/lang/String;

    .line 700
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 701
    :cond_8
    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->n()Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$6;->d:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    iget-object v4, v4, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->spaceId:Ljava/lang/String;

    .line 702
    invoke-virtual {v3, v4}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->c(Ljava/lang/String;)J

    move-result-wide v16

    .line 703
    .local v16, "orgId":J
    const-wide/16 v4, 0x0

    cmp-long v3, v16, v4

    if-lez v3, :cond_9

    .line 704
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$6;->d:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->orgId:Ljava/lang/String;

    .line 707
    .end local v16    # "orgId":J
    :cond_9
    const-wide/16 v10, 0x0

    .line 708
    .local v10, "spaceOrgId":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$6;->g:Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;

    invoke-static {v3}, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;->g(Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;)J

    move-result-wide v4

    const-wide/16 v8, 0x0

    cmp-long v3, v4, v8

    if-nez v3, :cond_b

    .line 710
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$6;->d:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    iget-object v3, v3, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->orgId:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 711
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$6;->d:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    iget-object v3, v3, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->orgId:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v10

    .line 720
    :cond_a
    :goto_1
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 721
    .restart local v12    # "spaceDos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$6;->d:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 722
    new-instance v13, Landroid/os/Bundle;

    invoke-direct {v13}, Landroid/os/Bundle;-><init>()V

    .line 724
    .local v13, "tmpBundle":Landroid/os/Bundle;
    const-string/jumbo v3, "com.workapp.choose.pictire.orientation"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$6;->b:Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    iget v4, v4, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->orientation:I

    invoke-virtual {v13, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 725
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$6;->g:Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;

    move-object v8, v2

    .line 726
    invoke-virtual/range {v8 .. v13}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->a(Landroid/content/Context;JLjava/util/List;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 713
    .end local v12    # "spaceDos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;>;"
    .end local v13    # "tmpBundle":Landroid/os/Bundle;
    :catch_0
    move-exception v33

    .line 715
    .local v33, "e":Ljava/lang/NumberFormatException;
    invoke-virtual/range {v33 .. v33}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_1

    .line 718
    .end local v33    # "e":Ljava/lang/NumberFormatException;
    :cond_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$6;->g:Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;

    invoke-static {v3}, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;->g(Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;)J

    move-result-wide v10

    goto :goto_1

    .line 728
    .end local v10    # "spaceOrgId":J
    :cond_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$6;->g:Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;

    invoke-static {v3}, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;->f(Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 729
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$6;->g:Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;

    invoke-static {v3}, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;->a(Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;)Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$6;->c:I

    invoke-virtual {v3, v4}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;->a(I)Ljava/lang/String;

    move-result-object v32

    .line 730
    .local v32, "downLoadUrl":Ljava/lang/String;
    invoke-static/range {v32 .. v32}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 731
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$6;->g:Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$6;->g:Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;

    .line 732
    invoke-static {v4}, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;->h(Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v32

    invoke-virtual {v2, v3, v4, v0}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 738
    .end local v32    # "downLoadUrl":Ljava/lang/String;
    :sswitch_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$6;->d:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    if-eqz v3, :cond_0

    .line 739
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$6;->g:Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;

    invoke-virtual {v3}, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;->finish()V

    .line 740
    const-string/jumbo v3, "data"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$6;->d:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    move-object/from16 v0, v30

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 743
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$6;->d:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    iget-object v3, v3, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->orgId:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_d

    .line 744
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$6;->d:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    iget-object v3, v3, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->orgId:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 750
    :cond_d
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$6;->g:Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;

    const/4 v4, 0x0

    .line 751
    move-object/from16 v0, v30

    invoke-virtual {v2, v3, v0, v4}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->a(Landroid/content/Context;Landroid/os/Bundle;Lcma;)V

    goto/16 :goto_0

    .line 746
    :catch_1
    move-exception v33

    .line 748
    .restart local v33    # "e":Ljava/lang/NumberFormatException;
    invoke-virtual/range {v33 .. v33}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_2

    .line 755
    .end local v33    # "e":Ljava/lang/NumberFormatException;
    :sswitch_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$6;->d:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    if-eqz v3, :cond_0

    .line 756
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$6;->g:Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;

    invoke-virtual {v3}, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;->finish()V

    .line 757
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 758
    .local v22, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$6;->d:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 759
    const-wide/16 v16, 0x0

    .line 761
    .restart local v16    # "orgId":J
    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$6;->d:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    iget-object v3, v3, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->orgId:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_e

    .line 762
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$6;->d:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    iget-object v3, v3, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->orgId:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-wide v16

    .line 768
    :cond_e
    :goto_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$6;->g:Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;

    const/16 v18, 0x4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$6;->d:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    iget-object v0, v3, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->spaceId:Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x1

    const/16 v25, 0x1

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x4

    const/16 v29, 0x0

    move-object v14, v2

    invoke-virtual/range {v14 .. v29}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->a(Landroid/content/Context;JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ZZLjava/lang/String;Lcma;IZ)V

    goto/16 :goto_0

    .line 764
    :catch_2
    move-exception v33

    .line 766
    .restart local v33    # "e":Ljava/lang/NumberFormatException;
    invoke-virtual/range {v33 .. v33}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_3

    .line 776
    .end local v16    # "orgId":J
    .end local v22    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;>;"
    .end local v33    # "e":Ljava/lang/NumberFormatException;
    :sswitch_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$6;->d:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    if-eqz v3, :cond_0

    .line 777
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$6;->g:Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;

    invoke-virtual {v3}, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;->finish()V

    .line 778
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 779
    .restart local v22    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$6;->d:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 782
    :try_start_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$6;->d:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    iget-object v3, v3, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->orgId:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_f

    .line 783
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$6;->d:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    iget-object v3, v3, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->orgId:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3

    .line 789
    :cond_f
    :goto_4
    invoke-virtual {v2}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->b()Ljava/lang/String;

    .line 790
    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->a(Ljava/util/List;)V

    goto/16 :goto_0

    .line 785
    :catch_3
    move-exception v33

    .line 787
    .restart local v33    # "e":Ljava/lang/NumberFormatException;
    invoke-virtual/range {v33 .. v33}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_4

    .line 794
    .end local v22    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;>;"
    .end local v33    # "e":Ljava/lang/NumberFormatException;
    :sswitch_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$6;->g:Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$6;->g:Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;

    invoke-static {v4}, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;->a(Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;)Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;->g()Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;->b(Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;Lcom/alibaba/laiwang/photokit/browser/PhotoObject;)V

    goto/16 :goto_0

    .line 797
    :sswitch_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$6;->b:Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$6;->b:Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    iget-object v3, v3, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->extension:Ljava/util/HashMap;

    if-eqz v3, :cond_0

    .line 798
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$6;->b:Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    iget-object v3, v3, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->extension:Ljava/util/HashMap;

    const-string/jumbo v4, "conversation_id"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ljava/lang/String;

    .line 799
    .local v31, "cid":Ljava/lang/String;
    invoke-static/range {v31 .. v31}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$6;->b:Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    iget-wide v4, v3, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->id:J

    const-wide/16 v8, 0x0

    cmp-long v3, v4, v8

    if-lez v3, :cond_0

    .line 800
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$6;->g:Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;

    new-instance v5, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$6$2;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$6$2;-><init>(Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$6;)V

    move-object/from16 v0, v31

    invoke-virtual {v3, v4, v0, v5}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto/16 :goto_0

    .line 816
    .end local v31    # "cid":Ljava/lang/String;
    :sswitch_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$6;->g:Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;

    invoke-static {v3}, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;->i(Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;)Lcma;

    move-result-object v34

    .line 817
    .local v34, "listener":Lcma;, "Lcma<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$6;->f:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    if-eqz v3, :cond_11

    .line 818
    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->n()Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$6;->f:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    iget-object v5, v3, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->spaceId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$6;->f:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    iget-object v6, v3, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$6;->f:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    iget v3, v3, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->isEncrypt:I

    const/4 v8, 0x1

    if-ne v3, v8, :cond_10

    const/4 v3, 0x1

    :goto_5
    move-object/from16 v0, v34

    invoke-virtual {v4, v5, v6, v3, v0}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->a(Ljava/lang/String;Ljava/lang/String;ZLcma;)V

    goto/16 :goto_0

    :cond_10
    const/4 v3, 0x0

    goto :goto_5

    .line 819
    :cond_11
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$6;->b:Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    if-eqz v3, :cond_0

    .line 820
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$6;->b:Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    iget-object v0, v3, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->originUrl:Ljava/lang/String;

    move-object/from16 v38, v0

    .line 821
    .local v38, "photoUrl":Ljava/lang/String;
    invoke-static/range {v38 .. v38}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 822
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$6;->b:Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    iget-object v0, v3, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->url:Ljava/lang/String;

    move-object/from16 v38, v0

    .line 824
    :cond_12
    invoke-static/range {v38 .. v38}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 825
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$6;->b:Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    iget-object v0, v3, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->bigUrl:Ljava/lang/String;

    move-object/from16 v38, v0

    .line 827
    :cond_13
    invoke-static/range {v38 .. v38}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 828
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$6;->b:Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    iget-object v0, v3, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->smallUrl:Ljava/lang/String;

    move-object/from16 v38, v0

    .line 830
    :cond_14
    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->n()Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

    move-result-object v3

    invoke-static/range {v38 .. v38}, Ldjy;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v34

    invoke-virtual {v3, v4, v0}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->a(Ljava/lang/String;Lcma;)V

    goto/16 :goto_0

    .line 834
    .end local v34    # "listener":Lcma;, "Lcma<Ljava/lang/String;>;"
    .end local v38    # "photoUrl":Ljava/lang/String;
    :sswitch_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$6;->g:Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$6;->b:Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$6;->f:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    invoke-static {v3, v4, v5}, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;->a(Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;Lcom/alibaba/laiwang/photokit/browser/PhotoObject;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;)V

    goto/16 :goto_0

    .line 837
    :sswitch_f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$6;->g:Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;

    invoke-static {v3}, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;->a(Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;)Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 838
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$6;->g:Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;

    invoke-static {v3}, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;->a(Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;)Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$6;->c:I

    const/4 v5, 0x0

    new-instance v6, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$6$3;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$6$3;-><init>(Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$6;)V

    invoke-virtual {v3, v4, v5, v6}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;->a(IZLcom/alibaba/wukong/Callback;)V

    goto/16 :goto_0

    .line 589
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f09036e -> :sswitch_3
        0x7f090375 -> :sswitch_0
        0x7f090585 -> :sswitch_6
        0x7f090cdd -> :sswitch_d
        0x7f09128f -> :sswitch_c
        0x7f0912de -> :sswitch_e
        0x7f091893 -> :sswitch_2
        0x7f091cef -> :sswitch_f
        0x7f091fa0 -> :sswitch_b
        0x7f09205a -> :sswitch_1
        0x7f09212b -> :sswitch_a
        0x7f09212c -> :sswitch_7
        0x7f09212d -> :sswitch_9
        0x7f09212f -> :sswitch_8
        0x7f09214d -> :sswitch_5
        0x7f0921c1 -> :sswitch_4
    .end sparse-switch
.end method
