.class final Lffr$1$1;
.super Ljava/lang/Object;
.source "OpenIdExManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lffr$1;->onOpenIdExChanged(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lffr$1;


# direct methods
.method constructor <init>(Lffr$1;Ljava/util/List;)V
    .locals 0
    .param p1, "this$1"    # Lffr$1;

    .prologue
    .line 61
    iput-object p1, p0, Lffr$1$1;->b:Lffr$1;

    iput-object p2, p0, Lffr$1$1;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 65
    :try_start_0
    iget-object v1, p0, Lffr$1$1;->b:Lffr$1;

    iget-object v1, v1, Lffr$1;->a:Lffr;

    iget-object v2, p0, Lffr$1$1;->a:Ljava/util/List;

    invoke-static {v1, v2}, Lffr;->a(Lffr;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    :goto_0
    return-void

    .line 66
    :catch_0
    move-exception v0

    .line 67
    .local v0, "e":Ljava/lang/Throwable;
    const/4 v1, 0x0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "OpenIdExManager handleChanged failed, error="

    aput-object v3, v2, v5

    const/4 v3, 0x1

    .line 68
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 67
    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
