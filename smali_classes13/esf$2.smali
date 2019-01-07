.class final Lesf$2;
.super Ljava/lang/Object;
.source "UserLifeCycleRecommend.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lesf;->a(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lesf;


# direct methods
.method constructor <init>(Lesf;)V
    .locals 0
    .param p1, "this$0"    # Lesf;

    .prologue
    .line 78
    iput-object p1, p0, Lesf$2;->a:Lesf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 82
    iget-object v0, p0, Lesf$2;->a:Lesf;

    .line 1025
    iget-boolean v0, v0, Lesf;->a:Z

    .line 82
    if-eqz v0, :cond_0

    .line 83
    const-string/jumbo v0, "stopped"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 1073
    const-string/jumbo v2, "search_rec"

    invoke-static {v2, v0, v1}, Letc;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 88
    :goto_0
    return-void

    .line 86
    :cond_0
    iget-object v0, p0, Lesf$2;->a:Lesf;

    .line 2025
    invoke-virtual {v0}, Lesf;->a()V

    .line 87
    iget-object v0, p0, Lesf$2;->a:Lesf;

    .line 3025
    invoke-virtual {v0}, Lesf;->b()V

    goto :goto_0
.end method
