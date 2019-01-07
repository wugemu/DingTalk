.class final Lerh$1;
.super Ljava/lang/Object;
.source "LightAppSearchPresenter.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lerh;->a()V
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
        "Lepy;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lerh;


# direct methods
.method constructor <init>(Lerh;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lerh;

    .prologue
    .line 133
    iput-object p1, p0, Lerh$1;->b:Lerh;

    iput-object p2, p0, Lerh$1;->a:Ljava/lang/String;

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

    .line 133
    check-cast p1, Lepy;

    .line 3138
    iget-object v1, p0, Lerh$1;->b:Lerh;

    iget-object v1, v1, Lerh;->c:Leoe;

    if-eqz v1, :cond_2

    .line 3139
    sget-object v1, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->LIGHT_APP:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    invoke-virtual {v1}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 3140
    iget-object v1, p0, Lerh$1;->b:Lerh;

    iget-object v1, v1, Lerh;->c:Leoe;

    .line 4092
    iget v1, v1, Leoe;->b:I

    .line 3140
    sget-object v3, Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;->MINI_APP_LIST:Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;->getValue()I

    move-result v3

    if-ne v1, v3, :cond_0

    .line 3141
    sget-object v1, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->MINI_APP:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    invoke-virtual {v1}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 3143
    :cond_0
    iget-object v1, p0, Lerh$1;->b:Lerh;

    iget-object v1, v1, Lerh;->c:Leoe;

    if-eqz p1, :cond_1

    iget-object v3, p1, Lepy;->a:Ljava/util/List;

    if-nez v3, :cond_6

    :cond_1
    move v3, v0

    .line 3144
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v6, p0, Lerh$1;->b:Lerh;

    iget-object v6, v6, Lerh;->c:Leoe;

    .line 4148
    iget-wide v6, v6, Leoe;->g:J

    .line 3144
    sub-long/2addr v4, v6

    const/4 v6, 0x1

    .line 3143
    invoke-static/range {v1 .. v6}, Letb;->a(Leoe;Ljava/lang/String;IJZ)V

    .line 3147
    :cond_2
    iget-object v1, p0, Lerh$1;->b:Lerh;

    iget-object v1, v1, Lerh;->b:Leqp$b;

    invoke-interface {v1}, Leqp$b;->d()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 3151
    iget-object v1, p0, Lerh$1;->a:Ljava/lang/String;

    iget-object v2, p0, Lerh$1;->b:Lerh;

    iget-object v2, v2, Lerh;->e:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/alibaba/android/search/utils/SearchUtils;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 3156
    if-eqz p1, :cond_3

    :try_start_0
    iget-boolean v1, p1, Lepy;->e:Z

    if-nez v1, :cond_7

    .line 3157
    :cond_3
    iget-object v1, p0, Lerh$1;->b:Lerh;

    .line 5043
    const/4 v2, 0x0

    iput-boolean v2, v1, Lerh;->n:Z

    .line 3158
    iget-object v1, p0, Lerh$1;->b:Lerh;

    const-string/jumbo v2, "0"

    .line 6043
    iput-object v2, v1, Lerh;->m:Ljava/lang/String;

    .line 3159
    iget-object v1, p0, Lerh$1;->b:Lerh;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lerh;->f:Z

    .line 3164
    :goto_1
    iget-object v1, p0, Lerh$1;->b:Lerh;

    iget-object v2, p0, Lerh$1;->a:Ljava/lang/String;

    invoke-virtual {v1, p1, v2}, Lerh;->a(Lepy;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3168
    iget-object v1, p0, Lerh$1;->b:Lerh;

    iget-boolean v1, v1, Lerh;->f:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lerh$1;->b:Lerh;

    iget v1, v1, Lerh;->h:I

    if-le v1, v8, :cond_9

    .line 3169
    :cond_4
    iget-object v1, p0, Lerh$1;->b:Lerh;

    iput v0, v1, Lerh;->h:I

    .line 3170
    iget-object v0, p0, Lerh$1;->b:Lerh;

    invoke-virtual {v0}, Lerh;->o()V

    .line 3174
    :cond_5
    :goto_2
    return-void

    .line 3143
    :cond_6
    iget-object v3, p1, Lepy;->a:Ljava/util/List;

    .line 3144
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    goto :goto_0

    .line 3161
    :cond_7
    :try_start_1
    iget-object v1, p0, Lerh$1;->b:Lerh;

    iget-object v2, p1, Lepy;->c:Ljava/lang/String;

    .line 7043
    iput-object v2, v1, Lerh;->m:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 3165
    :catch_0
    move-exception v1

    .line 3166
    :try_start_2
    const-string/jumbo v2, "searchMicroApp"

    invoke-static {v2, v1}, Letc;->a(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3168
    iget-object v1, p0, Lerh$1;->b:Lerh;

    iget-boolean v1, v1, Lerh;->f:Z

    if-eqz v1, :cond_8

    iget-object v1, p0, Lerh$1;->b:Lerh;

    iget v1, v1, Lerh;->h:I

    if-le v1, v8, :cond_a

    .line 3169
    :cond_8
    iget-object v1, p0, Lerh$1;->b:Lerh;

    iput v0, v1, Lerh;->h:I

    .line 3170
    iget-object v0, p0, Lerh$1;->b:Lerh;

    invoke-virtual {v0}, Lerh;->o()V

    goto :goto_2

    .line 3172
    :cond_9
    iget-object v0, p0, Lerh$1;->b:Lerh;

    invoke-virtual {v0}, Lerh;->a()V

    goto :goto_2

    :cond_a
    iget-object v0, p0, Lerh$1;->b:Lerh;

    invoke-virtual {v0}, Lerh;->a()V

    goto :goto_2

    .line 3168
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lerh$1;->b:Lerh;

    iget-boolean v2, v2, Lerh;->f:Z

    if-eqz v2, :cond_b

    iget-object v2, p0, Lerh$1;->b:Lerh;

    iget v2, v2, Lerh;->h:I

    if-le v2, v8, :cond_c

    .line 3169
    :cond_b
    iget-object v2, p0, Lerh$1;->b:Lerh;

    iput v0, v2, Lerh;->h:I

    .line 3170
    iget-object v0, p0, Lerh$1;->b:Lerh;

    invoke-virtual {v0}, Lerh;->o()V

    .line 3172
    :goto_3
    throw v1

    :cond_c
    iget-object v0, p0, Lerh$1;->b:Lerh;

    invoke-virtual {v0}, Lerh;->a()V

    goto :goto_3
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

    .line 179
    iget-object v0, p0, Lerh$1;->b:Lerh;

    iget-object v0, v0, Lerh;->c:Leoe;

    if-eqz v0, :cond_1

    .line 180
    iget-object v0, p0, Lerh$1;->b:Lerh;

    iget-object v0, v0, Lerh;->c:Leoe;

    .line 1168
    iput-object p1, v0, Leoe;->i:Ljava/lang/String;

    .line 181
    iget-object v0, p0, Lerh$1;->b:Lerh;

    iget-object v0, v0, Lerh;->c:Leoe;

    .line 1176
    iput-object p2, v0, Leoe;->j:Ljava/lang/String;

    .line 182
    sget-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->LIGHT_APP:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    invoke-virtual {v0}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 183
    .local v2, "type":Ljava/lang/String;
    iget-object v0, p0, Lerh$1;->b:Lerh;

    iget-object v0, v0, Lerh;->c:Leoe;

    .line 2092
    iget v0, v0, Leoe;->b:I

    .line 183
    sget-object v1, Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;->MINI_APP_LIST:Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;->getValue()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 184
    sget-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->MINI_APP:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    invoke-virtual {v0}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 186
    :cond_0
    iget-object v0, p0, Lerh$1;->b:Lerh;

    iget-object v1, v0, Lerh;->c:Leoe;

    .line 187
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v0, p0, Lerh$1;->b:Lerh;

    iget-object v0, v0, Lerh;->c:Leoe;

    .line 2148
    iget-wide v8, v0, Leoe;->g:J

    .line 187
    sub-long/2addr v4, v8

    .line 186
    invoke-static/range {v1 .. v6}, Letb;->a(Leoe;Ljava/lang/String;IJZ)V

    .line 189
    .end local v2    # "type":Ljava/lang/String;
    :cond_1
    const-string/jumbo v0, "STATISTICS"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/statistics/Statistics;

    const/16 v1, 0x34bf

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->commitFaultEvent(I)V

    .line 191
    iget-object v0, p0, Lerh$1;->b:Lerh;

    iget-object v0, v0, Lerh;->b:Leqp$b;

    invoke-interface {v0}, Leqp$b;->d()Z

    move-result v0

    if-nez v0, :cond_2

    .line 199
    :goto_0
    return-void

    .line 195
    :cond_2
    iget-object v0, p0, Lerh$1;->b:Lerh;

    invoke-virtual {v0}, Lerh;->o()V

    .line 197
    const-string/jumbo v0, "onException in LightAppSearchPresenter"

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v4, "errorCode= "

    aput-object v4, v1, v3

    aput-object p1, v1, v6

    const/4 v3, 0x2

    const-string/jumbo v4, "errorMsg= "

    aput-object v4, v1, v3

    const/4 v3, 0x3

    aput-object p2, v1, v3

    const/4 v3, 0x4

    const-string/jumbo v4, "keyWord= "

    aput-object v4, v1, v3

    const/4 v3, 0x5

    iget-object v4, p0, Lerh$1;->b:Lerh;

    iget-object v4, v4, Lerh;->e:Ljava/lang/String;

    .line 198
    invoke-static {v4}, Lcpr;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    .line 3050
    const-string/jumbo v3, "search"

    invoke-static {v3, v0, v1}, Letc;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "i"    # Ljava/lang/Object;
    .param p2, "i2"    # I

    .prologue
    .line 204
    return-void
.end method
