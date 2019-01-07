.class public final Lequ;
.super Leqq;
.source "DeptSearchPresenter.java"

# interfaces
.implements Leqt$a;


# instance fields
.field m:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Leqt$b;)V
    .locals 1
    .param p1, "activity"    # Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
    .param p2, "view"    # Leqt$b;

    .prologue
    .line 40
    invoke-direct {p0}, Leqq;-><init>()V

    .line 38
    const-string/jumbo v0, "0"

    iput-object v0, p0, Lequ;->m:Ljava/lang/String;

    .line 41
    iput-object p1, p0, Lequ;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    .line 42
    iput-object p2, p0, Lequ;->b:Leqp$b;

    .line 43
    iget-object v0, p0, Lequ;->b:Leqp$b;

    invoke-interface {v0, p0}, Leqp$b;->setPresenter(Lcjd;)V

    .line 44
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 61
    invoke-virtual {p0}, Lequ;->p()Z

    move-result v0

    if-nez v0, :cond_0

    .line 62
    invoke-virtual {p0}, Lequ;->o()V

    .line 124
    :goto_0
    return-void

    .line 66
    :cond_0
    new-instance v5, Lequ$1;

    invoke-direct {v5, p0}, Lequ$1;-><init>(Lequ;)V

    .line 123
    .local v5, "apiEventListener":Lcma;
    invoke-static {}, Lenc;->b()Lenb;

    move-result-object v0

    iget-object v1, p0, Lequ;->c:Leoe;

    .line 1084
    iget-object v1, v1, Leoe;->a:Ljava/lang/String;

    .line 123
    iget-object v2, p0, Lequ;->e:Ljava/lang/String;

    iget-object v3, p0, Lequ;->m:Ljava/lang/String;

    const/16 v4, 0x15

    invoke-interface/range {v0 .. v5}, Lenb;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcma;)V

    goto :goto_0
.end method

.method public final a(Lcom/alibaba/android/search/model/idl/objects/DeptSearchObjectList;Ljava/lang/String;)V
    .locals 6
    .param p1, "data"    # Lcom/alibaba/android/search/model/idl/objects/DeptSearchObjectList;
    .param p2, "keyword"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 128
    if-eqz p1, :cond_0

    iget-object v2, p1, Lcom/alibaba/android/search/model/idl/objects/DeptSearchObjectList;->deptList:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p1, Lcom/alibaba/android/search/model/idl/objects/DeptSearchObjectList;->deptList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_1

    .line 129
    :cond_0
    iget-object v2, p0, Lequ;->b:Leqp$b;

    iget-object v3, p0, Lequ;->d:Ljava/util/List;

    invoke-interface {v2, v3}, Leqp$b;->a(Ljava/util/List;)V

    .line 148
    :goto_0
    return-void

    .line 133
    :cond_1
    iget-object v2, p1, Lcom/alibaba/android/search/model/idl/objects/DeptSearchObjectList;->deptList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/search/model/idl/objects/DeptSearchObject;

    .line 134
    .local v0, "deptSearchObject":Lcom/alibaba/android/search/model/idl/objects/DeptSearchObject;
    if-eqz v0, :cond_2

    .line 137
    iget v3, p0, Lequ;->h:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lequ;->h:I

    .line 138
    new-instance v1, Lcom/alibaba/android/search/model/DeptModel;

    invoke-direct {v1, v0, p2}, Lcom/alibaba/android/search/model/DeptModel;-><init>(Lcom/alibaba/android/search/model/idl/objects/DeptSearchObject;Ljava/lang/String;)V

    .line 139
    .local v1, "model":Lcom/alibaba/android/search/model/BaseModel;
    iget-object v3, p0, Lequ;->c:Leoe;

    if-eqz v3, :cond_3

    .line 140
    iget-object v3, p0, Lequ;->c:Leoe;

    .line 2084
    iget-object v3, v3, Leoe;->a:Ljava/lang/String;

    .line 140
    invoke-virtual {v1, v3}, Lcom/alibaba/android/search/model/BaseModel;->setLogUUID(Ljava/lang/String;)V

    .line 141
    iget-object v3, p0, Lequ;->c:Leoe;

    .line 2092
    iget v3, v3, Leoe;->b:I

    .line 141
    invoke-virtual {v1, v3}, Lcom/alibaba/android/search/model/BaseModel;->setLogEntry(I)V

    .line 143
    :cond_3
    sget-object v3, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->DEPT:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    invoke-virtual {v3}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/alibaba/android/search/model/BaseModel;->setLogSearchType(Ljava/lang/String;)V

    .line 144
    iget-wide v4, v0, Lcom/alibaba/android/search/model/idl/objects/DeptSearchObject;->deptId:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/alibaba/android/search/model/BaseModel;->setLogValue(Ljava/lang/String;)V

    .line 145
    iget-object v3, p0, Lequ;->d:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 147
    .end local v0    # "deptSearchObject":Lcom/alibaba/android/search/model/idl/objects/DeptSearchObject;
    .end local v1    # "model":Lcom/alibaba/android/search/model/BaseModel;
    :cond_4
    iget-object v2, p0, Lequ;->b:Leqp$b;

    iget-object v3, p0, Lequ;->d:Ljava/util/List;

    invoke-interface {v2, v3}, Leqp$b;->a(Ljava/util/List;)V

    goto :goto_0
.end method

.method public final d()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 48
    invoke-super {p0}, Leqq;->d()V

    .line 49
    const-string/jumbo v0, "0"

    iput-object v0, p0, Lequ;->m:Ljava/lang/String;

    .line 50
    iget-object v0, p0, Lequ;->b:Leqp$b;

    iget-object v1, p0, Lequ;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Leqp$b;->a(Ljava/util/List;)V

    .line 51
    return-void
.end method

.method public final m()V
    .locals 1

    .prologue
    .line 55
    invoke-super {p0}, Leqq;->m()V

    .line 56
    const-string/jumbo v0, "0"

    iput-object v0, p0, Lequ;->m:Ljava/lang/String;

    .line 57
    return-void
.end method
