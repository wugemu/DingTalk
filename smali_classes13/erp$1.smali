.class final Lerp$1;
.super Ljava/lang/Object;
.source "OrgHomepageSearchPresenter.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lerp;->a()V
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
        "Lepq;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lerp;


# direct methods
.method constructor <init>(Lerp;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lerp;

    .prologue
    .line 58
    iput-object p1, p0, Lerp$1;->b:Lerp;

    iput-object p2, p0, Lerp$1;->a:Ljava/lang/String;

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
    const/16 v8, 0x50

    const/4 v0, 0x0

    .line 58
    check-cast p1, Lepq;

    .line 3063
    iget-object v1, p0, Lerp$1;->b:Lerp;

    iget-object v1, v1, Lerp;->c:Leoe;

    if-eqz v1, :cond_1

    .line 3064
    iget-object v1, p0, Lerp$1;->b:Lerp;

    iget-object v1, v1, Lerp;->c:Leoe;

    sget-object v2, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->ORG_HOMEPAGE:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    invoke-virtual {v2}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->getValue()Ljava/lang/String;

    move-result-object v2

    if-eqz p1, :cond_0

    iget-object v3, p1, Lepq;->a:Ljava/util/List;

    if-nez v3, :cond_5

    :cond_0
    move v3, v0

    .line 3065
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v6, p0, Lerp$1;->b:Lerp;

    iget-object v6, v6, Lerp;->c:Leoe;

    .line 3148
    iget-wide v6, v6, Leoe;->g:J

    .line 3065
    sub-long/2addr v4, v6

    const/4 v6, 0x1

    .line 3064
    invoke-static/range {v1 .. v6}, Letb;->a(Leoe;Ljava/lang/String;IJZ)V

    .line 3068
    :cond_1
    iget-object v1, p0, Lerp$1;->b:Lerp;

    iget-object v1, v1, Lerp;->b:Leqp$b;

    invoke-interface {v1}, Leqp$b;->d()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3072
    iget-object v1, p0, Lerp$1;->a:Ljava/lang/String;

    iget-object v2, p0, Lerp$1;->b:Lerp;

    iget-object v2, v2, Lerp;->e:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/alibaba/android/search/utils/SearchUtils;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3077
    if-eqz p1, :cond_2

    :try_start_0
    iget-wide v2, p1, Lepq;->b:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gtz v1, :cond_6

    .line 3078
    :cond_2
    iget-object v1, p0, Lerp$1;->b:Lerp;

    const/4 v2, 0x0

    iput v2, v1, Lerp;->g:I

    .line 3079
    iget-object v1, p0, Lerp$1;->b:Lerp;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lerp;->f:Z

    .line 3085
    :goto_1
    iget-object v1, p0, Lerp$1;->b:Lerp;

    iget-object v2, p0, Lerp$1;->a:Ljava/lang/String;

    invoke-virtual {v1, p1, v2}, Lerp;->a(Lepq;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3089
    iget-object v1, p0, Lerp$1;->b:Lerp;

    iget-boolean v1, v1, Lerp;->f:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lerp$1;->b:Lerp;

    iget v1, v1, Lerp;->h:I

    if-le v1, v8, :cond_8

    .line 3090
    :cond_3
    iget-object v1, p0, Lerp$1;->b:Lerp;

    iput v0, v1, Lerp;->h:I

    .line 3091
    iget-object v0, p0, Lerp$1;->b:Lerp;

    invoke-virtual {v0}, Lerp;->o()V

    .line 3095
    :cond_4
    :goto_2
    return-void

    .line 3064
    :cond_5
    iget-object v3, p1, Lepq;->a:Ljava/util/List;

    .line 3065
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    goto :goto_0

    .line 3081
    :cond_6
    :try_start_1
    iget-object v1, p0, Lerp$1;->b:Lerp;

    iget-wide v2, p1, Lepq;->b:J

    long-to-int v2, v2

    iput v2, v1, Lerp;->g:I

    .line 3082
    iget-object v1, p0, Lerp$1;->b:Lerp;

    iget-boolean v2, p1, Lepq;->c:Z

    iput-boolean v2, v1, Lerp;->f:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 3086
    :catch_0
    move-exception v1

    .line 3087
    :try_start_2
    const-string/jumbo v2, "searchChannelSquare"

    invoke-static {v2, v1}, Letc;->a(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3089
    iget-object v1, p0, Lerp$1;->b:Lerp;

    iget-boolean v1, v1, Lerp;->f:Z

    if-eqz v1, :cond_7

    iget-object v1, p0, Lerp$1;->b:Lerp;

    iget v1, v1, Lerp;->h:I

    if-le v1, v8, :cond_9

    .line 3090
    :cond_7
    iget-object v1, p0, Lerp$1;->b:Lerp;

    iput v0, v1, Lerp;->h:I

    .line 3091
    iget-object v0, p0, Lerp$1;->b:Lerp;

    invoke-virtual {v0}, Lerp;->o()V

    goto :goto_2

    .line 3093
    :cond_8
    iget-object v0, p0, Lerp$1;->b:Lerp;

    invoke-virtual {v0}, Lerp;->a()V

    goto :goto_2

    :cond_9
    iget-object v0, p0, Lerp$1;->b:Lerp;

    invoke-virtual {v0}, Lerp;->a()V

    goto :goto_2

    .line 3089
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lerp$1;->b:Lerp;

    iget-boolean v2, v2, Lerp;->f:Z

    if-eqz v2, :cond_a

    iget-object v2, p0, Lerp$1;->b:Lerp;

    iget v2, v2, Lerp;->h:I

    if-le v2, v8, :cond_b

    .line 3090
    :cond_a
    iget-object v2, p0, Lerp$1;->b:Lerp;

    iput v0, v2, Lerp;->h:I

    .line 3091
    iget-object v0, p0, Lerp$1;->b:Lerp;

    invoke-virtual {v0}, Lerp;->o()V

    .line 3093
    :goto_3
    throw v1

    :cond_b
    iget-object v0, p0, Lerp$1;->b:Lerp;

    invoke-virtual {v0}, Lerp;->a()V

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
    .line 100
    iget-object v0, p0, Lerp$1;->b:Lerp;

    iget-object v0, v0, Lerp;->c:Leoe;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lerp$1;->b:Lerp;

    iget-object v0, v0, Lerp;->c:Leoe;

    .line 1168
    iput-object p1, v0, Leoe;->i:Ljava/lang/String;

    .line 102
    iget-object v0, p0, Lerp$1;->b:Lerp;

    iget-object v0, v0, Lerp;->c:Leoe;

    .line 1176
    iput-object p2, v0, Leoe;->j:Ljava/lang/String;

    .line 103
    iget-object v0, p0, Lerp$1;->b:Lerp;

    iget-object v1, v0, Lerp;->c:Leoe;

    sget-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->ORG_HOMEPAGE:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    invoke-virtual {v0}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->getValue()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 104
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v0, p0, Lerp$1;->b:Lerp;

    iget-object v0, v0, Lerp;->c:Leoe;

    .line 2148
    iget-wide v6, v0, Leoe;->g:J

    .line 104
    sub-long/2addr v4, v6

    const/4 v6, 0x1

    .line 103
    invoke-static/range {v1 .. v6}, Letb;->a(Leoe;Ljava/lang/String;IJZ)V

    .line 107
    :cond_0
    iget-object v0, p0, Lerp$1;->b:Lerp;

    iget-object v0, v0, Lerp;->b:Leqp$b;

    invoke-interface {v0}, Leqp$b;->d()Z

    move-result v0

    if-nez v0, :cond_1

    .line 112
    :goto_0
    return-void

    .line 111
    :cond_1
    iget-object v0, p0, Lerp$1;->b:Lerp;

    invoke-virtual {v0}, Lerp;->o()V

    goto :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "i"    # Ljava/lang/Object;
    .param p2, "i2"    # I

    .prologue
    .line 117
    return-void
.end method
