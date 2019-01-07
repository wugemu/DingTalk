.class final Lbaz$1$1;
.super Ljava/lang/Object;
.source "EventSelectRemindActivityPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbaz$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbaz$1;


# direct methods
.method constructor <init>(Lbaz$1;)V
    .locals 0
    .param p1, "this$1"    # Lbaz$1;

    .prologue
    .line 88
    iput-object p1, p0, Lbaz$1$1;->a:Lbaz$1;

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
    .line 91
    iget-object v0, p0, Lbaz$1$1;->a:Lbaz$1;

    iget-object v0, v0, Lbaz$1;->a:Lbaz;

    .line 1026
    iget-object v0, v0, Lbaz;->a:Lbay$b;

    .line 91
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lbay$b;->a(Z)V

    .line 92
    return-void
.end method
