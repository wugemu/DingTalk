.class final Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager$2;
.super Landroid/content/BroadcastReceiver;
.source "VoiceRecordManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager;

    .prologue
    .line 189
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager$2;->a:Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x3

    const/4 v4, 0x0

    .line 192
    if-nez p2, :cond_1

    .line 4322
    :cond_0
    :goto_0
    return-void

    .line 196
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 197
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v1, "com.alibaba.android.rimet.background"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 198
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager$2;->a:Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager;

    .line 1304
    const-string/jumbo v2, "im"

    const-string/jumbo v3, "VoiceRecordManager"

    const-string/jumbo v4, "onEnterBackground"

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1305
    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager;->d:Ldzh;

    invoke-interface {v1}, Ldzh;->a()Z

    goto :goto_0

    .line 199
    :cond_2
    const-string/jumbo v1, "com.alibaba.android.rimet.foreground"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 200
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager$2;->a:Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager;

    .line 2273
    const-string/jumbo v3, "im"

    const-string/jumbo v6, "VoiceRecordManager"

    const-string/jumbo v8, "onEnterForeground"

    invoke-static {v3, v6, v8}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2275
    iget-object v3, v1, Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager;->d:Ldzh;

    invoke-interface {v3}, Ldzh;->b()Z

    .line 2276
    iget-object v3, v1, Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager;->f:Ldzi;

    invoke-interface {v3}, Ldzi;->a()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3252
    iget-object v3, v1, Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager;->b:Ljava/lang/String;

    invoke-static {v3}, Lcop;->f(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v6

    .line 3253
    if-eqz v6, :cond_3

    array-length v3, v6

    if-nez v3, :cond_5

    .line 2281
    :cond_3
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 2284
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 2285
    const-string/jumbo v6, "type"

    const-string/jumbo v8, "0"

    invoke-interface {v3, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2286
    iget-object v6, v1, Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager;->j:Lcom/alibaba/doraemon/statistics/Statistics;

    const-string/jumbo v8, "VoiceRecordManager"

    const-string/jumbo v9, "deploy_expert_record_upload_click"

    invoke-interface {v6, v8, v9, v3}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 2287
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_4
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Ljava/lang/String;

    .line 2288
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 2291
    const-wide/16 v2, -0x1

    invoke-static {v6, v2, v3}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v2

    .line 2292
    new-array v9, v5, [Ljava/lang/String;

    iget-object v10, v1, Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager;->b:Ljava/lang/String;

    aput-object v10, v9, v4

    const/4 v10, 0x1

    sget-object v11, Ljava/io/File;->separator:Ljava/lang/String;

    aput-object v11, v9, v10

    const/4 v10, 0x2

    aput-object v6, v9, v10

    invoke-static {v9}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2294
    iget-object v9, v1, Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager;->f:Ldzi;

    iget-object v10, v1, Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager;->a:Landroid/app/Activity;

    invoke-interface {v9, v2, v3, v6, v10}, Ldzi;->a(JLjava/lang/String;Landroid/app/Activity;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 2297
    new-instance v6, Ldzk;

    iget-object v9, v1, Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager;->a:Landroid/app/Activity;

    iget-object v10, v1, Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager;->b:Ljava/lang/String;

    invoke-direct {v6, v9, v10}, Ldzk;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    .line 2298
    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager;->a(JZILdzh;)V

    goto :goto_1

    .line 3256
    :cond_5
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3257
    array-length v8, v6

    move v3, v4

    :goto_2
    if-ge v3, v8, :cond_3

    aget-object v9, v6, v3

    .line 3258
    if-eqz v9, :cond_7

    .line 3262
    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcop;->f(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v10

    .line 3263
    if-eqz v10, :cond_6

    array-length v10, v10

    if-lez v10, :cond_7

    .line 3264
    :cond_6
    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3257
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 2300
    :cond_8
    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager;->f:Ldzi;

    invoke-interface {v1}, Ldzi;->b()V

    goto/16 :goto_0

    .line 201
    :cond_9
    const-string/jumbo v1, "com.alibaba.android.rimet.home.resumed"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 202
    const-string/jumbo v1, "intent_key_im_home_resumed"

    invoke-virtual {p2, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    .line 203
    .local v7, "isResumed":Z
    if-eqz v7, :cond_0

    .line 204
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager$2;->a:Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager;

    .line 4310
    const-string/jumbo v1, "pref_key_im_deploy_record_interrupted_v2"

    const-string/jumbo v4, ""

    invoke-static {v1, v4}, Lcpk;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4311
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 4312
    const-string/jumbo v1, "im"

    const-string/jumbo v2, "VoiceRecordManager"

    const-string/jumbo v3, "voiceMetaData, isEmpty"

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4317
    :cond_a
    :try_start_0
    invoke-static {}, Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager;->a()Lcom/google/gson/Gson;

    move-result-object v4

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager;->b()Ljava/lang/reflect/Type;

    move-result-object v5

    invoke-static {v4, v1, v5}, Lcor;->a(Lcom/google/gson/Gson;Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager$a;

    iput-object v1, v3, Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager;->g:Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager$a;

    .line 4318
    const-string/jumbo v4, "im"

    const-string/jumbo v5, "VoiceRecordManager"

    iget-object v1, v3, Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager;->g:Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager$a;

    if-eqz v1, :cond_b

    iget-object v1, v3, Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager;->g:Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager$a;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager$a;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_3
    invoke-static {v4, v5, v1}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 4325
    iget-object v1, v3, Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager;->g:Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager$a;

    if-eqz v1, :cond_0

    .line 4329
    new-instance v1, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    iget-object v4, v3, Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager;->a:Landroid/app/Activity;

    invoke-direct {v1, v4}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 4330
    sget v4, Lctk$i;->dt_record_interrupted:I

    invoke-virtual {v1, v4}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    .line 4331
    sget v4, Lctk$i;->dt_record_continue_record:I

    new-instance v5, Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager$4;

    invoke-direct {v5, v3}, Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager$4;-><init>(Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager;)V

    invoke-virtual {v1, v4, v5}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 4338
    sget v3, Lctk$i;->cancel:I

    invoke-virtual {v1, v3, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 4339
    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 4340
    const-string/jumbo v1, "im"

    const-string/jumbo v2, "VoiceRecordManager"

    const-string/jumbo v3, "tryShowRecordInterruptedDialog, show"

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4342
    const-string/jumbo v1, "pref_key_im_deploy_record_interrupted_v2"

    invoke-static {v1}, Lcpk;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4318
    :cond_b
    :try_start_1
    const-string/jumbo v1, "voice meta from json ret null"
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 4319
    :catch_0
    move-exception v1

    .line 4320
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 4321
    const-string/jumbo v2, "im"

    const-string/jumbo v3, "VoiceRecordManager"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3, v1}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
