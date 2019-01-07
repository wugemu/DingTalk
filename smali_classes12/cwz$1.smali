.class final Lcwz$1;
.super Ljava/lang/Object;
.source "RobotMarkdownExViewHolder.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcwz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcwz;


# direct methods
.method constructor <init>(Lcwz;)V
    .locals 0
    .param p1, "this$0"    # Lcwz;

    .prologue
    .line 94
    iput-object p1, p0, Lcwz$1;->a:Lcwz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 97
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 107
    :goto_0
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 99
    :pswitch_1
    iget-object v0, p0, Lcwz$1;->a:Lcwz;

    invoke-virtual {v0}, Lcwz;->p()V

    goto :goto_0

    .line 104
    :pswitch_2
    iget-object v0, p0, Lcwz$1;->a:Lcwz;

    iget-object v0, v0, Lcwz;->r:Landroid/view/View;

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lctk$c;->pure_white:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 97
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
