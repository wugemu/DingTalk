.class public Lcom/alibaba/android/dingtalkim/views/TextTipDialog;
.super Landroid/widget/PopupWindow;
.source "TextTipDialog.java"


# instance fields
.field public a:Landroid/content/Context;

.field public b:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    .line 28
    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    .line 29
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/views/TextTipDialog;->a:Landroid/content/Context;

    .line 1034
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/TextTipDialog;->a:Landroid/content/Context;

    sget v1, Lctk$g;->text_tip_dialog:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/views/TextTipDialog;->setContentView(Landroid/view/View;)V

    .line 1035
    invoke-virtual {p0, v3}, Lcom/alibaba/android/dingtalkim/views/TextTipDialog;->setFocusable(Z)V

    .line 1036
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/views/TextTipDialog;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1037
    invoke-virtual {p0, v3}, Lcom/alibaba/android/dingtalkim/views/TextTipDialog;->setOutsideTouchable(Z)V

    .line 1038
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/views/TextTipDialog;->getContentView()Landroid/view/View;

    move-result-object v0

    sget v1, Lctk$f;->text_tip_arrow:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/views/TextTipDialog;->b:Landroid/view/View;

    .line 31
    return-void
.end method
