.class final Lesf$1;
.super Ljava/lang/Object;
.source "UserLifeCycleRecommend.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lesf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lesf;


# direct methods
.method constructor <init>(Lesf;)V
    .locals 0
    .param p1, "this$0"    # Lesf;

    .prologue
    .line 53
    iput-object p1, p0, Lesf$1;->a:Lesf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v10, 0x1

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    .line 57
    iget-object v0, p0, Lesf$1;->a:Lesf;

    .line 1025
    iget-boolean v0, v0, Lesf;->a:Z

    .line 57
    if-eqz v0, :cond_1

    .line 58
    const-string/jumbo v0, "stopped"

    new-array v1, v7, [Ljava/lang/Object;

    .line 1073
    const-string/jumbo v2, "search_rec"

    invoke-static {v2, v0, v1}, Letc;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4107
    :cond_0
    :goto_0
    return-void

    .line 61
    :cond_1
    iget-object v0, p0, Lesf$1;->a:Lesf;

    .line 2118
    const-string/jumbo v1, "intimacy_group_syn_time"

    invoke-static {v1, v8, v9}, Lcpk;->a(Ljava/lang/String;J)J

    move-result-wide v2

    .line 2119
    cmp-long v1, v2, v8

    if-gtz v1, :cond_3

    .line 2120
    invoke-virtual {v0}, Lesf;->b()V

    .line 62
    :cond_2
    :goto_1
    iget-object v0, p0, Lesf$1;->a:Lesf;

    .line 4105
    const-string/jumbo v1, "intimacy_user_syn_time"

    invoke-static {v1, v8, v9}, Lcpk;->a(Ljava/lang/String;J)J

    move-result-wide v2

    .line 4106
    cmp-long v1, v2, v8

    if-gtz v1, :cond_4

    .line 4107
    invoke-virtual {v0}, Lesf;->a()V

    goto :goto_0

    .line 2122
    :cond_3
    invoke-static {}, Lese;->b()I

    move-result v1

    .line 2123
    const-string/jumbo v4, "synDays=%d"

    new-array v5, v10, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    .line 3073
    const-string/jumbo v6, "search_rec"

    invoke-static {v6, v4, v5}, Letc;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2124
    invoke-static {}, Liaf;->c()J

    move-result-wide v4

    sub-long v2, v4, v2

    invoke-virtual {v0, v1}, Lesf;->a(I)J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-lez v1, :cond_2

    .line 2125
    invoke-virtual {v0}, Lesf;->b()V

    goto :goto_1

    .line 4109
    :cond_4
    invoke-static {}, Lese;->b()I

    move-result v1

    .line 4110
    const-string/jumbo v4, "synDays=%d"

    new-array v5, v10, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    .line 5073
    const-string/jumbo v6, "search_rec"

    invoke-static {v6, v4, v5}, Letc;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4111
    invoke-static {}, Liaf;->c()J

    move-result-wide v4

    sub-long v2, v4, v2

    invoke-virtual {v0, v1}, Lesf;->a(I)J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 4112
    invoke-virtual {v0}, Lesf;->a()V

    goto :goto_0
.end method
