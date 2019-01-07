.class final Lbab$2$2;
.super Ljava/lang/Object;
.source "BaseCreateEventActivityPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbab$2;->onException(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lbab$2;


# direct methods
.method constructor <init>(Lbab$2;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lbab$2;

    .prologue
    .line 329
    iput-object p1, p0, Lbab$2$2;->c:Lbab$2;

    iput-object p2, p0, Lbab$2$2;->a:Ljava/lang/String;

    iput-object p3, p0, Lbab$2$2;->b:Ljava/lang/String;

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
    .line 332
    iget-object v0, p0, Lbab$2$2;->c:Lbab$2;

    iget-object v0, v0, Lbab$2;->a:Lbab;

    iget-object v0, v0, Lbab;->a:Lbac$b;

    invoke-interface {v0}, Lbac$b;->a()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 333
    iget-object v0, p0, Lbab$2$2;->a:Ljava/lang/String;

    iget-object v1, p0, Lbab$2$2;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    :cond_0
    return-void
.end method
