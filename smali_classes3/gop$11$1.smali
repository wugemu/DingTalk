.class final Lgop$11$1;
.super Lcmi;
.source "SpaceShareRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgop$11;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmi",
        "<",
        "Lgin;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lgop$11;


# direct methods
.method constructor <init>(Lgop$11;)V
    .locals 0
    .param p1, "this$0"    # Lgop$11;

    .prologue
    .line 119
    iput-object p1, p0, Lgop$11$1;->a:Lgop$11;

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
    .line 129
    iget-object v0, p0, Lgop$11$1;->a:Lgop$11;

    iget-object v0, v0, Lgop$11;->g:Lcma;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lgop$11$1;->a:Lgop$11;

    iget-object v0, v0, Lgop$11;->g:Lcma;

    invoke-interface {v0, p1, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    :cond_0
    const-string/jumbo v0, "CSpace"

    const-string/jumbo v1, "SpaceShareRPC"

    const-string/jumbo v2, "createCooperationFolder"

    .line 133
    invoke-static {v2, p1, p2, p3}, Lgot;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    .line 132
    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    return-void
.end method

.method public final synthetic onLoadSuccess(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 119
    check-cast p1, Lgin;

    .line 1122
    iget-object v0, p0, Lgop$11$1;->a:Lgop$11;

    iget-object v0, v0, Lgop$11;->g:Lcma;

    if-eqz v0, :cond_0

    .line 1123
    iget-object v0, p0, Lgop$11$1;->a:Lgop$11;

    iget-object v0, v0, Lgop$11;->g:Lcma;

    invoke-interface {v0, p1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 119
    :cond_0
    return-void
.end method
