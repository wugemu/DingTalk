.class final Lazz$2;
.super Ljava/lang/Object;
.source "DingCreateActivityV2Presenter.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lazz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lazz;


# direct methods
.method constructor <init>(Lazz;)V
    .locals 0
    .param p1, "this$0"    # Lazz;

    .prologue
    .line 337
    iput-object p1, p0, Lazz$2;->a:Lazz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v2, 0x1

    .line 337
    check-cast p1, Ljava/lang/Long;

    .line 1340
    iget-object v0, p0, Lazz$2;->a:Lazz;

    iget-object v0, v0, Lazz;->y:Lazy$b;

    invoke-interface {v0}, Lazy$b;->a()V

    .line 1341
    iget-object v0, p0, Lazz$2;->a:Lazz;

    iget-object v0, v0, Lazz;->y:Lazy$b;

    invoke-interface {v0, v2}, Lazy$b;->b(Z)V

    .line 1343
    invoke-static {}, Lbhg;->a()Lbhg;

    move-result-object v0

    iget-object v1, p0, Lazz$2;->a:Lazz;

    iget-object v1, v1, Lazz;->a:Lcom/alibaba/android/ding/base/objects/DingCreateInfo;

    invoke-virtual {v0, v1}, Lbhg;->b(Lcom/alibaba/android/ding/base/objects/DingCreateInfo;)V

    .line 1345
    iget-object v0, p0, Lazz$2;->a:Lazz;

    .line 2066
    invoke-virtual {v0}, Lazz;->P()V

    .line 1347
    iget-object v0, p0, Lazz$2;->a:Lazz;

    .line 3066
    iput-boolean v2, v0, Lazz;->H:Z

    .line 1349
    iget-object v0, p0, Lazz$2;->a:Lazz;

    iget-object v0, v0, Lazz;->y:Lazy$b;

    invoke-interface {v0}, Lazy$b;->f()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "first_ding"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 1351
    const-string/jumbo v0, "android.intent.action.SEND"

    iget-object v1, p0, Lazz$2;->a:Lazz;

    .line 4066
    iget-object v1, v1, Lazz;->D:Ljava/lang/String;

    .line 1351
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lazz$2;->a:Lazz;

    .line 5066
    iget-object v0, v0, Lazz;->E:Ljava/lang/String;

    .line 1351
    if-eqz v0, :cond_3

    .line 5194
    const-string/jumbo v0, "create_ding_from_external_file"

    invoke-static {v0}, Lbjz;->a(Ljava/lang/String;)V

    .line 1396
    :goto_0
    if-eqz p1, :cond_0

    iget-object v0, p0, Lazz$2;->a:Lazz;

    iget-object v0, v0, Lazz;->y:Lazy$b;

    invoke-interface {v0}, Lazy$b;->u()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1397
    iget-object v0, p0, Lazz$2;->a:Lazz;

    iget-object v0, v0, Lazz;->y:Lazy$b;

    invoke-interface {v0}, Lazy$b;->f()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lazz$2;->a:Lazz;

    iget v1, v1, Lazz;->c:I

    .line 16044
    const-wide/16 v2, 0x0

    invoke-static {p1, v2, v3}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 1399
    iget-object v4, p0, Lazz$2;->a:Lazz;

    iget-object v4, v4, Lazz;->a:Lcom/alibaba/android/ding/base/objects/DingCreateInfo;

    .line 1400
    invoke-virtual {v4}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo;->getSeed()J

    move-result-wide v4

    iget-object v6, p0, Lazz$2;->a:Lazz;

    iget-object v6, v6, Lazz;->y:Lazy$b;

    .line 1401
    invoke-interface {v6}, Lazy$b;->u()Ljava/lang/String;

    move-result-object v6

    .line 1397
    invoke-static/range {v0 .. v6}, Lbjm;->a(Landroid/app/Activity;IJJLjava/lang/String;)V

    .line 16154
    :cond_0
    const-string/jumbo v0, "ding_list_ding_send_succ_click"

    invoke-static {v0}, Lbjz;->a(Ljava/lang/String;)V

    .line 1405
    iget-object v0, p0, Lazz$2;->a:Lazz;

    iget-object v0, v0, Lazz;->y:Lazy$b;

    invoke-interface {v0}, Lazy$b;->t()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 16158
    const-string/jumbo v0, "ding_create_deadline"

    invoke-static {v0}, Lbjz;->a(Ljava/lang/String;)V

    .line 1408
    :cond_1
    iget-object v0, p0, Lazz$2;->a:Lazz;

    .line 17066
    iget-boolean v0, v0, Lazz;->G:Z

    .line 1408
    if-eqz v0, :cond_2

    .line 1409
    iget-object v0, p0, Lazz$2;->a:Lazz;

    invoke-static {v0}, Lazz;->b(Lazz;)V

    .line 1410
    iget-object v0, p0, Lazz$2;->a:Lazz;

    iget-object v0, v0, Lazz;->y:Lazy$b;

    invoke-interface {v0}, Lazy$b;->f()Landroid/app/Activity;

    move-result-object v0

    .line 17530
    if-eqz v0, :cond_2

    .line 17533
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v1

    .line 17534
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 17535
    const-string/jumbo v3, "to_page"

    const-string/jumbo v4, "to_ding"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 17536
    invoke-virtual {v1, v0, v2}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->a(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 1412
    :cond_2
    iget-object v0, p0, Lazz$2;->a:Lazz;

    iget-object v0, v0, Lazz;->y:Lazy$b;

    invoke-interface {v0}, Lazy$b;->e()V

    .line 337
    return-void

    .line 1354
    :cond_3
    const-string/jumbo v0, "android.intent.action.SEND_MULTIPLE"

    iget-object v1, p0, Lazz$2;->a:Lazz;

    .line 6066
    iget-object v1, v1, Lazz;->D:Ljava/lang/String;

    .line 1354
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lazz$2;->a:Lazz;

    .line 7066
    iget-object v0, v0, Lazz;->E:Ljava/lang/String;

    .line 1354
    if-eqz v0, :cond_4

    .line 7198
    const-string/jumbo v0, "create_ding_from_external_files"

    invoke-static {v0}, Lbjz;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1358
    :cond_4
    iget-object v0, p0, Lazz$2;->a:Lazz;

    iget v0, v0, Lazz;->c:I

    packed-switch v0, :pswitch_data_0

    .line 15162
    :pswitch_0
    const-string/jumbo v0, "create_ding_originally"

    invoke-static {v0}, Lbjz;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 8190
    :pswitch_1
    const-string/jumbo v0, "create_ding_from_unread_list"

    invoke-static {v0}, Lbjz;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1364
    :pswitch_2
    iget-object v0, p0, Lazz$2;->a:Lazz;

    .line 9066
    iget-object v0, v0, Lazz;->F:Lcom/alibaba/wukong/im/Message;

    .line 1364
    if-eqz v0, :cond_5

    .line 9182
    const-string/jumbo v0, "create_ding_from_conversation_message"

    invoke-static {v0}, Lbjz;->a(Ljava/lang/String;)V

    .line 9202
    const-string/jumbo v0, "chat_ding_success"

    invoke-static {v0}, Lbjz;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 10186
    :cond_5
    const-string/jumbo v0, "create_ding_from_conversation_add_app"

    invoke-static {v0}, Lbjz;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 11178
    :pswitch_3
    const-string/jumbo v0, "create_ding_from_user_profile"

    invoke-static {v0}, Lbjz;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 12174
    :pswitch_4
    const-string/jumbo v0, "create_ding_from_contact_user_profile"

    invoke-static {v0}, Lbjz;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 13170
    :pswitch_5
    const-string/jumbo v0, "create_ding_from_open_oa"

    invoke-static {v0}, Lbjz;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 14166
    :pswitch_6
    const-string/jumbo v0, "create_ding_from_space_file_unread"

    invoke-static {v0}, Lbjz;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1358
    nop

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

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v1, 0x1

    .line 421
    iget-object v0, p0, Lazz$2;->a:Lazz;

    iget-object v0, v0, Lazz;->y:Lazy$b;

    invoke-interface {v0}, Lazy$b;->a()V

    .line 422
    iget-object v0, p0, Lazz$2;->a:Lazz;

    iget-object v0, v0, Lazz;->y:Lazy$b;

    invoke-interface {v0, v1}, Lazy$b;->b(Z)V

    .line 424
    if-eqz p1, :cond_0

    const-string/jumbo v0, "431020"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 425
    iget-object v0, p0, Lazz$2;->a:Lazz;

    iget-object v0, v0, Lazz;->y:Lazy$b;

    invoke-interface {v0, p2}, Lazy$b;->b(Ljava/lang/CharSequence;)V

    .line 432
    .end local p2    # "reason":Ljava/lang/String;
    :goto_0
    return-void

    .line 427
    .restart local p2    # "reason":Ljava/lang/String;
    :cond_0
    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "[DingCreateV2]send ding failed"

    aput-object v2, v0, v1

    invoke-static {v0}, Lbkd;->a([Ljava/lang/String;)V

    .line 428
    if-nez p2, :cond_1

    const-string/jumbo p2, "send ding failed"

    .end local p2    # "reason":Ljava/lang/String;
    :cond_1
    invoke-static {p2}, Lcms;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 417
    return-void
.end method
