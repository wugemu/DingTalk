.class final Liec$1;
.super Ljava/lang/Object;
.source "AVEngine.java"

# interfaces
.implements Lifc$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Liec;->a(Landroid/content/Context;Liec$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Liec$a;


# direct methods
.method constructor <init>(Landroid/content/Context;Liec$a;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Liec$1;->a:Landroid/content/Context;

    iput-object p2, p0, Liec$1;->b:Liec$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 2
    .param p1, "isSuccess"    # Z

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 51
    invoke-static {}, Liec;->c()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 52
    invoke-static {}, Liec;->c()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Liec$1$1;

    invoke-direct {v1, p0, p1}, Liec$1$1;-><init>(Liec$1;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 79
    :cond_0
    return-void
.end method
