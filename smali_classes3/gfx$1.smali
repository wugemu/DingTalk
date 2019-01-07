.class public final Lgfx$1;
.super Ljava/lang/Object;
.source "SpaceRecentFetcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgfx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lgfx;


# direct methods
.method public constructor <init>(Lgfx;)V
    .locals 0
    .param p1, "this$0"    # Lgfx;

    .prologue
    .line 100
    iput-object p1, p0, Lgfx$1;->a:Lgfx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 104
    iget-object v5, p0, Lgfx$1;->a:Lgfx;

    .line 1443
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v6

    iget-object v7, v5, Lgfx;->j:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lgfx;->d:Ljava/lang/String;

    .line 1444
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v6

    iget-object v7, v5, Lgfx;->k:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lgfx;->e:Ljava/lang/String;

    .line 1445
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v6

    iget-object v7, v5, Lgfx;->l:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1446
    const-string/jumbo v7, "true"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, v5, Lgfx;->f:Z

    .line 106
    iget-object v5, p0, Lgfx$1;->a:Lgfx;

    .line 2052
    iget-object v5, v5, Lgfx;->a:Ljava/lang/String;

    .line 106
    invoke-static {v5}, Lth;->c(Ljava/lang/String;)Lcom/alibaba/alimei/cspace/openapi/IRecentOperationAPI;

    move-result-object v1

    .line 109
    .local v1, "operationAPI":Lcom/alibaba/alimei/cspace/openapi/IRecentOperationAPI;
    const/4 v5, 0x3

    const/4 v6, 0x3

    const/16 v7, 0x8

    const/16 v8, 0x1f4

    :try_start_0
    invoke-interface {v1, v5, v6, v7, v8}, Lcom/alibaba/alimei/cspace/openapi/IRecentOperationAPI;->queryLocalRecentOperationsDiffImage(IIII)Ljava/util/List;

    move-result-object v0

    .line 111
    .local v0, "datas":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/cspace/model/RecentOperationModel;>;"
    iget-object v5, p0, Lgfx$1;->a:Lgfx;

    .line 3052
    iput-object v0, v5, Lgfx;->c:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    .end local v0    # "datas":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/cspace/model/RecentOperationModel;>;"
    :goto_0
    iget-object v5, p0, Lgfx$1;->a:Lgfx;

    .line 4052
    iget-object v5, v5, Lgfx;->b:Lgfy;

    .line 116
    if-eqz v5, :cond_0

    .line 117
    iget-object v5, p0, Lgfx$1;->a:Lgfx;

    .line 5052
    iget-object v5, v5, Lgfx;->b:Lgfy;

    .line 117
    iget-object v6, p0, Lgfx$1;->a:Lgfx;

    .line 6052
    iget-object v6, v6, Lgfx;->c:Ljava/util/List;

    .line 117
    invoke-interface {v5, v6}, Lgfy;->a(Ljava/util/List;)V

    .line 120
    :cond_0
    iget-object v5, p0, Lgfx$1;->a:Lgfx;

    .line 7052
    iget-object v5, v5, Lgfx;->c:Ljava/util/List;

    .line 120
    if-nez v5, :cond_1

    move v2, v4

    .line 121
    .local v2, "size":I
    :goto_1
    if-nez v2, :cond_2

    .line 122
    iget-object v5, p0, Lgfx$1;->a:Lgfx;

    .line 9052
    invoke-virtual {v5, v4}, Lgfx;->a(I)V

    .line 126
    :goto_2
    return-void

    .line 112
    .end local v2    # "size":I
    :catch_0
    move-exception v3

    .line 114
    .local v3, "tr":Ljava/lang/Throwable;
    const-string/jumbo v5, "CSpace"

    const-string/jumbo v6, " query local recent operation error "

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 120
    .end local v3    # "tr":Ljava/lang/Throwable;
    :cond_1
    iget-object v5, p0, Lgfx$1;->a:Lgfx;

    .line 8052
    iget-object v5, v5, Lgfx;->c:Ljava/util/List;

    .line 120
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_1

    .line 124
    .restart local v2    # "size":I
    :cond_2
    iget-object v4, p0, Lgfx$1;->a:Lgfx;

    const/4 v5, 0x1

    .line 10052
    invoke-virtual {v4, v5}, Lgfx;->a(I)V

    goto :goto_2
.end method
