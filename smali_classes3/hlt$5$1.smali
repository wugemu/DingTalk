.class final Lhlt$5$1;
.super Ljava/lang/Object;
.source "MiniappRuntime.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhlt$5;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lhlt$5;


# direct methods
.method constructor <init>(Lhlt$5;Z)V
    .locals 0
    .param p1, "this$1"    # Lhlt$5;

    .prologue
    .line 934
    iput-object p1, p0, Lhlt$5$1;->b:Lhlt$5;

    iput-boolean p2, p0, Lhlt$5$1;->a:Z

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
    .line 937
    iget-object v0, p0, Lhlt$5$1;->b:Lhlt$5;

    iget-object v0, v0, Lhlt$5;->e:Lhlt;

    iget-object v1, p0, Lhlt$5$1;->b:Lhlt$5;

    iget-object v1, v1, Lhlt$5;->a:Ljava/lang/String;

    iget-object v2, p0, Lhlt$5$1;->b:Lhlt$5;

    iget-object v2, v2, Lhlt$5;->b:Landroid/os/Bundle;

    iget-object v3, p0, Lhlt$5$1;->b:Lhlt$5;

    iget-object v3, v3, Lhlt$5;->c:Ljava/lang/String;

    iget-boolean v4, p0, Lhlt$5$1;->a:Z

    iget-object v5, p0, Lhlt$5$1;->b:Lhlt$5;

    iget-object v5, v5, Lhlt$5;->d:Lhlt$a;

    invoke-static/range {v0 .. v5}, Lhlt;->a(Lhlt;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ZLhlt$a;)V

    .line 938
    return-void
.end method
