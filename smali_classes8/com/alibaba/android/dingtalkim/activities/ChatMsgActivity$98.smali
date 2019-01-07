.class final Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$98;
.super Landroid/content/BroadcastReceiver;
.source "ChatMsgActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    .prologue
    .line 3014
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$98;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 35
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 3017
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$98;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v4}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->I(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)V

    .line 3018
    const-string/jumbo v4, "message"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v25

    .line 3019
    .local v25, "serializable":Ljava/io/Serializable;
    const-string/jumbo v4, "intent_key_menu_seed"

    const-wide/16 v6, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v18

    .line 3020
    .local v18, "menuSeed":J
    const-string/jumbo v4, "user_name"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 3021
    .local v28, "userName":Ljava/lang/String;
    invoke-static/range {v28 .. v28}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$98;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-wide v4, v4, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->J:J

    cmp-long v4, v18, v4

    if-eqz v4, :cond_1

    .line 3095
    :cond_0
    :goto_0
    return-void

    .line 3024
    :cond_1
    if-eqz v25, :cond_0

    move-object/from16 v0, v25

    instance-of v4, v0, Lcom/alibaba/wukong/im/Message;

    if-eqz v4, :cond_0

    move-object/from16 v20, v25

    .line 3025
    check-cast v20, Lcom/alibaba/wukong/im/Message;

    .line 3026
    .local v20, "message":Lcom/alibaba/wukong/im/Message;
    move-object/from16 v0, v20

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Ldma;->a(Lcom/alibaba/wukong/im/Message;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3027
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$98;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v4}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->J(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 3028
    sget v4, Lctk$i;->dt_banned_cannot_do_this_operation:I

    invoke-static {v4}, Lcms;->a(I)V

    goto :goto_0

    .line 3031
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$98;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v4}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->K(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)Ldjx;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 3032
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$98;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v4}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->K(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)Ldjx;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ldjx;->a(Z)V

    .line 3035
    :cond_3
    const-string/jumbo v4, "extra_from_svc_grp"

    const/4 v5, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v15

    .line 3036
    .local v15, "isFromSvcGrp":Z
    const-string/jumbo v4, "extra_reply_directly"

    const/4 v5, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v24

    .line 3039
    .local v24, "sendDirecly":Z
    if-eqz v15, :cond_9

    .line 3040
    const-string/jumbo v4, "result_msg_id"

    const-wide/16 v6, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v22

    .line 3041
    .local v22, "msgId":J
    const-string/jumbo v4, "result_answer_id"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 3042
    .local v13, "answerId":Ljava/lang/String;
    new-instance v21, Ldfl$a;

    move-object/from16 v0, v21

    move-wide/from16 v1, v22

    move/from16 v3, v24

    invoke-direct {v0, v1, v2, v13, v3}, Ldfl$a;-><init>(JLjava/lang/String;Z)V

    .line 3047
    .end local v13    # "answerId":Ljava/lang/String;
    .end local v22    # "msgId":J
    .local v21, "result":Ldfl$a;
    :goto_1
    const-string/jumbo v4, "intent_key_need_append_at_info"

    const/4 v5, 0x1

    move-object/from16 v0, p2

    invoke-static {v0, v4, v5}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;Z)Z

    move-result v16

    .line 3048
    .local v16, "isNeedAppendAtInfo":Z
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$98;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$98;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v6, v4, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->P:Ldxc;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$98;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v10, v4, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->N:Ldne;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$98;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v8, v4, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->O:Ldnw;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$98;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v9, v4, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->M:Lldm;

    .line 3138
    move-object/from16 v0, v20

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Ldma;->a(Lcom/alibaba/wukong/im/Message;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    if-eqz v7, :cond_4

    if-eqz v6, :cond_4

    if-eqz v10, :cond_4

    if-eqz v8, :cond_4

    if-nez v9, :cond_a

    .line 3139
    :cond_4
    const/16 v17, 0x0

    .line 3049
    .local v17, "markdownReplyInfo":Ldlz;
    :goto_2
    if-eqz v17, :cond_6

    invoke-virtual/range {v17 .. v17}, Ldlz;->a()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 3050
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$98;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v4, v4, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->z:Lcrp;

    if-eqz v4, :cond_5

    .line 3051
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$98;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->b(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;I)I

    .line 3052
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$98;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v4}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->L(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)V

    .line 3053
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$98;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v5, v4, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->z:Lcrp;

    move-object/from16 v0, v17

    iget-object v6, v0, Ldlz;->c:Landroid/view/View;

    if-eqz v21, :cond_f

    if-nez v24, :cond_f

    const/4 v4, 0x1

    :goto_3
    move-object/from16 v0, v17

    invoke-virtual {v5, v6, v0, v4}, Lcrp;->a(Landroid/view/View;Lcrp$a;Z)V

    .line 3054
    if-eqz v16, :cond_5

    .line 3055
    move-object/from16 v0, v17

    iget-object v4, v0, Ldlz;->f:Ljava/util/Map;

    if-eqz v4, :cond_10

    move-object/from16 v0, v17

    iget-object v4, v0, Ldlz;->f:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_10

    .line 3056
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$98;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    new-instance v5, Ljava/util/HashMap;

    move-object/from16 v0, v17

    iget-object v6, v0, Ldlz;->f:Ljava/util/Map;

    invoke-direct {v5, v6}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-static {v4, v5}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->a(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;Ljava/util/HashMap;)V

    .line 3057
    move-object/from16 v0, v17

    iget-object v4, v0, Ldlz;->f:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->clear()V

    .line 3063
    :cond_5
    :goto_4
    new-instance v4, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$98$1;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$98$1;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$98;)V

    .line 7031
    move-object/from16 v0, v17

    iput-object v4, v0, Ldlz;->h:Ldlz$a;

    .line 3072
    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$98;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v4, v4, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->x:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$98;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v4, v4, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->x:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v4}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->getSendMessageEditText()Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 3074
    :try_start_0
    const-string/jumbo v4, "intent_key_at_uid_map"

    .line 3075
    move-object/from16 v0, p2

    invoke-static {v0, v4}, Lcoy;->b(Landroid/content/Intent;Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v14

    check-cast v14, Ljava/util/HashMap;

    .line 3076
    .local v14, "atUidMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/String;>;"
    if-eqz v14, :cond_7

    .line 3077
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$98;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v4, v4, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->E:Ljava/util/HashMap;

    invoke-virtual {v4, v14}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 3081
    .end local v14    # "atUidMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/String;>;"
    :cond_7
    :goto_5
    const-string/jumbo v4, "send_text"

    move-object/from16 v0, p2

    invoke-static {v0, v4}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 3082
    .local v27, "text":Ljava/lang/String;
    invoke-static/range {v27 .. v27}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 3083
    invoke-static {}, Lcok;->a()Lcok;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$98;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    .line 3084
    move-object/from16 v0, v27

    invoke-virtual {v4, v5, v0}, Lcok;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v26

    .line 3085
    .local v26, "spannableString":Landroid/text/SpannableString;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$98;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v4, v4, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->x:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->a(Landroid/text/SpannableString;)V

    .line 3089
    .end local v26    # "spannableString":Landroid/text/SpannableString;
    :cond_8
    if-eqz v21, :cond_0

    if-eqz v24, :cond_0

    .line 3090
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$98;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v4}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->N(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)V

    goto/16 :goto_0

    .line 3044
    .end local v16    # "isNeedAppendAtInfo":Z
    .end local v17    # "markdownReplyInfo":Ldlz;
    .end local v21    # "result":Ldfl$a;
    .end local v27    # "text":Ljava/lang/String;
    :cond_9
    const/16 v21, 0x0

    .restart local v21    # "result":Ldfl$a;
    goto/16 :goto_1

    .line 3142
    .restart local v16    # "isNeedAppendAtInfo":Z
    :cond_a
    move-object/from16 v0, v20

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Ldma;->b(Lcom/alibaba/wukong/im/Message;Ljava/lang/String;)Ldmc;

    move-result-object v11

    .line 3144
    if-eqz v11, :cond_b

    iget-object v4, v11, Ldmc;->a:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 3145
    :cond_b
    const/16 v17, 0x0

    goto/16 :goto_2

    .line 3147
    :cond_c
    if-eqz v21, :cond_d

    new-instance v29, Ldfl;

    move-object/from16 v0, v29

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ldfl;-><init>(Ldfl$a;)V

    .line 4173
    :goto_6
    move-object/from16 v0, v20

    move-object/from16 v1, v29

    iput-object v0, v1, Lcrp$a;->a:Lcom/alibaba/wukong/im/Message;

    .line 3149
    iget-object v4, v11, Ldmc;->a:Ljava/lang/String;

    move-object/from16 v0, v29

    iput-object v4, v0, Ldlz;->e:Ljava/lang/String;

    .line 3150
    iget-object v4, v11, Ldmc;->b:Ljava/util/HashMap;

    move-object/from16 v0, v29

    iput-object v4, v0, Ldlz;->f:Ljava/util/Map;

    .line 3151
    iget-object v4, v11, Ldmc;->c:Ljava/util/HashMap;

    move-object/from16 v0, v29

    iput-object v4, v0, Ldlz;->g:Ljava/util/Map;

    .line 3152
    if-eqz v21, :cond_e

    new-instance v5, Ldfi;

    move-object/from16 v4, v29

    check-cast v4, Ldfl;

    invoke-direct {v5, v4}, Ldfi;-><init>(Ldfl;)V

    move-object v4, v5

    :goto_7
    move-object/from16 v0, v29

    iput-object v4, v0, Ldlz;->d:Ldmb;

    .line 3154
    new-instance v4, Landroid/widget/FrameLayout;

    invoke-direct {v4, v7}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 3155
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v12, Lctk$c;->uidic_global_color_c11_10:I

    invoke-virtual {v5, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 3156
    move-object/from16 v0, v29

    iput-object v4, v0, Ldlz;->c:Landroid/view/View;

    .line 3158
    new-instance v12, Lcom/alibaba/android/dingtalkim/views/MaxHeightScrollView;

    invoke-direct {v12, v7}, Lcom/alibaba/android/dingtalkim/views/MaxHeightScrollView;-><init>(Landroid/content/Context;)V

    .line 3159
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v30, -0x1

    const/16 v31, -0x2

    move/from16 v0, v30

    move/from16 v1, v31

    invoke-direct {v5, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 3160
    const/high16 v30, 0x42400000    # 48.0f

    move/from16 v0, v30

    invoke-static {v7, v0}, Lcms;->c(Landroid/content/Context;F)I

    move-result v30

    move/from16 v0, v30

    iput v0, v5, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 3161
    invoke-virtual {v12, v5}, Lcom/alibaba/android/dingtalkim/views/MaxHeightScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3163
    const/high16 v5, 0x43160000    # 150.0f

    invoke-static {v7, v5}, Lcms;->c(Landroid/content/Context;F)I

    move-result v5

    invoke-virtual {v12, v5}, Lcom/alibaba/android/dingtalkim/views/MaxHeightScrollView;->setMaxHeight(I)V

    .line 3164
    invoke-virtual {v4, v12}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 3166
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v30, -0x2

    const/16 v31, -0x2

    move/from16 v0, v30

    move/from16 v1, v31

    invoke-direct {v5, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 3167
    const/16 v30, 0x35

    move/from16 v0, v30

    iput v0, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 3168
    const/high16 v30, 0x41400000    # 12.0f

    move/from16 v0, v30

    invoke-static {v7, v0}, Lcms;->c(Landroid/content/Context;F)I

    move-result v30

    .line 3169
    move/from16 v0, v30

    iput v0, v5, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 3170
    move/from16 v0, v30

    iput v0, v5, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 3171
    new-instance v30, Landroid/widget/ImageView;

    move-object/from16 v0, v30

    invoke-direct {v0, v7}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 3172
    new-instance v31, Lecw;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v32

    sget v33, Lctk$i;->icon_close:I

    invoke-virtual/range {v32 .. v33}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v32

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v33

    sget v34, Lctk$c;->gray:I

    invoke-virtual/range {v33 .. v34}, Landroid/content/res/Resources;->getColor(I)I

    move-result v33

    invoke-direct/range {v31 .. v33}, Lecw;-><init>(Ljava/lang/String;I)V

    .line 3173
    const/high16 v32, 0x41c00000    # 24.0f

    move/from16 v0, v32

    invoke-static {v7, v0}, Lcms;->c(Landroid/content/Context;F)I

    move-result v32

    .line 5070
    move/from16 v0, v32

    move-object/from16 v1, v31

    iput v0, v1, Lecw;->a:I

    .line 5079
    move/from16 v0, v32

    move-object/from16 v1, v31

    iput v0, v1, Lecw;->b:I

    .line 3176
    invoke-virtual/range {v30 .. v31}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3177
    new-instance v31, Ldma$1;

    move-object/from16 v0, v31

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Ldma$1;-><init>(Ldlz;)V

    invoke-virtual/range {v30 .. v31}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3183
    move-object/from16 v0, v30

    invoke-virtual {v4, v0, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3185
    new-instance v5, Lcom/alibaba/android/dingtalkim/views/InterceptableLinearLayout;

    invoke-direct {v5, v7}, Lcom/alibaba/android/dingtalkim/views/InterceptableLinearLayout;-><init>(Landroid/content/Context;)V

    .line 3186
    const/4 v4, 0x1

    .line 6029
    iput-boolean v4, v5, Lcom/alibaba/android/dingtalkim/views/InterceptableLinearLayout;->a:Z

    .line 3187
    new-instance v4, Ldma$2;

    move-object/from16 v0, v20

    invoke-direct {v4, v7, v0}, Ldma$2;-><init>(Landroid/content/Context;Lcom/alibaba/wukong/im/Message;)V

    invoke-virtual {v5, v4}, Lcom/alibaba/android/dingtalkim/views/InterceptableLinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3196
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    const/16 v30, -0x1

    const/16 v31, -0x2

    move/from16 v0, v30

    move/from16 v1, v31

    invoke-direct {v4, v0, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v4}, Lcom/alibaba/android/dingtalkim/views/InterceptableLinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3197
    const/high16 v4, 0x41000000    # 8.0f

    invoke-static {v7, v4}, Lcms;->c(Landroid/content/Context;F)I

    move-result v4

    .line 3198
    invoke-virtual {v5, v4, v4, v4, v4}, Lcom/alibaba/android/dingtalkim/views/InterceptableLinearLayout;->setPadding(IIII)V

    .line 3199
    invoke-virtual {v12, v5}, Lcom/alibaba/android/dingtalkim/views/MaxHeightScrollView;->addView(Landroid/view/View;)V

    .line 3200
    new-instance v4, Ldnd;

    .line 6093
    iget-object v7, v10, Ldne;->e:Ldng;

    .line 3200
    invoke-direct/range {v4 .. v9}, Ldnd;-><init>(Landroid/widget/LinearLayout;Ldxc;Ldng;Ldnw;Lldm;)V

    .line 3201
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-object v8, v11, Ldmc;->a:Ljava/lang/String;

    const/4 v9, 0x1

    const/4 v10, 0x0

    iget-object v11, v11, Ldmc;->c:Ljava/util/HashMap;

    sget-object v12, Lcom/alibaba/android/dingtalkim/mdrender/layout/RenderStyle;->NORMAL:Lcom/alibaba/android/dingtalkim/mdrender/layout/RenderStyle;

    move-object/from16 v7, v20

    invoke-virtual/range {v4 .. v12}, Ldnd;->a(JLcom/alibaba/wukong/im/Message;Ljava/lang/String;ZLjava/util/Map;Ljava/util/Map;Lcom/alibaba/android/dingtalkim/mdrender/layout/RenderStyle;)V

    move-object/from16 v17, v29

    .line 3202
    goto/16 :goto_2

    .line 3147
    :cond_d
    new-instance v29, Ldlz;

    invoke-direct/range {v29 .. v29}, Ldlz;-><init>()V

    goto/16 :goto_6

    .line 3152
    :cond_e
    new-instance v4, Ldly;

    move-object/from16 v0, v29

    invoke-direct {v4, v0}, Ldly;-><init>(Ldlz;)V

    goto/16 :goto_7

    .line 3053
    .restart local v17    # "markdownReplyInfo":Ldlz;
    :cond_f
    const/4 v4, 0x0

    goto/16 :goto_3

    .line 3059
    :cond_10
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$98;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->a(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;Ljava/util/HashMap;)V

    goto/16 :goto_4

    :catch_0
    move-exception v4

    goto/16 :goto_5
.end method
