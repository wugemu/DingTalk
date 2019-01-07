.class public final Layv;
.super Ljava/lang/Object;
.source "SingleChatTaskController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Layv$h;,
        Layv$a;,
        Layv$i;,
        Layv$e;,
        Layv$g;,
        Layv$f;,
        Layv$d;,
        Layv$c;,
        Layv$b;
    }
.end annotation


# static fields
.field private static volatile k:Layv;

.field private static l:Ljava/lang/Object;


# instance fields
.field public a:J

.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Layv$b;",
            ">;"
        }
    .end annotation
.end field

.field public c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Layv$c;",
            ">;"
        }
    .end annotation
.end field

.field public d:Layv$d;

.field public e:Layv$f;

.field public f:Layv$g;

.field public g:Layv$e;

.field public h:Layv$i;

.field public i:Layv$a;

.field public j:Layv$h;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Layv;->l:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Layv;->b:Ljava/util/List;

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Layv;->c:Ljava/util/List;

    .line 36
    return-void
.end method

.method public static a()Layv;
    .locals 4

    .prologue
    .line 39
    sget-object v0, Layv;->k:Layv;

    .line 40
    .local v0, "result":Layv;
    if-nez v0, :cond_1

    .line 41
    sget-object v3, Layv;->l:Ljava/lang/Object;

    monitor-enter v3

    .line 42
    :try_start_0
    sget-object v0, Layv;->k:Layv;

    .line 43
    if-nez v0, :cond_0

    .line 44
    new-instance v1, Layv;

    invoke-direct {v1}, Layv;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "result":Layv;
    .local v1, "result":Layv;
    :try_start_1
    sput-object v1, Layv;->k:Layv;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v0, v1

    .line 46
    .end local v1    # "result":Layv;
    .restart local v0    # "result":Layv;
    :cond_0
    :try_start_2
    monitor-exit v3

    .line 49
    :cond_1
    return-object v0

    .line 46
    :catchall_0
    move-exception v2

    :goto_0
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .end local v0    # "result":Layv;
    .restart local v1    # "result":Layv;
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "result":Layv;
    .restart local v0    # "result":Layv;
    goto :goto_0
.end method

