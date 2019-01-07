.class final Lbwv$8;
.super Ljava/lang/Object;
.source "FullPlayerView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbwv;->d(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lbwv;


# direct methods
.method constructor <init>(Lbwv;Z)V
    .locals 0
    .param p1, "this$0"    # Lbwv;

    .prologue
    .line 644
    iput-object p1, p0, Lbwv$8;->b:Lbwv;

    iput-boolean p2, p0, Lbwv$8;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 647
    invoke-static {}, Lbws;->a()Lbws;

    move-result-object v1

    invoke-virtual {v1}, Lbws;->b()Ljjx;

    move-result-object v0

    .line 648
    .local v0, "pushInstance":Ljjx;
    invoke-static {}, Lbws;->a()Lbws;

    move-result-object v1

    .line 1497
    iget-object v1, v1, Lbws;->i:Ljava/lang/String;

    .line 648
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljjx;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 649
    iget-object v1, p0, Lbwv$8;->b:Lbwv;

    invoke-virtual {v1}, Lbwv;->p()V

    .line 650
    iget-boolean v1, p0, Lbwv$8;->a:Z

    if-eqz v1, :cond_0

    .line 651
    iget-object v1, p0, Lbwv$8;->b:Lbwv;

    invoke-static {v1}, Lbwv;->i(Lbwv;)V

    .line 653
    :cond_0
    return-void
.end method
