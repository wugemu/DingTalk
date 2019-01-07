.class final Lexh$1;
.super Ljava/lang/Object;
.source "ConfApmtDetailPresenter.java"

# interfaces
.implements Leyo$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexh;
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
        "Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceProfileModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lexh;


# direct methods
.method constructor <init>(Lexh;)V
    .locals 0
    .param p1, "this$0"    # Lexh;

    .prologue
    .line 78
    iput-object p1, p0, Lexh$1;->a:Lexh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/16 v1, 0xc8

    const-wide/16 v8, 0x0

    const/4 v7, 0x0

    .line 78
    check-cast p1, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceProfileModel;

    .line 1081
    if-nez p1, :cond_0

    .line 1092
    :goto_0
    return-void

    .line 1085
    :cond_0
    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceProfileModel;->code:Ljava/lang/Integer;

    if-eqz v0, :cond_6

    .line 1086
    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceProfileModel;->code:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1088
    :goto_1
    const-string/jumbo v2, "tele_conf"

    invoke-static {}, Lexh;->d()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "Get videoconf info success, code "

    aput-object v5, v4, v7

    const/4 v5, 0x1

    .line 1089
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1088
    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1090
    if-ne v1, v0, :cond_5

    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceProfileModel;->vConfDetailInfosModel:Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceDetailInfoModel;

    if-eqz v0, :cond_5

    .line 1091
    iget-object v1, p0, Lexh$1;->a:Lexh;

    iget-object v2, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceProfileModel;->vConfDetailInfosModel:Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceDetailInfoModel;

    .line 1283
    if-nez v2, :cond_2

    .line 1284
    const/4 v0, 0x0

    .line 1091
    :cond_1
    :goto_2
    invoke-static {v1, v0}, Lexh;->a(Lexh;Leuz;)Leuz;

    .line 1092
    iget-object v0, p0, Lexh$1;->a:Lexh;

    invoke-static {v0}, Lexh;->b(Lexh;)Lexg$b;

    move-result-object v0

    iget-object v1, p0, Lexh$1;->a:Lexh;

    invoke-static {v1}, Lexh;->a(Lexh;)Leuz;

    move-result-object v1

    invoke-interface {v0, v1}, Lexg$b;->a(Leuz;)V

    goto :goto_0

    .line 1286
    :cond_2
    new-instance v0, Leuz;

    invoke-direct {v0}, Leuz;-><init>()V

    .line 1287
    iget-object v3, v2, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceDetailInfoModel;->callerId:Ljava/lang/Long;

    .line 2044
    invoke-static {v3, v8, v9}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v4

    .line 1287
    iput-wide v4, v0, Leuz;->b:J

    .line 1288
    iget-object v3, v2, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceDetailInfoModel;->callerNick:Ljava/lang/String;

    iput-object v3, v0, Leuz;->c:Ljava/lang/String;

    .line 1289
    iget-object v3, v2, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceDetailInfoModel;->title:Ljava/lang/String;

    iput-object v3, v0, Leuz;->d:Ljava/lang/String;

    .line 1290
    iget-object v3, v2, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceDetailInfoModel;->startTime:Ljava/lang/Long;

    .line 3044
    invoke-static {v3, v8, v9}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v4

    .line 1290
    iput-wide v4, v0, Leuz;->e:J

    .line 1291
    iget-object v3, v2, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceDetailInfoModel;->predDuration:Ljava/lang/Long;

    .line 4044
    invoke-static {v3, v8, v9}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v4

    .line 1291
    iput-wide v4, v0, Leuz;->f:J

    .line 1292
    iget-object v3, v2, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceDetailInfoModel;->confDuration:Ljava/lang/Long;

    .line 5044
    invoke-static {v3, v8, v9}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v4

    .line 1292
    iput-wide v4, v0, Leuz;->g:J

    .line 1293
    iget-object v3, v2, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceDetailInfoModel;->apmtStatus:Ljava/lang/Integer;

    .line 6033
    invoke-static {v3, v7}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v3

    .line 1293
    iput v3, v0, Leuz;->h:I

    .line 1294
    iget-object v3, v2, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceDetailInfoModel;->conferenceId:Ljava/lang/String;

    iput-object v3, v0, Leuz;->i:Ljava/lang/String;

    .line 1295
    iget-object v3, v2, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceDetailInfoModel;->appointId:Ljava/lang/String;

    iput-object v3, v0, Leuz;->j:Ljava/lang/String;

    .line 1296
    iget-object v3, v2, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceDetailInfoModel;->confInProcessing:Ljava/lang/Boolean;

    .line 7022
    invoke-static {v3, v7}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v3

    .line 1296
    iput-boolean v3, v0, Leuz;->t:Z

    .line 1297
    iget-object v3, v2, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceDetailInfoModel;->memberJoinStatus:Ljava/lang/Integer;

    .line 7033
    invoke-static {v3, v7}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v3

    .line 1297
    iput v3, v0, Leuz;->u:I

    .line 1298
    iget-object v3, v2, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceDetailInfoModel;->memberJoinStatusDesc:Ljava/lang/String;

    iput-object v3, v0, Leuz;->v:Ljava/lang/String;

    .line 1299
    iget-object v3, v2, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceDetailInfoModel;->acceptCalleeIds:Ljava/util/List;

    if-eqz v3, :cond_3

    iget-object v3, v2, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceDetailInfoModel;->acceptCalleeIds:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 1300
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Leuz;->k:Ljava/util/List;

    .line 1301
    iget-object v3, v0, Leuz;->k:Ljava/util/List;

    iget-object v4, v2, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceDetailInfoModel;->acceptCalleeIds:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1303
    :cond_3
    iget-object v3, v2, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceDetailInfoModel;->rejectCalleeIds:Ljava/util/List;

    if-eqz v3, :cond_4

    iget-object v3, v2, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceDetailInfoModel;->rejectCalleeIds:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    .line 1304
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Leuz;->l:Ljava/util/List;

    .line 1305
    iget-object v3, v0, Leuz;->l:Ljava/util/List;

    iget-object v4, v2, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceDetailInfoModel;->rejectCalleeIds:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1307
    :cond_4
    iget-object v3, v2, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceDetailInfoModel;->unreadCalleeIds:Ljava/util/List;

    if-eqz v3, :cond_1

    iget-object v3, v2, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceDetailInfoModel;->unreadCalleeIds:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1308
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Leuz;->m:Ljava/util/List;

    .line 1309
    iget-object v3, v0, Leuz;->m:Ljava/util/List;

    iget-object v2, v2, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceDetailInfoModel;->unreadCalleeIds:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_2

    .line 1094
    :cond_5
    iget-object v0, p0, Lexh$1;->a:Lexh;

    invoke-static {v0}, Lexh;->b(Lexh;)Lexg$b;

    move-result-object v0

    iget-object v1, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceProfileModel;->code:Ljava/lang/Integer;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceProfileModel;->cause:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lexg$b;->a_(Ljava/lang/String;Ljava/lang/String;)V

    .line 1095
    iget-object v0, p0, Lexh$1;->a:Lexh;

    invoke-static {v0}, Lexh;->b(Lexh;)Lexg$b;

    move-result-object v0

    invoke-interface {v0}, Lexg$b;->a()V

    goto/16 :goto_0

    :cond_6
    move v0, v1

    goto/16 :goto_1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 5
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "cause"    # Ljava/lang/Throwable;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 101
    const-string/jumbo v0, "tele_conf"

    invoke-static {}, Lexh;->d()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "Get videoconf info failed, code "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, ", reason "

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p2, v2, v3

    .line 102
    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 101
    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lexh$1;->a:Lexh;

    invoke-static {v0}, Lexh;->b(Lexh;)Lexg$b;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lexg$b;->a_(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lexh$1;->a:Lexh;

    invoke-static {v0}, Lexh;->b(Lexh;)Lexg$b;

    move-result-object v0

    invoke-interface {v0}, Lexg$b;->a()V

    .line 105
    return-void
.end method
