.class final Lexe$1;
.super Ljava/lang/Object;
.source "CallApmtControlPresenter.java"

# interfaces
.implements Leyo$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexe;->a(Levb;)V
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
        "Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfProfileModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lexe;


# direct methods
.method constructor <init>(Lexe;)V
    .locals 0
    .param p1, "this$0"    # Lexe;

    .prologue
    .line 74
    iput-object p1, p0, Lexe$1;->a:Lexe;

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
    const/4 v0, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    .line 74
    check-cast p1, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfProfileModel;

    .line 1086
    if-nez p1, :cond_1

    .line 1087
    :cond_0
    :goto_0
    return-void

    .line 1089
    :cond_1
    const-string/jumbo v1, "tele_conf"

    invoke-static {}, Lexe;->b()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Load conf success, code "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfProfileModel;->code:Ljava/lang/Integer;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1091
    const/16 v1, 0xc8

    iget-object v2, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfProfileModel;->code:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v1, v2, :cond_7

    .line 2073
    if-eqz p1, :cond_6

    .line 2074
    new-instance v0, Leuz;

    invoke-direct {v0}, Leuz;-><init>()V

    .line 2075
    sget-object v1, Lcom/alibaba/android/teleconf/data/ApmtBaseObject$ApmtConfType;->APMT_CALL:Lcom/alibaba/android/teleconf/data/ApmtBaseObject$ApmtConfType;

    iput-object v1, v0, Leuz;->a:Lcom/alibaba/android/teleconf/data/ApmtBaseObject$ApmtConfType;

    .line 2076
    iget-object v1, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfProfileModel;->amptInfo:Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfInfoModel;

    if-eqz v1, :cond_6

    .line 2077
    iget-object v1, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfProfileModel;->amptInfo:Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfInfoModel;

    iget-object v1, v1, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfInfoModel;->callerId:Ljava/lang/Long;

    .line 3044
    invoke-static {v1, v6, v7}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 2077
    iput-wide v2, v0, Leuz;->b:J

    .line 2078
    iget-object v1, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfProfileModel;->amptInfo:Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfInfoModel;

    iget-object v1, v1, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfInfoModel;->callerNick:Ljava/lang/String;

    iput-object v1, v0, Leuz;->c:Ljava/lang/String;

    .line 2079
    iget-object v1, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfProfileModel;->amptInfo:Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfInfoModel;

    iget-object v1, v1, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfInfoModel;->title:Ljava/lang/String;

    iput-object v1, v0, Leuz;->d:Ljava/lang/String;

    .line 2080
    iget-object v1, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfProfileModel;->amptInfo:Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfInfoModel;

    iget-object v1, v1, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfInfoModel;->startTime:Ljava/lang/Long;

    .line 4044
    invoke-static {v1, v6, v7}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 2080
    iput-wide v2, v0, Leuz;->e:J

    .line 2081
    iget-object v1, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfProfileModel;->amptInfo:Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfInfoModel;

    iget-object v1, v1, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfInfoModel;->predDuration:Ljava/lang/Long;

    .line 5044
    invoke-static {v1, v6, v7}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 2081
    iput-wide v2, v0, Leuz;->f:J

    .line 2082
    iget-object v1, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfProfileModel;->amptInfo:Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfInfoModel;

    iget-object v1, v1, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfInfoModel;->confDuration:Ljava/lang/Long;

    .line 6044
    invoke-static {v1, v6, v7}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 2082
    iput-wide v2, v0, Leuz;->g:J

    .line 2083
    iget-object v1, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfProfileModel;->amptInfo:Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfInfoModel;

    iget-object v1, v1, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfInfoModel;->apmtStatus:Ljava/lang/Integer;

    .line 7033
    invoke-static {v1, v5}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v1

    .line 2083
    iput v1, v0, Leuz;->h:I

    .line 2084
    iget-object v1, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfProfileModel;->amptInfo:Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfInfoModel;

    iget-object v1, v1, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfInfoModel;->conferenceId:Ljava/lang/Long;

    .line 7044
    invoke-static {v1, v6, v7}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 2084
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Leuz;->i:Ljava/lang/String;

    .line 2085
    iget-object v1, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfProfileModel;->amptInfo:Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfInfoModel;

    iget-object v1, v1, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfInfoModel;->appointId:Ljava/lang/String;

    iput-object v1, v0, Leuz;->j:Ljava/lang/String;

    .line 2086
    iget-object v1, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfProfileModel;->amptInfo:Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfInfoModel;

    iget-object v1, v1, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfInfoModel;->operateTime:Ljava/lang/Long;

    .line 8044
    invoke-static {v1, v6, v7}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 2086
    iput-wide v2, v0, Leuz;->p:J

    .line 2087
    iget-object v1, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfProfileModel;->amptInfo:Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfInfoModel;

    iget-object v1, v1, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfInfoModel;->enableDing:Ljava/lang/Boolean;

    .line 9022
    invoke-static {v1, v5}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v1

    .line 2087
    iput-boolean v1, v0, Leuz;->q:Z

    .line 2088
    iget-object v1, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfProfileModel;->amptInfo:Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfInfoModel;

    iget-object v1, v1, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfInfoModel;->calleeIds:Ljava/lang/String;

    iput-object v1, v0, Leuz;->r:Ljava/lang/String;

    .line 2089
    iget-object v1, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfProfileModel;->amptInfo:Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfInfoModel;

    iget-object v1, v1, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfInfoModel;->calleeNicks:Ljava/lang/String;

    iput-object v1, v0, Leuz;->s:Ljava/lang/String;

    .line 2090
    iget-object v1, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfProfileModel;->amptInfo:Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfInfoModel;

    iget-object v1, v1, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfInfoModel;->acceptCalleeIds:Ljava/util/List;

    if-eqz v1, :cond_2

    iget-object v1, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfProfileModel;->amptInfo:Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfInfoModel;

    iget-object v1, v1, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfInfoModel;->acceptCalleeIds:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 2091
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Leuz;->k:Ljava/util/List;

    .line 2092
    iget-object v1, v0, Leuz;->k:Ljava/util/List;

    iget-object v2, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfProfileModel;->amptInfo:Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfInfoModel;

    iget-object v2, v2, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfInfoModel;->acceptCalleeIds:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2094
    :cond_2
    iget-object v1, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfProfileModel;->amptInfo:Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfInfoModel;

    iget-object v1, v1, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfInfoModel;->rejectCalleeIds:Ljava/util/List;

    if-eqz v1, :cond_3

    iget-object v1, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfProfileModel;->amptInfo:Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfInfoModel;

    iget-object v1, v1, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfInfoModel;->rejectCalleeIds:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 2095
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Leuz;->l:Ljava/util/List;

    .line 2096
    iget-object v1, v0, Leuz;->l:Ljava/util/List;

    iget-object v2, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfProfileModel;->amptInfo:Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfInfoModel;

    iget-object v2, v2, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfInfoModel;->rejectCalleeIds:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2098
    :cond_3
    iget-object v1, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfProfileModel;->amptInfo:Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfInfoModel;

    iget-object v1, v1, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfInfoModel;->unreadCalleeIds:Ljava/util/List;

    if-eqz v1, :cond_4

    iget-object v1, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfProfileModel;->amptInfo:Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfInfoModel;

    iget-object v1, v1, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfInfoModel;->unreadCalleeIds:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 2099
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Leuz;->m:Ljava/util/List;

    .line 2100
    iget-object v1, v0, Leuz;->m:Ljava/util/List;

    iget-object v2, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfProfileModel;->amptInfo:Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfInfoModel;

    iget-object v2, v2, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfInfoModel;->unreadCalleeIds:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2102
    :cond_4
    iget-object v1, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfProfileModel;->amptInfo:Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfInfoModel;

    iget-object v1, v1, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfInfoModel;->talkingCalleeIds:Ljava/util/List;

    if-eqz v1, :cond_5

    iget-object v1, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfProfileModel;->amptInfo:Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfInfoModel;

    iget-object v1, v1, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfInfoModel;->talkingCalleeIds:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    .line 2103
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Leuz;->n:Ljava/util/List;

    .line 2104
    iget-object v1, v0, Leuz;->n:Ljava/util/List;

    iget-object v2, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfProfileModel;->amptInfo:Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfInfoModel;

    iget-object v2, v2, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfInfoModel;->talkingCalleeIds:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2106
    :cond_5
    iget-object v1, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfProfileModel;->amptInfo:Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfInfoModel;

    iget-object v1, v1, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfInfoModel;->newjoinCalleeIds:Ljava/util/List;

    if-eqz v1, :cond_6

    iget-object v1, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfProfileModel;->amptInfo:Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfInfoModel;

    iget-object v1, v1, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfInfoModel;->newjoinCalleeIds:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    .line 2107
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Leuz;->o:Ljava/util/List;

    .line 2108
    iget-object v1, v0, Leuz;->o:Ljava/util/List;

    iget-object v2, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfProfileModel;->amptInfo:Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfInfoModel;

    iget-object v2, v2, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfInfoModel;->newjoinCalleeIds:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1099
    :cond_6
    :goto_1
    iget-object v1, p0, Lexe$1;->a:Lexe;

    iget-object v1, v1, Lexe;->a:Lexf$b;

    if-eqz v1, :cond_0

    .line 1100
    iget-object v1, p0, Lexe$1;->a:Lexe;

    iget-object v1, v1, Lexe;->a:Lexf$b;

    invoke-interface {v1, v0}, Lexf$b;->a(Leuz;)V

    goto/16 :goto_0

    .line 1094
    :cond_7
    iget-object v1, p0, Lexe$1;->a:Lexe;

    iget-object v1, v1, Lexe;->a:Lexf$b;

    if-eqz v1, :cond_6

    .line 1095
    iget-object v1, p0, Lexe$1;->a:Lexe;

    iget-object v1, v1, Lexe;->a:Lexf$b;

    iget-object v2, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfProfileModel;->code:Ljava/lang/Integer;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfProfileModel;->cause:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lexf$b;->a_(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "cause"    # Ljava/lang/Throwable;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 77
    const-string/jumbo v0, "tele_conf"

    invoke-static {}, Lexe;->b()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Load conf failed, code "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", reason"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lexe$1;->a:Lexe;

    iget-object v0, v0, Lexe;->a:Lexf$b;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lexe$1;->a:Lexe;

    iget-object v0, v0, Lexe;->a:Lexf$b;

    invoke-interface {v0, p1, p2}, Lexf$b;->a_(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lexe$1;->a:Lexe;

    iget-object v0, v0, Lexe;->a:Lexf$b;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lexf$b;->a(Leuz;)V

    .line 82
    :cond_0
    return-void
.end method
