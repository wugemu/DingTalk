.class final Lbzm$1;
.super Ljava/lang/Object;
.source "NecessaryPermissionsManager.java"

# interfaces
.implements Lbzc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbzm;->a(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lbzm;


# direct methods
.method constructor <init>(Lbzm;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lbzm;

    .prologue
    .line 123
    iput-object p1, p0, Lbzm$1;->b:Lbzm;

    iput-object p2, p0, Lbzm$1;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final grant()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 126
    iget-object v2, p0, Lbzm$1;->b:Lbzm;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lbzm;->a(Lbzm;Z)Z

    .line 129
    iget-object v2, p0, Lbzm$1;->b:Lbzm;

    invoke-static {v2}, Lbzm;->a(Lbzm;)Ljava/util/HashSet;

    move-result-object v3

    monitor-enter v3

    .line 130
    :try_start_0
    iget-object v2, p0, Lbzm$1;->b:Lbzm;

    invoke-static {v2}, Lbzm;->a(Lbzm;)Ljava/util/HashSet;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashSet;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashSet;

    .line 131
    .local v1, "callbacks":Ljava/util/HashSet;, "Ljava/util/HashSet<Lbzl;>;"
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbzl;

    .line 133
    .local v0, "callback":Lbzl;
    if-eqz v0, :cond_0

    .line 134
    invoke-interface {v0}, Lbzl;->a()V

    goto :goto_0

    .line 131
    .end local v0    # "callback":Lbzl;
    .end local v1    # "callbacks":Ljava/util/HashSet;, "Ljava/util/HashSet<Lbzl;>;"
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 137
    .restart local v1    # "callbacks":Ljava/util/HashSet;, "Ljava/util/HashSet<Lbzl;>;"
    :cond_1
    const-string/jumbo v2, "NecessaryPermissionsManager.checkRequest, grant"

    .line 1012
    const-string/jumbo v3, "permission"

    const/4 v4, 0x0

    invoke-static {v3, v4, v2}, Lcai;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    return-void
.end method

.method public final onDenied()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 149
    iget-object v0, p0, Lbzm$1;->b:Lbzm;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lbzm;->a(Lbzm;Z)Z

    .line 150
    iget-object v0, p0, Lbzm$1;->b:Lbzm;

    iget-object v1, p0, Lbzm$1;->a:Landroid/app/Activity;

    invoke-static {v0, v1}, Lbzm;->a(Lbzm;Landroid/app/Activity;)V

    .line 151
    const-string/jumbo v0, "NecessaryPermissionsManager.checkRequest, onDenied"

    .line 3012
    const-string/jumbo v1, "permission"

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcai;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    return-void
.end method

.method public final onNeverAsk()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 156
    iget-object v0, p0, Lbzm$1;->b:Lbzm;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lbzm;->a(Lbzm;Z)Z

    .line 157
    iget-object v0, p0, Lbzm$1;->b:Lbzm;

    iget-object v1, p0, Lbzm$1;->a:Landroid/app/Activity;

    invoke-static {v0, v1}, Lbzm;->a(Lbzm;Landroid/app/Activity;)V

    .line 158
    const-string/jumbo v0, "NecessaryPermissionsManager.checkRequest, onNeverAsk"

    .line 4012
    const-string/jumbo v1, "permission"

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcai;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    return-void
.end method

.method public final showRation()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 142
    iget-object v0, p0, Lbzm$1;->b:Lbzm;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lbzm;->a(Lbzm;Z)Z

    .line 143
    iget-object v0, p0, Lbzm$1;->a:Landroid/app/Activity;

    const/16 v1, 0x3f1

    invoke-static {}, Lbzm;->b()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, p0}, Lbzb;->a(Landroid/app/Activity;I[Ljava/lang/String;Lbzc;)V

    .line 144
    const-string/jumbo v0, "NecessaryPermissionsManager.checkRequest, showRation"

    .line 2012
    const-string/jumbo v1, "permission"

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcai;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    return-void
.end method
