.class final Lcml$1;
.super Ljava/lang/Object;
.source "SafeModeManager.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcml;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcml$1;->a:Landroid/content/Context;

    iput-object p2, p0, Lcml$1;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 8
    .param p1, "t"    # Ljava/lang/Thread;
    .param p2, "e"    # Ljava/lang/Throwable;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 56
    invoke-static {}, Lcml;->a()J

    move-result-wide v2

    .line 57
    .local v2, "time":J
    invoke-static {}, Lcml;->b()J

    move-result-wide v4

    sub-long v4, v2, v4

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-ltz v1, :cond_0

    invoke-static {}, Lcml;->b()J

    move-result-wide v4

    sub-long v4, v2, v4

    const-wide/16 v6, 0x7530

    cmp-long v1, v4, v6

    if-gez v1, :cond_0

    .line 58
    iget-object v1, p0, Lcml$1;->a:Landroid/content/Context;

    const-string/jumbo v4, "launch_crash_count"

    invoke-static {v1, v4}, Lcml;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 59
    .local v0, "c":I
    iget-object v1, p0, Lcml$1;->a:Landroid/content/Context;

    const-string/jumbo v4, "launch_crash_count"

    add-int/lit8 v5, v0, 0x1

    invoke-static {v1, v4, v5}, Lcml;->a(Landroid/content/Context;Ljava/lang/String;I)V

    .line 61
    .end local v0    # "c":I
    :cond_0
    iget-object v1, p0, Lcml$1;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v1, :cond_1

    .line 62
    iget-object v1, p0, Lcml$1;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v1, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 64
    :cond_1
    return-void
.end method
