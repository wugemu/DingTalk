.class public final Lera;
.super Leqq;
.source "ExternalContactSearchPresenter.java"

# interfaces
.implements Leqz$a;


# instance fields
.field protected m:J

.field n:Z


# direct methods
.method private constructor <init>(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;JLeqz$b;)V
    .locals 2
    .param p1, "activity"    # Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
    .param p2, "orgId"    # J
    .param p4, "view"    # Leqz$b;

    .prologue
    .line 63
    invoke-direct {p0}, Leqq;-><init>()V

    .line 45
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lera;->m:J

    .line 64
    iput-object p1, p0, Lera;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    .line 65
    iput-object p4, p0, Lera;->b:Leqp$b;

    .line 66
    iput-wide p2, p0, Lera;->m:J

    .line 67
    iget-object v0, p0, Lera;->b:Leqp$b;

    invoke-interface {v0, p0}, Leqp$b;->setPresenter(Lcjd;)V

    .line 68
    return-void
.end method

.method public constructor <init>(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;JZLeqz$b;)V
    .locals 0
    .param p1, "activity"    # Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
    .param p2, "orgId"    # J
    .param p4, "exactly"    # Z
    .param p5, "view"    # Leqz$b;

    .prologue
    .line 71
    invoke-direct {p0, p1, p2, p3, p5}, Lera;-><init>(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;JLeqz$b;)V

    .line 72
    iput-boolean p4, p0, Lera;->n:Z

    .line 73
    return-void
.end method

.method public constructor <init>(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Leqz$b;)V
    .locals 2
    .param p1, "activity"    # Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
    .param p2, "view"    # Leqz$b;

    .prologue
    .line 57
    invoke-direct {p0}, Leqq;-><init>()V

    .line 45
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lera;->m:J

    .line 58
    iput-object p1, p0, Lera;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    .line 59
    iput-object p2, p0, Lera;->b:Leqp$b;

    .line 60
    iget-object v0, p0, Lera;->b:Leqp$b;

    invoke-interface {v0, p0}, Leqp$b;->setPresenter(Lcjd;)V

    .line 61
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/16 v7, 0x64

    .line 83
    invoke-virtual {p0}, Lera;->p()Z

    move-result v0

    if-nez v0, :cond_0

    .line 84
    invoke-virtual {p0}, Lera;->o()V

    .line 93
    :goto_0
    return-void

    .line 88
    :cond_0
    iget-wide v0, p0, Lera;->m:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 89
    iget-wide v0, p0, Lera;->m:J

    .line 1164
    iget-object v2, p0, Lera;->e:Ljava/lang/String;

    .line 1165
    new-instance v8, Lera$2;

    invoke-direct {v8, p0, v2}, Lera$2;-><init>(Lera;Ljava/lang/String;)V

    .line 1227
    iget-boolean v2, p0, Lera;->n:Z

    if-eqz v2, :cond_1

    .line 1228
    invoke-static {}, Lenc;->b()Lenb;

    move-result-object v1

    const-string/jumbo v2, "0"

    iget-object v3, p0, Lera;->e:Ljava/lang/String;

    iget-wide v4, p0, Lera;->m:J

    iget v6, p0, Lera;->g:I

    invoke-interface/range {v1 .. v8}, Lenb;->b(Ljava/lang/String;Ljava/lang/String;JIILcma;)V

    goto :goto_0

    .line 1230
    :cond_1
    invoke-static {}, Lenc;->b()Lenb;

    move-result-object v2

    .line 1236
    new-instance v3, Lcom/alibaba/android/dingtalk/userbase/model/ContactQueryObject;

    invoke-direct {v3}, Lcom/alibaba/android/dingtalk/userbase/model/ContactQueryObject;-><init>()V

    .line 1237
    iget-object v4, p0, Lera;->e:Ljava/lang/String;

    iput-object v4, v3, Lcom/alibaba/android/dingtalk/userbase/model/ContactQueryObject;->keyword:Ljava/lang/String;

    .line 1238
    iget v4, p0, Lera;->g:I

    iput v4, v3, Lcom/alibaba/android/dingtalk/userbase/model/ContactQueryObject;->offset:I

    .line 1239
    iput v7, v3, Lcom/alibaba/android/dingtalk/userbase/model/ContactQueryObject;->size:I

    .line 1240
    const/4 v4, 0x0

    iput v4, v3, Lcom/alibaba/android/dingtalk/userbase/model/ContactQueryObject;->scope:I

    .line 1241
    const/4 v4, 0x0

    iput-object v4, v3, Lcom/alibaba/android/dingtalk/userbase/model/ContactQueryObject;->followerStaffIds:Ljava/util/List;

    .line 1230
    invoke-interface {v2, v0, v1, v3, v8}, Lenb;->a(JLcom/alibaba/android/dingtalk/userbase/model/ContactQueryObject;Lcma;)V

    goto :goto_0

    .line 2097
    :cond_2
    iget-object v0, p0, Lera;->e:Ljava/lang/String;

    .line 2098
    new-instance v8, Lera$1;

    invoke-direct {v8, p0, v0}, Lera$1;-><init>(Lera;Ljava/lang/String;)V

    .line 2159
    invoke-static {}, Lenc;->b()Lenb;

    move-result-object v3

    iget-object v0, p0, Lera;->c:Leoe;

    .line 3084
    iget-object v4, v0, Leoe;->a:Ljava/lang/String;

    .line 2159
    iget-object v5, p0, Lera;->e:Ljava/lang/String;

    iget v6, p0, Lera;->g:I

    invoke-interface/range {v3 .. v8}, Lenb;->c(Ljava/lang/String;Ljava/lang/String;IILcma;)V

    goto :goto_0
