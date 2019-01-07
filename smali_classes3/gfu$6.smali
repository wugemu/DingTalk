.class final Lgfu$6;
.super Ljava/lang/Object;
.source "FilePreviewWebViewWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgfu;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lgfu;


# direct methods
.method constructor <init>(Lgfu;)V
    .locals 0
    .param p1, "this$0"    # Lgfu;

    .prologue
    .line 491
    iput-object p1, p0, Lgfu$6;->a:Lgfu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 494
    iget-object v0, p0, Lgfu$6;->a:Lgfu;

    iget-object v0, v0, Lgfu;->a:Landroid/app/Activity;

    invoke-static {v0}, Lgpk;->a(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 498
    :goto_0
    return-void

    .line 497
    :cond_0
    iget-object v0, p0, Lgfu$6;->a:Lgfu;

    invoke-virtual {v0}, Lgfu;->g()V

    goto :goto_0
.end method
