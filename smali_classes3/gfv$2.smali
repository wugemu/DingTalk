.class final Lgfv$2;
.super Ljava/lang/Object;
.source "VideoFilePreviewWebViewWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgfv;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lgfv;


# direct methods
.method constructor <init>(Lgfv;)V
    .locals 0
    .param p1, "this$0"    # Lgfv;

    .prologue
    .line 117
    iput-object p1, p0, Lgfv$2;->a:Lgfv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lgfv$2;->a:Lgfv;

    iget-object v0, v0, Lgfv;->a:Landroid/app/Activity;

    invoke-static {v0}, Lgpk;->a(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    :goto_0
    return-void

    .line 124
    :cond_0
    iget-object v0, p0, Lgfv$2;->a:Lgfv;

    invoke-virtual {v0}, Lgfv;->g()V

    goto :goto_0
.end method
