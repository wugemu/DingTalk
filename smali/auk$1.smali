.class final Lauk$1;
.super Ljava/lang/Object;
.source "UserProfileListEvent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lauk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lauk;


# direct methods
.method constructor <init>(Lauk;)V
    .locals 0
    .param p1, "this$0"    # Lauk;

    .prologue
    .line 42
    iput-object p1, p0, Lauk$1;->a:Lauk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 45
    iget-object v0, p0, Lauk$1;->a:Lauk;

    invoke-static {v0}, Lauk;->c(Lauk;)Lauk$a;

    move-result-object v0

    iget-object v1, p0, Lauk$1;->a:Lauk;

    iget-object v2, p0, Lauk$1;->a:Lauk;

    invoke-static {v2}, Lauk;->a(Lauk;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lauk$1;->a:Lauk;

    invoke-static {v3}, Lauk;->b(Lauk;)Ljava/util/List;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lauk;->a(Lauk;Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lauk$a;->a(Ljava/util/List;)V

    .line 46
    return-void
.end method
