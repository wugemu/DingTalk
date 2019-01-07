.class final Leue$a$2;
.super Ljava/lang/Object;
.source "SearchEngineAPI.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leue$a;->a(Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Map;

.field final synthetic b:Leue$a;


# direct methods
.method constructor <init>(Leue$a;Ljava/util/Map;)V
    .locals 0
    .param p1, "this$1"    # Leue$a;

    .prologue
    .line 337
    iput-object p1, p0, Leue$a$2;->b:Leue$a;

    iput-object p2, p0, Leue$a$2;->a:Ljava/util/Map;

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
    .line 340
    iget-object v0, p0, Leue$a$2;->b:Leue$a;

    .line 1273
    iget-object v0, v0, Leue$a;->a:Leug;

    .line 340
    if-nez v0, :cond_0

    .line 344
    :goto_0
    return-void

    .line 343
    :cond_0
    iget-object v0, p0, Leue$a$2;->b:Leue$a;

    .line 2273
    iget-object v0, v0, Leue$a;->a:Leug;

    .line 343
    iget-object v1, p0, Leue$a$2;->a:Ljava/util/Map;

    invoke-interface {v0, v1}, Leug;->a(Ljava/util/Map;)V

    goto :goto_0
.end method
