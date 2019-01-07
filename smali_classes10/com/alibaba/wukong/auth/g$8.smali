.class Lcom/alibaba/wukong/auth/g$8;
.super Ljava/lang/Object;
.source "DefaultAuthProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/wukong/auth/g;->autoLogin(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic B:Lcom/alibaba/wukong/auth/g;

.field final synthetic G:J


# direct methods
.method constructor <init>(Lcom/alibaba/wukong/auth/g;J)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/wukong/auth/g;

    .prologue
    .line 396
    iput-object p1, p0, Lcom/alibaba/wukong/auth/g$8;->B:Lcom/alibaba/wukong/auth/g;

    iput-wide p2, p0, Lcom/alibaba/wukong/auth/g$8;->G:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const-wide/16 v2, 0x0

    .line 399
    const-string/jumbo v4, "[TAG] Auth authLogin"

    const-string/jumbo v5, "auth"

    invoke-static {v4, v5}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;)Lhzv;

    move-result-object v1

    .line 401
    .local v1, "trace":Lhzv;
    :try_start_0
    const-string/jumbo v4, "[Auth] autoLogin start"

    invoke-virtual {v1, v4}, Lhzv;->a(Ljava/lang/String;)V

    .line 402
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 403
    :try_start_1
    iget-wide v4, p0, Lcom/alibaba/wukong/auth/g$8;->G:J

    cmp-long v4, v4, v2

    if-nez v4, :cond_0

    .line 404
    iget-object v4, p0, Lcom/alibaba/wukong/auth/g$8;->B:Lcom/alibaba/wukong/auth/g;

    invoke-virtual {v4}, Lcom/alibaba/wukong/auth/g;->logout()V

    .line 405
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 415
    invoke-static {v1}, Lhzt;->a(Lhzv;)V

    .line 416
    :goto_0
    return-void

    .line 407
    :cond_0
    :try_start_2
    iget-object v4, p0, Lcom/alibaba/wukong/auth/g$8;->B:Lcom/alibaba/wukong/auth/g;

    invoke-virtual {v4}, Lcom/alibaba/wukong/auth/g;->d()Lcom/alibaba/wukong/auth/d;

    move-result-object v0

    .line 408
    .local v0, "info":Lcom/alibaba/wukong/auth/d;
    if-nez v0, :cond_2

    .line 409
    .local v2, "localOpenId":J
    :goto_1
    iget-wide v4, p0, Lcom/alibaba/wukong/auth/g$8;->G:J

    cmp-long v4, v2, v4

    if-eqz v4, :cond_1

    .line 410
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "[Auth] autoLogin fail, not match, except "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", but "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, p0, Lcom/alibaba/wukong/auth/g$8;->G:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lhzv;->b(Ljava/lang/String;)V

    .line 411
    iget-object v4, p0, Lcom/alibaba/wukong/auth/g$8;->B:Lcom/alibaba/wukong/auth/g;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/alibaba/wukong/auth/g;->c(Z)V

    .line 413
    :cond_1
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 415
    invoke-static {v1}, Lhzt;->a(Lhzv;)V

    goto :goto_0

    .line 408
    .end local v2    # "localOpenId":J
    :cond_2
    :try_start_3
    iget-wide v2, v0, Lcom/alibaba/wukong/auth/d;->q:J

    goto :goto_1

    .line 413
    .end local v0    # "info":Lcom/alibaba/wukong/auth/d;
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 415
    :catchall_1
    move-exception v4

    invoke-static {v1}, Lhzt;->a(Lhzv;)V

    throw v4
.end method
