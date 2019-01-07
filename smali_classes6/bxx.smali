.class public final Lbxx;
.super Ljava/lang/Object;
.source "ShareLivePresenter.java"

# interfaces
.implements Lcjd;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbxx$a;
    }
.end annotation


# instance fields
.field public a:Landroid/app/Activity;

.field private b:Lbxx$a;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lbxx;->a:Landroid/app/Activity;

    .line 52
    return-void
.end method

.method static synthetic a(Lbxx;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 6
    .param p0, "x0"    # Lbxx;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/util/List;

    .prologue
    .line 45
    .line 3132
    new-instance v5, Lbvr;

    invoke-direct {v5}, Lbvr;-><init>()V

    .line 3133
    iput-object p1, v5, Lbvr;->a:Ljava/lang/String;

    .line 3134
    iput-object p2, v5, Lbvr;->b:Ljava/lang/String;

    .line 3135
    iput-object p3, v5, Lbvr;->c:Ljava/util/List;

    .line 3137
    new-instance v0, Lbxx$3;

    invoke-direct {v0, p0}, Lbxx$3;-><init>(Lbxx;)V

    .line 3155
    const-class v1, Lcom/alibaba/wukong/Callback;

    iget-object v2, p0, Lbxx;->a:Landroid/app/Activity;

    invoke-static {v0, v1, v2}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/wukong/Callback;

    .line 3156
    invoke-static {}, Lbxe;->a()Lbxe;

    move-result-object v1

    .line 3447
    new-instance v0, Lbxe$24;

    const/4 v3, 0x0

    iget-object v4, v1, Lbxe;->a:Ljava/util/concurrent/Executor;

    invoke-direct/range {v0 .. v5}, Lbxe$24;-><init>(Lbxe;Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;Lbvr;)V

    .line 3453
    invoke-virtual {v0}, Lbxe$24;->start()V

    .line 45
    return-void
.end method


# virtual methods
.method public final a(Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;J)V
    .locals 11
    .param p1, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .param p2, "liveUuid"    # Ljava/lang/String;
    .param p3, "anchorId"    # J

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 83
    if-eqz p1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lbxx;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 109
    :cond_0
    :goto_0
    return-void

    .line 87
    :cond_1
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v0

    .line 88
    .local v0, "cid":Ljava/lang/String;
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v1

    invoke-virtual {v1}, Lccr;->c()J

    move-result-wide v2

    .line 89
    .local v2, "currentUid":J
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v1

    const-string/jumbo v4, "f_live_share_same_org_group"

    .line 1083
    invoke-virtual {v1, v4, v10}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v1

    .line 89
    if-eqz v1, :cond_4

    .line 90
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->d(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 91
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->getOwnerId()J

    move-result-wide v4

    cmp-long v1, v4, v2

    if-eqz v1, :cond_2

    cmp-long v1, p3, v2

    if-nez v1, :cond_4

    .line 1160
    :cond_2
    iget-object v1, p0, Lbxx;->b:Lbxx$a;

    if-nez v1, :cond_3

    .line 1161
    new-instance v1, Lbxx$a;

    invoke-direct {v1, p0, v9}, Lbxx$a;-><init>(Lbxx;B)V

    iput-object v1, p0, Lbxx;->b:Lbxx$a;

    .line 1162
    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v4, "choose_enterprise_group_conversation"

    invoke-direct {v1, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1163
    iget-object v4, p0, Lbxx;->a:Landroid/app/Activity;

    invoke-static {v4}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v4

    iget-object v5, p0, Lbxx;->b:Lbxx$a;

    invoke-virtual {v4, v5, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 1165
    :cond_3
    iget-object v1, p0, Lbxx;->b:Lbxx$a;

    invoke-static {v1, v0, p2}, Lbxx$a;->a(Lbxx$a;Ljava/lang/String;Ljava/lang/String;)V

    .line 2112
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->g(Lcom/alibaba/wukong/im/Conversation;)J

    move-result-wide v4

    .line 2113
    iget-object v1, p0, Lbxx;->a:Landroid/app/Activity;

    sget v6, Lbtp$g;->dt_lv_share_choose_conversation_title:I

    invoke-virtual {v1, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2114
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 2115
    const-string/jumbo v7, "count_limit"

    const/16 v8, 0x32

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2116
    const-string/jumbo v7, "choose_mode"

    invoke-virtual {v6, v7, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2117
    const-string/jumbo v7, "org_id"

    invoke-virtual {v6, v7, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2118
    const-string/jumbo v4, "intent_key_show_menu_guide"

    invoke-virtual {v6, v4, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2119
    const-string/jumbo v4, "intent_key_show_menu_create"

    invoke-virtual {v6, v4, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2120
    const-string/jumbo v4, "intent_key_only_show_my_group"

    invoke-virtual {v6, v4, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2121
    const-string/jumbo v4, "search_mode_enabled"

    invoke-virtual {v6, v4, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2122
    const-string/jumbo v4, "choose_enterprise_group_conversation"

    invoke-virtual {v6, v4, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2123
    const-string/jumbo v4, "title"

    invoke-virtual {v6, v4, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2124
    const-string/jumbo v1, "activity_identify"

    const-string/jumbo v4, "live_replay"

    invoke-virtual {v6, v1, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2125
    const-string/jumbo v1, "choose_people_from_contact_logic"

    new-instance v4, Lcom/alibaba/android/dingtalk/live/controller/LiveChoooseInjecter;

    invoke-direct {v4}, Lcom/alibaba/android/dingtalk/live/controller/LiveChoooseInjecter;-><init>()V

    invoke-virtual {v6, v1, v4}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 2127
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v1

    iget-object v4, p0, Lbxx;->a:Landroid/app/Activity;

    invoke-virtual {v1, v4, v6}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Landroid/app/Activity;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 97
    :cond_4
    new-instance v1, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    iget-object v4, p0, Lbxx;->a:Landroid/app/Activity;

    invoke-direct {v1, v4}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v4, Lbtp$g;->dt_lv_share_live_record_confirm_message:I

    .line 98
    invoke-virtual {v1, v4}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    sget v4, Lbtp$g;->dt_common_cancel:I

    const/4 v5, 0x0

    .line 99
    invoke-virtual {v1, v4, v5}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    sget v4, Lbtp$g;->dt_send:I

    new-instance v5, Lbxx$2;

    invoke-direct {v5, p0, v0, p2}, Lbxx$2;-><init>(Lbxx;Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    invoke-virtual {v1, v4, v5}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    .line 107
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    goto/16 :goto_0
.end method

.method public final g()V
    .locals 0

    .prologue
    .line 179
    return-void
.end method

.method public final h()V
    .locals 0

    .prologue
    .line 184
    return-void
.end method

.method public final i()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 188
    .line 2169
    iget-object v0, p0, Lbxx;->b:Lbxx$a;

    if-eqz v0, :cond_0

    .line 2170
    iget-object v0, p0, Lbxx;->a:Landroid/app/Activity;

    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lbxx;->b:Lbxx$a;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 2171
    const/4 v0, 0x0

    iput-object v0, p0, Lbxx;->b:Lbxx$a;

    .line 189
    :cond_0
    return-void
.end method
