.class public final Lesf;
.super Ljava/lang/Object;
.source "UserLifeCycleRecommend.java"


# instance fields
.field a:Z

.field b:Z

.field c:Landroid/os/Handler;

.field d:Z

.field e:Z

.field private f:Ljava/util/Random;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-boolean v0, p0, Lesf;->a:Z

    .line 30
    iput-boolean v0, p0, Lesf;->b:Z

    .line 33
    iput-boolean v0, p0, Lesf;->d:Z

    .line 34
    iput-boolean v0, p0, Lesf;->e:Z

    .line 37
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lesf;->c:Landroid/os/Handler;

    .line 38
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lesf;->f:Ljava/util/Random;

    .line 39
    return-void
.end method


# virtual methods
.method a(I)J
    .locals 4
    .param p1, "days"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 227
    int-to-long v0, p1

    const-wide/32 v2, 0x5265c00

    mul-long/2addr v0, v2

    iget-object v2, p0, Lesf;->f:Ljava/util/Random;

    const v3, 0x5265c00

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method a()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 133
    iget-boolean v1, p0, Lesf;->d:Z

    if-eqz v1, :cond_0

    .line 134
    const-string/jumbo v1, "is fetching full user data"

    new-array v2, v2, [Ljava/lang/Object;

    .line 3073
    const-string/jumbo v3, "search_rec"

    invoke-static {v3, v1, v2}, Letc;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 179
    :goto_0
    return-void

    .line 138
    :cond_0
    iput-boolean v4, p0, Lesf;->d:Z

    .line 139
    const-string/jumbo v1, "fetchFullUserData"

    new-array v2, v2, [Ljava/lang/Object;

    .line 4073
    const-string/jumbo v3, "search_rec"

    invoke-static {v3, v1, v2}, Letc;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 140
    new-instance v0, Lesf$3;

    invoke-direct {v0, p0}, Lesf$3;-><init>(Lesf;)V

    .line 174
    .local v0, "apiEventListener":Lcma;
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v1

    const-string/jumbo v2, "f_search_support_contact_local_enhance"

    invoke-virtual {v1, v2, v4}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 175
    invoke-static {}, Lenc;->b()Lenb;

    move-result-object v1

    invoke-interface {v1, v0}, Lenb;->a(Lcma;)V

    goto :goto_0

    .line 177
    :cond_1
    invoke-static {}, Lenc;->b()Lenb;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-interface {v1, v2, v3, v4, v0}, Lenb;->a(JZLcma;)V

    goto :goto_0
.end method

.method public final a(J)V
    .locals 5
    .param p1, "delay"    # J

    .prologue
    const/4 v3, 0x0

    .line 73
    const-string/jumbo v0, "fetchFullData"

    new-array v1, v3, [Ljava/lang/Object;

    .line 1073
    const-string/jumbo v2, "search_rec"

    invoke-static {v2, v0, v1}, Letc;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 74
    iget-boolean v0, p0, Lesf;->a:Z

    if-eqz v0, :cond_0

    .line 75
    const-string/jumbo v0, "stopped"

    new-array v1, v3, [Ljava/lang/Object;

    .line 2073
    const-string/jumbo v2, "search_rec"

    invoke-static {v2, v0, v1}, Letc;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 90
    :goto_0
    return-void

    .line 78
    :cond_0
    iget-object v0, p0, Lesf;->c:Landroid/os/Handler;

    new-instance v1, Lesf$2;

    invoke-direct {v1, p0}, Lesf$2;-><init>(Lesf;)V

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method b()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 183
    iget-boolean v0, p0, Lesf;->e:Z

    if-eqz v0, :cond_0

    .line 184
    const-string/jumbo v0, "is fetching full group data"

    new-array v1, v1, [Ljava/lang/Object;

    .line 5073
    const-string/jumbo v2, "search_rec"

    invoke-static {v2, v0, v1}, Letc;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 223
    :goto_0
    return-void

    .line 188
    :cond_0
    iput-boolean v4, p0, Lesf;->e:Z

    .line 189
    const-string/jumbo v0, "fetchFullGroupData"

    new-array v1, v1, [Ljava/lang/Object;

    .line 6073
    const-string/jumbo v2, "search_rec"

    invoke-static {v2, v0, v1}, Letc;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 190
    invoke-static {}, Lenc;->b()Lenb;

    move-result-object v0

    const-wide/16 v2, 0x0

    new-instance v1, Lesf$4;

    invoke-direct {v1, p0}, Lesf$4;-><init>(Lesf;)V

    invoke-interface {v0, v2, v3, v4, v1}, Lenb;->b(JZLcma;)V

    goto :goto_0
.end method
