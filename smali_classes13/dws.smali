.class public Ldws;
.super Ljava/lang/Object;
.source "RecruitmentApiImpl.java"

# interfaces
.implements Ldwr;


# static fields
.field private static volatile a:Ldwr;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method

.method public static a()Ldwr;
    .locals 2

    .prologue
    .line 28
    sget-object v0, Ldws;->a:Ldwr;

    if-nez v0, :cond_1

    .line 29
    const-class v1, Ldws;

    monitor-enter v1

    .line 30
    :try_start_0
    sget-object v0, Ldws;->a:Ldwr;

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Ldws;

    invoke-direct {v0}, Ldws;-><init>()V

    sput-object v0, Ldws;->a:Ldwr;

    .line 33
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    :cond_1
    sget-object v0, Ldws;->a:Ldwr;

    return-object v0

    .line 33
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public final a(Ldwy;Lcma;)V
    .locals 10
    .param p1, "userObjectList"    # Ldwy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldwy;",
            "Lcma",
            "<",
            "Ljava/util/List",
            "<",
            "Ldwz;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p2, "apiEventListener":Lcma;, "Lcma<Ljava/util/List<Ldwz;>;>;"
    const/4 v4, 0x0

    .line 46
    .line 1018
    if-eqz p1, :cond_0

    iget-object v2, p1, Ldwy;->a:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p1, Ldwy;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move-object v0, v4

    .line 47
    .local v0, "model":Ldwu;
    :goto_0
    if-nez v0, :cond_7

    .line 49
    const-string/jumbo v2, "-1"

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object v3

    sget v4, Lctk$i;->unknown_error:I

    invoke-virtual {v3, v4}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v2, v3}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    :goto_1
    return-void

    .line 1021
    .end local v0    # "model":Ldwu;
    :cond_1
    new-instance v0, Ldwu;

    invoke-direct {v0}, Ldwu;-><init>()V

    .line 1022
    iget v2, p1, Ldwy;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v0, Ldwu;->b:Ljava/lang/Integer;

    .line 1023
    iget-object v2, p1, Ldwy;->a:Ljava/util/List;

    .line 1030
    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    move-object v2, v4

    .line 1023
    :goto_2
    iput-object v2, v0, Ldwu;->a:Ljava/util/List;

    goto :goto_0

    .line 1033
    :cond_3
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1035
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_4
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldwx;

    .line 2019
    if-nez v2, :cond_5

    move-object v2, v4

    .line 1037
    :goto_4
    if-eqz v2, :cond_4

    .line 1038
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 2022
    :cond_5
    new-instance v5, Ldwv;

    invoke-direct {v5}, Ldwv;-><init>()V

    .line 2023
    iget-object v7, v2, Ldwx;->a:Ljava/lang/String;

    iput-object v7, v5, Ldwv;->a:Ljava/lang/String;

    .line 2024
    iget-wide v8, v2, Ldwx;->b:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    iput-object v7, v5, Ldwv;->b:Ljava/lang/Long;

    .line 2025
    iget-object v2, v2, Ldwx;->c:Ljava/lang/String;

    iput-object v2, v5, Ldwv;->c:Ljava/lang/String;

    move-object v2, v5

    .line 2026
    goto :goto_4

    :cond_6
    move-object v2, v3

    .line 1041
    goto :goto_2

    .line 53
    .restart local v0    # "model":Ldwu;
    :cond_7
    const-class v2, Lcom/alibaba/android/dingtalkim/recruitment/RecruimentImIService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkim/recruitment/RecruimentImIService;

    .line 54
    .local v1, "service":Lcom/alibaba/android/dingtalkim/recruitment/RecruimentImIService;
    new-instance v2, Ldws$1;

    invoke-direct {v2, p0, p2}, Ldws$1;-><init>(Ldws;Lcma;)V

    invoke-interface {v1, v0, v2}, Lcom/alibaba/android/dingtalkim/recruitment/RecruimentImIService;->getUpdatedUsersInfo(Ldwu;Liyv;)V

    goto :goto_1
.end method
