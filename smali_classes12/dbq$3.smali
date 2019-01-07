.class final Ldbq$3;
.super Ljava/lang/Object;
.source "AtMeConversationManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldbq;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ldbq;


# direct methods
.method constructor <init>(Ldbq;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Ldbq;

    .prologue
    .line 86
    iput-object p1, p0, Ldbq$3;->b:Ldbq;

    iput-object p2, p0, Ldbq$3;->a:Ljava/lang/String;

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
    .line 89
    iget-object v0, p0, Ldbq$3;->b:Ldbq;

    invoke-static {v0}, Ldbq;->b(Ldbq;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Ldbq$3;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Ldbq$3;->b:Ldbq;

    invoke-static {v0}, Ldbq;->b(Ldbq;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Ldbq$3;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 91
    iget-object v0, p0, Ldbq$3;->b:Ldbq;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ldbq;->a(Ldbq;Z)V

    .line 93
    :cond_0
    return-void
.end method
