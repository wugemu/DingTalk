.class final Liaq$1$1;
.super Ljava/lang/Object;
.source "IMContext.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Liaq$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Liaq$1;


# direct methods
.method constructor <init>(Liaq$1;)V
    .locals 0
    .param p1, "this$1"    # Liaq$1;

    .prologue
    .line 96
    iput-object p1, p0, Liaq$1$1;->a:Liaq$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 99
    invoke-static {}, Lifz;->a()J

    move-result-wide v0

    .line 100
    .local v0, "size":J
    const-wide/32 v2, 0x3200000

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    .line 101
    iget-object v2, p0, Liaq$1$1;->a:Liaq$1;

    iget-object v2, v2, Liaq$1;->a:Liaq;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Liaq;->a(Liaq;Z)Z

    .line 102
    const-string/jumbo v2, "[TAG] Disk space"

    const-string/jumbo v3, "[BASE] low space"

    .line 1018
    const-string/jumbo v4, "im"

    invoke-static {v2, v3, v4}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    :cond_0
    return-void
.end method
