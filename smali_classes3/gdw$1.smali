.class final Lgdw$1;
.super Landroid/content/BroadcastReceiver;
.source "DentryListPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgdw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lgdw;


# direct methods
.method constructor <init>(Lgdw;)V
    .locals 0
    .param p1, "this$0"    # Lgdw;

    .prologue
    .line 143
    iput-object p1, p0, Lgdw$1;->a:Lgdw;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 146
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 160
    :cond_0
    :goto_0
    return-void

    .line 149
    :cond_1
    iget-object v1, p0, Lgdw$1;->a:Lgdw;

    iget-object v1, v1, Lgdw;->d:Landroid/content/Context;

    instance-of v1, v1, Landroid/app/Activity;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lgdw$1;->a:Lgdw;

    iget-object v1, v1, Lgdw;->d:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-static {v1}, Lgpk;->a(Landroid/app/Activity;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 152
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 153
    .local v0, "action":Ljava/lang/String;
    iget-object v1, p0, Lgdw$1;->a:Lgdw;

    .line 1057
    iget-object v1, v1, Lgdw;->a:Lgdx;

    .line 1077
    iget-object v1, v1, Lgdx;->c:Ljava/lang/String;

    .line 153
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 154
    iget-object v1, p0, Lgdw$1;->a:Lgdw;

    .line 2057
    iget-object v5, v1, Lgdw;->a:Lgdx;

    .line 2106
    if-eqz p2, :cond_0

    .line 2110
    const-string/jumbo v1, "choose_picture_ids"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    .line 2111
    const-string/jumbo v1, "send_origin_picture"

    invoke-virtual {p2, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    .line 2112
    const/4 v2, 0x0

    .line 2113
    if-nez v7, :cond_d

    .line 2114
    const-string/jumbo v1, "com.workapp.choose.pictire.from.album.results"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 2115
    if-eqz v1, :cond_d

    if-eqz v6, :cond_d

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ne v8, v9, :cond_d

    .line 2116
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2117
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_3
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;

    .line 2118
    if-eqz v1, :cond_3

    .line 2121
    iget-object v1, v1, Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;->originUrl:Ljava/lang/String;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    move-object v1, v2

    .line 2126
    :goto_2
    iget-object v2, v5, Lgdx;->a:Lgdw;

    invoke-virtual {v2}, Lgdw;->u()Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListArgs;

    move-result-object v2

    if-eqz v2, :cond_6

    iget-object v2, v5, Lgdx;->a:Lgdw;

    invoke-virtual {v2}, Lgdw;->u()Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListArgs;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListArgs;->isShowUploadRemindDialog()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2127
    :goto_3
    if-eqz v3, :cond_5

    iget-object v2, v5, Lgdx;->a:Lgdw;

    invoke-virtual {v2}, Lgdw;->w()I

    move-result v2

    invoke-static {v2}, Lgqu;->d(I)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2128
    :cond_5
    invoke-virtual {v5, v6, v7, v1, v4}, Lgdx;->a(Ljava/util/ArrayList;ZLjava/util/List;Z)V

    goto/16 :goto_0

    :cond_6
    move v3, v4

    .line 2126
    goto :goto_3

    .line 2133
    :cond_7
    new-instance v2, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    iget-object v3, v5, Lgdx;->b:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2134
    sget v3, Lfzs$h;->dt_space_upload_conversation_notify_title:I

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    .line 2135
    sget v3, Lfzs$h;->dt_space_upload_conversation_notify_des:I

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    .line 2136
    sget v3, Lfzs$h;->dt_space_upload_conversation_notify_sure:I

    new-instance v4, Lgdx$1;

    invoke-direct {v4, v5, v6, v7, v1}, Lgdx$1;-><init>(Lgdx;Ljava/util/ArrayList;ZLjava/util/List;)V

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 2144
    sget v3, Lfzs$h;->dt_space_upload_conversation_notify_cancel:I

    new-instance v4, Lgdx$5;

    invoke-direct {v4, v5, v6, v7, v1}, Lgdx$5;-><init>(Lgdx;Ljava/util/ArrayList;ZLjava/util/List;)V

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 2152
    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    goto/16 :goto_0

    .line 155
    :cond_8
    iget-object v1, p0, Lgdw$1;->a:Lgdw;

    .line 3057
    iget-object v1, v1, Lgdw;->a:Lgdx;

    .line 3081
    iget-object v1, v1, Lgdx;->d:Ljava/lang/String;

    .line 155
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 156
    iget-object v1, p0, Lgdw$1;->a:Lgdw;

    .line 4057
    iget-object v2, v1, Lgdw;->a:Lgdx;

    .line 4156
    if-eqz p2, :cond_0

    .line 4160
    const-string/jumbo v1, "choose_files_uris"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 4161
    iget-object v1, v2, Lgdx;->a:Lgdw;

    invoke-virtual {v1}, Lgdw;->u()Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListArgs;

    move-result-object v1

    if-eqz v1, :cond_a

    iget-object v1, v2, Lgdx;->a:Lgdw;

    invoke-virtual {v1}, Lgdw;->u()Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListArgs;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListArgs;->isShowUploadRemindDialog()Z

    move-result v1

    if-eqz v1, :cond_a

    move v1, v3

    .line 4162
    :goto_4
    if-eqz v1, :cond_9

    iget-object v1, v2, Lgdx;->a:Lgdw;

    invoke-virtual {v1}, Lgdw;->w()I

    move-result v1

    invoke-static {v1}, Lgqu;->d(I)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 4163
    :cond_9
    invoke-virtual {v2, v5, v4}, Lgdx;->a(Ljava/util/ArrayList;Z)V

    goto/16 :goto_0

    :cond_a
    move v1, v4

    .line 4161
    goto :goto_4

    .line 4167
    :cond_b
    new-instance v1, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    iget-object v3, v2, Lgdx;->b:Landroid/content/Context;

    invoke-direct {v1, v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 4168
    sget v3, Lfzs$h;->dt_space_upload_conversation_notify_title:I

    invoke-virtual {v1, v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    .line 4169
    sget v3, Lfzs$h;->dt_space_upload_conversation_notify_des:I

    invoke-virtual {v1, v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    .line 4170
    sget v3, Lfzs$h;->dt_space_upload_conversation_notify_sure:I

    new-instance v4, Lgdx$6;

    invoke-direct {v4, v2, v5}, Lgdx$6;-><init>(Lgdx;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v3, v4}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 4178
    sget v3, Lfzs$h;->dt_space_upload_conversation_notify_cancel:I

    new-instance v4, Lgdx$7;

    invoke-direct {v4, v2, v5}, Lgdx$7;-><init>(Lgdx;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v3, v4}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 4186
    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    goto/16 :goto_0

    .line 157
    :cond_c
    const-string/jumbo v1, "com.alibaba.dingtalk.space.file.create"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 158
    iget-object v1, p0, Lgdw$1;->a:Lgdw;

    invoke-static {v1, p2}, Lgdw;->a(Lgdw;Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_d
    move-object v1, v2

    goto/16 :goto_2
.end method