.method static synthetic a(Layv;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Layv;

    .prologue
    .line 17
    iget-object v0, p0, Layv;->b:Ljava/util/List;

    return-object v0
.end method

.method static synthetic b(Layv;)Layv$d;
    .locals 1
    .param p0, "x0"    # Layv;

    .prologue
    .line 17
    iget-object v0, p0, Layv;->d:Layv$d;

    return-object v0
.end method

.method static synthetic c(Layv;)Layv$f;
    .locals 1
    .param p0, "x0"    # Layv;

    .prologue
    .line 17
    iget-object v0, p0, Layv;->e:Layv$f;

    return-object v0
.end method

.method static synthetic d(Layv;)Layv$g;
    .locals 1
    .param p0, "x0"    # Layv;

    .prologue
    .line 17
    iget-object v0, p0, Layv;->f:Layv$g;

    return-object v0
.end method

.method static synthetic e(Layv;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Layv;

    .prologue
    .line 17
    iget-object v0, p0, Layv;->c:Ljava/util/List;

    return-object v0
.end method

.method static synthetic f(Layv;)Layv$e;
    .locals 1
    .param p0, "x0"    # Layv;

    .prologue
    .line 17
    iget-object v0, p0, Layv;->g:Layv$e;

    return-object v0
.end method

.method static synthetic g(Layv;)Layv$i;
    .locals 1
    .param p0, "x0"    # Layv;

    .prologue
    .line 17
    iget-object v0, p0, Layv;->h:Layv$i;

    return-object v0
.end method

.method static synthetic h(Layv;)Layv$a;
    .locals 1
    .param p0, "x0"    # Layv;

    .prologue
    .line 17
    iget-object v0, p0, Layv;->i:Layv$a;

    return-object v0
.end method

.method static synthetic i(Layv;)Layv$h;
    .locals 1
    .param p0, "x0"    # Layv;

    .prologue
    .line 17
    iget-object v0, p0, Layv;->j:Layv$h;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/alibaba/android/ding/base/objects/ObjectDing;)V
    .locals 2
    .param p1, "objectDing"    # Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 123
    invoke-virtual {p0, p1}, Layv;->e(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    :goto_0
    return-void

    .line 127
    :cond_0
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Layv$1;

    invoke-direct {v1, p0, p1}, Layv$1;-><init>(Layv;Lcom/alibaba/android/ding/base/objects/ObjectDing;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public final b()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 108
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Layv;->a:J

    .line 110
    iget-object v0, p0, Layv;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 111
    iget-object v0, p0, Layv;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 112
    iput-object v2, p0, Layv;->d:Layv$d;

    .line 113
    iput-object v2, p0, Layv;->e:Layv$f;

    .line 114
    iput-object v2, p0, Layv;->f:Layv$g;

    .line 115
    iput-object v2, p0, Layv;->g:Layv$e;

    .line 116
    iput-object v2, p0, Layv;->h:Layv$i;

    .line 117
    iput-object v2, p0, Layv;->j:Layv$h;

    .line 118
    iput-object v2, p0, Layv;->i:Layv$a;

    .line 119
    return-void
.end method

.method public final b(Lcom/alibaba/android/ding/base/objects/ObjectDing;)V
    .locals 2
    .param p1, "objectDing"    # Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 158
    if-nez p1, :cond_1

    .line 175
    :cond_0
    :goto_0
    return-void

    .line 162
    :cond_1
    invoke-virtual {p1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Layv$3;

    invoke-direct {v1, p0, p1}, Layv$3;-><init>(Layv;Lcom/alibaba/android/ding/base/objects/ObjectDing;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public final c(Lcom/alibaba/android/ding/base/objects/ObjectDing;)V
    .locals 4
    .param p1, "objectDing"    # Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v0, 0x1

    .line 195
    .line 1309
    if-nez p1, :cond_1

    .line 195
    :cond_0
    :goto_0
    if-eqz v0, :cond_2

    .line 209
    :goto_1
    return-void

    .line 1313
    :cond_1
    invoke-virtual {p1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1317
    invoke-virtual {p1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->A()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1321
    invoke-virtual {p1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->j()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->j()Ljava/util/List;

    move-result-object v1

    iget-wide v2, p0, Layv;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1325
    const/4 v0, 0x0

    goto :goto_0

    .line 199
    :cond_2
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Layv$5;

    invoke-direct {v1, p0, p1}, Layv$5;-><init>(Layv;Lcom/alibaba/android/ding/base/objects/ObjectDing;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    goto :goto_1
.end method

.method public final d(Lcom/alibaba/android/ding/base/objects/ObjectDing;)V
    .locals 2
    .param p1, "objectDing"    # Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 230
    invoke-virtual {p0, p1}, Layv;->f(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 245
    :goto_0
    return-void

    .line 234
    :cond_0
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Layv$7;

    invoke-direct {v1, p0, p1}, Layv$7;-><init>(Layv;Lcom/alibaba/android/ding/base/objects/ObjectDing;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public e(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z
    .locals 6
    .param p1, "objectDing"    # Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v0, 0x1

    .line 282
    if-nez p1, :cond_1

    .line 304
    :cond_0
    :goto_0
    return v0

    .line 286
    :cond_1
    invoke-virtual {p1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 290
    invoke-virtual {p1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->z()Z

    move-result v1

    if-nez v1, :cond_0

    .line 295
    invoke-virtual {p1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->E()J

    move-result-wide v2

    iget-wide v4, p0, Layv;->a:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 300
    invoke-virtual {p1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->q()Lcom/alibaba/android/ding/base/objects/ObjectDing$RoleStatus;

    move-result-object v1

    sget-object v2, Lcom/alibaba/android/ding/base/objects/ObjectDing$RoleStatus;->PARTICIPANT:Lcom/alibaba/android/ding/base/objects/ObjectDing$RoleStatus;

    if-eq v1, v2, :cond_0

    .line 304
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z
    .locals 8
    .param p1, "objectDing"    # Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 330
    if-nez p1, :cond_1

    .line 346
    :cond_0
    :goto_0
    return v2

    .line 334
    :cond_1
    invoke-virtual {p1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->d()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 339
    invoke-virtual {p1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->A()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {p1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->B()Z

    move-result v4

    if-eqz v4, :cond_5

    :cond_2
    invoke-virtual {p1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->E()J

    move-result-wide v4

    iget-wide v6, p0, Layv;->a:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_5

    move v0, v2

    .line 341
    .local v0, "isValidReceiver":Z
    :goto_1
    invoke-virtual {p1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->z()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {p1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->B()Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_3
    invoke-virtual {p1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->j()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-virtual {p1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->j()Ljava/util/List;

    move-result-object v4

    iget-wide v6, p0, Layv;->a:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    move v1, v2

    .line 342
    .local v1, "isValidSender":Z
    :goto_2
    if-nez v0, :cond_4

    if-eqz v1, :cond_0

    :cond_4
    move v2, v3

    .line 346
    goto :goto_0

    .end local v0    # "isValidReceiver":Z
    .end local v1    # "isValidSender":Z
    :cond_5
    move v0, v3

    .line 339
    goto :goto_1

    .restart local v0    # "isValidReceiver":Z
    :cond_6
    move v1, v3

    .line 341
    goto :goto_2
.end method
