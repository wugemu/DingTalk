.class public final Lbxl;
.super Ljava/lang/Object;
.source "LinkMicUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/widget/TextView;)V
    .locals 2
    .param p0, "textView"    # Landroid/widget/TextView;

    .prologue
    const/4 v1, 0x1

    .line 378
    if-nez p0, :cond_0

    .line 391
    :goto_0
    return-void

    .line 381
    :cond_0
    invoke-static {}, Lcms;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 383
    sget v0, Lbtp$g;->dt_lv_simullive:I

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(I)V

    .line 384
    sget v0, Lbtp$d;->drawable_live_link_bg:I

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 385
    const/high16 v0, 0x41200000    # 10.0f

    invoke-virtual {p0, v1, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_0

    .line 387
    :cond_1
    sget v0, Lbtp$g;->icon_group_live:I

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(I)V

    .line 388
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 389
    const/high16 v0, 0x41500000    # 13.0f

    invoke-virtual {p0, v1, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_0
.end method
