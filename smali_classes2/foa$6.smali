.class final Lfoa$6;
.super Ljava/lang/Object;
.source "ScreenShotFeedBackDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfoa;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lfoa;


# direct methods
.method constructor <init>(Lfoa;)V
    .locals 0
    .param p1, "this$0"    # Lfoa;

    .prologue
    .line 198
    iput-object p1, p0, Lfoa$6;->a:Lfoa;

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
    .line 202
    invoke-static {}, Lfnz;->a()Lfnz;

    move-result-object v2

    iget-boolean v2, v2, Lfnz;->a:Z

    if-nez v2, :cond_0

    .line 212
    :goto_0
    return-void

    .line 206
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-object v4, p0, Lfoa$6;->a:Lfoa;

    invoke-static {v4}, Lfoa;->e(Lfoa;)J

    move-result-wide v4

    sub-long v0, v2, v4

    .line 207
    .local v0, "times":J
    const-wide/16 v2, 0x1388

    cmp-long v2, v0, v2

    if-ltz v2, :cond_1

    .line 208
    iget-object v2, p0, Lfoa$6;->a:Lfoa;

    invoke-virtual {v2}, Lfoa;->dismiss()V

    goto :goto_0

    .line 211
    :cond_1
    iget-object v2, p0, Lfoa$6;->a:Lfoa;

    invoke-static {v2}, Lfoa;->f(Lfoa;)V

    goto :goto_0
.end method
