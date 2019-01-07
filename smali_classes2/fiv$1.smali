.class public final Lfiv$1;
.super Ljava/lang/Object;
.source "CommonContactPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfiv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lfiv;


# direct methods
.method public constructor <init>(Lfiv;)V
    .locals 0
    .param p1, "this$0"    # Lfiv;

    .prologue
    .line 58
    iput-object p1, p0, Lfiv$1;->a:Lfiv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 61
    iget-object v0, p0, Lfiv$1;->a:Lfiv;

    invoke-static {}, Lfmz;->a()Lfmz;

    move-result-object v1

    invoke-virtual {v1}, Lfmz;->d()Lfmo;

    move-result-object v1

    const/16 v2, 0x1e

    invoke-interface {v1, v2}, Lfmo;->a(I)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lfiv;->a(Lfiv;Ljava/util/List;)Ljava/util/List;

    .line 62
    iget-object v0, p0, Lfiv$1;->a:Lfiv;

    const/4 v1, 0x0

    iget-object v2, p0, Lfiv$1;->a:Lfiv;

    invoke-static {v2}, Lfiv;->a(Lfiv;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lfiv;->a(Landroid/app/Activity;Ljava/util/List;)V

    .line 63
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lfiv$1$1;

    invoke-direct {v1, p0}, Lfiv$1$1;-><init>(Lfiv$1;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 71
    return-void
.end method
