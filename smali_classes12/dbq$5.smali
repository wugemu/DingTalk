.class final Ldbq$5;
.super Ljava/lang/Object;
.source "AtMeConversationManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldbq;
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
    .line 118
    iput-object p1, p0, Ldbq$5;->a:Ldbq;

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
    .line 121
    invoke-static {}, Ldbu;->a()Ldbu;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ldbu;->a(Z)V

    .line 122
    return-void
.end method
