.class final Lglj$b$2;
.super Ljava/lang/Object;
.source "SpaceLinkManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lglj$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lgkl;

.field final synthetic b:Lglj$b;


# direct methods
.method constructor <init>(Lglj$b;Lgkl;)V
    .locals 0
    .param p1, "this$0"    # Lglj$b;

    .prologue
    .line 492
    iput-object p1, p0, Lglj$b$2;->b:Lglj$b;

    iput-object p2, p0, Lglj$b$2;->a:Lgkl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 495
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 496
    packed-switch p2, :pswitch_data_0

    .line 509
    :goto_0
    return-void

    .line 498
    :pswitch_0
    iget-object v0, p0, Lglj$b$2;->b:Lglj$b;

    iget-object v1, p0, Lglj$b$2;->a:Lgkl;

    const-wide/16 v2, 0x3e9

    invoke-static {v0, v1, v2, v3}, Lglj$b;->a(Lglj$b;Lgkl;J)V

    goto :goto_0

    .line 501
    :pswitch_1
    iget-object v0, p0, Lglj$b$2;->b:Lglj$b;

    iget-object v1, p0, Lglj$b$2;->a:Lgkl;

    const-wide/16 v2, 0x3ea

    invoke-static {v0, v1, v2, v3}, Lglj$b;->a(Lglj$b;Lgkl;J)V

    goto :goto_0

    .line 504
    :pswitch_2
    iget-object v0, p0, Lglj$b$2;->b:Lglj$b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lglj$b;->a(Lglj$b;Z)V

    goto :goto_0

    .line 496
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
