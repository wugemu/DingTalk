.class final Lhhh$2;
.super Ljava/lang/Object;
.source "FCResultNotifyHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhhh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lhhl;

.field final synthetic b:Lhhh;


# direct methods
.method constructor <init>(Lhhh;Lhhl;)V
    .locals 0
    .param p1, "this$0"    # Lhhh;

    .prologue
    .line 109
    iput-object p1, p0, Lhhh$2;->b:Lhhh;

    iput-object p2, p0, Lhhh$2;->a:Lhhl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 113
    :try_start_0
    invoke-static {}, Lhrt;->a()Lhrt;

    move-result-object v0

    iget-object v1, p0, Lhhh$2;->a:Lhhl;

    iget-object v1, v1, Lhhl;->f:Ljava/lang/Integer;

    .line 1033
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v1

    .line 113
    invoke-virtual {v0, v1}, Lhrt;->a(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
