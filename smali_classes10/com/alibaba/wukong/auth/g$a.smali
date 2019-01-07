.class Lcom/alibaba/wukong/auth/g$a;
.super Ljava/lang/Object;
.source "DefaultAuthProvider.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/wukong/auth/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/wukong/Callback",
        "<",
        "Lcom/alibaba/wukong/auth/o;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic B:Lcom/alibaba/wukong/auth/g;

.field private domain:Ljava/lang/String;

.field private mCallback:Lcom/alibaba/wukong/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Lcom/alibaba/wukong/auth/AuthInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/alibaba/wukong/auth/g;Lcom/alibaba/wukong/Callback;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/wukong/auth/g;
    .param p3, "domain"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Lcom/alibaba/wukong/auth/AuthInfo;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 138
    .local p2, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Lcom/alibaba/wukong/auth/AuthInfo;>;"
    iput-object p1, p0, Lcom/alibaba/wukong/auth/g$a;->B:Lcom/alibaba/wukong/auth/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    iput-object p2, p0, Lcom/alibaba/wukong/auth/g$a;->mCallback:Lcom/alibaba/wukong/Callback;

    .line 140
    iput-object p3, p0, Lcom/alibaba/wukong/auth/g$a;->domain:Ljava/lang/String;

    .line 141
    return-void
.end method


# virtual methods
.method public a(Lcom/alibaba/wukong/auth/o;)V
    .locals 5
    .param p1, "t"    # Lcom/alibaba/wukong/auth/o;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x1

    .line 145
    monitor-enter p0

    .line 146
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/wukong/auth/g$a;->B:Lcom/alibaba/wukong/auth/g;

    invoke-static {v0}, Lcom/alibaba/wukong/auth/g;->a(Lcom/alibaba/wukong/auth/g;)Lcom/alibaba/wukong/auth/d;

    move-result-object v0

    iget-object v1, p1, Lcom/alibaba/wukong/auth/o;->openId:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/alibaba/wukong/auth/d;->q:J

    .line 147
    iget-object v0, p0, Lcom/alibaba/wukong/auth/g$a;->B:Lcom/alibaba/wukong/auth/g;

    invoke-static {v0}, Lcom/alibaba/wukong/auth/g;->a(Lcom/alibaba/wukong/auth/g;)Lcom/alibaba/wukong/auth/d;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/wukong/auth/g$a;->domain:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/wukong/auth/d;->r:Ljava/lang/String;

    .line 148
    iget-object v0, p0, Lcom/alibaba/wukong/auth/g$a;->B:Lcom/alibaba/wukong/auth/g;

    invoke-static {v0}, Lcom/alibaba/wukong/auth/g;->a(Lcom/alibaba/wukong/auth/g;)Lcom/alibaba/wukong/auth/d;

    move-result-object v0

    iget-object v1, p1, Lcom/alibaba/wukong/auth/o;->accessToken:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/wukong/auth/d;->v:Ljava/lang/String;

    .line 149
    iget-object v0, p0, Lcom/alibaba/wukong/auth/g$a;->B:Lcom/alibaba/wukong/auth/g;

    invoke-static {v0}, Lcom/alibaba/wukong/auth/g;->a(Lcom/alibaba/wukong/auth/g;)Lcom/alibaba/wukong/auth/d;

    move-result-object v0

    iget-object v1, p1, Lcom/alibaba/wukong/auth/o;->refreshToken:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/wukong/auth/d;->w:Ljava/lang/String;

    .line 150
    iget-object v0, p0, Lcom/alibaba/wukong/auth/g$a;->B:Lcom/alibaba/wukong/auth/g;

    invoke-static {v0}, Lcom/alibaba/wukong/auth/g;->a(Lcom/alibaba/wukong/auth/g;)Lcom/alibaba/wukong/auth/d;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/alibaba/wukong/auth/d;->x:Z

    .line 153
    invoke-static {}, Lcom/alibaba/wukong/auth/j;->e()Lcom/alibaba/wukong/auth/j;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/wukong/auth/g$a;->B:Lcom/alibaba/wukong/auth/g;

    invoke-static {v1}, Lcom/alibaba/wukong/auth/g;->a(Lcom/alibaba/wukong/auth/g;)Lcom/alibaba/wukong/auth/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/wukong/auth/j;->b(Lcom/alibaba/wukong/auth/d;)V

    .line 154
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    iget-object v0, p0, Lcom/alibaba/wukong/auth/g$a;->B:Lcom/alibaba/wukong/auth/g;

    iget-object v1, p1, Lcom/alibaba/wukong/auth/o;->accessToken:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/wukong/auth/g$a;->mCallback:Lcom/alibaba/wukong/Callback;

    invoke-static {v0, v1, v4, v2, v4}, Lcom/alibaba/wukong/auth/g;->a(Lcom/alibaba/wukong/auth/g;Ljava/lang/String;ZLcom/alibaba/wukong/Callback;Z)V

    .line 157
    return-void

    .line 154
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public a(Lcom/alibaba/wukong/auth/o;I)V
    .locals 0
    .param p1, "data"    # Lcom/alibaba/wukong/auth/o;
    .param p2, "progress"    # I

    .prologue
    .line 167
    return-void
.end method

.method public onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 161
    iget-object v0, p0, Lcom/alibaba/wukong/auth/g$a;->B:Lcom/alibaba/wukong/auth/g;

    invoke-static {v0}, Lcom/alibaba/wukong/auth/g;->b(Lcom/alibaba/wukong/auth/g;)V

    .line 162
    iget-object v0, p0, Lcom/alibaba/wukong/auth/g$a;->mCallback:Lcom/alibaba/wukong/Callback;

    invoke-static {v0, p1, p2}, Lcom/alibaba/wukong/CallbackUtils;->onException(Lcom/alibaba/wukong/Callback;Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    return-void
.end method

.method public synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 135
    check-cast p1, Lcom/alibaba/wukong/auth/o;

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/wukong/auth/g$a;->a(Lcom/alibaba/wukong/auth/o;I)V

    return-void
.end method

.method public synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 135
    check-cast p1, Lcom/alibaba/wukong/auth/o;

    invoke-virtual {p0, p1}, Lcom/alibaba/wukong/auth/g$a;->a(Lcom/alibaba/wukong/auth/o;)V

    return-void
.end method
