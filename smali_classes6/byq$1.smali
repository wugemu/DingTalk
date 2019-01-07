.class final Lbyq$1;
.super Ljava/lang/Object;
.source "StartLiveUtils.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbyq;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/alibaba/wukong/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/wukong/Callback",
        "<",
        "Lcom/alibaba/wukong/im/Conversation;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/alibaba/wukong/Callback;


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/lang/String;Lcom/alibaba/wukong/Callback;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lbyq$1;->a:Landroid/app/Activity;

    iput-object p2, p0, Lbyq$1;->b:Ljava/lang/String;

    iput-object p3, p0, Lbyq$1;->c:Lcom/alibaba/wukong/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 102
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "getConversation failed, code="

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, ", reason="

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object p2, v0, v1

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1013
    const-string/jumbo v1, "live"

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lbyq$1;->a:Landroid/app/Activity;

    iget-object v1, p0, Lbyq$1;->b:Ljava/lang/String;

    iget-object v2, p0, Lbyq$1;->c:Lcom/alibaba/wukong/Callback;

    invoke-static {v0, v1, v2}, Lbyq;->b(Landroid/app/Activity;Ljava/lang/String;Lcom/alibaba/wukong/Callback;)V

    .line 106
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 78
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 78
    check-cast p1, Lcom/alibaba/wukong/im/Conversation;

    .line 2051
    invoke-static {p1}, Lbyq;->a(Lcom/alibaba/wukong/im/Conversation;)Lcom/alibaba/android/dingtalk/livebase/model/LivePlayObject;

    move-result-object v0

    .line 1082
    if-eqz v0, :cond_0

    iget-wide v2, v0, Lcom/alibaba/android/dingtalk/livebase/model/LivePlayObject;->anchor:J

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v1

    invoke-virtual {v1}, Lccr;->c()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-eqz v1, :cond_2

    .line 1084
    :cond_0
    iget-object v0, p0, Lbyq$1;->a:Landroid/app/Activity;

    iget-object v1, p0, Lbyq$1;->b:Ljava/lang/String;

    iget-object v2, p0, Lbyq$1;->c:Lcom/alibaba/wukong/Callback;

    invoke-static {v0, v1, v2}, Lbyq;->b(Landroid/app/Activity;Ljava/lang/String;Lcom/alibaba/wukong/Callback;)V

    .line 1089
    :cond_1
    :goto_0
    return-void

    .line 1085
    :cond_2
    iget-object v1, p0, Lbyq$1;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/alibaba/wukong/WKManager;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/alibaba/android/dingtalk/livebase/model/LivePlayObject;->did:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1086
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "still has live in conversation, type="

    aput-object v2, v1, v6

    const/4 v2, 0x1

    iget v3, v0, Lcom/alibaba/android/dingtalk/livebase/model/LivePlayObject;->type:I

    .line 1087
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 1086
    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3013
    const-string/jumbo v2, "live"

    invoke-static {v2, v7, v1}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1089
    iget-object v1, p0, Lbyq$1;->a:Landroid/app/Activity;

    iget-object v2, p0, Lbyq$1;->b:Ljava/lang/String;

    iget-object v3, p0, Lbyq$1;->c:Lcom/alibaba/wukong/Callback;

    .line 3257
    invoke-static {v1}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3260
    invoke-static {v1}, Lbyf;->b(Landroid/app/Activity;)V

    .line 3261
    new-instance v4, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v4, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v5, Lbtp$g;->dt_live_recover_live_alert_title:I

    .line 3262
    invoke-virtual {v4, v5}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v4

    sget v5, Lbtp$g;->dt_live_create_live:I

    new-instance v6, Lbyq$8;

    invoke-direct {v6, v1, v2, v0, v3}, Lbyq$8;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/alibaba/android/dingtalk/livebase/model/LivePlayObject;Lcom/alibaba/wukong/Callback;)V

    .line 3263
    invoke-virtual {v4, v5, v6}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    sget v4, Lbtp$g;->dt_live_continue_live:I

    new-instance v5, Lbyq$7;

    invoke-direct {v5, v1, v2, v3}, Lbyq$7;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/alibaba/wukong/Callback;)V

    .line 3270
    invoke-virtual {v0, v4, v5}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 3277
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    goto :goto_0

    .line 1092
    :cond_3
    invoke-static {}, Lbws;->a()Lbws;

    move-result-object v1

    invoke-virtual {v1, v6}, Lbws;->c(Z)V

    .line 1094
    iget-object v1, p0, Lbyq$1;->a:Landroid/app/Activity;

    invoke-static {v1}, Lbyf;->b(Landroid/app/Activity;)V

    .line 1095
    iget-object v1, p0, Lbyq$1;->a:Landroid/app/Activity;

    iget-object v2, p0, Lbyq$1;->b:Ljava/lang/String;

    iget-object v3, p0, Lbyq$1;->c:Lcom/alibaba/wukong/Callback;

    .line 4238
    invoke-static {v1}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 4241
    invoke-static {v1}, Lbyf;->b(Landroid/app/Activity;)V

    .line 4242
    new-instance v4, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v4, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v5, Lbtp$g;->dt_lv_started_on_other_device_v2:I

    .line 4243
    invoke-virtual {v4, v5}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v4

    sget v5, Lbtp$g;->dt_common_cancel:I

    .line 4244
    invoke-virtual {v4, v5, v7}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v4

    sget v5, Lbtp$g;->dt_live_create_live_v2:I

    new-instance v6, Lbyq$6;

    invoke-direct {v6, v1, v2, v0, v3}, Lbyq$6;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/alibaba/android/dingtalk/livebase/model/LivePlayObject;Lcom/alibaba/wukong/Callback;)V

    .line 4245
    invoke-virtual {v4, v5, v6}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 4252
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 1096
    :cond_4
    const-string/jumbo v0, "anchor still has live in other devices"

    .line 5013
    const-string/jumbo v1, "live"

    invoke-static {v1, v7, v0}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
