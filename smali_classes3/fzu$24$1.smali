.class final Lfzu$24$1;
.super Ljava/lang/Object;
.source "SpaceNavigator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfzu$24;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lfzu$24;


# direct methods
.method constructor <init>(Lfzu$24;)V
    .locals 0
    .param p1, "this$0"    # Lfzu$24;

    .prologue
    .line 2362
    iput-object p1, p0, Lfzu$24$1;->a:Lfzu$24;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 2365
    iget-object v0, p0, Lfzu$24$1;->a:Lfzu$24;

    iget-object v0, v0, Lfzu$24;->a:Lgqq;

    if-eqz v0, :cond_0

    .line 2366
    iget-object v0, p0, Lfzu$24$1;->a:Lfzu$24;

    iget-object v0, v0, Lfzu$24;->a:Lgqq;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lgqq;->a(Ljava/lang/Void;)V

    .line 2368
    :cond_0
    return-void
.end method
