.class final Lbwv$7;
.super Lbzd;
.source "FullPlayerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbwv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbwv;


# direct methods
.method constructor <init>(Lbwv;)V
    .locals 0
    .param p1, "this$0"    # Lbwv;

    .prologue
    .line 604
    iput-object p1, p0, Lbwv$7;->a:Lbwv;

    invoke-direct {p0}, Lbzd;-><init>()V

    return-void
.end method


# virtual methods
.method public final grant()V
    .locals 1

    .prologue
    .line 607
    iget-object v0, p0, Lbwv$7;->a:Lbwv;

    .line 1439
    iget-object v0, v0, Lbwv;->p:Landroid/app/Activity;

    .line 607
    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 608
    iget-object v0, p0, Lbwv$7;->a:Lbwv;

    invoke-static {v0}, Lbwv;->h(Lbwv;)V

    .line 610
    :cond_0
    return-void
.end method
