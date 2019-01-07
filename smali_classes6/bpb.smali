.class public final Lbpb;
.super Lbpa;
.source "CircleCommentDataSourceImpl.java"


# annotations
.annotation build Landroid/support/annotation/WorkerThread;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbpb$b;,
        Lbpb$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbpa",
        "<",
        "Lcom/alibaba/android/dingtalk/circle/entry/CircleCommentEntry;",
        "Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/alibaba/android/dingtalk/circle/entry/CircleCommentEntry;

    invoke-direct {p0, v0}, Lbpa;-><init>(Ljava/lang/Class;)V

    .line 23
    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lbpb;-><init>()V

    return-void
.end method

.method static synthetic a(Lbpb;Ljava/util/List;)V
    .locals 8
    .param p0, "x0"    # Lbpb;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 20
    .line 2050
    invoke-static {}, Lbox;->a()Lbox;

    move-result-object v2

    .line 2051
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Lbox;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 2053
    sget-object v3, Lbpb$b;->a:Ljava/lang/String;

    .line 2055
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;

    .line 2056
    if-eqz v1, :cond_0

    .line 2058
    const/4 v5, 0x0

    iget-wide v6, v1, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;->commentId:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    .line 2060
    invoke-virtual {p0, v3, v0}, Lbpb;->e(Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 2062
    :catch_0
    move-exception v1

    .line 2063
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "doDelete: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2076
    const/4 v3, 0x0

    invoke-static {v3, v1}, Lbqh;->a(ZLjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2065
    invoke-virtual {v2, v0}, Lbox;->release(Ljava/lang/Object;)V

    .line 2066
    :goto_1
    return-void

    .line 2065
    :cond_1
    invoke-virtual {v2, v0}, Lbox;->release(Ljava/lang/Object;)V

    goto :goto_1

    :catchall_0
    move-exception v1

    invoke-virtual {v2, v0}, Lbox;->release(Ljava/lang/Object;)V

    throw v1
.end method

.method public static e()Lbpb;
    .locals 1

    .prologue
    .line 30
    invoke-static {}, Lbpb$a;->a()Lbpb;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    const-string/jumbo v0, "tb_circle_comment_data"

    return-object v0
.end method

.method public final a(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 70
    .local p1, "comments":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;>;"
    invoke-static {p1}, Lbql;->a(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    :goto_0
    return-void

    .line 72
    :cond_0
    iget-object v0, p0, Lbpb;->c:Lcom/alibaba/bee/DBManager;

    invoke-virtual {p0}, Lbpb;->k()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lbpb$2;

    invoke-direct {v2, p0, p1}, Lbpb$2;-><init>(Lbpb;Ljava/util/List;)V

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/bee/DBManager;->execInTransaction(Ljava/lang/String;Ljava/lang/Runnable;Lcom/alibaba/bee/SQLiteTransactionListener;)Z

    goto :goto_0
.end method

.method public final a(Ljava/util/List;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 34
    .local p1, "addComments":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;>;"
    .local p2, "deleteComments":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;>;"
    invoke-static {p1}, Lbql;->a(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    invoke-virtual {p0, p2}, Lbpb;->a(Ljava/util/List;)V

    .line 47
    :goto_0
    return-void

    .line 36
    :cond_0
    invoke-static {p2}, Lbql;->a(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 37
    invoke-virtual {p0, p1}, Lbpb;->b(Ljava/util/Collection;)I

    goto :goto_0

    .line 39
    :cond_1
    iget-object v0, p0, Lbpb;->c:Lcom/alibaba/bee/DBManager;

    invoke-virtual {p0}, Lbpb;->k()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lbpb$1;

    invoke-direct {v2, p0, p1, p2}, Lbpb$1;-><init>(Lbpb;Ljava/util/List;Ljava/util/List;)V

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/bee/DBManager;->execInTransaction(Ljava/lang/String;Ljava/lang/Runnable;Lcom/alibaba/bee/SQLiteTransactionListener;)Z

    goto :goto_0
.end method

.method protected final synthetic b()Lcom/alibaba/android/dingtalk/circle/datasource/BaseCircleTableEntry;
    .locals 1

    .prologue
    .line 1082
    new-instance v0, Lcom/alibaba/android/dingtalk/circle/entry/CircleCommentEntry;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/circle/entry/CircleCommentEntry;-><init>()V

    .line 19
    return-object v0
.end method
