.class final Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter$3;
.super Ljava/lang/Object;
.source "MyGroupSearchPresenter.java"

# interfaces
.implements Lcca;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;


# direct methods
.method constructor <init>(Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;

    .prologue
    .line 350
    iput-object p1, p0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter$3;->b:Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;

    iput-object p2, p0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter$3;->a:Ljava/lang/String;

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

    .line 355
    iget-object v0, p0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter$3;->b:Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;

    iget-object v0, v0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->c:Leoe;

    if-eqz v0, :cond_0

    .line 356
    iget-object v0, p0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter$3;->b:Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;

    iget-object v1, v0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->c:Leoe;

    sget-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->MY_GROUP_LOCAL:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    invoke-virtual {v0}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->getValue()Ljava/lang/String;

    move-result-object v2

    if-nez p2, :cond_2

    move v3, v6

    .line 357
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v0, p0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter$3;->b:Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;

    iget-object v0, v0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->c:Leoe;

    .line 1148
    iget-wide v8, v0, Leoe;->g:J

    .line 357
    sub-long/2addr v4, v8

    .line 356
    invoke-static/range {v1 .. v6}, Letb;->a(Leoe;Ljava/lang/String;IJZ)V

    .line 360
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter$3;->b:Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;

    iget-object v0, v0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->b:Leqp$b;

    invoke-interface {v0}, Leqp$b;->d()Z

    move-result v0

    if-nez v0, :cond_3

    .line 389
    :cond_1
    :goto_1
    return-void

    .line 357
    :cond_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    goto :goto_0

    .line 364
    :cond_3
    const-string/jumbo v0, "group_conversation"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 368
    iget-object v0, p0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter$3;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter$3;->b:Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;

    iget-object v1, v1, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->e:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alibaba/android/search/utils/SearchUtils;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 372
    if-eqz p2, :cond_4

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x64

    if-ge v0, v1, :cond_5

    .line 373
    :cond_4
    iget-object v0, p0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter$3;->b:Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;

    sget-object v1, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter$GroupSearchType;->Remote:Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter$GroupSearchType;

    .line 2087
    iput-object v1, v0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->m:Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter$GroupSearchType;

    .line 374
    iget-object v0, p0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter$3;->b:Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;

    iput v6, v0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->g:I

    .line 379
    :goto_2
    iget-object v0, p0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter$3;->b:Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;

    iget-object v1, p0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter$3;->a:Ljava/lang/String;

    invoke-virtual {v0, p2, v1}, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->a(Ljava/util/List;Ljava/lang/String;)V

    .line 380
    const-string/jumbo v0, "[Group]searchLocalGroups %d %d %d"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter$3;->b:Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;

    iget v2, v2, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->g:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter$3;->b:Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;

    iget v3, v3, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->h:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter$3;->b:Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;

    .line 3087
    iget-object v3, v3, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->m:Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter$GroupSearchType;

    .line 380
    invoke-virtual {v3}, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter$GroupSearchType;->ordinal()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 4050
    const-string/jumbo v2, "search"

    invoke-static {v2, v0, v1}, Letc;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 382
    iget-object v0, p0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter$3;->b:Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;

    iget v0, v0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->h:I

    const/16 v1, 0x50

    if-le v0, v1, :cond_6

    .line 383
    iget-object v0, p0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter$3;->b:Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;

    iput v6, v0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->h:I

    .line 384
    iget-object v0, p0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter$3;->b:Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;

    invoke-virtual {v0}, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->o()V

    goto :goto_1

    .line 376
    :cond_5
    iget-object v0, p0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter$3;->b:Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;

    iget v1, v0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->g:I

    add-int/lit8 v1, v1, 0x64

    iput v1, v0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->g:I

    goto :goto_2

    .line 387
    :cond_6
    iget-object v0, p0, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter$3;->b:Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;

    invoke-virtual {v0}, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;->a()V

    goto/16 :goto_1
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
    .line 392
    .local p1, "datas":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;>;"
    return-void
.end method

.method public final a(Z)V
    .locals 0
    .param p1, "canLoad"    # Z

    .prologue
    .line 395
    return-void
.end method
