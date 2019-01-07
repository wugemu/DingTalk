.class final Lexl$5;
.super Ljava/lang/Object;
.source "VoipConfPresenter.java"

# interfaces
.implements Leyo$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexl;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)V
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
.field final synthetic a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

.field final synthetic b:Lexl;


# direct methods
.method constructor <init>(Lexl;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)V
    .locals 0
    .param p1, "this$0"    # Lexl;

    .prologue
    .line 537
    iput-object p1, p0, Lexl$5;->b:Lexl;

    iput-object p2, p0, Lexl$5;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v4, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 537
    check-cast p1, Lcom/alibaba/android/teleconf/sdk/idl/model/ConfOperationModel;

    .line 1540
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/ConfOperationModel;->code:Ljava/lang/Integer;

    if-eqz v0, :cond_4

    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/ConfOperationModel;->code:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_4

    .line 1541
    :cond_0
    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/ConfOperationModel;->code:Ljava/lang/Integer;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/ConfOperationModel;->code:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move v1, v0

    .line 1542
    :goto_0
    const/4 v0, 0x0

    .line 1543
    if-eqz p1, :cond_1

    .line 1544
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v2, "errCode "

    aput-object v2, v0, v6

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v7

    const-string/jumbo v2, ", errMsg "

    aput-object v2, v0, v4

    const/4 v2, 0x3

    iget-object v3, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/ConfOperationModel;->cause:Ljava/lang/String;

    aput-object v3, v0, v2

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1546
    :cond_1
    const-string/jumbo v2, "tele_conf"

    invoke-static {}, Lexl;->t()Ljava/lang/String;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "Add voip conf member "

    aput-object v5, v4, v6

    aput-object v0, v4, v7

    .line 1547
    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1546
    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1549
    iget-object v2, p0, Lexl$5;->b:Lexl;

    invoke-static {v2}, Lexl;->e(Lexl;)Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$b;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1550
    iget-object v2, p0, Lexl$5;->b:Lexl;

    invoke-static {v2}, Lexl;->e(Lexl;)Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$b;

    move-result-object v2

    sget-object v3, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;->ACTION_ADD_MEM:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;

    invoke-interface {v2, v3, v1, v0}, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$b;->a(Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;ILjava/lang/String;)V

    .line 1552
    :cond_2
    :goto_1
    return-void

    .line 1541
    :cond_3
    const/4 v0, -0x1

    move v1, v0

    goto :goto_0

    .line 1554
    :cond_4
    iget-object v0, p0, Lexl$5;->b:Lexl;

    invoke-static {v0}, Lexl;->f(Lexl;)Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lexl$5;->b:Lexl;

    invoke-static {v0}, Lexl;->f(Lexl;)Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;

    move-result-object v0

    iget-object v0, v0, Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;->calleeIds:Ljava/util/List;

    if-eqz v0, :cond_6

    .line 1555
    iget-object v0, p0, Lexl$5;->b:Lexl;

    invoke-static {v0}, Lexl;->f(Lexl;)Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;

    move-result-object v0

    iget-object v0, v0, Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;->calleeIds:Ljava/util/List;

    iget-object v1, p0, Lexl$5;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-wide v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1556
    iget-object v0, p0, Lexl$5;->b:Lexl;

    invoke-static {v0}, Lexl;->f(Lexl;)Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;

    move-result-object v0

    iget-object v0, v0, Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;->calleeIds:Ljava/util/List;

    iget-object v1, p0, Lexl$5;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-wide v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1559
    :cond_5
    invoke-static {}, Levn;->p()Levn;

    move-result-object v0

    iget-object v1, p0, Lexl$5;->b:Lexl;

    invoke-static {v1}, Lexl;->f(Lexl;)Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;

    move-result-object v1

    iget-object v1, v1, Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;->calleeIds:Ljava/util/List;

    invoke-virtual {v0, v1}, Levn;->a(Ljava/util/List;)V

    .line 1561
    :cond_6
    iget-object v0, p0, Lexl$5;->b:Lexl;

    invoke-static {v0}, Lexl;->e(Lexl;)Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$b;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1562
    iget-object v0, p0, Lexl$5;->b:Lexl;

    invoke-static {v0}, Lexl;->e(Lexl;)Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$b;

    move-result-object v0

    sget-object v1, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;->ACTION_ADD_MEM:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;

    iget-object v2, p0, Lexl$5;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    invoke-interface {v0, v1, v2}, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$b;->a(Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 7
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "cause"    # Ljava/lang/Throwable;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 568
    const-string/jumbo v1, "tele_conf"

    invoke-static {}, Lexl;->t()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "Add voip conf member fail "

    aput-object v4, v3, v6

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    const-string/jumbo v5, ","

    aput-object v5, v3, v4

    const/4 v4, 0x3

    aput-object p2, v3, v4

    .line 569
    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 568
    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1150
    invoke-static {p1, v6}, Lcoc;->a(Ljava/lang/String;I)I

    move-result v0

    .line 571
    .local v0, "errCode":I
    iget-object v1, p0, Lexl$5;->b:Lexl;

    invoke-static {v1}, Lexl;->e(Lexl;)Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$b;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 572
    iget-object v1, p0, Lexl$5;->b:Lexl;

    invoke-static {v1}, Lexl;->e(Lexl;)Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$b;

    move-result-object v1

    sget-object v2, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;->ACTION_ADD_MEM:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;

    invoke-interface {v1, v2, v0, p2}, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$b;->a(Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;ILjava/lang/String;)V

    .line 574
    :cond_0
    return-void
.end method
