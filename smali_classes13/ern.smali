.class public final Lern;
.super Leqq;
.source "NewRetailSearchPresenter.java"

# interfaces
.implements Lerm$a;


# instance fields
.field m:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lerm$b;)V
    .locals 1
    .param p1, "activity"    # Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
    .param p2, "view"    # Lerm$b;

    .prologue
    .line 39
    invoke-direct {p0}, Leqq;-><init>()V

    .line 37
    const-string/jumbo v0, "0"

    iput-object v0, p0, Lern;->m:Ljava/lang/String;

    .line 40
    iput-object p1, p0, Lern;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    .line 41
    iput-object p2, p0, Lern;->b:Leqp$b;

    .line 42
    iget-object v0, p0, Lern;->b:Leqp$b;

    invoke-interface {v0, p0}, Leqp$b;->setPresenter(Lcjd;)V

    .line 43
    return-void
.end method

.method static synthetic a(Lern;Lcom/alibaba/android/search/model/idl/objects/NewRetailMemberObjectList;Ljava/lang/String;)V
    .locals 6
    .param p0, "x0"    # Lern;
    .param p1, "x1"    # Lcom/alibaba/android/search/model/idl/objects/NewRetailMemberObjectList;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 35
    .line 1125
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/alibaba/android/search/model/idl/objects/NewRetailMemberObjectList;->list:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/alibaba/android/search/model/idl/objects/NewRetailMemberObjectList;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 1126
    :cond_0
    iget-object v0, p0, Lern;->b:Leqp$b;

    iget-object v1, p0, Lern;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Leqp$b;->a(Ljava/util/List;)V

    .line 1127
    :goto_0
    return-void

    .line 1130
    :cond_1
    iget-object v0, p1, Lcom/alibaba/android/search/model/idl/objects/NewRetailMemberObjectList;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leps;

    .line 1131
    if-eqz v0, :cond_2

    .line 1134
    iget v2, p0, Lern;->h:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lern;->h:I

    .line 1135
    new-instance v2, Lcom/alibaba/android/search/model/NewRetailMemberModel;

    .line 2056
    new-instance v3, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    invoke-direct {v3}, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;-><init>()V

    .line 2057
    iget-wide v4, v0, Leps;->b:J

    iput-wide v4, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    .line 2058
    iget-object v4, v0, Leps;->c:Ljava/lang/String;

    iput-object v4, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->avatarMediaId:Ljava/lang/String;

    .line 2059
    iget-object v4, v0, Leps;->a:Ljava/lang/String;

    iput-object v4, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    .line 1135
    iget-object v4, v0, Leps;->d:Ljava/lang/String;

    iget-object v5, v0, Leps;->e:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v5}, Lcom/alibaba/android/search/model/NewRetailMemberModel;-><init>(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 1137
    iget-object v3, p0, Lern;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/alibaba/android/search/model/NewRetailMemberModel;->setKeyword(Ljava/lang/String;)V

    .line 1138
    iget-object v3, p0, Lern;->c:Leoe;

    if-eqz v3, :cond_3

    .line 1139
    iget-object v3, p0, Lern;->c:Leoe;

    .line 2084
    iget-object v3, v3, Leoe;->a:Ljava/lang/String;

    .line 1139
    invoke-virtual {v2, v3}, Lcom/alibaba/android/search/model/NewRetailMemberModel;->setLogUUID(Ljava/lang/String;)V

    .line 1140
    iget-object v3, p0, Lern;->c:Leoe;

    .line 2092
    iget v3, v3, Leoe;->b:I

    .line 1140
    invoke-virtual {v2, v3}, Lcom/alibaba/android/search/model/NewRetailMemberModel;->setLogEntry(I)V

    .line 1142
    :cond_3
    sget-object v3, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->NEW_RETAIL_MEMBER:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    invoke-virtual {v3}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alibaba/android/search/model/NewRetailMemberModel;->setLogSearchType(Ljava/lang/String;)V

    .line 1143
    iget-wide v4, v0, Leps;->b:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/alibaba/android/search/model/NewRetailMemberModel;->setLogValue(Ljava/lang/String;)V

    .line 1144
    iget-object v0, p0, Lern;->d:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1146
    :cond_4
    iget-object v0, p0, Lern;->b:Leqp$b;

    iget-object v1, p0, Lern;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Leqp$b;->a(Ljava/util/List;)V

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 60
    invoke-virtual {p0}, Lern;->p()Z

    move-result v0

    if-nez v0, :cond_0

    .line 61
    invoke-virtual {p0}, Lern;->o()V

    .line 121
    :goto_0
    return-void

    .line 65
    :cond_0
    new-instance v5, Lern$1;

    invoke-direct {v5, p0}, Lern$1;-><init>(Lern;)V

    .line 117
    .local v5, "apiEventListener":Lcma;
    iget-object v0, p0, Lern;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    if-eqz v0, :cond_1

    .line 118
    const-string/jumbo v0, "EVENTBUTLER"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    const-class v1, Lcma;

    iget-object v2, p0, Lern;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-interface {v0, v5, v1, v2}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "apiEventListener":Lcma;
    check-cast v5, Lcma;

    .line 120
    .restart local v5    # "apiEventListener":Lcma;
    :cond_1
    invoke-static {}, Lenc;->b()Lenb;

    move-result-object v0

    iget-object v1, p0, Lern;->c:Leoe;

    .line 1084
    iget-object v1, v1, Leoe;->a:Ljava/lang/String;

    .line 120
    iget-object v2, p0, Lern;->e:Ljava/lang/String;

    iget-object v3, p0, Lern;->m:Ljava/lang/String;

    const/16 v4, 0x64

    invoke-interface/range {v0 .. v5}, Lenb;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcma;)V

    goto :goto_0
.end method

.method public final d()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 47
    invoke-super {p0}, Leqq;->d()V

    .line 48
    const-string/jumbo v0, "0"

    iput-object v0, p0, Lern;->m:Ljava/lang/String;

    .line 49
    iget-object v0, p0, Lern;->b:Leqp$b;

    iget-object v1, p0, Lern;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Leqp$b;->a(Ljava/util/List;)V

    .line 50
    return-void
.end method

.method public final m()V
    .locals 1

    .prologue
    .line 54
    invoke-super {p0}, Leqq;->m()V

    .line 55
    const-string/jumbo v0, "0"

    iput-object v0, p0, Lern;->m:Ljava/lang/String;

    .line 56
    return-void
.end method
