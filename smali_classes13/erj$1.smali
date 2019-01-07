.class final Lerj$1;
.super Ljava/lang/Object;
.source "MailSearchPresenter.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lerj;->a()V
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
        "Lchr;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lerj;


# direct methods
.method constructor <init>(Lerj;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lerj;

    .prologue
    .line 63
    iput-object p1, p0, Lerj$1;->b:Lerj;

    iput-object p2, p0, Lerj$1;->a:Ljava/lang/String;

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
    const/16 v8, 0x10

    const/4 v0, 0x0

    .line 63
    check-cast p1, Lchr;

    .line 3068
    iget-object v1, p0, Lerj$1;->b:Lerj;

    iget-object v1, v1, Lerj;->c:Leoe;

    if-eqz v1, :cond_1

    .line 3069
    iget-object v1, p0, Lerj$1;->b:Lerj;

    iget-object v1, v1, Lerj;->c:Leoe;

    sget-object v2, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->MAIL:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    invoke-virtual {v2}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->getValue()Ljava/lang/String;

    move-result-object v2

    if-eqz p1, :cond_0

    iget-object v3, p1, Lchr;->d:Ljava/util/List;

    if-nez v3, :cond_5

    :cond_0
    move v3, v0

    .line 3070
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v6, p0, Lerj$1;->b:Lerj;

    iget-object v6, v6, Lerj;->c:Leoe;

    .line 3148
    iget-wide v6, v6, Leoe;->g:J

    .line 3070
    sub-long/2addr v4, v6

    const/4 v6, 0x1

    .line 3069
    invoke-static/range {v1 .. v6}, Letb;->a(Leoe;Ljava/lang/String;IJZ)V

    .line 3072
    :cond_1
    iget-object v1, p0, Lerj$1;->b:Lerj;

    iget-object v1, v1, Lerj;->b:Leqp$b;

    invoke-interface {v1}, Leqp$b;->d()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3076
    iget-object v1, p0, Lerj$1;->a:Ljava/lang/String;

    iget-object v2, p0, Lerj$1;->b:Lerj;

    iget-object v2, v2, Lerj;->e:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/alibaba/android/search/utils/SearchUtils;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3081
    if-eqz p1, :cond_2

    :try_start_0
    iget-wide v2, p1, Lchr;->c:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gtz v1, :cond_6

    .line 3082
    :cond_2
    iget-object v1, p0, Lerj$1;->b:Lerj;

    const/4 v2, 0x0

    iput v2, v1, Lerj;->g:I

    .line 3083
    iget-object v1, p0, Lerj$1;->b:Lerj;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lerj;->f:Z

    .line 3088
    :goto_1
    iget-object v1, p0, Lerj$1;->b:Lerj;

    iget-object v2, p0, Lerj$1;->a:Ljava/lang/String;

    invoke-virtual {v1, p1, v2}, Lerj;->a(Lchr;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3093
    iget-object v1, p0, Lerj$1;->b:Lerj;

    iget-boolean v1, v1, Lerj;->f:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lerj$1;->b:Lerj;

    iget v1, v1, Lerj;->h:I

    if-le v1, v8, :cond_8

    .line 3094
    :cond_3
    iget-object v1, p0, Lerj$1;->b:Lerj;

    iput v0, v1, Lerj;->h:I

    .line 3095
    iget-object v0, p0, Lerj$1;->b:Lerj;

    invoke-virtual {v0}, Lerj;->o()V

    .line 3099
    :cond_4
    :goto_2
    return-void

    .line 3069
    :cond_5
    iget-object v3, p1, Lchr;->d:Ljava/util/List;

    .line 3070
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    goto :goto_0

    .line 3085
    :cond_6
    :try_start_1
    iget-object v1, p0, Lerj$1;->b:Lerj;

    iget-wide v2, p1, Lchr;->c:J

    long-to-int v2, v2

    iput v2, v1, Lerj;->g:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 3090
    :catch_0
    move-exception v1

    .line 3091
    :try_start_2
    const-string/jumbo v2, "searchMailInfo"

    invoke-static {v2, v1}, Letc;->a(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3093
    iget-object v1, p0, Lerj$1;->b:Lerj;

    iget-boolean v1, v1, Lerj;->f:Z

    if-eqz v1, :cond_7

    iget-object v1, p0, Lerj$1;->b:Lerj;

    iget v1, v1, Lerj;->h:I

    if-le v1, v8, :cond_9

    .line 3094
    :cond_7
    iget-object v1, p0, Lerj$1;->b:Lerj;

    iput v0, v1, Lerj;->h:I

    .line 3095
    iget-object v0, p0, Lerj$1;->b:Lerj;

    invoke-virtual {v0}, Lerj;->o()V

    goto :goto_2

    .line 3097
    :cond_8
    iget-object v0, p0, Lerj$1;->b:Lerj;

    invoke-virtual {v0}, Lerj;->a()V

    goto :goto_2

    :cond_9
    iget-object v0, p0, Lerj$1;->b:Lerj;

    invoke-virtual {v0}, Lerj;->a()V

    goto :goto_2

    .line 3093
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lerj$1;->b:Lerj;

    iget-boolean v2, v2, Lerj;->f:Z

    if-eqz v2, :cond_a

    iget-object v2, p0, Lerj$1;->b:Lerj;

    iget v2, v2, Lerj;->h:I

    if-le v2, v8, :cond_b

    .line 3094
    :cond_a
    iget-object v2, p0, Lerj$1;->b:Lerj;

    iput v0, v2, Lerj;->h:I

    .line 3095
    iget-object v0, p0, Lerj$1;->b:Lerj;

    invoke-virtual {v0}, Lerj;->o()V

    .line 3097
    :goto_3
    throw v1

    :cond_b
    iget-object v0, p0, Lerj$1;->b:Lerj;

    invoke-virtual {v0}, Lerj;->a()V

    goto :goto_3
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 104
    iget-object v0, p0, Lerj$1;->b:Lerj;

    iget-object v0, v0, Lerj;->c:Leoe;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lerj$1;->b:Lerj;

    iget-object v0, v0, Lerj;->c:Leoe;

    .line 1168
    iput-object p1, v0, Leoe;->i:Ljava/lang/String;

    .line 106
    iget-object v0, p0, Lerj$1;->b:Lerj;

    iget-object v0, v0, Lerj;->c:Leoe;

    .line 1176
    iput-object p2, v0, Leoe;->j:Ljava/lang/String;

    .line 107
    iget-object v0, p0, Lerj$1;->b:Lerj;

    iget-object v1, v0, Lerj;->c:Leoe;

    sget-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->MAIL:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    invoke-virtual {v0}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->getValue()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 108
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v0, p0, Lerj$1;->b:Lerj;

    iget-object v0, v0, Lerj;->c:Leoe;

    .line 2148
    iget-wide v6, v0, Leoe;->g:J

    .line 108
    sub-long/2addr v4, v6

    const/4 v6, 0x1

    .line 107
    invoke-static/range {v1 .. v6}, Letb;->a(Leoe;Ljava/lang/String;IJZ)V

    .line 112
    :cond_0
    const-string/jumbo v0, "STATISTICS"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/statistics/Statistics;

    const/16 v1, 0x34bf

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->commitFaultEvent(I)V

    .line 114
    iget-object v0, p0, Lerj$1;->b:Lerj;

    iget-object v0, v0, Lerj;->b:Leqp$b;

    invoke-interface {v0}, Leqp$b;->d()Z

    move-result v0

    if-nez v0, :cond_1

    .line 119
    :goto_0
    return-void

    .line 118
    :cond_1
    iget-object v0, p0, Lerj$1;->b:Lerj;

    invoke-virtual {v0}, Lerj;->o()V

    goto :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "i"    # Ljava/lang/Object;
    .param p2, "i2"    # I

    .prologue
    .line 124
    return-void
.end method
