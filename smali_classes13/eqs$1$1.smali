.class final Leqs$1$1;
.super Ljava/lang/Object;
.source "ContactSearchPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leqs$1;->a(Ljava/lang/String;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Leqs$1;


# direct methods
.method constructor <init>(Leqs$1;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .param p1, "this$1"    # Leqs$1;

    .prologue
    .line 423
    iput-object p1, p0, Leqs$1$1;->c:Leqs$1;

    iput-object p2, p0, Leqs$1$1;->a:Ljava/lang/String;

    iput-object p3, p0, Leqs$1$1;->b:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 426
    const-string/jumbo v0, "wukong_user"

    iget-object v1, p0, Leqs$1$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 427
    iget-object v0, p0, Leqs$1$1;->c:Leqs$1;

    iget-object v0, v0, Leqs$1;->b:Leqs;

    iget-object v1, p0, Leqs$1$1;->b:Ljava/util/List;

    invoke-static {v0, v1}, Leqs;->a(Leqs;Ljava/util/List;)V

    .line 432
    :cond_0
    :goto_0
    iget-object v0, p0, Leqs$1$1;->c:Leqs$1;

    iget-object v0, v0, Leqs$1;->b:Leqs;

    invoke-static {v0}, Leqs;->a(Leqs;)I

    move-result v0

    if-ne v0, v6, :cond_3

    .line 433
    iget-object v0, p0, Leqs$1$1;->c:Leqs$1;

    iget-object v0, v0, Leqs$1;->b:Leqs;

    invoke-static {v0}, Leqs;->b(Leqs;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 434
    iget-object v0, p0, Leqs$1$1;->c:Leqs$1;

    iget-object v0, v0, Leqs$1;->b:Leqs;

    iget-object v1, p0, Leqs$1$1;->c:Leqs$1;

    iget-object v1, v1, Leqs$1;->b:Leqs;

    invoke-static {v1}, Leqs;->b(Leqs;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Leqs$1$1;->c:Leqs$1;

    .line 1047
    iget-object v2, v2, Lesb;->c:Lesa;

    invoke-virtual {v2}, Lesa;->c()Ljava/lang/String;

    move-result-object v2

    .line 434
    iget-object v3, p0, Leqs$1$1;->c:Leqs$1;

    .line 2037
    iget-object v3, v3, Lesb;->c:Lesa;

    invoke-virtual {v3}, Lesa;->a()Leoe;

    move-result-object v3

    .line 434
    invoke-static {v0, v1, v2, v3, v4}, Leqs;->a(Leqs;Ljava/util/List;Ljava/lang/String;Leoe;Z)V

    .line 435
    const-string/jumbo v0, "[Contact]searchRecommendContacts %d %d %d"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Leqs$1$1;->c:Leqs$1;

    iget-object v2, v2, Leqs$1;->b:Leqs;

    iget v2, v2, Leqs;->g:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    iget-object v2, p0, Leqs$1$1;->c:Leqs$1;

    iget-object v2, v2, Leqs$1;->b:Leqs;

    invoke-static {v2}, Leqs;->b(Leqs;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    iget-object v2, p0, Leqs$1$1;->c:Leqs$1;

    iget-object v2, v2, Leqs$1;->b:Leqs;

    invoke-static {v2}, Leqs;->c(Leqs;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    .line 2050
    const-string/jumbo v2, "search"

    invoke-static {v2, v0, v1}, Letc;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 438
    :cond_1
    iget-object v0, p0, Leqs$1$1;->c:Leqs$1;

    iget-object v0, v0, Leqs$1;->b:Leqs;

    invoke-static {v0}, Leqs;->d(Leqs;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Leqs$1$1;->c:Leqs$1;

    iget-object v0, v0, Leqs$1;->b:Leqs;

    invoke-static {v0}, Leqs;->e(Leqs;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 439
    iget-object v0, p0, Leqs$1$1;->c:Leqs$1;

    iget-object v0, v0, Leqs$1;->b:Leqs;

    invoke-static {v0}, Leqs;->b(Leqs;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Leqs$1$1;->c:Leqs$1;

    iget-object v0, v0, Leqs$1;->b:Leqs;

    invoke-static {v0}, Leqs;->f(Leqs;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_5

    iget-object v0, p0, Leqs$1$1;->c:Leqs$1;

    iget-object v0, v0, Leqs$1;->b:Leqs;

    invoke-static {v0}, Leqs;->b(Leqs;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v5, :cond_5

    .line 440
    :cond_2
    const-string/jumbo v0, "[Contact]Empty contact recommends, remote search"

    new-array v1, v4, [Ljava/lang/Object;

    .line 3050
    const-string/jumbo v2, "search"

    invoke-static {v2, v0, v1}, Letc;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 441
    iget-object v0, p0, Leqs$1$1;->c:Leqs$1;

    iget-object v0, v0, Leqs$1;->b:Leqs;

    invoke-static {v0}, Leqs;->g(Leqs;)V

    .line 459
    :cond_3
    :goto_1
    return-void

    .line 428
    :cond_4
    const-string/jumbo v0, "task_recommend_contact"

    iget-object v1, p0, Leqs$1$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 429
    iget-object v0, p0, Leqs$1$1;->c:Leqs$1;

    iget-object v0, v0, Leqs$1;->b:Leqs;

    iget-object v1, p0, Leqs$1$1;->b:Ljava/util/List;

    invoke-static {v0, v1}, Leqs;->b(Leqs;Ljava/util/List;)V

    goto/16 :goto_0

    .line 445
    :cond_5
    iget-object v0, p0, Leqs$1$1;->c:Leqs$1;

    iget-object v0, v0, Leqs$1;->b:Leqs;

    invoke-static {v0, v4}, Leqs;->a(Leqs;I)I

    .line 446
    iget-object v0, p0, Leqs$1$1;->c:Leqs$1;

    iget-object v0, v0, Leqs$1;->b:Leqs;

    iput v4, v0, Leqs;->g:I

    .line 451
    :goto_2
    iget-object v0, p0, Leqs$1$1;->c:Leqs$1;

    iget-object v0, v0, Leqs$1;->b:Leqs;

    iget v0, v0, Leqs;->h:I

    const/16 v1, 0x50

    if-le v0, v1, :cond_7

    .line 452
    iget-object v0, p0, Leqs$1$1;->c:Leqs$1;

    iget-object v0, v0, Leqs$1;->b:Leqs;

    iput v4, v0, Leqs;->h:I

    .line 453
    iget-object v0, p0, Leqs$1$1;->c:Leqs$1;

    iget-object v0, v0, Leqs$1;->b:Leqs;

    invoke-virtual {v0}, Leqs;->o()V

    goto :goto_1

    .line 448
    :cond_6
    iget-object v0, p0, Leqs$1$1;->c:Leqs$1;

    iget-object v0, v0, Leqs$1;->b:Leqs;

    iget v1, v0, Leqs;->g:I

    add-int/lit8 v1, v1, 0x64

    iput v1, v0, Leqs;->g:I

    goto :goto_2

    .line 456
    :cond_7
    iget-object v0, p0, Leqs$1$1;->c:Leqs$1;

    iget-object v0, v0, Leqs$1;->b:Leqs;

    invoke-virtual {v0}, Leqs;->a()V

    goto :goto_1
.end method
