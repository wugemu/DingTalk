.class final Lelg$9;
.super Ljava/lang/Object;
.source "InvitationListener.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lelg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Landroid/app/Activity;

.field final synthetic c:Lelg;


# direct methods
.method constructor <init>(Lelg;ZLandroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lelg;

    .prologue
    .line 416
    iput-object p1, p0, Lelg$9;->c:Lelg;

    iput-boolean p2, p0, Lelg$9;->a:Z

    iput-object p3, p0, Lelg$9;->b:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 420
    iget-object v0, p0, Lelg$9;->c:Lelg;

    invoke-static {v0}, Lelg;->f(Lelg;)V

    .line 421
    iget-boolean v0, p0, Lelg$9;->a:Z

    if-eqz v0, :cond_0

    .line 423
    iget-object v0, p0, Lelg$9;->c:Lelg;

    iget-object v1, p0, Lelg$9;->b:Landroid/app/Activity;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lelg;->a(Lelg;Landroid/app/Activity;Z)V

    .line 427
    :goto_0
    return-void

    .line 425
    :cond_0
    iget-object v0, p0, Lelg$9;->c:Lelg;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lelg;->a(Lelg;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0
.end method
