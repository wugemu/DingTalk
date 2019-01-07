.class final Lbhu$1;
.super Ljava/lang/Object;
.source "UserProfileListEvent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbhu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbhu;


# direct methods
.method constructor <init>(Lbhu;)V
    .locals 0
    .param p1, "this$0"    # Lbhu;

    .prologue
    .line 42
    iput-object p1, p0, Lbhu$1;->a:Lbhu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 45
    iget-object v0, p0, Lbhu$1;->a:Lbhu;

    invoke-static {v0}, Lbhu;->c(Lbhu;)Lbhu$a;

    move-result-object v0

    iget-object v1, p0, Lbhu$1;->a:Lbhu;

    iget-object v2, p0, Lbhu$1;->a:Lbhu;

    invoke-static {v2}, Lbhu;->a(Lbhu;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lbhu$1;->a:Lbhu;

    invoke-static {v3}, Lbhu;->b(Lbhu;)Ljava/util/List;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lbhu;->a(Lbhu;Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lbhu$a;->a(Ljava/util/List;)V

    .line 46
    return-void
.end method
