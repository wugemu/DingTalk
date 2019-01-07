.class final Lbar$4;
.super Ljava/lang/Object;
.source "DingUnReadPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbar;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbar;


# direct methods
.method constructor <init>(Lbar;)V
    .locals 0
    .param p1, "this$0"    # Lbar;

    .prologue
    .line 196
    iput-object p1, p0, Lbar$4;->a:Lbar;

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
    .line 199
    iget-object v0, p0, Lbar$4;->a:Lbar;

    .line 1037
    iget-object v0, v0, Lbar;->b:Lbaq$f;

    .line 199
    iget-object v1, p0, Lbar$4;->a:Lbar;

    .line 2037
    iget-object v1, v1, Lbar;->a:Ljava/util/List;

    .line 199
    invoke-interface {v0, v1}, Lbaq$f;->a(Ljava/util/List;)V

    .line 200
    return-void
.end method
