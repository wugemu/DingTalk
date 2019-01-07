.class final Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$28;
.super Ljava/lang/Object;
.source "TeleVoipWaitingFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    .prologue
    .line 368
    iput-object p1, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$28;->a:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 371
    iget-object v3, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$28;->a:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    invoke-static {v3}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->a(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;)Lcom/alibaba/wukong/openav/external/IAVSession;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 372
    iget-object v3, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$28;->a:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    invoke-static {v3}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->a(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;)Lcom/alibaba/wukong/openav/external/IAVSession;

    move-result-object v3

    invoke-interface {v3}, Lcom/alibaba/wukong/openav/external/IAVSession;->j()Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;

    move-result-object v3

    sget-object v4, Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;->CALLING:Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;

    if-ne v3, v4, :cond_1

    .line 373
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v3

    const-string/jumbo v4, "phone_voip_before_caller_phonecall"

    invoke-interface {v3, v4}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 374
    iget-object v3, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$28;->a:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->b(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;Z)Z

    .line 380
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 381
    .local v2, "controlTag":Ljava/lang/String;
    const-string/jumbo v3, "biz_call"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 382
    .local v0, "beBizTag":Z
    if-eqz v0, :cond_2

    invoke-static {}, Lewh;->a()Lewh;

    move-result-object v3

    invoke-virtual {v3}, Lewh;->n()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 383
    iget-object v3, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$28;->a:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    new-instance v4, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$28$1;

    invoke-direct {v4, p0}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$28$1;-><init>(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$28;)V

    invoke-static {v3, v4}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->a(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;Ljava/lang/Runnable;)V

    .line 413
    :goto_1
    return-void

    .line 376
    .end local v0    # "beBizTag":Z
    .end local v2    # "controlTag":Ljava/lang/String;
    :cond_1
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v3

    const-string/jumbo v4, "phone_voip_after_caller_phonecall"

    invoke-interface {v3, v4}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 377
    iget-object v3, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$28;->a:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    invoke-static {v3, v5}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->b(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;Z)Z

    goto :goto_0

    .line 391
    .restart local v0    # "beBizTag":Z
    .restart local v2    # "controlTag":Ljava/lang/String;
    :cond_2
    iget-object v3, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$28;->a:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    invoke-virtual {v3}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Levl;->b(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 392
    new-instance v1, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    iget-object v3, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$28;->a:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    invoke-virtual {v3}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 393
    .local v1, "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    sget v3, Leuj$l;->dt_conference_start_syscall_msg_title:I

    invoke-virtual {v1, v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    .line 394
    sget v3, Leuj$l;->dt_conf_callselect_btn_make_call:I

    new-instance v4, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$28$2;

    invoke-direct {v4, p0}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$28$2;-><init>(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$28;)V

    invoke-virtual {v1, v3, v4}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 401
    sget v3, Leuj$l;->cancel:I

    new-instance v4, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$28$3;

    invoke-direct {v4, p0}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$28$3;-><init>(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$28;)V

    invoke-virtual {v1, v3, v4}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 407
    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    goto :goto_1

    .line 409
    .end local v1    # "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    :cond_3
    iget-object v3, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$28;->a:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    sget-object v4, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_NoErr:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    invoke-virtual {v4}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Value()I

    move-result v4

    invoke-static {v3, v5, v4}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->a(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;ZI)V

    .line 410
    iget-object v3, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$28;->a:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    invoke-static {v3}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->t(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;)V

    goto :goto_1
.end method
