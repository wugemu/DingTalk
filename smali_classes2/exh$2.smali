.class final Lexh$2;
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
        "Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfProfileModel;",
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
    .line 118
    iput-object p1, p0, Lexh$2;->a:Lexh;

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
    const-wide/16 v6, 0x0

    .line 118
    check-cast p1, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfProfileModel;

    .line 1129
    if-nez p1, :cond_0

    .line 1135
    :goto_0
    return-void

    .line 1132
    :cond_0
    const-string/jumbo v0, "tele_conf"

    invoke-static {}, Lexh;->d()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Get telconf info success, code "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfProfileModel;->code:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1133
    const/16 v0, 0xc8

    iget-object v1, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfProfileModel;->code:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v0, v1, :cond_5

    .line 1134
    iget-object v1, p0, Lexh$2;->a:Lexh;

    iget-object v2, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfProfileModel;->amptInfo:Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfInfoModel;

    .line 1254
    if-nez v2, :cond_2

    .line 1255
    const/4 v0, 0x0

    .line 1134
    :cond_1
    :goto_1
    invoke-static {v1, v0}, Lexh;->a(Lexh;Leuz;)Leuz;

    .line 1135
    iget-object v0, p0, Lexh$2;->a:Lexh;

    invoke-static {v0}, Lexh;->b(Lexh;)Lexg$b;

    move-result-object v0

    iget-object v1, p0, Lexh$2;->a:Lexh;

    invoke-static {v1}, Lexh;->a(Lexh;)Leuz;

    move-result-object v1

    invoke-interface {v0, v1}, Lexg$b;->a(Leuz;)V

    goto :goto_0

    .line 1257
    :cond_2
    new-instance v0, Leuz;

    invoke-direct {v0}, Leuz;-><init>()V

    .line 1258
    iget-object v3, v2, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfInfoModel;->callerId:Ljava/lang/Long;

    .line 2044
    invoke-static {v3, v6, v7}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v4

    .line 1258
    iput-wide v4, v0, Leuz;->b:J

    .line 1259
    iget-object v3, v2, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfInfoModel;->callerNick:Ljava/lang/String;

    iput-object v3, v0, Leuz;->c:Ljava/lang/String;

    .line 1260
    iget-object v3, v2, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfInfoModel;->title:Ljava/lang/String;

    iput-object v3, v0, Leuz;->d:Ljava/lang/String;

    .line 1261
    iget-object v3, v2, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfInfoModel;->startTime:Ljava/lang/Long;

    .line 3044
    invoke-static {v3, v6, v7}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v4

    .line 1261
    iput-wide v4, v0, Leuz;->e:J

    .line 1262
    iget-object v3, v2, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfInfoModel;->predDuration:Ljava/lang/Long;

    .line 4044
    invoke-static {v3, v6, v7}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v4

    .line 1262
    iput-wide v4, v0, Leuz;->f:J

    .line 1263
    iget-object v3, v2, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfInfoModel;->confDuration:Ljava/lang/Long;

    .line 5044
    invoke-static {v3, v6, v7}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v4

    .line 1263
    iput-wide v4, v0, Leuz;->g:J

    .line 1264
    iget-object v3, v2, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfInfoModel;->apmtStatus:Ljava/lang/Integer;

    .line 6033
    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v3

    .line 1264
    iput v3, v0, Leuz;->h:I

    .line 1265
    iget-object v3, v2, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfInfoModel;->conferenceId:Ljava/lang/Long;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Leuz;->i:Ljava/lang/String;

    .line 1266
    iget-object v3, v2, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfInfoModel;->appointId:Ljava/lang/String;

    iput-object v3, v0, Leuz;->j:Ljava/lang/String;

    .line 1267
    iget-object v3, v2, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfInfoModel;->acceptCalleeIds:Ljava/util/List;

    if-eqz v3, :cond_3

    iget-object v3, v2, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfInfoModel;->acceptCalleeIds:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 1268
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Leuz;->k:Ljava/util/List;

    .line 1269
    iget-object v3, v0, Leuz;->k:Ljava/util/List;

    iget-object v4, v2, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfInfoModel;->acceptCalleeIds:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1271
    :cond_3
    iget-object v3, v2, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfInfoModel;->rejectCalleeIds:Ljava/util/List;

    if-eqz v3, :cond_4

    iget-object v3, v2, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfInfoModel;->rejectCalleeIds:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    .line 1272
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Leuz;->l:Ljava/util/List;

    .line 1273
    iget-object v3, v0, Leuz;->l:Ljava/util/List;

    iget-object v4, v2, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfInfoModel;->rejectCalleeIds:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1275
    :cond_4
    iget-object v3, v2, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfInfoModel;->unreadCalleeIds:Ljava/util/List;

    if-eqz v3, :cond_1

    iget-object v3, v2, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfInfoModel;->unreadCalleeIds:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1276
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Leuz;->m:Ljava/util/List;

    .line 1277
    iget-object v3, v0, Leuz;->m:Ljava/util/List;

    iget-object v2, v2, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfInfoModel;->unreadCalleeIds:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_1

    .line 1137
    :cond_5
    iget-object v0, p0, Lexh$2;->a:Lexh;

    invoke-static {v0}, Lexh;->b(Lexh;)Lexg$b;

    move-result-object v0

    iget-object v1, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfProfileModel;->code:Ljava/lang/Integer;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfProfileModel;->cause:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lexg$b;->a_(Ljava/lang/String;Ljava/lang/String;)V

    .line 1138
    iget-object v0, p0, Lexh$2;->a:Lexh;

    invoke-static {v0}, Lexh;->b(Lexh;)Lexg$b;

    move-result-object v0

    invoke-interface {v0}, Lexg$b;->a()V

    goto/16 :goto_0
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
    .line 121
    const-string/jumbo v0, "tele_conf"

    invoke-static {}, Lexh;->d()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "Get telconf info failed, code "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, ", reason "

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p2, v2, v3

    .line 122
    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 121
    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lexh$2;->a:Lexh;

    invoke-static {v0}, Lexh;->b(Lexh;)Lexg$b;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lexg$b;->a_(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    iget-object v0, p0, Lexh$2;->a:Lexh;

    invoke-static {v0}, Lexh;->b(Lexh;)Lexg$b;

    move-result-object v0

    invoke-interface {v0}, Lexg$b;->a()V

    .line 125
    return-void
.end method
