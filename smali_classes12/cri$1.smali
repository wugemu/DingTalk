.class final Lcri$1;
.super Ljava/lang/Object;
.source "UpSlideDismissPopupWindow.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcri;->showAtLocation(Landroid/view/View;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcri;

.field private b:I

.field private c:I


# direct methods
.method constructor <init>(Lcri;)V
    .locals 0
    .param p1, "this$0"    # Lcri;

    .prologue
    .line 45
    iput-object p1, p0, Lcri$1;->a:Lcri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 51
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 74
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 53
    :pswitch_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcri$1;->b:I

    goto :goto_0

    .line 56
    :pswitch_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    float-to-int v1, v1

    iget v2, p0, Lcri$1;->b:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcri$1;->c:I

    .line 57
    iget-object v1, p0, Lcri$1;->a:Lcri;

    invoke-virtual {v1}, Lcri;->getContentView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 58
    iget-object v1, p0, Lcri$1;->a:Lcri;

    invoke-virtual {v1}, Lcri;->getContentView()Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lcri$1;->c:I

    if-gez v2, :cond_1

    iget v0, p0, Lcri$1;->c:I

    int-to-float v0, v0

    :cond_1
    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0

    .line 62
    :pswitch_2
    iget v1, p0, Lcri$1;->c:I

    const/4 v2, 0x0

    const/high16 v3, 0x41700000    # 15.0f

    invoke-static {v2, v3}, Lcms;->c(Landroid/content/Context;F)I

    move-result v2

    neg-int v2, v2

    if-ge v1, v2, :cond_2

    .line 63
    iget-object v0, p0, Lcri$1;->a:Lcri;

    invoke-virtual {v0}, Lcri;->dismiss()V

    .line 64
    iget-object v0, p0, Lcri$1;->a:Lcri;

    invoke-static {v0}, Lcri;->a(Lcri;)Lcri$a;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 68
    :cond_2
    iget-object v1, p0, Lcri$1;->a:Lcri;

    invoke-virtual {v1}, Lcri;->getContentView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 69
    iget-object v1, p0, Lcri$1;->a:Lcri;

    invoke-virtual {v1}, Lcri;->getContentView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0

    .line 51
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
