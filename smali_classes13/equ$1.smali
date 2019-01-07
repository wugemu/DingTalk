.class final Lequ$1;
.super Ljava/lang/Object;
.source "DeptSearchPresenter.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lequ;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Lcom/alibaba/android/search/model/idl/objects/DeptSearchObjectList;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lequ;


# direct methods
.method constructor <init>(Lequ;)V
    .locals 0
    .param p1, "this$0"    # Lequ;

    .prologue
    .line 66
    iput-object p1, p0, Lequ$1;->a:Lequ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/16 v8, 0x14

    const/4 v0, 0x0

    .line 66
    check-cast p1, Lcom/alibaba/android/search/model/idl/objects/DeptSearchObjectList;

    .line 1071
    iget-object v1, p0, Lequ$1;->a:Lequ;

    iget-object v1, v1, Lequ;->c:Leoe;

    if-eqz v1, :cond_1

    .line 1072
    iget-object v1, p0, Lequ$1;->a:Lequ;

    iget-object v1, v1, Lequ;->c:Leoe;

    sget-object v2, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->DEPT:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    invoke-virtual {v2}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->getValue()Ljava/lang/String;

    move-result-object v2

    if-eqz p1, :cond_0

    iget-object v3, p1, Lcom/alibaba/android/search/model/idl/objects/DeptSearchObjectList;->deptList:Ljava/util/List;

    if-nez v3, :cond_5

    :cond_0
    move v3, v0

    .line 1073
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v6, p0, Lequ$1;->a:Lequ;

    iget-object v6, v6, Lequ;->c:Leoe;

    .line 1148
    iget-wide v6, v6, Leoe;->g:J

    .line 1073
    sub-long/2addr v4, v6

    const/4 v6, 0x1

    .line 1072
    invoke-static/range {v1 .. v6}, Letb;->a(Leoe;Ljava/lang/String;IJZ)V

    .line 1076
    :cond_1
    iget-object v1, p0, Lequ$1;->a:Lequ;

    iget-object v1, v1, Lequ;->b:Leqp$b;

    invoke-interface {v1}, Leqp$b;->d()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1081
    if-eqz p1, :cond_2

    :try_start_0
    iget-boolean v1, p1, Lcom/alibaba/android/search/model/idl/objects/DeptSearchObjectList;->hasMore:Z

    if-nez v1, :cond_6

    .line 1082
    :cond_2
    iget-object v1, p0, Lequ$1;->a:Lequ;

    const-string/jumbo v2, "0"

    .line 2031
    iput-object v2, v1, Lequ;->m:Ljava/lang/String;

    .line 1083
    iget-object v1, p0, Lequ$1;->a:Lequ;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lequ;->f:Z

    .line 1088
    :goto_1
    iget-object v1, p0, Lequ$1;->a:Lequ;

    iget-object v2, p0, Lequ$1;->a:Lequ;

    iget-object v2, v2, Lequ;->e:Ljava/lang/String;

    invoke-virtual {v1, p1, v2}, Lequ;->a(Lcom/alibaba/android/search/model/idl/objects/DeptSearchObjectList;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1092
    iget-object v1, p0, Lequ$1;->a:Lequ;

    iget-boolean v1, v1, Lequ;->f:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lequ$1;->a:Lequ;

    iget v1, v1, Lequ;->h:I

    if-lt v1, v8, :cond_8

    .line 1093
    :cond_3
    iget-object v1, p0, Lequ$1;->a:Lequ;

    iput v0, v1, Lequ;->h:I

    .line 1094
    iget-object v0, p0, Lequ$1;->a:Lequ;

    invoke-virtual {v0}, Lequ;->o()V

    .line 1098
    :cond_4
    :goto_2
    return-void

    .line 1072
    :cond_5
    iget-object v3, p1, Lcom/alibaba/android/search/model/idl/objects/DeptSearchObjectList;->deptList:Ljava/util/List;

    .line 1073
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    goto :goto_0

    .line 1085
    :cond_6
    :try_start_1
    iget-object v1, p0, Lequ$1;->a:Lequ;

    iget-object v2, p1, Lcom/alibaba/android/search/model/idl/objects/DeptSearchObjectList;->nextCursor:Ljava/lang/String;

    .line 3031
    iput-object v2, v1, Lequ;->m:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1089
    :catch_0
    move-exception v1

    .line 1090
    :try_start_2
    const-string/jumbo v2, "searchDept"

    invoke-static {v2, v1}, Letc;->a(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1092
    iget-object v1, p0, Lequ$1;->a:Lequ;

    iget-boolean v1, v1, Lequ;->f:Z

    if-eqz v1, :cond_7

    iget-object v1, p0, Lequ$1;->a:Lequ;

    iget v1, v1, Lequ;->h:I

    if-lt v1, v8, :cond_9

    .line 1093
    :cond_7
    iget-object v1, p0, Lequ$1;->a:Lequ;

    iput v0, v1, Lequ;->h:I

    .line 1094
    iget-object v0, p0, Lequ$1;->a:Lequ;

    invoke-virtual {v0}, Lequ;->o()V

    goto :goto_2

    .line 1096
    :cond_8
    iget-object v0, p0, Lequ$1;->a:Lequ;

    invoke-virtual {v0}, Lequ;->a()V

    goto :goto_2

    :cond_9
    iget-object v0, p0, Lequ$1;->a:Lequ;

    invoke-virtual {v0}, Lequ;->a()V

    goto :goto_2

    .line 1092
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lequ$1;->a:Lequ;

    iget-boolean v2, v2, Lequ;->f:Z

    if-eqz v2, :cond_a

    iget-object v2, p0, Lequ$1;->a:Lequ;

    iget v2, v2, Lequ;->h:I

    if-lt v2, v8, :cond_b

    .line 1093
    :cond_a
    iget-object v2, p0, Lequ$1;->a:Lequ;

    iput v0, v2, Lequ;->h:I

    .line 1094
    iget-object v0, p0, Lequ$1;->a:Lequ;

    invoke-virtual {v0}, Lequ;->o()V

    .line 1096
    :goto_3
    throw v1

    :cond_b
    iget-object v0, p0, Lequ$1;->a:Lequ;

    invoke-virtual {v0}, Lequ;->a()V

    goto :goto_3
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 103
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 104
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "code"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    const-string/jumbo v1, "message"

    const-string/jumbo v2, "searchDept: %s"

    new-array v3, v5, [Ljava/lang/Object;

    aput-object p2, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    const-string/jumbo v1, "type"

    sget-object v2, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->DEPT:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    invoke-virtual {v2}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    invoke-static {v0}, Letb;->a(Ljava/util/Map;)V

    .line 109
    const-string/jumbo v1, "[Dept]search exception %s %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v4

    aput-object p2, v2, v5

    .line 1050
    const-string/jumbo v3, "search"

    invoke-static {v3, v1, v2}, Letc;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 111
    iget-object v1, p0, Lequ$1;->a:Lequ;

    iget-object v1, v1, Lequ;->b:Leqp$b;

    invoke-interface {v1}, Leqp$b;->d()Z

    move-result v1

    if-nez v1, :cond_0

    .line 116
    :goto_0
    return-void

    .line 115
    :cond_0
    iget-object v1, p0, Lequ$1;->a:Lequ;

    invoke-virtual {v1}, Lequ;->o()V

    goto :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "i"    # Ljava/lang/Object;
    .param p2, "i2"    # I

    .prologue
    .line 121
    return-void
.end method
