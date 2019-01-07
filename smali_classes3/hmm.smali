.class public final Lhmm;
.super Ljava/lang/Object;
.source "MiniAppOpenTypeSPLocalDataAccessor.java"


# static fields
.field private static a:Lhmm;


# instance fields
.field private b:Landroid/content/Context;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    iput-object v0, p0, Lhmm;->b:Landroid/content/Context;

    .line 39
    return-void
.end method

.method public static declared-synchronized a()Lhmm;
    .locals 2

    .prologue
    .line 42
    const-class v1, Lhmm;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lhmm;->a:Lhmm;

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Lhmm;

    invoke-direct {v0}, Lhmm;-><init>()V

    sput-object v0, Lhmm;->a:Lhmm;

    .line 46
    :cond_0
    sget-object v0, Lhmm;->a:Lhmm;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 42
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static b()Ljava/lang/String;
    .locals 4

    .prologue
    .line 196
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    const-string/jumbo v1, "PREFERENCE_MINIAPP_OPEN_TYPE_KEY"

    .line 197
    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    .line 198
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v1

    invoke-virtual {v1}, Lccr;->c()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(J)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method declared-synchronized a(Lcom/alibaba/lightapp/runtime/miniapp/rpc/model/MiniAppOpenTypeModel;Ljava/util/List;)V
    .locals 5
    .param p1, "freshMiniAppOpenTypeModel"    # Lcom/alibaba/lightapp/runtime/miniapp/rpc/model/MiniAppOpenTypeModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/lightapp/runtime/miniapp/rpc/model/MiniAppOpenTypeModel;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/lightapp/runtime/miniapp/rpc/model/MiniAppOpenTypeModel;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 166
    .local p2, "miniAppOpenTypeModels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/lightapp/runtime/miniapp/rpc/model/MiniAppOpenTypeModel;>;"
    monitor-enter p0

    if-eqz p2, :cond_0

    :try_start_0
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 167
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    .end local p2    # "miniAppOpenTypeModels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/lightapp/runtime/miniapp/rpc/model/MiniAppOpenTypeModel;>;"
    .local v2, "miniAppOpenTypeModels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/lightapp/runtime/miniapp/rpc/model/MiniAppOpenTypeModel;>;"
    :try_start_1
    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object p2, v2

    .line 187
    .end local v2    # "miniAppOpenTypeModels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/lightapp/runtime/miniapp/rpc/model/MiniAppOpenTypeModel;>;"
    .restart local p2    # "miniAppOpenTypeModels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/lightapp/runtime/miniapp/rpc/model/MiniAppOpenTypeModel;>;"
    :goto_0
    :try_start_2
    invoke-virtual {p0, p2}, Lhmm;->a(Ljava/util/List;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 188
    monitor-exit p0

    return-void

    .line 170
    :cond_1
    :try_start_3
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 171
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/alibaba/lightapp/runtime/miniapp/rpc/model/MiniAppOpenTypeModel;>;"
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 172
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/lightapp/runtime/miniapp/rpc/model/MiniAppOpenTypeModel;

    .line 173
    .local v1, "miniAppOpenTypeModel":Lcom/alibaba/lightapp/runtime/miniapp/rpc/model/MiniAppOpenTypeModel;
    if-eqz v1, :cond_2

    iget-object v3, v1, Lcom/alibaba/lightapp/runtime/miniapp/rpc/model/MiniAppOpenTypeModel;->miniAppId:Ljava/lang/String;

    iget-object v4, p1, Lcom/alibaba/lightapp/runtime/miniapp/rpc/model/MiniAppOpenTypeModel;->miniAppId:Ljava/lang/String;

    .line 174
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 175
    iget-object v3, p1, Lcom/alibaba/lightapp/runtime/miniapp/rpc/model/MiniAppOpenTypeModel;->orgAgentModel:Lhoh;

    if-eqz v3, :cond_2

    iget-object v3, v1, Lcom/alibaba/lightapp/runtime/miniapp/rpc/model/MiniAppOpenTypeModel;->orgAgentModel:Lhoh;

    if-eqz v3, :cond_2

    iget-object v3, p1, Lcom/alibaba/lightapp/runtime/miniapp/rpc/model/MiniAppOpenTypeModel;->orgAgentModel:Lhoh;

    iget-object v3, v3, Lhoh;->a:Ljava/lang/Long;

    if-eqz v3, :cond_2

    iget-object v3, v1, Lcom/alibaba/lightapp/runtime/miniapp/rpc/model/MiniAppOpenTypeModel;->orgAgentModel:Lhoh;

    iget-object v3, v3, Lhoh;->a:Ljava/lang/Long;

    if-eqz v3, :cond_2

    iget-object v3, p1, Lcom/alibaba/lightapp/runtime/miniapp/rpc/model/MiniAppOpenTypeModel;->orgAgentModel:Lhoh;

    iget-object v3, v3, Lhoh;->a:Ljava/lang/Long;

    iget-object v4, v1, Lcom/alibaba/lightapp/runtime/miniapp/rpc/model/MiniAppOpenTypeModel;->orgAgentModel:Lhoh;

    iget-object v4, v4, Lhoh;->a:Ljava/lang/Long;

    .line 178
    invoke-virtual {v3, v4}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 179
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 166
    .end local v0    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/alibaba/lightapp/runtime/miniapp/rpc/model/MiniAppOpenTypeModel;>;"
    .end local v1    # "miniAppOpenTypeModel":Lcom/alibaba/lightapp/runtime/miniapp/rpc/model/MiniAppOpenTypeModel;
    :catchall_0
    move-exception v3

    :goto_2
    monitor-exit p0

    throw v3

    .line 184
    .restart local v0    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/alibaba/lightapp/runtime/miniapp/rpc/model/MiniAppOpenTypeModel;>;"
    :cond_3
    :try_start_4
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 166
    .end local v0    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/alibaba/lightapp/runtime/miniapp/rpc/model/MiniAppOpenTypeModel;>;"
    .end local p2    # "miniAppOpenTypeModels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/lightapp/runtime/miniapp/rpc/model/MiniAppOpenTypeModel;>;"
    .restart local v2    # "miniAppOpenTypeModels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/lightapp/runtime/miniapp/rpc/model/MiniAppOpenTypeModel;>;"
    :catchall_1
    move-exception v3

    move-object p2, v2

    .end local v2    # "miniAppOpenTypeModels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/lightapp/runtime/miniapp/rpc/model/MiniAppOpenTypeModel;>;"
    .restart local p2    # "miniAppOpenTypeModels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/lightapp/runtime/miniapp/rpc/model/MiniAppOpenTypeModel;>;"
    goto :goto_2
.end method

.method public final a(Lhmh;)V
    .locals 2
    .param p1, "miniAppOpenTypeCallback"    # Lhmh;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 51
    const-string/jumbo v0, "MiniAppOpenTypeSPLocalDataAccessor"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcms;->b(Ljava/lang/String;I)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    new-instance v1, Lhmm$1;

    invoke-direct {v1, p0, p1}, Lhmm$1;-><init>(Lhmm;Lhmh;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 73
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/lightapp/runtime/miniapp/rpc/model/MiniAppOpenTypeModel;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 113
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/lightapp/runtime/miniapp/rpc/model/MiniAppOpenTypeModel;>;"
    if-nez p1, :cond_0

    .line 137
    :goto_0
    return-void

    .line 117
    :cond_0
    const-string/jumbo v0, "MiniAppOpenTypeSPLocalDataAccessor"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcms;->b(Ljava/lang/String;I)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    new-instance v1, Lhmm$3;

    invoke-direct {v1, p0, p1}, Lhmm$3;-><init>(Lhmm;Ljava/util/List;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
