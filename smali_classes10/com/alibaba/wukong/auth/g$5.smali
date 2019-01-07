.class Lcom/alibaba/wukong/auth/g$5;
.super Ljava/lang/Object;
.source "DefaultAuthProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/wukong/auth/g;->a(Lcom/alibaba/wukong/auth/TokenParam;Lcom/alibaba/wukong/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic B:Lcom/alibaba/wukong/auth/g;

.field final synthetic E:Lcom/alibaba/wukong/auth/TokenParam;

.field final synthetic val$callback:Lcom/alibaba/wukong/Callback;


# direct methods
.method constructor <init>(Lcom/alibaba/wukong/auth/g;Lcom/alibaba/wukong/auth/TokenParam;Lcom/alibaba/wukong/Callback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/wukong/auth/g;

    .prologue
    .line 171
    iput-object p1, p0, Lcom/alibaba/wukong/auth/g$5;->B:Lcom/alibaba/wukong/auth/g;

    iput-object p2, p0, Lcom/alibaba/wukong/auth/g$5;->E:Lcom/alibaba/wukong/auth/TokenParam;

    iput-object p3, p0, Lcom/alibaba/wukong/auth/g$5;->val$callback:Lcom/alibaba/wukong/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x1

    .line 175
    iget-object v0, p0, Lcom/alibaba/wukong/auth/g$5;->E:Lcom/alibaba/wukong/auth/TokenParam;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/wukong/auth/g$5;->E:Lcom/alibaba/wukong/auth/TokenParam;

    iget-object v0, v0, Lcom/alibaba/wukong/auth/TokenParam;->domain:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/wukong/auth/g$5;->E:Lcom/alibaba/wukong/auth/TokenParam;

    iget-wide v0, v0, Lcom/alibaba/wukong/auth/TokenParam;->openId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/wukong/auth/g$5;->E:Lcom/alibaba/wukong/auth/TokenParam;

    iget-object v0, v0, Lcom/alibaba/wukong/auth/TokenParam;->accessToken:Ljava/lang/String;

    .line 176
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/wukong/auth/g$5;->E:Lcom/alibaba/wukong/auth/TokenParam;

    iget-object v0, v0, Lcom/alibaba/wukong/auth/TokenParam;->refreshToken:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/alibaba/wukong/auth/g$5;->val$callback:Lcom/alibaba/wukong/Callback;

    const-string/jumbo v1, "101002"

    const-string/jumbo v2, "PARAMETER_ERR"

    invoke-static {v0, v1, v2}, Lcom/alibaba/wukong/CallbackUtils;->onException(Lcom/alibaba/wukong/Callback;Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    :cond_1
    :goto_0
    return-void

    .line 180
    :cond_2
    iget-object v0, p0, Lcom/alibaba/wukong/auth/g$5;->B:Lcom/alibaba/wukong/auth/g;

    iget-object v1, p0, Lcom/alibaba/wukong/auth/g$5;->E:Lcom/alibaba/wukong/auth/TokenParam;

    iget-wide v2, v1, Lcom/alibaba/wukong/auth/TokenParam;->openId:J

    iget-object v1, p0, Lcom/alibaba/wukong/auth/g$5;->val$callback:Lcom/alibaba/wukong/Callback;

    invoke-static {v0, v2, v3, v1}, Lcom/alibaba/wukong/auth/g;->a(Lcom/alibaba/wukong/auth/g;JLcom/alibaba/wukong/Callback;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 183
    const-string/jumbo v0, "[TAG] Auth"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "[Auth] dlogin start "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alibaba/wukong/auth/g$5;->E:Lcom/alibaba/wukong/auth/TokenParam;

    iget-wide v2, v2, Lcom/alibaba/wukong/auth/TokenParam;->openId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "auth"

    invoke-static {v0, v1, v2}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    monitor-enter p0

    .line 185
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/wukong/auth/g$5;->B:Lcom/alibaba/wukong/auth/g;

    invoke-static {v0}, Lcom/alibaba/wukong/auth/g;->a(Lcom/alibaba/wukong/auth/g;)Lcom/alibaba/wukong/auth/d;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/wukong/auth/g$5;->E:Lcom/alibaba/wukong/auth/TokenParam;

    iget-wide v2, v1, Lcom/alibaba/wukong/auth/TokenParam;->openId:J

    iput-wide v2, v0, Lcom/alibaba/wukong/auth/d;->q:J

    .line 186
    iget-object v0, p0, Lcom/alibaba/wukong/auth/g$5;->B:Lcom/alibaba/wukong/auth/g;

    invoke-static {v0}, Lcom/alibaba/wukong/auth/g;->a(Lcom/alibaba/wukong/auth/g;)Lcom/alibaba/wukong/auth/d;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/wukong/auth/g$5;->E:Lcom/alibaba/wukong/auth/TokenParam;

    iget-object v1, v1, Lcom/alibaba/wukong/auth/TokenParam;->domain:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/wukong/auth/d;->r:Ljava/lang/String;

    .line 187
    iget-object v0, p0, Lcom/alibaba/wukong/auth/g$5;->B:Lcom/alibaba/wukong/auth/g;

    invoke-static {v0}, Lcom/alibaba/wukong/auth/g;->a(Lcom/alibaba/wukong/auth/g;)Lcom/alibaba/wukong/auth/d;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/wukong/auth/g$5;->E:Lcom/alibaba/wukong/auth/TokenParam;

    iget-object v1, v1, Lcom/alibaba/wukong/auth/TokenParam;->accessToken:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/wukong/auth/d;->v:Ljava/lang/String;

    .line 188
    iget-object v0, p0, Lcom/alibaba/wukong/auth/g$5;->B:Lcom/alibaba/wukong/auth/g;

    invoke-static {v0}, Lcom/alibaba/wukong/auth/g;->a(Lcom/alibaba/wukong/auth/g;)Lcom/alibaba/wukong/auth/d;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/wukong/auth/g$5;->E:Lcom/alibaba/wukong/auth/TokenParam;

    iget-object v1, v1, Lcom/alibaba/wukong/auth/TokenParam;->refreshToken:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/wukong/auth/d;->w:Ljava/lang/String;

    .line 189
    iget-object v0, p0, Lcom/alibaba/wukong/auth/g$5;->B:Lcom/alibaba/wukong/auth/g;

    invoke-static {v0}, Lcom/alibaba/wukong/auth/g;->a(Lcom/alibaba/wukong/auth/g;)Lcom/alibaba/wukong/auth/d;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/alibaba/wukong/auth/d;->x:Z

    .line 192
    invoke-static {}, Lcom/alibaba/wukong/auth/j;->e()Lcom/alibaba/wukong/auth/j;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/wukong/auth/g$5;->B:Lcom/alibaba/wukong/auth/g;

    invoke-static {v1}, Lcom/alibaba/wukong/auth/g;->a(Lcom/alibaba/wukong/auth/g;)Lcom/alibaba/wukong/auth/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/wukong/auth/j;->b(Lcom/alibaba/wukong/auth/d;)V

    .line 193
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 195
    iget-object v0, p0, Lcom/alibaba/wukong/auth/g$5;->B:Lcom/alibaba/wukong/auth/g;

    iget-object v1, p0, Lcom/alibaba/wukong/auth/g$5;->E:Lcom/alibaba/wukong/auth/TokenParam;

    iget-object v1, v1, Lcom/alibaba/wukong/auth/TokenParam;->accessToken:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/wukong/auth/g$5;->val$callback:Lcom/alibaba/wukong/Callback;

    invoke-static {v0, v1, v4, v2, v4}, Lcom/alibaba/wukong/auth/g;->a(Lcom/alibaba/wukong/auth/g;Ljava/lang/String;ZLcom/alibaba/wukong/Callback;Z)V

    goto :goto_0

    .line 193
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
