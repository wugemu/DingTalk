.class final Lern$1;
.super Ljava/lang/Object;
.source "NewRetailSearchPresenter.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lern;->a()V
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
        "Lcom/alibaba/android/search/model/idl/objects/NewRetailMemberObjectList;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lern;


# direct methods
.method constructor <init>(Lern;)V
    .locals 0
    .param p1, "this$0"    # Lern;

    .prologue
    .line 65
    iput-object p1, p0, Lern$1;->a:Lern;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 65
    check-cast p1, Lcom/alibaba/android/search/model/idl/objects/NewRetailMemberObjectList;

    .line 3070
    iget-object v1, p0, Lern$1;->a:Lern;

    iget-object v1, v1, Lern;->c:Leoe;

    if-eqz v1, :cond_1

    .line 3071
    iget-object v1, p0, Lern$1;->a:Lern;

    iget-object v1, v1, Lern;->c:Leoe;

    sget-object v2, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->NEW_RETAIL_MEMBER:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    invoke-virtual {v2}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->getValue()Ljava/lang/String;

    move-result-object v2

    if-eqz p1, :cond_0

    iget-object v3, p1, Lcom/alibaba/android/search/model/idl/objects/NewRetailMemberObjectList;->list:Ljava/util/List;

    if-nez v3, :cond_5

    :cond_0
    move v3, v0

    .line 3072
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v6, p0, Lern$1;->a:Lern;

    iget-object v6, v6, Lern;->c:Leoe;

    .line 3148
    iget-wide v6, v6, Leoe;->g:J

    .line 3072
    sub-long/2addr v4, v6

    const/4 v6, 0x1

    .line 3071
    invoke-static/range {v1 .. v6}, Letb;->a(Leoe;Ljava/lang/String;IJZ)V

    .line 3075
    :cond_1
    iget-object v1, p0, Lern$1;->a:Lern;

    iget-object v1, v1, Lern;->b:Leqp$b;

    invoke-interface {v1}, Leqp$b;->d()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3079
    if-eqz p1, :cond_2

    iget-boolean v1, p1, Lcom/alibaba/android/search/model/idl/objects/NewRetailMemberObjectList;->hasMore:Z

    if-nez v1, :cond_6

    .line 3080
    :cond_2
    iget-object v1, p0, Lern$1;->a:Lern;

    const-string/jumbo v2, "0"

    .line 4035
    iput-object v2, v1, Lern;->m:Ljava/lang/String;

    .line 3081
    iget-object v1, p0, Lern$1;->a:Lern;

    iput-boolean v0, v1, Lern;->f:Z

    .line 3086
    :goto_1
    iget-object v1, p0, Lern$1;->a:Lern;

    iget-object v2, p0, Lern$1;->a:Lern;

    iget-object v2, v2, Lern;->e:Ljava/lang/String;

    invoke-static {v1, p1, v2}, Lern;->a(Lern;Lcom/alibaba/android/search/model/idl/objects/NewRetailMemberObjectList;Ljava/lang/String;)V

    .line 3087
    iget-object v1, p0, Lern$1;->a:Lern;

    iget-boolean v1, v1, Lern;->f:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lern$1;->a:Lern;

    iget v1, v1, Lern;->h:I

    const/16 v2, 0x50

    if-le v1, v2, :cond_7

    .line 3088
    :cond_3
    iget-object v1, p0, Lern$1;->a:Lern;

    iput v0, v1, Lern;->h:I

    .line 3089
    iget-object v0, p0, Lern$1;->a:Lern;

    invoke-virtual {v0}, Lern;->o()V

    :cond_4
    :goto_2
    return-void

    .line 3071
    :cond_5
    iget-object v3, p1, Lcom/alibaba/android/search/model/idl/objects/NewRetailMemberObjectList;->list:Ljava/util/List;

    .line 3072
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    goto :goto_0

    .line 3083
    :cond_6
    iget-object v1, p0, Lern$1;->a:Lern;

    iget-object v2, p1, Lcom/alibaba/android/search/model/idl/objects/NewRetailMemberObjectList;->nextCursor:Ljava/lang/String;

    .line 5035
    iput-object v2, v1, Lern;->m:Ljava/lang/String;

    goto :goto_1

    .line 3091
    :cond_7
    iget-object v0, p0, Lern$1;->a:Lern;

    invoke-virtual {v0}, Lern;->a()V

    goto :goto_2
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 97
    iget-object v0, p0, Lern$1;->a:Lern;

    iget-object v0, v0, Lern;->c:Leoe;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lern$1;->a:Lern;

    iget-object v0, v0, Lern;->c:Leoe;

    .line 1168
    iput-object p1, v0, Leoe;->i:Ljava/lang/String;

    .line 99
    iget-object v0, p0, Lern$1;->a:Lern;

    iget-object v0, v0, Lern;->c:Leoe;

    .line 1176
    iput-object p2, v0, Leoe;->j:Ljava/lang/String;

    .line 100
    iget-object v0, p0, Lern$1;->a:Lern;

    iget-object v1, v0, Lern;->c:Leoe;

    sget-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->NEW_RETAIL_MEMBER:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    invoke-virtual {v0}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 101
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v0, p0, Lern$1;->a:Lern;

    iget-object v0, v0, Lern;->c:Leoe;

    .line 2148
    iget-wide v8, v0, Leoe;->g:J

    .line 101
    sub-long/2addr v4, v8

    .line 100
    invoke-static/range {v1 .. v6}, Letb;->a(Leoe;Ljava/lang/String;IJZ)V

    .line 103
    :cond_0
    const-string/jumbo v0, "STATISTICS"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/statistics/Statistics;

    const/16 v1, 0x34bf

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->commitFaultEvent(I)V

    .line 104
    const-string/jumbo v0, "searchNewRetailMember exception %s %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v3

    aput-object p2, v1, v6

    .line 3050
    const-string/jumbo v2, "search"

    invoke-static {v2, v0, v1}, Letc;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 106
    iget-object v0, p0, Lern$1;->a:Lern;

    iget-object v0, v0, Lern;->b:Leqp$b;

    invoke-interface {v0}, Leqp$b;->d()Z

    move-result v0

    if-nez v0, :cond_1

    .line 111
    :goto_0
    return-void

    .line 110
    :cond_1
    iget-object v0, p0, Lern$1;->a:Lern;

    invoke-virtual {v0}, Lern;->o()V

    goto :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "i"    # Ljava/lang/Object;
    .param p2, "i2"    # I

    .prologue
    .line 115
    return-void
.end method
