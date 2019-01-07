.class public final Ldbq$2;
.super Ljava/lang/Object;
.source "AtMeConversationManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldbq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ldbq;


# direct methods
.method public constructor <init>(Ldbq;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Ldbq;

    .prologue
    .line 70
    iput-object p1, p0, Ldbq$2;->b:Ldbq;

    iput-object p2, p0, Ldbq$2;->a:Ljava/lang/String;

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
    .line 73
    iget-object v0, p0, Ldbq$2;->b:Ldbq;

    invoke-static {v0}, Ldbq;->b(Ldbq;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Ldbq$2;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 74
    iget-object v0, p0, Ldbq$2;->b:Ldbq;

    invoke-static {v0}, Ldbq;->b(Ldbq;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Ldbq$2;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 75
    iget-object v0, p0, Ldbq$2;->b:Ldbq;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ldbq;->a(Ldbq;Z)V

    .line 77
    :cond_0
    return-void
.end method
