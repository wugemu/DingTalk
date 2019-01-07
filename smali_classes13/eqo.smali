.class public final Leqo;
.super Ljava/lang/Object;
.source "AllSearchPresenter.java"

# interfaces
.implements Leqn$a;


# instance fields
.field public a:Z

.field public b:Z

.field private c:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

.field private d:Leqn$b;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/search/model/BaseModel;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/search/model/BaseModel;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/search/model/BaseModel;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/search/model/BaseModel;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/search/model/BaseModel;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/search/model/BaseModel;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/search/model/BaseModel;",
            ">;"
        }
    .end annotation
.end field

.field private l:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Leqn$b;)V
    .locals 2
    .param p1, "activity"    # Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
    .param p2, "view"    # Leqn$b;

    .prologue
    const/4 v1, 0x0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Leqo;->e:Ljava/util/List;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Leqo;->f:Ljava/util/List;

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Leqo;->g:Ljava/util/List;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Leqo;->h:Ljava/util/List;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Leqo;->i:Ljava/util/List;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Leqo;->j:Ljava/util/List;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Leqo;->k:Ljava/util/List;

    .line 52
    iput-boolean v1, p0, Leqo;->a:Z

    .line 53
    iput-boolean v1, p0, Leqo;->b:Z

    .line 57
    iput-object p1, p0, Leqo;->c:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    .line 58
    iput-object p2, p0, Leqo;->d:Leqn$b;

    .line 59
    iget-object v0, p0, Leqo;->d:Leqn$b;

    invoke-interface {v0, p0}, Leqn$b;->setPresenter(Lcjd;)V

    .line 60
    return-void
.end method

