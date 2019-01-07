.class final Lfmm$1;
.super Ljava/lang/Object;
.source "AddCustomerMenuDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfmm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:[Ljava/lang/String;

.field final synthetic b:Lfmm;


# direct methods
.method constructor <init>(Lfmm;[Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lfmm;

    .prologue
    .line 92
    iput-object p1, p0, Lfmm$1;->b:Lfmm;

    iput-object p2, p0, Lfmm$1;->a:[Ljava/lang/String;

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
    .line 95
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 96
    iget-object v0, p0, Lfmm$1;->a:[Ljava/lang/String;

    array-length v0, v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    .line 98
    packed-switch p2, :pswitch_data_0

    .line 119
    :goto_0
    return-void

    .line 100
    :pswitch_0
    iget-object v0, p0, Lfmm$1;->b:Lfmm;

    invoke-static {v0}, Lfmm;->a(Lfmm;)V

    goto :goto_0

    .line 103
    :pswitch_1
    iget-object v0, p0, Lfmm$1;->b:Lfmm;

    invoke-static {v0}, Lfmm;->b(Lfmm;)V

    goto :goto_0

    .line 106
    :pswitch_2
    iget-object v0, p0, Lfmm$1;->b:Lfmm;

    invoke-static {v0}, Lfmm;->c(Lfmm;)V

    goto :goto_0

    .line 110
    :cond_0
    packed-switch p2, :pswitch_data_1

    goto :goto_0

    .line 112
    :pswitch_3
    iget-object v0, p0, Lfmm$1;->b:Lfmm;

    invoke-static {v0}, Lfmm;->b(Lfmm;)V

    goto :goto_0

    .line 115
    :pswitch_4
    iget-object v0, p0, Lfmm$1;->b:Lfmm;

    invoke-static {v0}, Lfmm;->c(Lfmm;)V

    goto :goto_0

    .line 98
    .line 110
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
