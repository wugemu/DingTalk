.class final Leue$a$1;
.super Ljava/lang/Object;
.source "SearchEngineAPI.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leue$a;->a(Ljava/lang/String;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Leue$a;


# direct methods
.method constructor <init>(Leue$a;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .param p1, "this$1"    # Leue$a;

    .prologue
    .line 315
    iput-object p1, p0, Leue$a$1;->c:Leue$a;

    iput-object p2, p0, Leue$a$1;->a:Ljava/lang/String;

    iput-object p3, p0, Leue$a$1;->b:Ljava/util/List;

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
    .line 318
    iget-object v0, p0, Leue$a$1;->c:Leue$a;

    .line 1273
    iget-object v0, v0, Leue$a;->a:Leug;

    .line 318
    if-nez v0, :cond_0

    .line 322
    :goto_0
    return-void

    .line 321
    :cond_0
    iget-object v0, p0, Leue$a$1;->c:Leue$a;

    .line 2273
    iget-object v0, v0, Leue$a;->a:Leug;

    .line 321
    iget-object v1, p0, Leue$a$1;->a:Ljava/lang/String;

    iget-object v2, p0, Leue$a$1;->b:Ljava/util/List;

    invoke-interface {v0, v1, v2}, Leug;->a(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0
.end method
