.class final Ldbq$4;
.super Ljava/lang/Object;
.source "AtMeConversationManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldbq;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ldbq;


# direct methods
.method constructor <init>(Ldbq;)V
    .locals 0
    .param p1, "this$0"    # Ldbq;

    .prologue
    .line 98
    iput-object p1, p0, Ldbq$4;->a:Ldbq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 101
    iget-object v0, p0, Ldbq$4;->a:Ldbq;

    invoke-static {v0}, Ldbq;->b(Ldbq;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 102
    iget-object v0, p0, Ldbq$4;->a:Ldbq;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ldbq;->a(Ldbq;Z)V

    .line 103
    return-void
.end method
