.class final Leqq$1;
.super Ljava/lang/Object;
.source "BaseSearchPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leqq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Leqq;


# direct methods
.method constructor <init>(Leqq;)V
    .locals 0
    .param p1, "this$0"    # Leqq;

    .prologue
    .line 86
    iput-object p1, p0, Leqq$1;->a:Leqq;

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
    .line 89
    iget-object v0, p0, Leqq$1;->a:Leqq;

    iget-object v1, p0, Leqq$1;->a:Leqq;

    iget-object v1, v1, Leqq;->e:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Leqq;->a(Ljava/lang/String;Z)V

    .line 90
    return-void
.end method
