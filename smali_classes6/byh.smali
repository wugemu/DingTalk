.class public final Lbyh;
.super Ljava/lang/Object;
.source "IconFontUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Landroid/widget/ImageView;)V
    .locals 5
    .param p0, "activity"    # Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
    .param p1, "ivBack"    # Landroid/widget/ImageView;

    .prologue
    .line 18
    invoke-static {p0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-nez p1, :cond_1

    .line 27
    :cond_0
    :goto_0
    return-void

    .line 21
    :cond_1
    sget v3, Lbtp$g;->icon_backarrow:I

    invoke-virtual {p0, v3}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 22
    .local v2, "iconString":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lbtp$b;->pure_white:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 23
    .local v0, "color":I
    new-instance v1, Lecw;

    invoke-direct {v1, v2, v0}, Lecw;-><init>(Ljava/lang/String;I)V

    .line 24
    .local v1, "icon":Lecw;
    sget v3, Lbtp$c;->dp24:I

    invoke-static {v3}, Leda;->d(I)I

    move-result v3

    .line 1070
    iput v3, v1, Lecw;->a:I

    .line 25
    sget v3, Lbtp$c;->dp24:I

    invoke-static {v3}, Leda;->d(I)I

    move-result v3

    .line 1079
    iput v3, v1, Lecw;->b:I

    .line 26
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
