.class final Lbad$5;
.super Ljava/lang/Object;
.source "CreateEventActivityPresenter.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbad;->a(Ljava/util/Collection;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/wukong/Callback",
        "<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lbfh;

.field final synthetic b:Lbad;


# direct methods
.method constructor <init>(Lbad;Lbfh;)V
    .locals 0
    .param p1, "this$0"    # Lbad;

    .prologue
    .line 781
    iput-object p1, p0, Lbad$5;->b:Lbad;

    iput-object p2, p0, Lbad$5;->a:Lbfh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 837
    iget-object v0, p0, Lbad$5;->b:Lbad;

    iget-object v0, v0, Lbad;->a:Lbac$b;

    invoke-interface {v0}, Lbac$b;->H_()V

    .line 838
    iget-object v0, p0, Lbad$5;->b:Lbad;

    iget-object v0, v0, Lbad;->a:Lbac$b;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lbac$b;->i(Z)V

    .line 839
    if-eqz p1, :cond_0

    const-string/jumbo v0, "431020"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 840
    iget-object v0, p0, Lbad$5;->b:Lbad;

    .line 1911
    new-instance v1, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    iget-object v2, v0, Lbad;->a:Lbac$b;

    invoke-interface {v2}, Lbac$b;->a()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1912
    invoke-virtual {v1, p2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1913
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    sget v3, Laxp$i;->dt_ding_ignore_and_send:I

    invoke-virtual {v2, v3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lbad$6;

    invoke-direct {v3, v0}, Lbad$6;-><init>(Lbad;)V

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1919
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    sget v3, Laxp$i;->cancel:I

    invoke-virtual {v2, v3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lbad$7;

    invoke-direct {v3, v0}, Lbad$7;-><init>(Lbad;)V

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1924
    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 849
    :goto_0
    return-void

    .line 843
    :cond_0
    const-string/jumbo v0, "431075"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 844
    sget v0, Laxp$i;->dt_ding_meeting_room_occupied:I

    invoke-static {v0}, Lcms;->a(I)V

    goto :goto_0

    .line 846
    :cond_1
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 781
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 781
    check-cast p1, Ljava/lang/Long;

    .line 2784
    iget-object v0, p0, Lbad$5;->b:Lbad;

    .line 3951
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "action_set_current_filter"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3952
    const-string/jumbo v2, "key_set_current_filter"

    const/4 v3, 0x5

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3953
    iget-object v0, v0, Lbad;->a:Lbac$b;

    invoke-interface {v0}, Lbac$b;->a()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/Intent;)Z

    .line 2785
    invoke-static {}, Lbhg;->a()Lbhg;

    move-result-object v0

    iget-object v1, p0, Lbad$5;->b:Lbad;

    iget-object v1, v1, Lbad;->b:Lcom/alibaba/android/ding/base/objects/DingCreateInfo;

    invoke-virtual {v0, v1}, Lbhg;->b(Lcom/alibaba/android/ding/base/objects/DingCreateInfo;)V

    .line 2786
    iget-object v0, p0, Lbad$5;->b:Lbad;

    .line 4077
    const/4 v1, 0x1

    iput-boolean v1, v0, Lbad;->v:Z

    .line 2787
    iget-object v0, p0, Lbad$5;->b:Lbad;

    iget-object v0, v0, Lbad;->a:Lbac$b;

    invoke-interface {v0}, Lbac$b;->H_()V

    .line 2789
    iget-object v0, p0, Lbad$5;->b:Lbad;

    iget v0, v0, Lbad;->c:I

    packed-switch v0, :pswitch_data_0

    .line 11162
    :pswitch_0
    const-string/jumbo v0, "create_ding_originally"

    invoke-static {v0}, Lbjz;->a(Ljava/lang/String;)V

    .line 12154
    :goto_0
    const-string/jumbo v0, "ding_list_ding_send_succ_click"

    invoke-static {v0}, Lbjz;->a(Ljava/lang/String;)V

    .line 2826
    iget-object v0, p0, Lbad$5;->b:Lbad;

    iget-object v0, v0, Lbad;->a:Lbac$b;

    invoke-interface {v0}, Lbac$b;->a()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lbad$5;->b:Lbad;

    iget v1, v1, Lbad;->c:I

    .line 2828
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v4, p0, Lbad$5;->b:Lbad;

    iget-object v4, v4, Lbad;->b:Lcom/alibaba/android/ding/base/objects/DingCreateInfo;

    .line 2829
    invoke-virtual {v4}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo;->getSeed()J

    move-result-wide v4

    iget-object v6, p0, Lbad$5;->b:Lbad;

    iget-object v6, v6, Lbad;->a:Lbac$b;

    .line 2830
    invoke-interface {v6}, Lbac$b;->f()Ljava/lang/String;

    move-result-object v6

    .line 2826
    invoke-static/range {v0 .. v6}, Lbjm;->a(Landroid/app/Activity;IJJLjava/lang/String;)V

    .line 2831
    iget-object v0, p0, Lbad$5;->b:Lbad;

    iget-object v0, v0, Lbad;->a:Lbac$b;

    invoke-interface {v0}, Lbac$b;->a()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lbad$5;->a:Lbfh;

    .line 13118
    iget-wide v2, v1, Lbfh;->a:J

    .line 14091
    if-eqz v0, :cond_0

    .line 14094
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v4, "action_calendar_change_day"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 14095
    const-string/jumbo v4, "key_alendar_change_day_millis"

    invoke-virtual {v1, v4, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 14096
    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/Intent;)Z

    .line 2832
    :cond_0
    iget-object v0, p0, Lbad$5;->b:Lbad;

    iget-object v0, v0, Lbad;->a:Lbac$b;

    invoke-interface {v0}, Lbac$b;->e()V

    .line 781
    return-void

    .line 4190
    :pswitch_1
    const-string/jumbo v0, "create_ding_from_unread_list"

    invoke-static {v0}, Lbjz;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 2795
    :pswitch_2
    iget-object v0, p0, Lbad$5;->b:Lbad;

    .line 5077
    iget-object v0, v0, Lbad;->u:Lcom/alibaba/wukong/im/Message;

    .line 2795
    if-eqz v0, :cond_1

    .line 5182
    const-string/jumbo v0, "create_ding_from_conversation_message"

    invoke-static {v0}, Lbjz;->a(Ljava/lang/String;)V

    .line 5202
    const-string/jumbo v0, "chat_ding_success"

    invoke-static {v0}, Lbjz;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 6186
    :cond_1
    const-string/jumbo v0, "create_ding_from_conversation_add_app"

    invoke-static {v0}, Lbjz;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 7178
    :pswitch_3
    const-string/jumbo v0, "create_ding_from_user_profile"

    invoke-static {v0}, Lbjz;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 8174
    :pswitch_4
    const-string/jumbo v0, "create_ding_from_contact_user_profile"

    invoke-static {v0}, Lbjz;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 9170
    :pswitch_5
    const-string/jumbo v0, "create_ding_from_open_oa"

    invoke-static {v0}, Lbjz;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 10166
    :pswitch_6
    const-string/jumbo v0, "create_ding_from_space_file_unread"

    invoke-static {v0}, Lbjz;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2789
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
