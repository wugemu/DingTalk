.class final Lhlt$3$1$1$1;
.super Ljava/lang/Object;
.source "MiniappRuntime.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhlt$3$1$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lhlt$3$1$1;


# direct methods
.method constructor <init>(Lhlt$3$1$1;)V
    .locals 0
    .param p1, "this$3"    # Lhlt$3$1$1;

    .prologue
    .line 647
    iput-object p1, p0, Lhlt$3$1$1$1;->a:Lhlt$3$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 650
    iget-object v0, p0, Lhlt$3$1$1$1;->a:Lhlt$3$1$1;

    iget-object v0, v0, Lhlt$3$1$1;->b:Lhlt$3$1;

    iget-object v0, v0, Lhlt$3$1;->c:Lhlt$3;

    iget-object v0, v0, Lhlt$3;->e:Lhlt;

    iget-object v1, p0, Lhlt$3$1$1$1;->a:Lhlt$3$1$1;

    iget-object v1, v1, Lhlt$3$1$1;->b:Lhlt$3$1;

    iget-object v1, v1, Lhlt$3$1;->c:Lhlt$3;

    iget-object v1, v1, Lhlt$3;->a:Ljava/lang/String;

    iget-object v2, p0, Lhlt$3$1$1$1;->a:Lhlt$3$1$1;

    iget-object v2, v2, Lhlt$3$1$1;->b:Lhlt$3$1;

    iget-object v2, v2, Lhlt$3$1;->a:Landroid/os/Bundle;

    iget-object v3, p0, Lhlt$3$1$1$1;->a:Lhlt$3$1$1;

    iget-object v3, v3, Lhlt$3$1$1;->b:Lhlt$3$1;

    iget-object v3, v3, Lhlt$3$1;->b:Ljava/lang/String;

    const/4 v4, 0x1

    iget-object v5, p0, Lhlt$3$1$1$1;->a:Lhlt$3$1$1;

    iget-object v5, v5, Lhlt$3$1$1;->b:Lhlt$3$1;

    iget-object v5, v5, Lhlt$3$1;->c:Lhlt$3;

    iget-object v5, v5, Lhlt$3;->b:Lhlt$a;

    invoke-static/range {v0 .. v5}, Lhlt;->a(Lhlt;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ZLhlt$a;)V

    .line 651
    return-void
.end method
