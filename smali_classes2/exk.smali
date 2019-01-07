.class public Lexk;
.super Lexb;
.source "VideoApmtRecordPresenter.java"


# static fields
.field private static final p:Ljava/lang/String;


# instance fields
.field private q:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lexk;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lexk;->p:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lexa$b;)V
    .locals 2
    .param p1, "view"    # Lexa$b;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lexb;-><init>(Lexa$b;)V

    .line 47
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v0

    invoke-virtual {v0}, Lccr;->c()J

    move-result-wide v0

    iput-wide v0, p0, Lexk;->q:J

    .line 48
    return-void
.end method

.method static synthetic c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lexk;->p:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;)V
    .locals 4
    .param p1, "recordItem"    # Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 342
    const/4 v1, 0x0

    invoke-static {v1}, Lcms;->e(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 343
    sget v1, Leuj$l;->dt_conference_no_network_exp:I

    invoke-static {v1}, Lcms;->a(I)V

    .line 1407
    :cond_0
    :goto_0
    return-void

    .line 346
    :cond_1
    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;->e:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 349
    iget-object v1, p0, Lexk;->a:Lexa$b;

    if-eqz v1, :cond_2

    .line 350
    iget-object v1, p0, Lexk;->a:Lexa$b;

    invoke-interface {v1}, Lexa$b;->b()V

    .line 353
    :cond_2
    new-instance v0, Lcom/alibaba/android/teleconf/sdk/idl/model/UniVideoConferenceDeleteModel;

    invoke-direct {v0}, Lcom/alibaba/android/teleconf/sdk/idl/model/UniVideoConferenceDeleteModel;-><init>()V

    .line 354
    .local v0, "deleteModel":Lcom/alibaba/android/teleconf/sdk/idl/model/UniVideoConferenceDeleteModel;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/UniVideoConferenceDeleteModel;->conferenceIdList:Ljava/util/List;

    .line 355
    iget-object v1, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/UniVideoConferenceDeleteModel;->conferenceIdList:Ljava/util/List;

    iget-object v2, p1, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;->e:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 357
    new-instance v1, Lexk$5;

    invoke-direct {v1, p0, p1}, Lexk$5;-><init>(Lexk;Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;)V

    const-class v2, Leyo$d;

    iget-object v3, p0, Lexk;->b:Landroid/app/Activity;

    .line 358
    invoke-static {v1, v2, v3}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Leyo$d;

    .line 1406
    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/UniVideoConferenceDeleteModel;->conferenceIdList:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/UniVideoConferenceDeleteModel;->conferenceIdList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1409
    const-class v2, Lcom/alibaba/android/teleconf/sdk/idl/service/VideoConfMgrIService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/teleconf/sdk/idl/service/VideoConfMgrIService;

    .line 1410
    if-eqz v2, :cond_0

    .line 1411
    new-instance v3, Leyf$4;

    invoke-direct {v3, v1}, Leyf$4;-><init>(Leyo$d;)V

    invoke-interface {v2, v0, v3}, Lcom/alibaba/android/teleconf/sdk/idl/service/VideoConfMgrIService;->uniDeleteVideoConferenceRecord(Lcom/alibaba/android/teleconf/sdk/idl/model/UniVideoConferenceDeleteModel;Liyv;)V

    goto :goto_0
.end method

.method public final a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 332
    .local p1, "users":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 338
    :cond_0
    :goto_0
    return-void

    .line 335
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 336
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "conf_video_to_user_type"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 337
    iget-object v1, p0, Lexk;->b:Landroid/app/Activity;

    invoke-static {v1, p1, v0}, Lewb;->c(Landroid/content/Context;Ljava/util/List;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public final b(Z)V
    .locals 8
    .param p1, "isRefresh"    # Z

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 52
    const/4 v5, 0x0

    invoke-static {v5}, Lcms;->e(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 53
    sget v5, Leuj$l;->dt_conference_no_network_exp:I

    invoke-static {v5}, Lcms;->a(I)V

    .line 118
    :goto_0
    return-void

    .line 57
    :cond_0
    iget-object v5, p0, Lexk;->d:Ljava/util/List;

    if-nez v5, :cond_3

    .line 58
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lexk;->d:Ljava/util/List;

    .line 63
    :cond_1
    :goto_1
    const/4 v5, 0x0

    iput-boolean v5, p0, Lexk;->l:Z

    .line 64
    iget-object v5, p0, Lexk;->a:Lexa$b;

    invoke-interface {v5}, Lexa$b;->b()V

    .line 66
    const-wide/16 v0, 0x0

    .line 67
    .local v0, "deadlineTime":J
    if-nez p1, :cond_2

    iget-object v5, p0, Lexk;->d:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    .line 68
    iget-object v5, p0, Lexk;->d:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    .line 69
    .local v4, "size":I
    iget-object v5, p0, Lexk;->d:Ljava/util/List;

    add-int/lit8 v6, v4, -0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;

    .line 70
    .local v3, "recordItem":Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;
    iget-wide v0, v3, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;->n:J

    .line 72
    .end local v3    # "recordItem":Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;
    .end local v4    # "size":I
    :cond_2
    new-instance v2, Lcom/alibaba/android/teleconf/sdk/idl/model/UniVideoConferenceQueryModel;

    invoke-direct {v2}, Lcom/alibaba/android/teleconf/sdk/idl/model/UniVideoConferenceQueryModel;-><init>()V

    .line 73
    .local v2, "queryModel":Lcom/alibaba/android/teleconf/sdk/idl/model/UniVideoConferenceQueryModel;
    const/16 v5, 0xa

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, v2, Lcom/alibaba/android/teleconf/sdk/idl/model/UniVideoConferenceQueryModel;->count:Ljava/lang/Integer;

    .line 74
    sget-object v5, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtPullType;->RUNNING:Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtPullType;

    invoke-virtual {v5}, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtPullType;->ordinal()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, v2, Lcom/alibaba/android/teleconf/sdk/idl/model/UniVideoConferenceQueryModel;->type:Ljava/lang/Integer;

    .line 75
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iput-object v5, v2, Lcom/alibaba/android/teleconf/sdk/idl/model/UniVideoConferenceQueryModel;->recentTs:Ljava/lang/Long;

    .line 76
    new-instance v5, Lexk$1;

    invoke-direct {v5, p0}, Lexk$1;-><init>(Lexk;)V

    const-class v6, Leyo$d;

    iget-object v7, p0, Lexk;->b:Landroid/app/Activity;

    .line 77
    invoke-static {v5, v6, v7}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Leyo$d;

    .line 76
    invoke-static {v2, v5}, Leyf;->a(Lcom/alibaba/android/teleconf/sdk/idl/model/UniVideoConferenceQueryModel;Leyo$d;)V

    goto :goto_0

    .line 59
    .end local v0    # "deadlineTime":J
    .end local v2    # "queryModel":Lcom/alibaba/android/teleconf/sdk/idl/model/UniVideoConferenceQueryModel;
    :cond_3
    if-eqz p1, :cond_1

    .line 60
    iget-object v5, p0, Lexk;->d:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    goto :goto_1
.end method

.method public final c(Z)V
    .locals 8
    .param p1, "isRefresh"    # Z

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 122
    const/4 v5, 0x0

    invoke-static {v5}, Lcms;->e(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 123
    sget v5, Leuj$l;->dt_conference_no_network_exp:I

    invoke-static {v5}, Lcms;->a(I)V

    .line 187
    :goto_0
    return-void

    .line 127
    :cond_0
    iget-object v5, p0, Lexk;->e:Ljava/util/List;

    if-nez v5, :cond_3

    .line 128
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lexk;->e:Ljava/util/List;

    .line 133
    :cond_1
    :goto_1
    const/4 v5, 0x0

    iput-boolean v5, p0, Lexk;->m:Z

    .line 134
    iget-object v5, p0, Lexk;->a:Lexa$b;

    invoke-interface {v5}, Lexa$b;->b()V

    .line 136
    const-wide/16 v0, 0x0

    .line 137
    .local v0, "deadlineTime":J
    if-nez p1, :cond_2

    iget-object v5, p0, Lexk;->e:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    .line 138
    iget-object v5, p0, Lexk;->e:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    .line 139
    .local v4, "size":I
    iget-object v5, p0, Lexk;->e:Ljava/util/List;

    add-int/lit8 v6, v4, -0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;

    .line 140
    .local v3, "recordItem":Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;
    iget-wide v0, v3, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;->n:J

    .line 142
    .end local v3    # "recordItem":Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;
    .end local v4    # "size":I
    :cond_2
    new-instance v2, Lcom/alibaba/android/teleconf/sdk/idl/model/UniVideoConferenceQueryModel;

    invoke-direct {v2}, Lcom/alibaba/android/teleconf/sdk/idl/model/UniVideoConferenceQueryModel;-><init>()V

    .line 143
    .local v2, "queryModel":Lcom/alibaba/android/teleconf/sdk/idl/model/UniVideoConferenceQueryModel;
    const/16 v5, 0xa

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, v2, Lcom/alibaba/android/teleconf/sdk/idl/model/UniVideoConferenceQueryModel;->count:Ljava/lang/Integer;

    .line 144
    sget-object v5, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtPullType;->APPOINTMENT:Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtPullType;

    invoke-virtual {v5}, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtPullType;->ordinal()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, v2, Lcom/alibaba/android/teleconf/sdk/idl/model/UniVideoConferenceQueryModel;->type:Ljava/lang/Integer;

    .line 145
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iput-object v5, v2, Lcom/alibaba/android/teleconf/sdk/idl/model/UniVideoConferenceQueryModel;->recentTs:Ljava/lang/Long;

    .line 146
    new-instance v5, Lexk$2;

    invoke-direct {v5, p0}, Lexk$2;-><init>(Lexk;)V

    const-class v6, Leyo$d;

    iget-object v7, p0, Lexk;->b:Landroid/app/Activity;

    .line 147
    invoke-static {v5, v6, v7}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Leyo$d;

    .line 146
    invoke-static {v2, v5}, Leyf;->a(Lcom/alibaba/android/teleconf/sdk/idl/model/UniVideoConferenceQueryModel;Leyo$d;)V

    goto :goto_0

    .line 129
    .end local v0    # "deadlineTime":J
    .end local v2    # "queryModel":Lcom/alibaba/android/teleconf/sdk/idl/model/UniVideoConferenceQueryModel;
    :cond_3
    if-eqz p1, :cond_1

    .line 130
    iget-object v5, p0, Lexk;->e:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    goto :goto_1
.end method

.method public final d(Z)V
    .locals 8
    .param p1, "isRefresh"    # Z

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 191
    const/4 v5, 0x0

    invoke-static {v5}, Lcms;->e(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 192
    sget v5, Leuj$l;->dt_conference_no_network_exp:I

    invoke-static {v5}, Lcms;->a(I)V

    .line 258
    :goto_0
    return-void

    .line 196
    :cond_0
    iget-object v5, p0, Lexk;->g:Ljava/util/List;

    if-nez v5, :cond_3

    .line 197
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lexk;->g:Ljava/util/List;

    .line 202
    :cond_1
    :goto_1
    const/4 v5, 0x0

    iput-boolean v5, p0, Lexk;->o:Z

    .line 203
    iget-object v5, p0, Lexk;->a:Lexa$b;

    invoke-interface {v5}, Lexa$b;->b()V

    .line 205
    const-wide/16 v0, 0x0

    .line 206
    .local v0, "deadlineTime":J
    if-nez p1, :cond_2

    iget-object v5, p0, Lexk;->g:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    .line 207
    iget-object v5, p0, Lexk;->g:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    .line 208
    .local v4, "size":I
    iget-object v5, p0, Lexk;->g:Ljava/util/List;

    add-int/lit8 v6, v4, -0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;

    .line 209
    .local v3, "recordItem":Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;
    iget-wide v0, v3, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;->n:J

    .line 211
    .end local v3    # "recordItem":Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;
    .end local v4    # "size":I
    :cond_2
    new-instance v2, Lcom/alibaba/android/teleconf/sdk/idl/model/UniVideoConferenceQueryModel;

    invoke-direct {v2}, Lcom/alibaba/android/teleconf/sdk/idl/model/UniVideoConferenceQueryModel;-><init>()V

    .line 212
    .local v2, "queryModel":Lcom/alibaba/android/teleconf/sdk/idl/model/UniVideoConferenceQueryModel;
    const/16 v5, 0xa

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, v2, Lcom/alibaba/android/teleconf/sdk/idl/model/UniVideoConferenceQueryModel;->count:Ljava/lang/Integer;

    .line 213
    sget-object v5, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtPullType;->END:Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtPullType;

    invoke-virtual {v5}, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtPullType;->ordinal()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, v2, Lcom/alibaba/android/teleconf/sdk/idl/model/UniVideoConferenceQueryModel;->type:Ljava/lang/Integer;

    .line 214
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iput-object v5, v2, Lcom/alibaba/android/teleconf/sdk/idl/model/UniVideoConferenceQueryModel;->recentTs:Ljava/lang/Long;

    .line 215
    new-instance v5, Lexk$3;

    invoke-direct {v5, p0}, Lexk$3;-><init>(Lexk;)V

    const-class v6, Leyo$d;

    iget-object v7, p0, Lexk;->b:Landroid/app/Activity;

    .line 216
    invoke-static {v5, v6, v7}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Leyo$d;

    .line 215
    invoke-static {v2, v5}, Leyf;->a(Lcom/alibaba/android/teleconf/sdk/idl/model/UniVideoConferenceQueryModel;Leyo$d;)V

    goto :goto_0

    .line 198
    .end local v0    # "deadlineTime":J
    .end local v2    # "queryModel":Lcom/alibaba/android/teleconf/sdk/idl/model/UniVideoConferenceQueryModel;
    :cond_3
    if-eqz p1, :cond_1

    .line 199
    iget-object v5, p0, Lexk;->g:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    goto :goto_1
.end method

.method public final e(Z)V
    .locals 8
    .param p1, "isRefresh"    # Z

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 262
    const/4 v5, 0x0

    invoke-static {v5}, Lcms;->e(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 263
    sget v5, Leuj$l;->dt_conference_no_network_exp:I

    invoke-static {v5}, Lcms;->a(I)V

    .line 328
    :goto_0
    return-void

    .line 267
    :cond_0
    iget-object v5, p0, Lexk;->f:Ljava/util/List;

    if-nez v5, :cond_3

    .line 268
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lexk;->f:Ljava/util/List;

    .line 273
    :cond_1
    :goto_1
    const/4 v5, 0x0

    iput-boolean v5, p0, Lexk;->n:Z

    .line 274
    iget-object v5, p0, Lexk;->a:Lexa$b;

    invoke-interface {v5}, Lexa$b;->b()V

    .line 276
    const-wide/16 v0, 0x0

    .line 277
    .local v0, "deadlineTime":J
    if-nez p1, :cond_2

    iget-object v5, p0, Lexk;->f:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    .line 278
    iget-object v5, p0, Lexk;->f:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    .line 279
    .local v4, "size":I
    iget-object v5, p0, Lexk;->f:Ljava/util/List;

    add-int/lit8 v6, v4, -0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;

    .line 280
    .local v3, "recordItem":Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;
    iget-wide v0, v3, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;->n:J

    .line 282
    .end local v3    # "recordItem":Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;
    .end local v4    # "size":I
    :cond_2
    new-instance v2, Lcom/alibaba/android/teleconf/sdk/idl/model/UniVideoConferenceQueryModel;

    invoke-direct {v2}, Lcom/alibaba/android/teleconf/sdk/idl/model/UniVideoConferenceQueryModel;-><init>()V

    .line 283
    .local v2, "queryModel":Lcom/alibaba/android/teleconf/sdk/idl/model/UniVideoConferenceQueryModel;
    const/16 v5, 0xa

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, v2, Lcom/alibaba/android/teleconf/sdk/idl/model/UniVideoConferenceQueryModel;->count:Ljava/lang/Integer;

    .line 284
    sget-object v5, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtPullType;->CANCEL:Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtPullType;

    invoke-virtual {v5}, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtPullType;->ordinal()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, v2, Lcom/alibaba/android/teleconf/sdk/idl/model/UniVideoConferenceQueryModel;->type:Ljava/lang/Integer;

    .line 285
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iput-object v5, v2, Lcom/alibaba/android/teleconf/sdk/idl/model/UniVideoConferenceQueryModel;->recentTs:Ljava/lang/Long;

    .line 287
    new-instance v5, Lexk$4;

    invoke-direct {v5, p0}, Lexk$4;-><init>(Lexk;)V

    const-class v6, Leyo$d;

    iget-object v7, p0, Lexk;->b:Landroid/app/Activity;

    .line 288
    invoke-static {v5, v6, v7}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Leyo$d;

    .line 287
    invoke-static {v2, v5}, Leyf;->a(Lcom/alibaba/android/teleconf/sdk/idl/model/UniVideoConferenceQueryModel;Leyo$d;)V

    goto :goto_0

    .line 269
    .end local v0    # "deadlineTime":J
    .end local v2    # "queryModel":Lcom/alibaba/android/teleconf/sdk/idl/model/UniVideoConferenceQueryModel;
    :cond_3
    if-eqz p1, :cond_1

    .line 270
    iget-object v5, p0, Lexk;->f:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    goto :goto_1
.end method

.method public final g()V
    .locals 0

    .prologue
    .line 398
    return-void
.end method

.method public final h()V
    .locals 0

    .prologue
    .line 403
    return-void
.end method

.method public final i()V
    .locals 0

    .prologue
    .line 408
    return-void
.end method
