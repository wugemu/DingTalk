.class final Lbtq$3;
.super Ljava/lang/Object;
.source "AnchorManager.java"

# interfaces
.implements Lcom/alibaba/doraemon/lifecycle/APPStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbtq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbtq;


# direct methods
.method constructor <init>(Lbtq;)V
    .locals 0
    .param p1, "this$0"    # Lbtq;

    .prologue
    .line 208
    iput-object p1, p0, Lbtq$3;->a:Lbtq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onEnterBackground()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 211
    iget-object v0, p0, Lbtq$3;->a:Lbtq;

    invoke-static {v0}, Lbtq;->a(Lbtq;)Lbtt;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lbtq$3;->a:Lbtq;

    invoke-static {v0}, Lbtq;->a(Lbtq;)Lbtt;

    move-result-object v0

    invoke-virtual {v0}, Lbtt;->g()V

    .line 214
    :cond_0
    iget-object v0, p0, Lbtq$3;->a:Lbtq;

    invoke-static {v0}, Lbtq;->c(Lbtq;)Ljjx;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 215
    iget-object v0, p0, Lbtq$3;->a:Lbtq;

    invoke-static {v0}, Lbtq;->c(Lbtq;)Ljjx;

    move-result-object v0

    invoke-virtual {v0}, Ljjx;->c()V

    .line 217
    :cond_1
    invoke-static {}, Lbtq;->a()Lbtq;

    move-result-object v0

    const/4 v1, 0x0

    .line 1073
    iput-boolean v1, v0, Lbtq;->d:Z

    .line 218
    const-string/jumbo v0, "AnchorManager.onEnterBackground"

    .line 2013
    const-string/jumbo v1, "live"

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    return-void
.end method

.method public final onEnterForeground()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 223
    iget-object v0, p0, Lbtq$3;->a:Lbtq;

    invoke-static {v0}, Lbtq;->a(Lbtq;)Lbtt;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lbtq$3;->a:Lbtq;

    invoke-static {v0}, Lbtq;->a(Lbtq;)Lbtt;

    move-result-object v0

    invoke-virtual {v0}, Lbtt;->f()V

    .line 226
    :cond_0
    iget-object v0, p0, Lbtq$3;->a:Lbtq;

    invoke-static {v0}, Lbtq;->c(Lbtq;)Ljjx;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 227
    iget-object v0, p0, Lbtq$3;->a:Lbtq;

    invoke-static {v0}, Lbtq;->c(Lbtq;)Ljjx;

    move-result-object v0

    invoke-virtual {v0}, Ljjx;->b()V

    .line 229
    :cond_1
    invoke-static {}, Lbtq;->a()Lbtq;

    move-result-object v0

    const/4 v1, 0x1

    .line 2073
    iput-boolean v1, v0, Lbtq;->d:Z

    .line 230
    const-string/jumbo v0, "AnchorManager.onEnterForeground"

    .line 3013
    const-string/jumbo v1, "live"

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    return-void
.end method
