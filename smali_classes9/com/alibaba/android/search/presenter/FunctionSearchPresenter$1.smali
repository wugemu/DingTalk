.class final Lcom/alibaba/android/search/presenter/FunctionSearchPresenter$1;
.super Ljava/lang/Object;
.source "FunctionSearchPresenter.java"

# interfaces
.implements Lcca;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/search/presenter/FunctionSearchPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alibaba/android/search/presenter/FunctionSearchPresenter;


# direct methods
.method constructor <init>(Lcom/alibaba/android/search/presenter/FunctionSearchPresenter;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/search/presenter/FunctionSearchPresenter;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/alibaba/android/search/presenter/FunctionSearchPresenter$1;->b:Lcom/alibaba/android/search/presenter/FunctionSearchPresenter;

    iput-object p2, p0, Lcom/alibaba/android/search/presenter/FunctionSearchPresenter$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/util/List;)V
    .locals 10
    .param p1, "group"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .local p2, "data":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    const/4 v6, 0x0

    .line 117
    iget-object v0, p0, Lcom/alibaba/android/search/presenter/FunctionSearchPresenter$1;->b:Lcom/alibaba/android/search/presenter/FunctionSearchPresenter;

    iget-object v0, v0, Lcom/alibaba/android/search/presenter/FunctionSearchPresenter;->c:Leoe;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/alibaba/android/search/presenter/FunctionSearchPresenter$1;->b:Lcom/alibaba/android/search/presenter/FunctionSearchPresenter;

    iget-object v1, v0, Lcom/alibaba/android/search/presenter/FunctionSearchPresenter;->c:Leoe;

    sget-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->FUNCTION:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    invoke-virtual {v0}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->getValue()Ljava/lang/String;

    move-result-object v2

    if-nez p2, :cond_2

    move v3, v6

    .line 119
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v0, p0, Lcom/alibaba/android/search/presenter/FunctionSearchPresenter$1;->b:Lcom/alibaba/android/search/presenter/FunctionSearchPresenter;

    iget-object v0, v0, Lcom/alibaba/android/search/presenter/FunctionSearchPresenter;->c:Leoe;

    .line 1148
    iget-wide v8, v0, Leoe;->g:J

    .line 119
    sub-long/2addr v4, v8

    .line 118
    invoke-static/range {v1 .. v6}, Letb;->a(Leoe;Ljava/lang/String;IJZ)V

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/search/presenter/FunctionSearchPresenter$1;->b:Lcom/alibaba/android/search/presenter/FunctionSearchPresenter;

    iget-object v0, v0, Lcom/alibaba/android/search/presenter/FunctionSearchPresenter;->b:Leqp$b;

    invoke-interface {v0}, Leqp$b;->d()Z

    move-result v0

    if-nez v0, :cond_3

    .line 138
    :cond_1
    :goto_1
    return-void

    .line 119
    :cond_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    goto :goto_0

    .line 126
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/search/presenter/FunctionSearchPresenter$1;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/android/search/presenter/FunctionSearchPresenter$1;->b:Lcom/alibaba/android/search/presenter/FunctionSearchPresenter;

    iget-object v1, v1, Lcom/alibaba/android/search/presenter/FunctionSearchPresenter;->e:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alibaba/android/search/utils/SearchUtils;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 130
    iget-object v0, p0, Lcom/alibaba/android/search/presenter/FunctionSearchPresenter$1;->b:Lcom/alibaba/android/search/presenter/FunctionSearchPresenter;

    iget-object v1, p0, Lcom/alibaba/android/search/presenter/FunctionSearchPresenter$1;->b:Lcom/alibaba/android/search/presenter/FunctionSearchPresenter;

    iget-object v1, v1, Lcom/alibaba/android/search/presenter/FunctionSearchPresenter;->e:Ljava/lang/String;

    invoke-static {v0, p2, v1}, Lcom/alibaba/android/search/presenter/FunctionSearchPresenter;->a(Lcom/alibaba/android/search/presenter/FunctionSearchPresenter;Ljava/util/List;Ljava/lang/String;)V

    .line 132
    iget-object v0, p0, Lcom/alibaba/android/search/presenter/FunctionSearchPresenter$1;->b:Lcom/alibaba/android/search/presenter/FunctionSearchPresenter;

    sget-object v1, Lcom/alibaba/android/search/presenter/FunctionSearchPresenter$FunctionSearchType;->Template:Lcom/alibaba/android/search/presenter/FunctionSearchPresenter$FunctionSearchType;

    .line 2061
    iput-object v1, v0, Lcom/alibaba/android/search/presenter/FunctionSearchPresenter;->m:Lcom/alibaba/android/search/presenter/FunctionSearchPresenter$FunctionSearchType;

    .line 133
    iget-object v0, p0, Lcom/alibaba/android/search/presenter/FunctionSearchPresenter$1;->b:Lcom/alibaba/android/search/presenter/FunctionSearchPresenter;

    iput v6, v0, Lcom/alibaba/android/search/presenter/FunctionSearchPresenter;->g:I

    .line 134
    iget-object v0, p0, Lcom/alibaba/android/search/presenter/FunctionSearchPresenter$1;->b:Lcom/alibaba/android/search/presenter/FunctionSearchPresenter;

    const-string/jumbo v1, "0"

    .line 3061
    iput-object v1, v0, Lcom/alibaba/android/search/presenter/FunctionSearchPresenter;->n:Ljava/lang/String;

    .line 135
    iget-object v0, p0, Lcom/alibaba/android/search/presenter/FunctionSearchPresenter$1;->b:Lcom/alibaba/android/search/presenter/FunctionSearchPresenter;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/alibaba/android/search/presenter/FunctionSearchPresenter;->f:Z

    .line 137
    iget-object v0, p0, Lcom/alibaba/android/search/presenter/FunctionSearchPresenter$1;->b:Lcom/alibaba/android/search/presenter/FunctionSearchPresenter;

    invoke-virtual {v0}, Lcom/alibaba/android/search/presenter/FunctionSearchPresenter;->a()V

    goto :goto_1
.end method

.method public final a(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;>;)V"
        }
    .end annotation

    .prologue
    .line 141
    .local p1, "datas":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;>;"
    return-void
.end method

.method public final a(Z)V
    .locals 0
    .param p1, "canLoad"    # Z

    .prologue
    .line 144
    return-void
.end method
