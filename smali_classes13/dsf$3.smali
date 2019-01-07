.class final Ldsf$3;
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

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ldsf;


# direct methods
.method constructor <init>(Ldsf;Ldsf$a;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Ldsf;

    .prologue
    .line 374
    iput-object p1, p0, Ldsf$3;->c:Ldsf;

    iput-object p2, p0, Ldsf$3;->a:Ldsf$a;

    iput-object p3, p0, Ldsf$3;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 377
    iget-object v0, p0, Ldsf$3;->a:Ldsf$a;

    iget-object v1, p0, Ldsf$3;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Ldsf$a;->a(Ljava/lang/String;)V

    .line 378
    return-void
.end method
