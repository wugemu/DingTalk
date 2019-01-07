.class final Lgdp$2;
.super Ljava/lang/Object;
.source "SpaceCommentPresenter.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgdp;->a(Ljava/lang/String;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Lgqw;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lgdp;


# direct methods
.method constructor <init>(Lgdp;)V
    .locals 0
    .param p1, "this$0"    # Lgdp;

    .prologue
    .line 181
    iput-object p1, p0, Lgdp$2;->a:Lgdp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 181
    check-cast p1, Lgqw;

    .line 4185
    iget-object v0, p0, Lgdp$2;->a:Lgdp;

    .line 5053
    iget-object v0, v0, Lgdp;->a:Lgdn$b;

    .line 4185
    invoke-interface {v0}, Lgdn$b;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4189
    iget-object v0, p0, Lgdp$2;->a:Lgdp;

    .line 6053
    const/4 v1, 0x0

    iput-boolean v1, v0, Lgdp;->i:Z

    .line 4190
    iget-object v0, p0, Lgdp$2;->a:Lgdp;

    .line 7053
    iget-object v0, v0, Lgdp;->a:Lgdn$b;

    .line 4190
    invoke-interface {v0}, Lgdn$b;->j()V

    .line 4194
    iget-object v0, p0, Lgdp$2;->a:Lgdp;

    .line 8053
    iget-object v0, v0, Lgdp;->a:Lgdn$b;

    .line 4194
    invoke-interface {v0}, Lgdn$b;->h()V

    .line 4195
    iget-object v0, p0, Lgdp$2;->a:Lgdp;

    .line 9053
    iget-object v0, v0, Lgdp;->a:Lgdn$b;

    .line 4195
    invoke-interface {v0, p1}, Lgdn$b;->a(Lgqw;)V

    .line 4196
    iget-object v0, p0, Lgdp$2;->a:Lgdp;

    .line 10053
    iget-object v0, v0, Lgdp;->a:Lgdn$b;

    .line 4196
    invoke-interface {v0}, Lgdn$b;->e()V

    .line 4197
    iget-object v0, p0, Lgdp$2;->a:Lgdp;

    .line 11053
    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lgdp;->d:J

    .line 4200
    iget-object v0, p0, Lgdp$2;->a:Lgdp;

    .line 12053
    iget-object v0, v0, Lgdp;->j:Lgdp$a;

    .line 4200
    if-eqz v0, :cond_0

    .line 4201
    iget-object v0, p0, Lgdp$2;->a:Lgdp;

    .line 13053
    iget-object v0, v0, Lgdp;->j:Lgdp$a;

    .line 4201
    invoke-interface {v0}, Lgdp$a;->a()V

    .line 181
    :cond_0
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 213
    iget-object v0, p0, Lgdp$2;->a:Lgdp;

    .line 1053
    iget-object v0, v0, Lgdp;->a:Lgdn$b;

    .line 213
    invoke-interface {v0}, Lgdn$b;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 221
    :goto_0
    return-void

    .line 217
    :cond_0
    iget-object v0, p0, Lgdp$2;->a:Lgdp;

    .line 2053
    const/4 v1, 0x0

    iput-boolean v1, v0, Lgdp;->i:Z

    .line 218
    iget-object v0, p0, Lgdp$2;->a:Lgdp;

    .line 3053
    iget-object v0, v0, Lgdp;->a:Lgdn$b;

    .line 218
    invoke-interface {v0}, Lgdn$b;->j()V

    .line 220
    iget-object v0, p0, Lgdp$2;->a:Lgdp;

    .line 4053
    iget-object v0, v0, Lgdp;->a:Lgdn$b;

    .line 220
    invoke-interface {v0, p2}, Lgdn$b;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 208
    return-void
.end method
