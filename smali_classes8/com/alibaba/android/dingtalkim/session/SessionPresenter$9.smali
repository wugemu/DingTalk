.class final Lcom/alibaba/android/dingtalkim/session/SessionPresenter$9;
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
    .line 1022
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$9;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const-wide/16 v8, 0x0

    .line 1026
    if-eqz p2, :cond_1

    .line 1027
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1028
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v1, "action_mail_to_im_top_tip"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1029
    const-string/jumbo v1, "intent_key_mail_account_name"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1030
    .local v3, "accountName":Ljava/lang/String;
    const-string/jumbo v1, "intent_key_mail_subject"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1031
    .local v2, "subject":Ljava/lang/String;
    const-string/jumbo v1, "intent_key_mail_msg_id"

    invoke-virtual {p2, v1, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    .line 1032
    .local v4, "localId":J
    const-string/jumbo v1, "intent_key_mail_operation_type"

    const/4 v7, -0x1

    invoke-virtual {p2, v1, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 1034
    .local v6, "opType":I
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$9;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .line 1116
    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->a:Ldyy$b;

    .line 1034
    if-eqz v1, :cond_0

    .line 1035
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$9;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .line 2116
    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->a:Ldyy$b;

    .line 1035
    invoke-interface/range {v1 .. v6}, Ldyy$b;->a(Ljava/lang/String;Ljava/lang/String;JI)V

    .line 1039
    .end local v2    # "subject":Ljava/lang/String;
    .end local v3    # "accountName":Ljava/lang/String;
    .end local v4    # "localId":J
    .end local v6    # "opType":I
    :cond_0
    const-string/jumbo v1, "action_mail_cancel_im_top_tip"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1040
    const-string/jumbo v1, "intent_key_mail_account_name"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1041
    .restart local v3    # "accountName":Ljava/lang/String;
    const-string/jumbo v1, "intent_key_mail_msg_id"

    invoke-virtual {p2, v1, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    .line 1043
    .restart local v4    # "localId":J
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$9;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .line 3116
    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->a:Ldyy$b;

    .line 1043
    if-eqz v1, :cond_1

    .line 1044
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$9;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .line 4116
    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->a:Ldyy$b;

    .line 1044
    invoke-interface {v1, v3, v4, v5}, Ldyy$b;->a(Ljava/lang/String;J)V

    .line 1048
    .end local v0    # "action":Ljava/lang/String;
    .end local v3    # "accountName":Ljava/lang/String;
    .end local v4    # "localId":J
    :cond_1
    return-void
.end method
