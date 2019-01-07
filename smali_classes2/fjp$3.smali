.class public final Lfjp$3;
.super Ljava/lang/Object;
.source "LocalContactPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfjp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lfjp;


# direct methods
.method public constructor <init>(Lfjp;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lfjp;

    .prologue
    .line 251
    iput-object p1, p0, Lfjp$3;->b:Lfjp;

    iput-object p2, p0, Lfjp$3;->a:Landroid/app/Activity;

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
    .line 254
    iget-object v0, p0, Lfjp$3;->b:Lfjp;

    invoke-static {v0}, Lfjp;->a(Lfjp;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfjp$3;->b:Lfjp;

    invoke-static {v0}, Lfjp;->a(Lfjp;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 255
    iget-object v0, p0, Lfjp$3;->b:Lfjp;

    invoke-static {}, Lflr;->e()Ljava/util/HashMap;

    move-result-object v1

    invoke-static {v0, v1}, Lfjp;->a(Lfjp;Ljava/util/HashMap;)Ljava/util/HashMap;

    .line 256
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lfjp$3$1;

    invoke-direct {v1, p0}, Lfjp$3$1;-><init>(Lfjp$3;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 263
    :cond_0
    return-void
.end method
