.class final Lcom/alibaba/android/dingtalkim/session/SessionPresenter$13;
.super Landroid/content/BroadcastReceiver;
.source "SessionPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/session/SessionPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/session/SessionPresenter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .prologue
    .line 1114
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$13;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 20
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1117
    if-eqz p2, :cond_2

    .line 1118
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    .line 1119
    .local v4, "action":Ljava/lang/String;
    const-string/jumbo v5, "action_start_deployment_record"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1120
    const-string/jumbo v5, "orderId"

    const-wide/16 v18, 0x0

    move-object/from16 v0, p2

    move-wide/from16 v1, v18

    invoke-virtual {v0, v5, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    .line 1121
    .local v6, "orderId":J
    const-string/jumbo v5, "url"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 1123
    .local v16, "url":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$13;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .line 2116
    iget-object v5, v5, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->o:Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager;

    .line 3088
    const-wide/16 v18, 0x1

    cmp-long v9, v6, v18

    if-gez v9, :cond_3

    .line 3089
    const/4 v15, 0x0

    .line 1125
    .local v15, "res":Z
    :cond_0
    :goto_0
    if-nez v15, :cond_6

    .line 1126
    sget-object v5, Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager$DeploymentRecordStatus;->UNKNOWN:Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager$DeploymentRecordStatus;

    invoke-virtual {v5}, Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager$DeploymentRecordStatus;->getStatusCode()Ljava/lang/String;

    move-result-object v11

    .line 1127
    .local v11, "code":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$13;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .line 4116
    iget-object v5, v5, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->b:Landroid/app/Activity;

    .line 1127
    sget v9, Lctk$i;->audio_in_focues:I

    invoke-virtual {v5, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 1136
    .local v14, "msg":Ljava/lang/String;
    :cond_1
    :goto_1
    new-instance v13, Landroid/content/Intent;

    const-string/jumbo v5, "action_start_deployment_record_result"

    invoke-direct {v13, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1137
    .local v13, "it":Landroid/content/Intent;
    const-string/jumbo v5, "intent_key_error_code"

    invoke-virtual {v13, v5, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1138
    const-string/jumbo v5, "intent_key_error_msg"

    invoke-virtual {v13, v5, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1139
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$13;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .line 7116
    iget-object v5, v5, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->b:Landroid/app/Activity;

    .line 1139
    invoke-virtual {v5}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v5

    invoke-virtual {v5, v13}, Ldq;->a(Landroid/content/Intent;)Z

    .line 1178
    .end local v4    # "action":Ljava/lang/String;
    .end local v6    # "orderId":J
    .end local v11    # "code":Ljava/lang/String;
    .end local v13    # "it":Landroid/content/Intent;
    .end local v14    # "msg":Ljava/lang/String;
    .end local v15    # "res":Z
    .end local v16    # "url":Ljava/lang/String;
    :cond_2
    :goto_2
    return-void

    .line 3092
    .restart local v4    # "action":Ljava/lang/String;
    .restart local v6    # "orderId":J
    .restart local v16    # "url":Ljava/lang/String;
    :cond_3
    iget-object v9, v5, Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager;->j:Lcom/alibaba/doraemon/statistics/Statistics;

    const-string/jumbo v10, "VoiceRecordManager"

    const-string/jumbo v17, "deploy_expert_record_start_click"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v9, v10, v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 3094
    iget-object v9, v5, Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager;->d:Ldzh;

    invoke-interface {v9, v6, v7}, Ldzh;->c(J)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 3095
    const/4 v15, 0x1

    goto :goto_0

    .line 3098
    :cond_4
    iput-wide v6, v5, Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager;->c:J

    .line 3099
    iget-object v9, v5, Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager;->d:Ldzh;

    invoke-interface {v9, v6, v7}, Ldzh;->a(J)Z

    move-result v15

    .line 3101
    const-string/jumbo v9, "im"

    const-string/jumbo v10, "VoiceRecordManager"

    new-instance v17, Ljava/lang/StringBuilder;

    const-string/jumbo v18, "prepareVoiceRecord:"

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v9, v10, v0}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3102
    if-eqz v15, :cond_0

    .line 3103
    new-instance v9, Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager$a;

    move-object/from16 v0, v16

    invoke-direct {v9, v0, v6, v7}, Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager$a;-><init>(Ljava/lang/String;J)V

    iput-object v9, v5, Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager;->g:Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager$a;

    .line 3222
    iget-object v9, v5, Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager;->i:Landroid/content/BroadcastReceiver;

    if-nez v9, :cond_5

    .line 3226
    new-instance v9, Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager$3;

    invoke-direct {v9, v5}, Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager$3;-><init>(Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager;)V

    iput-object v9, v5, Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager;->i:Landroid/content/BroadcastReceiver;

    .line 3240
    new-instance v9, Landroid/content/IntentFilter;

    invoke-direct {v9}, Landroid/content/IntentFilter;-><init>()V

    .line 3241
    const-string/jumbo v10, "com.alibaba.android.babylon.action.voipstart"

    invoke-virtual {v9, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3242
    const-string/jumbo v10, "CALL_STATE_RINGING"

    invoke-virtual {v9, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3244
    const-string/jumbo v10, "android.intent.action.PHONE_STATE"

    invoke-virtual {v9, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3245
    const-string/jumbo v10, "android.intent.action.ANSWER"

    invoke-virtual {v9, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3247
    iget-object v10, v5, Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager;->a:Landroid/app/Activity;

    invoke-virtual {v10}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    iget-object v0, v5, Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager;->i:Landroid/content/BroadcastReceiver;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v10, v0, v9}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 3105
    :cond_5
    iget-object v5, v5, Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager;->e:Ldzg;

    move-object/from16 v0, v16

    invoke-interface {v5, v6, v7, v0}, Ldzg;->a(JLjava/lang/String;)Z

    goto/16 :goto_0

    .line 1129
    .restart local v15    # "res":Z
    :cond_6
    sget-object v5, Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager$DeploymentRecordStatus;->SUCCESS:Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager$DeploymentRecordStatus;

    invoke-virtual {v5}, Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager$DeploymentRecordStatus;->getStatusCode()Ljava/lang/String;

    move-result-object v11

    .line 1130
    .restart local v11    # "code":Ljava/lang/String;
    const-string/jumbo v14, ""

    .line 1131
    .restart local v14    # "msg":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$13;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .line 5116
    iget-object v5, v5, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->a:Ldyy$b;

    .line 1131
    if-eqz v5, :cond_1

    .line 1132
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$13;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .line 6116
    iget-object v5, v5, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->a:Ldyy$b;

    .line 1132
    move-object/from16 v0, v16

    invoke-interface {v5, v0}, Ldyy$b;->b(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1141
    .end local v6    # "orderId":J
    .end local v11    # "code":Ljava/lang/String;
    .end local v14    # "msg":Ljava/lang/String;
    .end local v15    # "res":Z
    .end local v16    # "url":Ljava/lang/String;
    :cond_7
    const-string/jumbo v5, "action_stop_deployment_record"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 1142
    const-string/jumbo v5, "orderId"

    const-wide/16 v18, 0x0

    move-object/from16 v0, p2

    move-wide/from16 v1, v18

    invoke-virtual {v0, v5, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    .line 1144
    .restart local v6    # "orderId":J
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$13;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .line 8116
    iget-object v5, v5, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->a:Ldyy$b;

    .line 1144
    if-eqz v5, :cond_8

    .line 1145
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$13;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .line 9116
    iget-object v5, v5, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->a:Ldyy$b;

    .line 1145
    invoke-interface {v5}, Ldyy$b;->n()V

    .line 1147
    :cond_8
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$13;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .line 10116
    iget-object v5, v5, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->o:Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager;

    .line 11112
    const-wide/16 v18, 0x1

    cmp-long v9, v6, v18

    if-ltz v9, :cond_9

    iget-object v9, v5, Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager;->d:Ldzh;

    invoke-interface {v9, v6, v7}, Ldzh;->c(J)Z

    move-result v9

    if-nez v9, :cond_a

    .line 11113
    :cond_9
    const/4 v15, 0x0

    .line 1149
    .restart local v15    # "res":Z
    :goto_3
    new-instance v13, Landroid/content/Intent;

    const-string/jumbo v5, "action_stop_deployment_record_result"

    invoke-direct {v13, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1150
    .restart local v13    # "it":Landroid/content/Intent;
    const-string/jumbo v5, "intent_key_error_code"

    sget-object v9, Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager$DeploymentRecordStatus;->SUCCESS:Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager$DeploymentRecordStatus;

    .line 1151
    invoke-virtual {v9}, Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager$DeploymentRecordStatus;->getStatusCode()Ljava/lang/String;

    move-result-object v9

    .line 1150
    invoke-virtual {v13, v5, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1152
    const-string/jumbo v5, "intent_key_error_msg"

    invoke-static {v15}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v13, v5, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1153
    invoke-static/range {p1 .. p1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v5

    invoke-virtual {v5, v13}, Ldq;->a(Landroid/content/Intent;)Z

    goto/16 :goto_2

    .line 11115
    .end local v13    # "it":Landroid/content/Intent;
    .end local v15    # "res":Z
    :cond_a
    iget-object v9, v5, Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager;->j:Lcom/alibaba/doraemon/statistics/Statistics;

    const-string/jumbo v10, "VoiceRecordManager"

    const-string/jumbo v17, "deploy_expert_record_stop_click"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v9, v10, v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 11116
    invoke-virtual {v5}, Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager;->c()V

    .line 11117
    const-string/jumbo v9, "im"

    const-string/jumbo v10, "VoiceRecordManager"

    new-instance v17, Ljava/lang/StringBuilder;

    const-string/jumbo v18, "stopRecord:"

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v9, v10, v0}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 11119
    iget-object v9, v5, Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager;->e:Ldzg;

    invoke-interface {v9, v6, v7}, Ldzg;->a(J)Z

    .line 11120
    iget-object v5, v5, Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager;->d:Ldzh;

    invoke-interface {v5, v6, v7}, Ldzh;->b(J)Z

    move-result v15

    goto :goto_3

    .line 1155
    .end local v6    # "orderId":J
    :cond_b
    const-string/jumbo v5, "action_try_upload_deployment_records"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 1156
    const-string/jumbo v5, "orderId"

    const-wide/16 v18, 0x0

    move-object/from16 v0, p2

    move-wide/from16 v1, v18

    invoke-virtual {v0, v5, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    .line 1157
    .restart local v6    # "orderId":J
    const-string/jumbo v5, "force"

    const/4 v9, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v5, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    .line 1159
    .local v8, "force":Z
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$13;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .line 12116
    iget-object v5, v5, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->o:Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager;

    .line 12124
    const-wide/16 v18, 0x1

    cmp-long v9, v6, v18

    if-gez v9, :cond_c

    .line 1160
    :goto_4
    new-instance v13, Landroid/content/Intent;

    const-string/jumbo v5, "action_try_upload_deployment_records_result"

    invoke-direct {v13, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1161
    .restart local v13    # "it":Landroid/content/Intent;
    const-string/jumbo v5, "intent_key_error_code"

    sget-object v9, Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager$DeploymentRecordStatus;->SUCCESS:Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager$DeploymentRecordStatus;

    .line 1162
    invoke-virtual {v9}, Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager$DeploymentRecordStatus;->getStatusCode()Ljava/lang/String;

    move-result-object v9

    .line 1161
    invoke-virtual {v13, v5, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1163
    const-string/jumbo v5, "intent_key_error_msg"

    const-string/jumbo v9, ""

    invoke-virtual {v13, v5, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1164
    invoke-static/range {p1 .. p1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v5

    invoke-virtual {v5, v13}, Ldq;->a(Landroid/content/Intent;)Z

    goto/16 :goto_2

    .line 12127
    .end local v13    # "it":Landroid/content/Intent;
    :cond_c
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 12128
    const-string/jumbo v10, "type"

    const-string/jumbo v17, "1"

    move-object/from16 v0, v17

    invoke-interface {v9, v10, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12129
    iget-object v10, v5, Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager;->j:Lcom/alibaba/doraemon/statistics/Statistics;

    const-string/jumbo v17, "VoiceRecordManager"

    const-string/jumbo v18, "deploy_expert_record_upload_click"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v10, v0, v1, v9}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 12130
    const-string/jumbo v9, "im"

    const-string/jumbo v10, "VoiceRecordManager"

    new-instance v17, Ljava/lang/StringBuilder;

    const-string/jumbo v18, "uploadRecordByUser:"

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v9, v10, v0}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 12131
    const/4 v9, 0x3

    iget-object v10, v5, Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager;->d:Ldzh;

    invoke-virtual/range {v5 .. v10}, Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager;->a(JZILdzh;)V

    goto :goto_4

    .line 1166
    .end local v6    # "orderId":J
    .end local v8    # "force":Z
    :cond_d
    const-string/jumbo v5, "action_is_deployment_recording"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1167
    const-string/jumbo v5, "orderId"

    const-wide/16 v18, 0x0

    move-object/from16 v0, p2

    move-wide/from16 v1, v18

    invoke-virtual {v0, v5, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    .line 1168
    .restart local v6    # "orderId":J
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$13;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .line 13116
    iget-object v5, v5, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->o:Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager;

    .line 13175
    const-wide/16 v18, 0x1

    cmp-long v9, v6, v18

    if-gez v9, :cond_e

    .line 13176
    const/4 v12, 0x0

    .line 1169
    .local v12, "isRecording":Z
    :goto_5
    const-string/jumbo v9, "{\"isRecording\":%d}"

    const/4 v5, 0x1

    new-array v10, v5, [Ljava/lang/Object;

    const/16 v17, 0x0

    if-eqz v12, :cond_f

    const/4 v5, 0x1

    :goto_6
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v10, v17

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    .line 1171
    .local v15, "res":Ljava/lang/String;
    new-instance v13, Landroid/content/Intent;

    const-string/jumbo v5, "action_is_deployment_recording_result"

    invoke-direct {v13, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1172
    .restart local v13    # "it":Landroid/content/Intent;
    const-string/jumbo v5, "intent_key_error_code"

    sget-object v9, Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager$DeploymentRecordStatus;->SUCCESS:Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager$DeploymentRecordStatus;

    .line 1173
    invoke-virtual {v9}, Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager$DeploymentRecordStatus;->getStatusCode()Ljava/lang/String;

    move-result-object v9

    .line 1172
    invoke-virtual {v13, v5, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1174
    const-string/jumbo v5, "intent_key_error_msg"

    invoke-virtual {v13, v5, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1175
    invoke-static/range {p1 .. p1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v5

    invoke-virtual {v5, v13}, Ldq;->a(Landroid/content/Intent;)Z

    goto/16 :goto_2

    .line 13178
    .end local v12    # "isRecording":Z
    .end local v13    # "it":Landroid/content/Intent;
    .end local v15    # "res":Ljava/lang/String;
    :cond_e
    iget-object v5, v5, Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager;->d:Ldzh;

    invoke-interface {v5, v6, v7}, Ldzh;->c(J)Z

    move-result v12

    .line 13179
    const-string/jumbo v5, "im"

    const-string/jumbo v9, "VoiceRecordManager"

    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/String;

    const/16 v17, 0x0

    const-string/jumbo v18, "checkRecord, orderId:"

    aput-object v18, v10, v17

    const/16 v17, 0x1

    .line 13180
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v10, v17

    const/16 v17, 0x2

    const-string/jumbo v18, ", res:"

    aput-object v18, v10, v17

    const/16 v17, 0x3

    invoke-static {v12}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v10, v17

    .line 13179
    invoke-static {v10}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v9, v10}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 1169
    .restart local v12    # "isRecording":Z
    :cond_f
    const/4 v5, 0x0

    goto :goto_6
.end method
