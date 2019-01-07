.class final Lfnp$1;
.super Ljava/lang/Object;
.source "AddExternalMenuDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfnp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:[Ljava/lang/String;

.field final synthetic b:Lfnp;


# direct methods
.method constructor <init>(Lfnp;[Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lfnp;

    .prologue
    .line 63
    iput-object p1, p0, Lfnp$1;->b:Lfnp;

    iput-object p2, p0, Lfnp$1;->a:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 66
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 67
    iget-object v0, p0, Lfnp$1;->a:[Ljava/lang/String;

    array-length v0, v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    .line 69
    packed-switch p2, :pswitch_data_0

    .line 96
    :goto_0
    return-void

    .line 71
    :pswitch_0
    iget-object v0, p0, Lfnp$1;->b:Lfnp;

    invoke-static {v0}, Lfnp;->a(Lfnp;)V

    goto :goto_0

    .line 74
    :pswitch_1
    iget-object v0, p0, Lfnp$1;->b:Lfnp;

    invoke-static {v0}, Lfnp;->b(Lfnp;)V

    goto :goto_0

    .line 77
    :pswitch_2
    iget-object v0, p0, Lfnp$1;->b:Lfnp;

    invoke-static {v0}, Lfnp;->c(Lfnp;)V

    goto :goto_0

    .line 80
    :pswitch_3
    iget-object v0, p0, Lfnp$1;->b:Lfnp;

    invoke-static {v0}, Lfnp;->d(Lfnp;)V

    goto :goto_0

    .line 84
    :cond_0
    packed-switch p2, :pswitch_data_1

    goto :goto_0

    .line 86
    :pswitch_4
    iget-object v0, p0, Lfnp$1;->b:Lfnp;

    invoke-static {v0}, Lfnp;->a(Lfnp;)V

    goto :goto_0

    .line 89
    :pswitch_5
    iget-object v0, p0, Lfnp$1;->b:Lfnp;

    invoke-static {v0}, Lfnp;->b(Lfnp;)V

    goto :goto_0

    .line 92
    :pswitch_6
    iget-object v0, p0, Lfnp$1;->b:Lfnp;

    invoke-static {v0}, Lfnp;->d(Lfnp;)V

    goto :goto_0

    .line 69
    .line 84
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
