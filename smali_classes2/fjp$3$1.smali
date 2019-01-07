.class final Lfjp$3$1;
.super Ljava/lang/Object;
.source "LocalContactPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfjp$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lfjp$3;


# direct methods
.method constructor <init>(Lfjp$3;)V
    .locals 0
    .param p1, "this$1"    # Lfjp$3;

    .prologue
    .line 256
    iput-object p1, p0, Lfjp$3$1;->a:Lfjp$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 259
    iget-object v0, p0, Lfjp$3$1;->a:Lfjp$3;

    iget-object v0, v0, Lfjp$3;->b:Lfjp;

    iget-object v1, p0, Lfjp$3$1;->a:Lfjp$3;

    iget-object v1, v1, Lfjp$3;->a:Landroid/app/Activity;

    invoke-static {v0, v1}, Lfjp;->a(Lfjp;Landroid/app/Activity;)V

    .line 260
    return-void
.end method
