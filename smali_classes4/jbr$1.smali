.class final Ljbr$1;
.super Ljava/lang/Object;
.source "InstanceFactory.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljbr;->a(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ljbr$1;->a:Landroid/content/Context;

    iput-object p2, p0, Ljbr$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    :try_start_0
    new-instance v0, Ljbg;

    iget-object v1, p0, Ljbr$1;->a:Landroid/content/Context;

    invoke-static {}, Ljbw;->b()Ljbw;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljbg;-><init>(Landroid/content/Context;Ljbf;)V

    iget-object v1, p0, Ljbr$1;->a:Landroid/content/Context;

    iget-object v2, p0, Ljbr$1;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Ljbu;->a(Ljbg;Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "InstanceFactory"

    const-string/jumbo v2, "rollBack"

    invoke-static {v0, v1, v2}, Ljen;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