.end method

.method public final a(Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;)V
    .locals 11
    .param p1, "orgNodeItemWrapperObject"    # Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const-wide/16 v8, 0x0

    .line 254
    if-eqz p1, :cond_0

    iget-object v3, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;->orgNodeItemObjectList:Ljava/util/List;

    if-eqz v3, :cond_0

    iget-object v3, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;->orgNodeItemObjectList:Ljava/util/List;

    .line 255
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_2

    .line 256
    :cond_0
    iget-object v3, p0, Lera;->b:Leqp$b;

    instance-of v3, v3, Leqz$b;

    if-eqz v3, :cond_1

    .line 257
    iget-object v3, p0, Lera;->b:Leqp$b;

    check-cast v3, Leqz$b;

    iget v6, p0, Lera;->i:I

    iget-object v7, p0, Lera;->d:Ljava/util/List;

    invoke-interface {v3, v6, v7}, Leqz$b;->a(ILjava/util/List;)V

    .line 299
    :cond_1
    :goto_0
    return-void

    .line 262
    :cond_2
    iget v3, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;->totalCount:I

    iput v3, p0, Lera;->i:I

    .line 4055
    sget-object v3, Leoc$a;->a:Leoc;

    .line 264
    iget v3, p0, Lera;->l:I

    invoke-static {v3}, Leoc;->d(I)Lcom/alibaba/android/search/model/BaseModel$ModelType;

    move-result-object v2

    .line 265
    .local v2, "type":Lcom/alibaba/android/search/model/BaseModel$ModelType;
    iget-object v3, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;->orgNodeItemObjectList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    .line 267
    .local v1, "node":Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;
    if-eqz v1, :cond_3

    .line 4318
    if-nez v1, :cond_5

    move-wide v4, v8

    .line 273
    .local v4, "uid":J
    :goto_2
    cmp-long v6, v4, v8

    if-lez v6, :cond_3

    .line 282
    iget v6, p0, Lera;->h:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lera;->h:I

    .line 5055
    sget-object v6, Leoc$a;->a:Leoc;

    .line 283
    iget-object v6, p0, Lera;->e:Ljava/lang/String;

    invoke-static {v2, v1, v6}, Leoc;->a(Lcom/alibaba/android/search/model/BaseModel$ModelType;Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;Ljava/lang/String;)Lcom/alibaba/android/search/model/BaseModel;

    move-result-object v0

    .line 284
    .local v0, "model":Lcom/alibaba/android/search/model/BaseModel;
    iget-object v6, p0, Lera;->c:Leoe;

    if-eqz v6, :cond_4

    .line 285
    iget-object v6, p0, Lera;->c:Leoe;

    .line 5084
    iget-object v6, v6, Leoe;->a:Ljava/lang/String;

    .line 285
    invoke-virtual {v0, v6}, Lcom/alibaba/android/search/model/BaseModel;->setLogUUID(Ljava/lang/String;)V

    .line 286
    iget-object v6, p0, Lera;->c:Leoe;

    .line 5092
    iget v6, v6, Leoe;->b:I

    .line 286
    invoke-virtual {v0, v6}, Lcom/alibaba/android/search/model/BaseModel;->setLogEntry(I)V

    .line 288
    :cond_4
    sget-object v6, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->EXTERNAL_CONTACT:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    invoke-virtual {v6}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/alibaba/android/search/model/BaseModel;->setLogSearchType(Ljava/lang/String;)V

    .line 289
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/alibaba/android/search/model/BaseModel;->setLogValue(Ljava/lang/String;)V

    .line 290
    iget v6, p0, Lera;->l:I

    invoke-virtual {v0, v6}, Lcom/alibaba/android/search/model/BaseModel;->setChooseMode(I)V

    .line 291
    iget-object v6, p0, Lera;->d:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 4322
    .end local v0    # "model":Lcom/alibaba/android/search/model/BaseModel;
    .end local v4    # "uid":J
    :cond_5
    iget-object v6, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    if-eqz v6, :cond_8

    .line 4323
    iget-object v6, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-wide v6, v6, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    .line 4326
    :goto_3
    cmp-long v10, v6, v8

    if-gtz v10, :cond_6

    iget-object v10, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->employeeObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    if-eqz v10, :cond_6

    .line 4327
    iget-object v6, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->employeeObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    iget-wide v6, v6, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->uid:J

    :cond_6
    move-wide v4, v6

    .line 4330
    goto :goto_2

    .line 294
    .end local v1    # "node":Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;
    :cond_7
    iget-object v3, p0, Lera;->b:Leqp$b;

    instance-of v3, v3, Leqz$b;

    if-eqz v3, :cond_1

    .line 295
    iget-object v3, p0, Lera;->b:Leqp$b;

    check-cast v3, Leqz$b;

    iget v6, p0, Lera;->i:I

    iget-object v7, p0, Lera;->d:Ljava/util/List;

    invoke-interface {v3, v6, v7}, Leqz$b;->a(ILjava/util/List;)V

    goto/16 :goto_0

    .restart local v1    # "node":Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;
    :cond_8
    move-wide v6, v8

    goto :goto_3
.end method

.method public final d()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 77
    invoke-super {p0}, Leqq;->d()V

    .line 78
    iget-object v0, p0, Lera;->b:Leqp$b;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Leqp$b;->a(Ljava/util/List;)V

    .line 79
    return-void
.end method

.method protected final o()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 352
    const/4 v0, 0x0

    iput-boolean v0, p0, Lera;->j:Z

    .line 353
    iget-object v0, p0, Lera;->b:Leqp$b;

    instance-of v0, v0, Leqz$b;

    if-eqz v0, :cond_0

    .line 354
    iget-object v0, p0, Lera;->b:Leqp$b;

    check-cast v0, Leqz$b;

    iget v1, p0, Lera;->i:I

    iget-object v2, p0, Lera;->d:Ljava/util/List;

    invoke-interface {v0, v1, v2}, Leqz$b;->a(ILjava/util/List;)V

    .line 355
    iget-object v0, p0, Lera;->b:Leqp$b;

    invoke-interface {v0}, Leqp$b;->H_()V

    .line 357
    :cond_0
    return-void
.end method
