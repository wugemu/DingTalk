.class final Lewk$d;
.super Ljava/lang/Object;
.source "TeleConfOperCenter.java"

# interfaces
.implements Leyo$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lewk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Leyo$e",
        "<",
        "Lcom/alibaba/android/teleconf/sdk/idl/model/ConfPullListModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lewk;


# direct methods
.method private constructor <init>(Lewk;)V
    .locals 0

    .prologue
    .line 545
    iput-object p1, p0, Lewk$d;->a:Lewk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lewk;B)V
    .locals 0
    .param p1, "x0"    # Lewk;

    .prologue
    .line 545
    invoke-direct {p0, p1}, Lewk$d;-><init>(Lewk;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 545
    check-cast p1, Lcom/alibaba/android/teleconf/sdk/idl/model/ConfPullListModel;

    .line 1549
    if-eqz p1, :cond_1

    iget-object v1, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/ConfPullListModel;->code:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/ConfPullListModel;->code:Ljava/lang/Integer;

    .line 1550
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_1

    :cond_0
    iget-object v1, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/ConfPullListModel;->status:Ljava/lang/Integer;

    .line 1551
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget v2, Levh;->c:I

    if-eq v1, v2, :cond_1

    iget-object v1, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/ConfPullListModel;->userList:Ljava/util/List;

    if-nez v1, :cond_3

    .line 1553
    :cond_1
    iget-object v0, p0, Lewk$d;->a:Lewk;

    invoke-static {v0}, Lewk;->c(Lewk;)Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    move-result-object v0

    sget v1, Leuj$l;->conf_txt_auto_terminated:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    .line 1554
    invoke-static {}, Levi;->p()Levi;

    move-result-object v0

    sget v1, Levh;->c:I

    invoke-virtual {v0, v1}, Levi;->a(I)V

    .line 1555
    iget-object v0, p0, Lewk$d;->a:Lewk;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lewk;->a(Lewk;Z)V

    .line 1556
    :cond_2
    :goto_0
    return-void

    .line 1559
    :cond_3
    iget-object v1, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/ConfPullListModel;->userList:Ljava/util/List;

    if-eqz v1, :cond_4

    .line 1560
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    .line 1561
    const-string/jumbo v2, "refresh members success,"

    invoke-virtual {v1, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1562
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "code "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/ConfPullListModel;->code:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1563
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "cause "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/ConfPullListModel;->cause:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1564
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "duration "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/ConfPullListModel;->duration:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1565
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "status "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/ConfPullListModel;->status:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1566
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "text "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/ConfPullListModel;->text:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1567
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "list size "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/ConfPullListModel;->userList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1569
    const-string/jumbo v2, "tele_conf"

    const-string/jumbo v3, "conference_call"

    invoke-virtual {v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3, v1}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1572
    :cond_4
    iget-object v1, p0, Lewk$d;->a:Lewk;

    invoke-static {v1}, Lewk;->b(Lewk;)Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;->b(Ljava/util/List;)V

    .line 1573
    iget-object v1, p0, Lewk$d;->a:Lewk;

    invoke-static {v1}, Lewk;->b(Lewk;)Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;

    move-result-object v1

    iput-boolean v0, v1, Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;->c:Z

    .line 1576
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move v1, v0

    .line 1577
    :goto_1
    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/ConfPullListModel;->userList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_6

    .line 1578
    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/ConfPullListModel;->userList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/teleconf/sdk/idl/model/ConfMemberInfoModel;

    .line 1579
    if-eqz v0, :cond_5

    .line 1580
    iget-object v0, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/ConfMemberInfoModel;->uid:Ljava/lang/Long;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1577
    :cond_5
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 1584
    :cond_6
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1585
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    new-instance v1, Lewk$d$1;

    invoke-direct {v1, p0, p1}, Lewk$d$1;-><init>(Lewk$d;Lcom/alibaba/android/teleconf/sdk/idl/model/ConfPullListModel;)V

    invoke-virtual {v0, v2, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/util/List;Lcma;)V

    goto/16 :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 711
    const-string/jumbo v0, "tele_conf"

    const-string/jumbo v1, "conference_call"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Refresh failed, code "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", reason "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 712
    return-void
.end method
