.class final Ldqq$c$1;
.super Ljava/lang/Object;
.source "ChatMsgListModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldqq$c;->b(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Ldqq$c;


# direct methods
.method constructor <init>(Ldqq$c;Ljava/lang/Object;)V
    .locals 0
    .param p1, "this$1"    # Ldqq$c;

    .prologue
    .line 1515
    .local p0, "this":Ldqq$c$1;, "Ldqq$c$1;"
    iput-object p1, p0, Ldqq$c$1;->b:Ldqq$c;

    iput-object p2, p0, Ldqq$c$1;->a:Ljava/lang/Object;

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
    .line 1518
    .local p0, "this":Ldqq$c$1;, "Ldqq$c$1;"
    iget-object v0, p0, Ldqq$c$1;->b:Ldqq$c;

    .line 2250
    iget-boolean v0, v0, Ldqq$b;->f:Z

    .line 1518
    if-eqz v0, :cond_0

    .line 1522
    :goto_0
    return-void

    .line 1521
    :cond_0
    iget-object v0, p0, Ldqq$c$1;->b:Ldqq$c;

    iget-object v1, p0, Ldqq$c$1;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ldqq$c;->a_(Ljava/lang/Object;)V

    goto :goto_0
.end method
