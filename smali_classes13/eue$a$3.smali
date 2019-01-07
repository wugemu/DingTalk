.class final Leue$a$3;
.super Ljava/lang/Object;
.source "SearchEngineAPI.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leue$a;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Leue$a;


# direct methods
.method constructor <init>(Leue$a;Z)V
    .locals 0
    .param p1, "this$1"    # Leue$a;

    .prologue
    .line 363
    iput-object p1, p0, Leue$a$3;->b:Leue$a;

    iput-boolean p2, p0, Leue$a$3;->a:Z

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
    .line 366
    iget-object v0, p0, Leue$a$3;->b:Leue$a;

    .line 1273
    iget-object v0, v0, Leue$a;->a:Leug;

    .line 366
    if-nez v0, :cond_0

    .line 370
    :goto_0
    return-void

    .line 369
    :cond_0
    iget-object v0, p0, Leue$a$3;->b:Leue$a;

    .line 2273
    iget-object v0, v0, Leue$a;->a:Leug;

    .line 369
    iget-boolean v1, p0, Leue$a$3;->a:Z

    invoke-interface {v0, v1}, Leug;->a(Z)V

    goto :goto_0
.end method
