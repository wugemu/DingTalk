.class final Ldlc$3$1;
.super Ljava/lang/Object;
.source "EncryptTools.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldlc$3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ldlb;

.field final synthetic b:Ldlc$3;


# direct methods
.method constructor <init>(Ldlc$3;Ldlb;)V
    .locals 0
    .param p1, "this$1"    # Ldlc$3;

    .prologue
    .line 215
    iput-object p1, p0, Ldlc$3$1;->b:Ldlc$3;

    iput-object p2, p0, Ldlc$3$1;->a:Ldlb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1048
    sget-object v2, Lcjk$a;->a:Lcjk;

    .line 218
    sget-object v3, Ldkz;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcjk;->b(Ljava/lang/String;)Lcom/alibaba/android/dingtalkbase/db/AbsDataSource;

    move-result-object v2

    check-cast v2, Ldkz;

    iget-object v3, p0, Ldlc$3$1;->a:Ldlb;

    invoke-virtual {v2, v3}, Ldkz;->a(Ldlb;)I

    move-result v1

    .line 219
    .local v1, "result":I
    if-lez v1, :cond_1

    .line 220
    iget-object v2, p0, Ldlc$3$1;->a:Ldlb;

    if-eqz v2, :cond_0

    iget-object v2, p0, Ldlc$3$1;->a:Ldlb;

    iget-object v2, v2, Ldlb;->b:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 221
    iget-object v2, p0, Ldlc$3$1;->a:Ldlb;

    iget-object v2, v2, Ldlb;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldla;

    .line 222
    .local v0, "encryptKeyObject":Ldla;
    const/16 v3, 0x10

    const-string/jumbo v4, "00011online"

    iget-object v5, v0, Ldla;->b:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Ldko;->a(ILjava/lang/String;Ljava/lang/String;)[B

    move-result-object v3

    iput-object v3, v0, Ldla;->c:[B

    goto :goto_0

    .line 225
    .end local v0    # "encryptKeyObject":Ldla;
    :cond_0
    iget-object v2, p0, Ldlc$3$1;->b:Ldlc$3;

    iget-object v2, v2, Ldlc$3;->b:Ldlc;

    invoke-static {v2}, Ldlc;->a(Ldlc;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    iget-object v3, p0, Ldlc$3$1;->a:Ldlb;

    iget-object v3, v3, Ldlb;->a:Ljava/lang/String;

    iget-object v4, p0, Ldlc$3$1;->a:Ldlb;

    iget-object v4, v4, Ldlb;->b:Ljava/util/List;

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    :cond_1
    iget-object v2, p0, Ldlc$3$1;->b:Ldlc$3;

    iget-object v2, v2, Ldlc$3;->b:Ldlc;

    invoke-static {v2}, Ldlc;->b(Ldlc;)Ljava/lang/Boolean;

    move-result-object v3

    monitor-enter v3

    .line 228
    :try_start_0
    iget-object v2, p0, Ldlc$3$1;->b:Ldlc$3;

    iget-object v2, v2, Ldlc$3;->b:Ldlc;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v2, v4}, Ldlc;->a(Ldlc;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 229
    monitor-exit v3

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
