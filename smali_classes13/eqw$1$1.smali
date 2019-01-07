.class final Leqw$1$1;
.super Ljava/lang/Object;
.source "DingSearchPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leqw$1;->a(Ljava/lang/String;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Leqw$1;


# direct methods
.method constructor <init>(Leqw$1;Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Leqw$1;

    .prologue
    .line 79
    iput-object p1, p0, Leqw$1$1;->c:Leqw$1;

    iput-object p2, p0, Leqw$1$1;->a:Ljava/util/List;

    iput-object p3, p0, Leqw$1$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 83
    iget-object v0, p0, Leqw$1$1;->c:Leqw$1;

    iget-object v0, v0, Leqw$1;->b:Leqw;

    .line 1041
    iget v1, v0, Leqw;->m:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Leqw;->m:I

    .line 85
    iget-object v0, p0, Leqw$1$1;->c:Leqw$1;

    iget-object v0, v0, Leqw$1;->b:Leqw;

    iget-object v0, v0, Leqw;->c:Leoe;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Leqw$1$1;->c:Leqw$1;

    iget-object v0, v0, Leqw$1;->b:Leqw;

    iget-object v1, v0, Leqw;->c:Leoe;

    sget-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->DING:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    invoke-virtual {v0}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->getValue()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Leqw$1$1;->a:Ljava/util/List;

    if-nez v0, :cond_2

    move v3, v6

    .line 87
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v0, p0, Leqw$1$1;->c:Leqw$1;

    iget-object v0, v0, Leqw$1;->b:Leqw;

    iget-object v0, v0, Leqw;->c:Leoe;

    .line 1148
    iget-wide v8, v0, Leoe;->g:J

    .line 87
    sub-long/2addr v4, v8

    .line 86
    invoke-static/range {v1 .. v6}, Letb;->a(Leoe;Ljava/lang/String;IJZ)V

    .line 90
    :cond_0
    iget-object v0, p0, Leqw$1$1;->c:Leqw$1;

    iget-object v0, v0, Leqw$1;->b:Leqw;

    iget-object v0, v0, Leqw;->b:Leqp$b;

    invoke-interface {v0}, Leqp$b;->d()Z

    move-result v0

    if-nez v0, :cond_3

    .line 118
    :cond_1
    :goto_1
    return-void

    .line 86
    :cond_2
    iget-object v0, p0, Leqw$1$1;->a:Ljava/util/List;

    .line 87
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    goto :goto_0

    .line 94
    :cond_3
    iget-object v0, p0, Leqw$1$1;->c:Leqw$1;

    iget-object v0, v0, Leqw$1;->a:Ljava/lang/String;

    iget-object v1, p0, Leqw$1$1;->c:Leqw$1;

    iget-object v1, v1, Leqw$1;->b:Leqw;

    iget-object v1, v1, Leqw;->e:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alibaba/android/search/utils/SearchUtils;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 98
    const-string/jumbo v0, "ding"

    iget-object v1, p0, Leqw$1$1;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string/jumbo v0, "ding_attachment"

    iget-object v1, p0, Leqw$1$1;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 102
    :cond_4
    iget-object v0, p0, Leqw$1$1;->a:Ljava/util/List;

    if-eqz v0, :cond_5

    iget-object v0, p0, Leqw$1$1;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x14

    if-ne v0, v1, :cond_5

    .line 103
    iget-object v0, p0, Leqw$1$1;->c:Leqw$1;

    iget-object v0, v0, Leqw$1;->b:Leqw;

    .line 2041
    const/4 v1, 0x1

    iput-boolean v1, v0, Leqw;->n:Z

    .line 106
    :cond_5
    iget-object v0, p0, Leqw$1$1;->c:Leqw$1;

    iget-object v0, v0, Leqw$1;->b:Leqw;

    iget-object v1, p0, Leqw$1$1;->a:Ljava/util/List;

    iget-object v2, p0, Leqw$1$1;->c:Leqw$1;

    iget-object v2, v2, Leqw$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Leqw;->a(Ljava/util/List;Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Leqw$1$1;->c:Leqw$1;

    iget-object v0, v0, Leqw$1;->b:Leqw;

    .line 3041
    iget v0, v0, Leqw;->m:I

    .line 108
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 109
    iget-object v0, p0, Leqw$1$1;->c:Leqw$1;

    iget-object v0, v0, Leqw$1;->b:Leqw;

    invoke-virtual {v0}, Leqw;->o()V

    .line 110
    iget-object v0, p0, Leqw$1$1;->c:Leqw$1;

    iget-object v0, v0, Leqw$1;->b:Leqw;

    .line 4041
    iget-boolean v0, v0, Leqw;->n:Z

    .line 110
    if-eqz v0, :cond_6

    .line 111
    iget-object v0, p0, Leqw$1$1;->c:Leqw$1;

    iget-object v0, v0, Leqw$1;->b:Leqw;

    iget v1, v0, Leqw;->g:I

    add-int/lit8 v1, v1, 0x14

    iput v1, v0, Leqw;->g:I

    goto :goto_1

    .line 113
    :cond_6
    iget-object v0, p0, Leqw$1$1;->c:Leqw$1;

    iget-object v0, v0, Leqw$1;->b:Leqw;

    iput v6, v0, Leqw;->g:I

    .line 114
    iget-object v0, p0, Leqw$1$1;->c:Leqw$1;

    iget-object v0, v0, Leqw$1;->b:Leqw;

    iput-boolean v6, v0, Leqw;->f:Z

    goto/16 :goto_1
.end method
