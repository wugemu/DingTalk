.class final Lbxy$1$1;
.super Ljava/lang/Object;
.source "LiveReplayAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbxy$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbxy$1;


# direct methods
.method constructor <init>(Lbxy$1;)V
    .locals 0
    .param p1, "this$1"    # Lbxy$1;

    .prologue
    .line 211
    iput-object p1, p0, Lbxy$1$1;->a:Lbxy$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lbxy$1$1;->a:Lbxy$1;

    iget-object v0, v0, Lbxy$1;->b:Lbxy;

    invoke-static {v0}, Lbxy;->d(Lbxy;)Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbxy$1$1;->a:Lbxy$1;

    iget-object v0, v0, Lbxy$1;->b:Lbxy;

    .line 215
    invoke-static {v0}, Lbxy;->d(Lbxy;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lbxy$1$1;->a:Lbxy$1;

    iget-object v0, v0, Lbxy$1;->b:Lbxy;

    invoke-virtual {v0}, Lbxy;->notifyDataSetChanged()V

    .line 218
    :cond_0
    return-void
.end method
