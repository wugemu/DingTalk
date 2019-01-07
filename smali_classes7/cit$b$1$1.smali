.class final Lcit$b$1$1;
.super Ljava/lang/Object;
.source "WifiScanManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcit$b$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcit$b$1;


# direct methods
.method constructor <init>(Lcit$b$1;Ljava/util/List;)V
    .locals 0
    .param p1, "this$2"    # Lcit$b$1;

    .prologue
    .line 232
    iput-object p1, p0, Lcit$b$1$1;->b:Lcit$b$1;

    iput-object p2, p0, Lcit$b$1$1;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 235
    invoke-static {}, Lcit;->a()Lcit;

    move-result-object v1

    iget-object v2, p0, Lcit$b$1$1;->a:Ljava/util/List;

    .line 1167
    const/4 v0, 0x0

    .line 1168
    iget-object v3, v1, Lcit;->a:Ljava/util/Set;

    monitor-enter v3

    .line 1169
    :try_start_0
    iget-object v4, v1, Lcit;->a:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    .line 1170
    if-lez v4, :cond_0

    .line 1171
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 1172
    iget-object v4, v1, Lcit;->a:Ljava/util/Set;

    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1174
    iget-object v1, v1, Lcit;->a:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 1176
    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1178
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 1179
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcit$a;

    .line 1181
    :try_start_1
    invoke-interface {v0, v2}, Lcit$a;->onDataReceiver(Ljava/util/List;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1182
    :catch_0
    move-exception v0

    .line 1183
    const-string/jumbo v3, "dingtalkbase"

    const-string/jumbo v4, "wifiscan"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "onDataReceiver err "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/alibaba/doraemon/utils/CommonUtils;->getStackMsg(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v4, v0}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1176
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 1187
    :cond_1
    const-string/jumbo v0, "dingtalkbase"

    const-string/jumbo v1, "wifiscan"

    const-string/jumbo v2, "result not notify, listener is empty"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1185
    :cond_2
    return-void
.end method
