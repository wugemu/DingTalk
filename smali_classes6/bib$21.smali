.class final Lbib$21;
.super Ljava/lang/Object;
.source "BasicDingViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbib;


# direct methods
.method constructor <init>(Lbib;)V
    .locals 0
    .param p1, "this$0"    # Lbib;

    .prologue
    .line 602
    iput-object p1, p0, Lbib$21;->a:Lbib;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 605
    iget-object v0, p0, Lbib$21;->a:Lbib;

    iget-object v0, v0, Lbib;->ae:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-static {v0}, Lbkh;->n(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 612
    :goto_0
    return-void

    .line 608
    :cond_0
    iget-object v0, p0, Lbib$21;->a:Lbib;

    iget-object v1, v0, Lbib;->a:Landroid/app/Activity;

    iget-object v0, p0, Lbib$21;->a:Lbib;

    iget-object v2, v0, Lbib;->o:Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;

    iget-object v0, p0, Lbib$21;->a:Lbib;

    iget-object v3, v0, Lbib;->ae:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    iget-object v0, p0, Lbib$21;->a:Lbib;

    iget-object v0, v0, Lbib;->o:Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;

    .line 611
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 608
    :goto_1
    invoke-static {v1, v2, v3, v0}, Lbkj;->a(Landroid/app/Activity;Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;Lcom/alibaba/android/ding/base/objects/ObjectDing;Z)V

    goto :goto_0

    .line 611
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
