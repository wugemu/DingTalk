.class final Ldsf$4;
.super Ljava/lang/Object;
.source "VideoPlayManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldsf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ldsf$a;

.field final synthetic b:Ldsf;


# direct methods
.method constructor <init>(Ldsf;Ldsf$a;)V
    .locals 0
    .param p1, "this$0"    # Ldsf;

    .prologue
    .line 383
    iput-object p1, p0, Ldsf$4;->b:Ldsf;

    iput-object p2, p0, Ldsf$4;->a:Ldsf$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 386
    iget-object v0, p0, Ldsf$4;->a:Ldsf$a;

    const-string/jumbo v1, "40010"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Ldsf$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    return-void
.end method
