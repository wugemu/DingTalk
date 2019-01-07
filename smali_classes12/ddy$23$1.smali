.class final Lddy$23$1;
.super Ljava/lang/Object;
.source "ChatLoadPresenter.java"

# interfaces
.implements Ldnf$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lddy$23;->a(Ljava/lang/Object;Ldqq$c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ldqq$c;

.field final synthetic b:Ljava/lang/Object;

.field final synthetic c:Lddy$23;


# direct methods
.method constructor <init>(Lddy$23;Ldqq$c;Ljava/lang/Object;)V
    .locals 0
    .param p1, "this$1"    # Lddy$23;

    .prologue
    .line 573
    iput-object p1, p0, Lddy$23$1;->c:Lddy$23;

    iput-object p2, p0, Lddy$23$1;->a:Ldqq$c;

    iput-object p3, p0, Lddy$23$1;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 576
    iget-object v0, p0, Lddy$23$1;->a:Ldqq$c;

    if-eqz v0, :cond_0

    .line 577
    iget-object v0, p0, Lddy$23$1;->a:Ldqq$c;

    iget-object v1, p0, Lddy$23$1;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ldqq$c;->b(Ljava/lang/Object;)V

    .line 579
    :cond_0
    return-void
.end method
