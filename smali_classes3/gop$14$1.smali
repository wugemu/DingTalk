.class final Lgop$14$1;
.super Lcmi;
.source "SpaceShareRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgop$14;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmi",
        "<",
        "Lgiu;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lgop$14;


# direct methods
.method constructor <init>(Lgop$14;)V
    .locals 0
    .param p1, "this$0"    # Lgop$14;

    .prologue
    .line 149
    iput-object p1, p0, Lgop$14$1;->a:Lgop$14;

    invoke-direct {p0}, Lcmi;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 159
    iget-object v0, p0, Lgop$14$1;->a:Lgop$14;

    iget-object v0, v0, Lgop$14;->b:Lcma;

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lgop$14$1;->a:Lgop$14;

    iget-object v0, v0, Lgop$14;->b:Lcma;

    invoke-interface {v0, p1, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    :cond_0
    const-string/jumbo v0, "CSpace"

    const-string/jumbo v1, "SpaceShareRPC"

    const-string/jumbo v2, "quitCooperationFolder"

    .line 163
    invoke-static {v2, p1, p2, p3}, Lgot;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    .line 162
    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    return-void
.end method

.method public final synthetic onLoadSuccess(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 149
    check-cast p1, Lgiu;

    .line 1152
    iget-object v0, p0, Lgop$14$1;->a:Lgop$14;

    iget-object v0, v0, Lgop$14;->b:Lcma;

    if-eqz v0, :cond_0

    .line 1153
    iget-object v0, p0, Lgop$14$1;->a:Lgop$14;

    iget-object v0, v0, Lgop$14;->b:Lcma;

    invoke-interface {v0, p1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 149
    :cond_0
    return-void
.end method
