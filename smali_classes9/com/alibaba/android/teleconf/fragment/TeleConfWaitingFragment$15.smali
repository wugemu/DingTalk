.class final Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment$15;
.super Ljava/lang/Object;
.source "TeleConfWaitingFragment.java"

# interfaces
.implements Leyo$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Leyo$d",
        "<",
        "Lcom/alibaba/android/teleconf/sdk/idl/model/UserInfoCard;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;

    .prologue
    .line 507
    iput-object p1, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment$15;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 507
    check-cast p1, Lcom/alibaba/android/teleconf/sdk/idl/model/UserInfoCard;

    .line 1510
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment$15;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;

    .line 1511
    invoke-virtual {v0}, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1512
    :cond_0
    const-string/jumbo v0, "tele_conf"

    invoke-static {}, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;->c()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Get user card info no show"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1513
    :goto_0
    return-void

    .line 1515
    :cond_1
    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/UserInfoCard;->title:Ljava/lang/String;

    .line 1516
    iget-object v1, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/UserInfoCard;->orgName:Ljava/lang/String;

    .line 1517
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1518
    iget-object v2, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment$15;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;

    invoke-static {v2}, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;->m(Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1526
    :goto_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1527
    iget-object v2, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment$15;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;

    invoke-static {v2}, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;->n(Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1535
    :goto_2
    const-string/jumbo v2, "tele_conf"

    invoke-static {}, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;->c()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "User position "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, " company "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1520
    :cond_2
    iget-object v2, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment$15;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;

    invoke-static {v2}, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;->m(Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1521
    iget-object v2, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment$15;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;

    invoke-static {v2}, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;->m(Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1523
    iget-object v2, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment$15;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;

    invoke-static {v2, v0}, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;->a(Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    .line 1529
    :cond_3
    iget-object v2, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment$15;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;

    invoke-static {v2}, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;->n(Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1530
    iget-object v2, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment$15;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;

    invoke-static {v2}, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;->n(Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1532
    iget-object v2, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment$15;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;

    invoke-static {v2, v1}, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;->b(Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_2
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "cause"    # Ljava/lang/Throwable;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 540
    const-string/jumbo v0, "tele_conf"

    invoke-static {}, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;->c()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Get user card info "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    return-void
.end method
