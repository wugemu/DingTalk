.class final Libi$1;
.super Ljava/lang/Object;
.source "GroupNickFetchTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Libi;->a(Ljava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:J

.field final synthetic c:Libi;


# direct methods
.method constructor <init>(Libi;Ljava/lang/String;J)V
    .locals 1
    .param p1, "this$0"    # Libi;

    .prologue
    .line 62
    iput-object p1, p0, Libi$1;->c:Libi;

    iput-object p2, p0, Libi$1;->a:Ljava/lang/String;

    iput-wide p3, p0, Libi$1;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 65
    iget-object v0, p0, Libi$1;->c:Libi;

    iget-object v1, p0, Libi$1;->a:Ljava/lang/String;

    iget-wide v2, p0, Libi$1;->b:J

    invoke-static {v0, v1, v2, v3}, Libi;->a(Libi;Ljava/lang/String;J)V

    .line 66
    iget-object v0, p0, Libi$1;->c:Libi;

    invoke-static {v0}, Libi;->b(Libi;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Libi$1;->c:Libi;

    invoke-static {v1}, Libi;->a(Libi;)Libi$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 67
    iget-object v0, p0, Libi$1;->c:Libi;

    invoke-static {v0}, Libi;->b(Libi;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Libi$1;->c:Libi;

    invoke-static {v1}, Libi;->a(Libi;)Libi$a;

    move-result-object v1

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 68
    return-void
.end method
