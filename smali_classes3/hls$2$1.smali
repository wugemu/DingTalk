.class final Lhls$2$1;
.super Ljava/lang/Object;
.source "MiniappInstance.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhls$2;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lhls$2;


# direct methods
.method constructor <init>(Lhls$2;)V
    .locals 0
    .param p1, "this$1"    # Lhls$2;

    .prologue
    .line 352
    iput-object p1, p0, Lhls$2$1;->a:Lhls$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 355
    iget-object v1, p0, Lhls$2$1;->a:Lhls$2;

    iget-object v1, v1, Lhls$2;->c:Lhls;

    iget-object v2, p0, Lhls$2$1;->a:Lhls$2;

    iget-object v2, v2, Lhls$2;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lhls;->b(Ljava/lang/String;)Lhlp;

    move-result-object v0

    .line 356
    .local v0, "pageInstance":Lhlp;
    if-eqz v0, :cond_0

    .line 357
    iget-object v1, p0, Lhls$2$1;->a:Lhls$2;

    iget-object v1, v1, Lhls$2;->b:Lhln;

    invoke-interface {v1, v0}, Lhln;->a(Lhlp;)V

    .line 362
    :goto_0
    return-void

    .line 359
    :cond_0
    iget-object v1, p0, Lhls$2$1;->a:Lhls$2;

    iget-object v1, v1, Lhls$2;->b:Lhln;

    const-string/jumbo v2, "instance_prepare_fail"

    const-string/jumbo v3, "create main page fail"

    invoke-interface {v1, v2, v3}, Lhln;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    const-string/jumbo v1, "MiniappInstance"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "initInstance : generate main page fail"

    aput-object v4, v2, v3

    .line 1071
    const-string/jumbo v3, "mini_app"

    invoke-static {v3, v1, v2}, Lhmv;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
