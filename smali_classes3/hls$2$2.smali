.class final Lhls$2$2;
.super Ljava/lang/Object;
.source "MiniappInstance.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhls$2;->a(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lhls$2;


# direct methods
.method constructor <init>(Lhls$2;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lhls$2;

    .prologue
    .line 368
    iput-object p1, p0, Lhls$2$2;->c:Lhls$2;

    iput-object p2, p0, Lhls$2$2;->a:Ljava/lang/String;

    iput-object p3, p0, Lhls$2$2;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 371
    iget-object v0, p0, Lhls$2$2;->c:Lhls$2;

    iget-object v0, v0, Lhls$2;->c:Lhls;

    invoke-static {v0}, Lhls;->b(Lhls;)Lhln;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 372
    iget-object v0, p0, Lhls$2$2;->c:Lhls$2;

    iget-object v0, v0, Lhls$2;->b:Lhln;

    iget-object v1, p0, Lhls$2$2;->a:Ljava/lang/String;

    iget-object v2, p0, Lhls$2$2;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lhln;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    const-string/jumbo v0, "MiniappInstance"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lhls$2$2;->b:Ljava/lang/String;

    aput-object v3, v1, v2

    .line 1071
    const-string/jumbo v2, "mini_app"

    invoke-static {v2, v0, v1}, Lhmv;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 375
    :cond_0
    return-void
.end method
