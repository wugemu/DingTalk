.class final Lbbo$27$1;
.super Ljava/lang/Object;
.source "DingDataCenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbbo$27;->onException(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lbbo$27;


# direct methods
.method constructor <init>(Lbbo$27;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lbbo$27;

    .prologue
    .line 3186
    iput-object p1, p0, Lbbo$27$1;->c:Lbbo$27;

    iput-object p2, p0, Lbbo$27$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lbbo$27$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 3189
    iget-object v0, p0, Lbbo$27$1;->c:Lbbo$27;

    iget-object v0, v0, Lbbo$27;->c:Lbbo;

    .line 4139
    invoke-virtual {v0}, Lbbo;->f()V

    .line 3190
    iget-object v0, p0, Lbbo$27$1;->c:Lbbo$27;

    iget-object v0, v0, Lbbo$27;->b:Lcma;

    if-eqz v0, :cond_0

    .line 3191
    iget-object v0, p0, Lbbo$27$1;->c:Lbbo$27;

    iget-object v0, v0, Lbbo$27;->b:Lcma;

    iget-object v1, p0, Lbbo$27$1;->a:Ljava/lang/String;

    iget-object v2, p0, Lbbo$27$1;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 3193
    :cond_0
    return-void
.end method
