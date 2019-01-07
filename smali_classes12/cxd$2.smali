.class final Lcxd$2;
.super Ljava/lang/Object;
.source "RobotMarkdownViewHolder.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcxd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcxd;


# direct methods
.method constructor <init>(Lcxd;)V
    .locals 0
    .param p1, "this$0"    # Lcxd;

    .prologue
    .line 147
    iput-object p1, p0, Lcxd$2;->a:Lcxd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 150
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 159
    :goto_0
    :pswitch_0
    iget-object v0, p0, Lcxd$2;->a:Lcxd;

    invoke-static {v0}, Lcxd;->b(Lcxd;)Lga;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcxd$2;->a:Lcxd;

    invoke-static {v0}, Lcxd;->b(Lcxd;)Lga;

    move-result-object v0

    invoke-virtual {v0, p2}, Lga;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 162
    :goto_1
    return v0

    .line 152
    :pswitch_1
    iget-object v0, p0, Lcxd$2;->a:Lcxd;

    invoke-virtual {v0}, Lcxd;->p()V

    goto :goto_0

    .line 156
    :pswitch_2
    iget-object v0, p0, Lcxd$2;->a:Lcxd;

    invoke-virtual {v0}, Lcxd;->q()V

    goto :goto_0

    .line 162
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 150
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
