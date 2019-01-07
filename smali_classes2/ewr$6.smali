.class final Lewr$6;
.super Ljava/lang/Object;
.source "TeleConfVoipHelper.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lewr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Liee;

.field final synthetic b:J

.field final synthetic c:Lcom/alibaba/wukong/openav/internal/channel/model/ConfVoipInfoModel;


# direct methods
.method constructor <init>(Liee;JLcom/alibaba/wukong/openav/internal/channel/model/ConfVoipInfoModel;)V
    .locals 0

    .prologue
    .line 585
    iput-object p1, p0, Lewr$6;->a:Liee;

    iput-wide p2, p0, Lewr$6;->b:J

    iput-object p4, p0, Lewr$6;->c:Lcom/alibaba/wukong/openav/internal/channel/model/ConfVoipInfoModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 585
    check-cast p1, Ljava/util/List;

    .line 1588
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1589
    :cond_0
    const-string/jumbo v0, "tele_conf"

    invoke-static {}, Lewr;->h()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Get user profile null"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1590
    iget-object v0, p0, Lewr$6;->a:Liee;

    invoke-interface {v0}, Liee;->c()I

    .line 1591
    :goto_0
    return-void

    .line 1593
    :cond_1
    const-string/jumbo v0, "tele_conf"

    invoke-static {}, Lewr;->h()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "Goto voip-conf by profile"

    invoke-static {v0, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1597
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1598
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, v1

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 1599
    if-eqz v0, :cond_2

    .line 1602
    iget-wide v6, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    iget-wide v8, p0, Lewr$6;->b:J

    cmp-long v5, v6, v8

    if-nez v5, :cond_3

    .line 1603
    invoke-static {v0}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->getUserIdentityObject(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v2

    .line 1607
    :goto_2
    iget-wide v6, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    iget-object v5, p0, Lewr$6;->c:Lcom/alibaba/wukong/openav/internal/channel/model/ConfVoipInfoModel;

    iget-object v5, v5, Lcom/alibaba/wukong/openav/internal/channel/model/ConfVoipInfoModel;->hostUid:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    cmp-long v5, v6, v8

    if-nez v5, :cond_5

    .line 1608
    invoke-static {v0}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->getUserIdentityObject(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v0

    :goto_3
    move-object v1, v0

    .line 1611
    goto :goto_1

    .line 1605
    :cond_3
    invoke-static {v0}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->getUserIdentityObject(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1612
    :cond_4
    invoke-static {}, Levn;->p()Levn;

    move-result-object v0

    iget-object v4, p0, Lewr$6;->c:Lcom/alibaba/wukong/openav/internal/channel/model/ConfVoipInfoModel;

    iget-object v4, v4, Lcom/alibaba/wukong/openav/internal/channel/model/ConfVoipInfoModel;->conferenceId:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Levn;->b(J)V

    .line 1613
    invoke-static {}, Levn;->p()Levn;

    move-result-object v0

    iget-wide v4, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-virtual {v0, v4, v5}, Levn;->c(J)V

    .line 1614
    invoke-static {}, Levn;->p()Levn;

    move-result-object v0

    iget-wide v4, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-virtual {v0, v4, v5}, Levn;->d(J)V

    .line 1615
    invoke-static {}, Levn;->p()Levn;

    move-result-object v0

    iget-object v4, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->nick:Ljava/lang/String;

    invoke-virtual {v0, v4}, Levn;->b(Ljava/lang/String;)V

    .line 1616
    invoke-static {}, Levn;->p()Levn;

    move-result-object v0

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mediaId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Levn;->c(Ljava/lang/String;)V

    .line 1617
    invoke-static {}, Levn;->p()Levn;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Levn;->b(I)V

    .line 1618
    invoke-static {}, Levn;->p()Levn;

    move-result-object v0

    iget-wide v4, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    .line 2069
    iput-wide v4, v0, Levn;->r:J

    .line 1619
    invoke-static {}, Levn;->p()Levn;

    move-result-object v0

    iget-object v1, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->nick:Ljava/lang/String;

    .line 2077
    iput-object v1, v0, Levn;->s:Ljava/lang/String;

    .line 1620
    invoke-static {}, Levn;->p()Levn;

    move-result-object v0

    const/4 v1, 0x0

    .line 2085
    iput-boolean v1, v0, Levn;->t:Z

    .line 1622
    iget-object v0, p0, Lewr$6;->c:Lcom/alibaba/wukong/openav/internal/channel/model/ConfVoipInfoModel;

    iget-object v0, v0, Lcom/alibaba/wukong/openav/internal/channel/model/ConfVoipInfoModel;->calleeCount:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0, v2, v3}, Lewb;->a(ILcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;Ljava/util/List;)V

    goto/16 :goto_0

    :cond_5
    move-object v0, v1

    goto :goto_3
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 632
    const-string/jumbo v0, "tele_conf"

    invoke-static {}, Lewr;->h()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onException : ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 634
    iget-object v0, p0, Lewr$6;->a:Liee;

    invoke-interface {v0}, Liee;->c()I

    .line 635
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 628
    return-void
.end method