.method private f()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 249
    invoke-direct {p0}, Leqo;->l()Z

    move-result v4

    if-nez v4, :cond_1

    .line 275
    :cond_0
    :goto_0
    return-void

    .line 253
    :cond_1
    iget-object v4, p0, Leqo;->c:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-static {v4}, Lcom/alibaba/android/search/SearchConsts;->a(Landroid/app/Activity;)I

    move-result v3

    .line 255
    .local v3, "recommendGroupSize":I
    iget-object v4, p0, Leqo;->i:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v4, v3, :cond_0

    iget-object v4, p0, Leqo;->e:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 259
    iget-object v4, p0, Leqo;->i:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    sub-int v1, v3, v4

    .line 260
    .local v1, "count":I
    iget-object v4, p0, Leqo;->e:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v1, :cond_2

    .line 261
    iget-object v4, p0, Leqo;->i:Ljava/util/List;

    iget-object v5, p0, Leqo;->e:Ljava/util/List;

    invoke-interface {v5, v6, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 267
    :goto_1
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_2
    iget-object v4, p0, Leqo;->i:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 268
    iget-object v4, p0, Leqo;->i:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/search/model/BaseModel;

    .line 269
    .local v0, "baseModel":Lcom/alibaba/android/search/model/BaseModel;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/alibaba/android/search/model/BaseModel;->getLogSearchType()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->CLICKED_GROUP:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    invoke-virtual {v5}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->getValue()Ljava/lang/String;

    move-result-object v5

    if-ne v4, v5, :cond_3

    .line 270
    iget-object v4, p0, Leqo;->i:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 271
    iget-object v4, p0, Leqo;->i:Ljava/util/List;

    invoke-interface {v4, v6, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 263
    .end local v0    # "baseModel":Lcom/alibaba/android/search/model/BaseModel;
    .end local v2    # "index":I
    :cond_2
    iget-object v4, p0, Leqo;->i:Ljava/util/List;

    iget-object v5, p0, Leqo;->e:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 267
    .restart local v0    # "baseModel":Lcom/alibaba/android/search/model/BaseModel;
    .restart local v2    # "index":I
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method private j()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 279
    invoke-direct {p0}, Leqo;->l()Z

    move-result v1

    if-nez v1, :cond_1

    .line 293
    :cond_0
    return-void

    .line 283
    :cond_1
    iget-object v1, p0, Leqo;->j:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 284
    iget-object v1, p0, Leqo;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/search/model/BaseModel;

    .line 286
    .local v0, "contact":Lcom/alibaba/android/search/model/BaseModel;
    iget-object v2, p0, Leqo;->i:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 290
    iget-object v2, p0, Leqo;->j:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private k()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 297
    invoke-direct {p0}, Leqo;->l()Z

    move-result v1

    if-nez v1, :cond_1

    .line 310
    :cond_0
    return-void

    .line 301
    :cond_1
    iget-object v1, p0, Leqo;->k:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 302
    iget-object v1, p0, Leqo;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/search/model/BaseModel;

    .line 304
    .local v0, "group":Lcom/alibaba/android/search/model/BaseModel;
    iget-object v2, p0, Leqo;->i:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 308
    iget-object v2, p0, Leqo;->k:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private l()Z
    .locals 1

    .prologue
    .line 313
    iget-boolean v0, p0, Leqo;->a:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Leqo;->b:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/search/model/BaseModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 201
    iget-object v0, p0, Leqo;->h:Ljava/util/List;

    return-object v0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0
    .param p1, "keyword"    # Ljava/lang/String;

    .prologue
    .line 229
    iput-object p1, p0, Leqo;->l:Ljava/lang/String;

    .line 230
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/search/model/BaseModel;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 65
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/search/model/BaseModel;>;"
    if-eqz p1, :cond_0

    .line 66
    iget-object v0, p0, Leqo;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 67
    iget-object v0, p0, Leqo;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 70
    :cond_0
    iget-object v0, p0, Leqo;->d:Leqn$b;

    iget-object v1, p0, Leqo;->h:Ljava/util/List;

    invoke-interface {v0, v1}, Leqn$b;->a(Ljava/util/List;)V

    .line 72
    iget-object v0, p0, Leqo;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 73
    iget-object v0, p0, Leqo;->d:Leqn$b;

    iget-object v1, p0, Leqo;->j:Ljava/util/List;

    invoke-interface {v0, v1}, Leqn$b;->c(Ljava/util/List;)V

    .line 75
    :cond_1
    iget-object v0, p0, Leqo;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 76
    iget-object v0, p0, Leqo;->d:Leqn$b;

    iget-object v1, p0, Leqo;->k:Ljava/util/List;

    invoke-interface {v0, v1}, Leqn$b;->d(Ljava/util/List;)V

    .line 78
    :cond_2
    return-void
.end method

.method public final b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/search/model/BaseModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 196
    iget-object v0, p0, Leqo;->i:Ljava/util/List;

    return-object v0
.end method

.method public final b(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/search/model/BaseModel;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/search/model/BaseModel;>;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 82
    iget-boolean v3, p0, Leqo;->a:Z

    if-nez v3, :cond_2

    .line 83
    iput-boolean v1, p0, Leqo;->a:Z

    .line 85
    iget-object v3, p0, Leqo;->c:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-static {v3}, Lcom/alibaba/android/search/SearchConsts;->a(Landroid/app/Activity;)I

    move-result v0

    .line 1120
    .local v0, "recommendContactSizeLimit":I
    invoke-static {}, Lcom/alibaba/android/search/service/SearchHistoryManager;->a()Lcom/alibaba/android/search/service/SearchHistoryManager;

    move-result-object v3

    iget-object v4, p0, Leqo;->l:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/alibaba/android/search/service/SearchHistoryManager;->a(Ljava/lang/String;)Lcom/alibaba/android/search/service/SearchHistoryManager$HistoryItem;

    move-result-object v3

    .line 1121
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Lcom/alibaba/android/search/service/SearchHistoryManager$HistoryItem;->isGroupClickHistory()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 86
    :goto_0
    if-eqz v1, :cond_0

    .line 87
    add-int/lit8 v0, v0, -0x1

    .line 90
    :cond_0
    if-eqz p1, :cond_1

    .line 91
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v0, :cond_6

    if-lez v0, :cond_6

    .line 92
    iget-object v1, p0, Leqo;->i:Ljava/util/List;

    invoke-interface {p1, v2, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 99
    :cond_1
    :goto_1
    invoke-direct {p0}, Leqo;->f()V

    .line 102
    invoke-direct {p0}, Leqo;->j()V

    .line 105
    invoke-direct {p0}, Leqo;->k()V

    .line 109
    .end local v0    # "recommendContactSizeLimit":I
    :cond_2
    iget-object v1, p0, Leqo;->d:Leqn$b;

    iget-object v2, p0, Leqo;->i:Ljava/util/List;

    invoke-interface {v1, v2}, Leqn$b;->b(Ljava/util/List;)V

    .line 111
    iget-object v1, p0, Leqo;->j:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 112
    iget-object v1, p0, Leqo;->d:Leqn$b;

    iget-object v2, p0, Leqo;->j:Ljava/util/List;

    invoke-interface {v1, v2}, Leqn$b;->c(Ljava/util/List;)V

    .line 114
    :cond_3
    iget-object v1, p0, Leqo;->k:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 115
    iget-object v1, p0, Leqo;->d:Leqn$b;

    iget-object v2, p0, Leqo;->k:Ljava/util/List;

    invoke-interface {v1, v2}, Leqn$b;->d(Ljava/util/List;)V

    .line 117
    :cond_4
    return-void

    .restart local v0    # "recommendContactSizeLimit":I
    :cond_5
    move v1, v2

    .line 1121
    goto :goto_0

    .line 94
    :cond_6
    iget-object v1, p0, Leqo;->i:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1
.end method

.method public final c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/search/model/BaseModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 206
    iget-object v0, p0, Leqo;->j:Ljava/util/List;

    return-object v0
.end method

.method public final c(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/search/model/BaseModel;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 127
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/search/model/BaseModel;>;"
    iget-boolean v0, p0, Leqo;->b:Z

    if-eqz v0, :cond_1

    .line 154
    :cond_0
    :goto_0
    return-void

    .line 131
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Leqo;->b:Z

    .line 133
    if-eqz p1, :cond_2

    .line 134
    iget-object v0, p0, Leqo;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 138
    :cond_2
    invoke-direct {p0}, Leqo;->f()V

    .line 141
    invoke-direct {p0}, Leqo;->j()V

    .line 144
    invoke-direct {p0}, Leqo;->k()V

    .line 147
    iget-object v0, p0, Leqo;->d:Leqn$b;

    iget-object v1, p0, Leqo;->i:Ljava/util/List;

    invoke-interface {v0, v1}, Leqn$b;->b(Ljava/util/List;)V

    .line 148
    iget-object v0, p0, Leqo;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 149
    iget-object v0, p0, Leqo;->d:Leqn$b;

    iget-object v1, p0, Leqo;->j:Ljava/util/List;

    invoke-interface {v0, v1}, Leqn$b;->c(Ljava/util/List;)V

    .line 151
    :cond_3
    iget-object v0, p0, Leqo;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 152
    iget-object v0, p0, Leqo;->d:Leqn$b;

    iget-object v1, p0, Leqo;->k:Ljava/util/List;

    invoke-interface {v0, v1}, Leqn$b;->d(Ljava/util/List;)V

    goto :goto_0
.end method

.method public final d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/search/model/BaseModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 211
    iget-object v0, p0, Leqo;->k:Ljava/util/List;

    return-object v0
.end method

.method public final d(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/search/model/BaseModel;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 159
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/search/model/BaseModel;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 173
    :cond_0
    :goto_0
    return-void

    .line 163
    :cond_1
    iget-object v0, p0, Leqo;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 164
    iget-object v0, p0, Leqo;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 167
    invoke-direct {p0}, Leqo;->j()V

    .line 170
    iget-object v0, p0, Leqo;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 171
    iget-object v0, p0, Leqo;->d:Leqn$b;

    iget-object v1, p0, Leqo;->j:Ljava/util/List;

    invoke-interface {v0, v1}, Leqn$b;->c(Ljava/util/List;)V

    goto :goto_0
.end method

.method public final e()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 216
    iget-object v0, p0, Leqo;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 217
    iget-object v0, p0, Leqo;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 218
    iget-object v0, p0, Leqo;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 219
    iget-object v0, p0, Leqo;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 220
    iget-object v0, p0, Leqo;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 221
    iget-object v0, p0, Leqo;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 222
    iput-boolean v1, p0, Leqo;->a:Z

    .line 223
    iput-boolean v1, p0, Leqo;->b:Z

    .line 224
    const-string/jumbo v0, ""

    iput-object v0, p0, Leqo;->l:Ljava/lang/String;

    .line 225
    return-void
.end method

.method public final e(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/search/model/BaseModel;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 178
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/search/model/BaseModel;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 192
    :cond_0
    :goto_0
    return-void

    .line 182
    :cond_1
    iget-object v0, p0, Leqo;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 183
    iget-object v0, p0, Leqo;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 186
    invoke-direct {p0}, Leqo;->k()V

    .line 189
    iget-object v0, p0, Leqo;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 190
    iget-object v0, p0, Leqo;->d:Leqn$b;

    iget-object v1, p0, Leqo;->k:Ljava/util/List;

    invoke-interface {v0, v1}, Leqn$b;->d(Ljava/util/List;)V

    goto :goto_0
.end method

.method public final g()V
    .locals 0

    .prologue
    .line 235
    return-void
.end method

.method public final h()V
    .locals 0

    .prologue
    .line 240
    return-void
.end method

.method public final i()V
    .locals 0

    .prologue
    .line 245
    return-void
.end method
