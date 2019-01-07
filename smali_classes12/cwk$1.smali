.class final Lcwk$1;
.super Ljava/lang/Object;
.source "MiniAppMarkdownViewHolder.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcwk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcwk;


# direct methods
.method constructor <init>(Lcwk;)V
    .locals 0
    .param p1, "this$0"    # Lcwk;

    .prologue
    .line 80
    iput-object p1, p0, Lcwk$1;->a:Lcwk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 83
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 92
    :goto_0
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 85
    :pswitch_1
    iget-object v0, p0, Lcwk$1;->a:Lcwk;

    invoke-virtual {v0}, Lcwk;->p()V

    goto :goto_0

    .line 89
    :pswitch_2
    iget-object v0, p0, Lcwk$1;->a:Lcwk;

    invoke-virtual {v0}, Lcwk;->q()V

    goto :goto_0

    .line 83
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
