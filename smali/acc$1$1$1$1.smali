.class final Lacc$1$1$1$1;
.super Ljava/lang/Object;
.source "AlimeiSearchFacede.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lacc$1$1$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lchr;

.field final synthetic b:Lacc$1$1$1;


# direct methods
.method constructor <init>(Lacc$1$1$1;Lchr;)V
    .locals 0
    .param p1, "this$2"    # Lacc$1$1$1;

    .prologue
    .line 86
    iput-object p1, p0, Lacc$1$1$1$1;->b:Lacc$1$1$1;

    iput-object p2, p0, Lacc$1$1$1$1;->a:Lchr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 89
    iget-object v0, p0, Lacc$1$1$1$1;->b:Lacc$1$1$1;

    iget-object v0, v0, Lacc$1$1$1;->b:Lacc$1$1;

    iget-object v0, v0, Lacc$1$1;->a:Lacc$1;

    iget-object v0, v0, Lacc$1;->e:Lcma;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lacc$1$1$1$1;->b:Lacc$1$1$1;

    iget-object v0, v0, Lacc$1$1$1;->b:Lacc$1$1;

    iget-object v0, v0, Lacc$1$1;->a:Lacc$1;

    iget-object v0, v0, Lacc$1;->e:Lcma;

    iget-object v1, p0, Lacc$1$1$1$1;->a:Lchr;

    invoke-interface {v0, v1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 92
    :cond_0
    return-void
.end method
