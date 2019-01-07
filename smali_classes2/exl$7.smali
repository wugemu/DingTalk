.class final Lexl$7;
.super Ljava/lang/Object;
.source "VoipConfPresenter.java"

# interfaces
.implements Leyo$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexl;->b(Z)V
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
        "Lcom/alibaba/android/teleconf/sdk/idl/model/ConfOperationModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lexl;


# direct methods
.method constructor <init>(Lexl;Z)V
    .locals 0
    .param p1, "this$0"    # Lexl;

    .prologue
    .line 634
    iput-object p1, p0, Lexl$7;->b:Lexl;

    iput-boolean p2, p0, Lexl$7;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v5, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 634
    check-cast p1, Lcom/alibaba/android/teleconf/sdk/idl/model/ConfOperationModel;

    .line 1638
    iget-boolean v0, p0, Lexl$7;->a:Z

    if-eqz v0, :cond_3

    .line 1639
    sget-object v0, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;->ACTION_MUTE_ALL:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;

    move-object v2, v0

    .line 1643
    :goto_0
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/ConfOperationModel;->code:Ljava/lang/Integer;

    if-eqz v0, :cond_5

    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/ConfOperationModel;->code:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_5

    .line 1644
    :cond_0
    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/ConfOperationModel;->code:Ljava/lang/Integer;

    if-eqz v0, :cond_4

    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/ConfOperationModel;->code:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move v1, v0

    .line 1645
    :goto_1
    const/4 v0, 0x0

    .line 1646
    if-eqz p1, :cond_1

    .line 1647
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v3, "errCode "

    aput-object v3, v0, v7

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v8

    const-string/jumbo v3, ", errMsg "

    aput-object v3, v0, v5

    const/4 v3, 0x3

    iget-object v4, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/ConfOperationModel;->cause:Ljava/lang/String;

    aput-object v4, v0, v3

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1649
    :cond_1
    const-string/jumbo v3, "tele_conf"

    invoke-static {}, Lexl;->t()Ljava/lang/String;

    move-result-object v4

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "Muteall voip conf member "

    aput-object v6, v5, v7

    aput-object v0, v5, v8

    .line 1650
    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1649
    invoke-static {v3, v4, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1652
    iget-object v3, p0, Lexl$7;->b:Lexl;

    invoke-static {v3}, Lexl;->e(Lexl;)Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$b;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 1653
    iget-object v3, p0, Lexl$7;->b:Lexl;

    invoke-static {v3}, Lexl;->e(Lexl;)Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$b;

    move-result-object v3

    invoke-interface {v3, v2, v1, v0}, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$b;->a(Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;ILjava/lang/String;)V

    .line 1655
    :cond_2
    :goto_2
    return-void

    .line 1641
    :cond_3
    sget-object v0, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;->ACTION_UNMUTE_ALL:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;

    move-object v2, v0

    goto :goto_0

    .line 1644
    :cond_4
    const/4 v0, -0x1

    move v1, v0

    goto :goto_1

    .line 1657
    :cond_5
    iget-object v0, p0, Lexl$7;->b:Lexl;

    invoke-static {v0}, Lexl;->e(Lexl;)Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$b;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1658
    iget-object v0, p0, Lexl$7;->b:Lexl;

    invoke-static {v0}, Lexl;->e(Lexl;)Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$b;

    move-result-object v0

    iget-boolean v1, p0, Lexl$7;->a:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$b;->a(Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;Ljava/lang/Object;)V

    goto :goto_2
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 8
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "cause"    # Ljava/lang/Throwable;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v7, 0x0

    .line 664
    const-string/jumbo v2, "tele_conf"

    invoke-static {}, Lexl;->t()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "Unmuteall voip conf member fail "

    aput-object v5, v4, v7

    const/4 v5, 0x1

    aput-object p1, v4, v5

    const/4 v5, 0x2

    const-string/jumbo v6, ","

    aput-object v6, v4, v5

    const/4 v5, 0x3

    aput-object p2, v4, v5

    .line 665
    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 664
    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1150
    invoke-static {p1, v7}, Lcoc;->a(Ljava/lang/String;I)I

    move-result v1

    .line 667
    .local v1, "errCode":I
    iget-object v2, p0, Lexl$7;->b:Lexl;

    invoke-static {v2}, Lexl;->e(Lexl;)Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$b;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 669
    iget-boolean v2, p0, Lexl$7;->a:Z

    if-eqz v2, :cond_1

    .line 670
    sget-object v0, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;->ACTION_MUTE_ALL:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;

    .line 674
    .local v0, "action":Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;
    :goto_0
    iget-object v2, p0, Lexl$7;->b:Lexl;

    invoke-static {v2}, Lexl;->e(Lexl;)Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$b;

    move-result-object v2

    invoke-interface {v2, v0, v1, p2}, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$b;->a(Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;ILjava/lang/String;)V

    .line 676
    .end local v0    # "action":Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;
    :cond_0
    return-void

    .line 672
    :cond_1
    sget-object v0, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;->ACTION_UNMUTE_ALL:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;

    .restart local v0    # "action":Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;
    goto :goto_0
.end method
