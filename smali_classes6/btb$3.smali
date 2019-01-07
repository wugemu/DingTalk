.class final Lbtb$3;
.super Ljava/lang/Object;
.source "TCPBindPresenter.java"

# interfaces
.implements Lbsy$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbtb;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbtb;


# direct methods
.method constructor <init>(Lbtb;)V
    .locals 0
    .param p1, "this$0"    # Lbtb;

    .prologue
    .line 257
    iput-object p1, p0, Lbtb$3;->a:Lbtb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ZLjava/lang/String;)V
    .locals 2
    .param p1, "result"    # Z
    .param p2, "errMsg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 260
    iget-object v0, p0, Lbtb$3;->a:Lbtb;

    .line 1134
    iget-object v0, v0, Lbtb;->e:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbsy$b;

    .line 1135
    invoke-interface {v0, p1, p2}, Lbsy$b;->a(ZLjava/lang/String;)V

    goto :goto_0

    .line 261
    :cond_0
    return-void
.end method
