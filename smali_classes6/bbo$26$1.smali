.class final Lbbo$26$1;
.super Ljava/lang/Object;
.source "DingDataCenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbbo$26;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbbo$26;


# direct methods
.method constructor <init>(Lbbo$26;)V
    .locals 0
    .param p1, "this$1"    # Lbbo$26;

    .prologue
    .line 3145
    iput-object p1, p0, Lbbo$26$1;->a:Lbbo$26;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 3148
    iget-object v0, p0, Lbbo$26$1;->a:Lbbo$26;

    iget-object v0, v0, Lbbo$26;->b:Lbbo;

    .line 4139
    invoke-virtual {v0}, Lbbo;->f()V

    .line 3149
    iget-object v0, p0, Lbbo$26$1;->a:Lbbo$26;

    iget-object v0, v0, Lbbo$26;->a:Lcma;

    if-eqz v0, :cond_0

    .line 3150
    iget-object v0, p0, Lbbo$26$1;->a:Lbbo$26;

    iget-object v0, v0, Lbbo$26;->a:Lcma;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 3152
    :cond_0
    return-void
.end method
