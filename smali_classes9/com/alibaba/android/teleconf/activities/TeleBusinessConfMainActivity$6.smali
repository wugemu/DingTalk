.class final Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity$6;
.super Ljava/lang/Object;
.source "TeleBusinessConfMainActivity.java"

# interfaces
.implements Leyo$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;
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
        "Lcom/alibaba/android/teleconf/sdk/idl/model/ConfQuotaInfoModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;

    .prologue
    .line 758
    iput-object p1, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity$6;->a:Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/16 v8, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 758
    check-cast p1, Lcom/alibaba/android/teleconf/sdk/idl/model/ConfQuotaInfoModel;

    .line 1761
    if-nez p1, :cond_0

    .line 1762
    :goto_0
    return-void

    .line 1765
    :cond_0
    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/ConfQuotaInfoModel;->confQuotaModel:Lcom/alibaba/android/teleconf/sdk/idl/model/ConfQuotaModel;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/ConfQuotaInfoModel;->confQuotaModel:Lcom/alibaba/android/teleconf/sdk/idl/model/ConfQuotaModel;

    iget-object v0, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/ConfQuotaModel;->remain:Ljava/lang/Long;

    if-eqz v0, :cond_3

    .line 1767
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity$6;->a:Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;

    iget-object v3, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/ConfQuotaInfoModel;->confQuotaModel:Lcom/alibaba/android/teleconf/sdk/idl/model/ConfQuotaModel;

    iget-object v3, v3, Lcom/alibaba/android/teleconf/sdk/idl/model/ConfQuotaModel;->remain:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v0, v4, v5}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;J)J

    .line 1771
    :goto_1
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity$6;->a:Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;->m(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-ltz v0, :cond_1

    .line 1772
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity$6;->a:Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;->q(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity$6;->a:Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;

    invoke-static {v3}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;->m(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1776
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity$6;->a:Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;->r(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1777
    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/ConfQuotaInfoModel;->warning:Ljava/lang/Boolean;

    if-eqz v0, :cond_6

    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/ConfQuotaInfoModel;->warning:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/ConfQuotaInfoModel;->warnText:Ljava/lang/String;

    .line 1778
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 1779
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity$6;->a:Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;

    iget-object v3, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/ConfQuotaInfoModel;->warnText:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;Ljava/lang/String;)Ljava/lang/String;

    move v0, v1

    .line 1782
    :goto_2
    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity$6;->a:Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;

    invoke-static {v3, v0}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;->b(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;Z)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1783
    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity$6;->a:Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;

    invoke-static {v3}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;->p(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1784
    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity$6;->a:Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;

    invoke-static {v3}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;->s(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity$6;->a:Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;

    invoke-static {v4}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;->n(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1786
    const-string/jumbo v3, "tele_conf"

    invoke-static {}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;->g()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "Show warning"

    invoke-static {v3, v4, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1794
    :goto_3
    iget-object v3, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/ConfQuotaInfoModel;->userRole:Ljava/lang/Integer;

    if-eqz v3, :cond_2

    iget-object v3, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/ConfQuotaInfoModel;->userRole:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eqz v3, :cond_2

    .line 1796
    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity$6;->a:Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;

    invoke-static {v3}, Levl;->c(Landroid/content/Context;)Z

    move-result v3

    .line 1797
    iget-object v4, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity$6;->a:Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;

    invoke-static {v4, v3}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;Z)V

    .line 1800
    :cond_2
    const-string/jumbo v3, "tele_conf"

    invoke-static {}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;->g()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "Conf quota :"

    aput-object v6, v5, v2

    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity$6;->a:Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;

    .line 1801
    invoke-static {v2}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;->m(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    const/4 v1, 0x2

    const-string/jumbo v2, ", warning "

    aput-object v2, v5, v1

    const/4 v1, 0x3

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v1

    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1800
    invoke-static {v3, v4, v0}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1769
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity$6;->a:Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;

    const-wide/16 v4, -0x1

    invoke-static {v0, v4, v5}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;J)J

    goto/16 :goto_1

    .line 1788
    :cond_4
    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity$6;->a:Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;

    invoke-static {v3}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;->p(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 1791
    :cond_5
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity$6;->a:Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;->p(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    move v0, v2

    goto :goto_3

    :cond_6
    move v0, v2

    goto/16 :goto_2
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 5
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "cause"    # Ljava/lang/Throwable;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 806
    const-string/jumbo v0, "tele_conf"

    invoke-static {}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;->g()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "Get conf quota fail, "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, ","

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p2, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 807
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity$6;->a:Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;->p(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 808
    return-void
.end method
