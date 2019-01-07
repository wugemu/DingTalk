.class final Lcom/alibaba/android/user/settings/activity/FontSettingActivity$1;
.super Ljava/lang/Object;
.source "FontSettingActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/settings/activity/FontSettingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/settings/activity/FontSettingActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/settings/activity/FontSettingActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/settings/activity/FontSettingActivity;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/alibaba/android/user/settings/activity/FontSettingActivity$1;->a:Lcom/alibaba/android/user/settings/activity/FontSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 79
    iget-object v2, p0, Lcom/alibaba/android/user/settings/activity/FontSettingActivity$1;->a:Lcom/alibaba/android/user/settings/activity/FontSettingActivity;

    invoke-static {v2}, Lcom/alibaba/android/user/settings/activity/FontSettingActivity;->a(Lcom/alibaba/android/user/settings/activity/FontSettingActivity;)Landroid/widget/SeekBar;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 80
    iget-object v2, p0, Lcom/alibaba/android/user/settings/activity/FontSettingActivity$1;->a:Lcom/alibaba/android/user/settings/activity/FontSettingActivity;

    invoke-virtual {v2}, Lcom/alibaba/android/user/settings/activity/FontSettingActivity;->isDestroyed()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 86
    :goto_0
    return-void

    .line 83
    :cond_0
    iget-object v2, p0, Lcom/alibaba/android/user/settings/activity/FontSettingActivity$1;->a:Lcom/alibaba/android/user/settings/activity/FontSettingActivity;

    sget v3, Lezg$h;->font_setting_scale_tick_normal_text:I

    invoke-virtual {v2, v3}, Lcom/alibaba/android/user/settings/activity/FontSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 84
    .local v1, "tickText":Landroid/view/View;
    iget-object v2, p0, Lcom/alibaba/android/user/settings/activity/FontSettingActivity$1;->a:Lcom/alibaba/android/user/settings/activity/FontSettingActivity;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {}, Lcom/alibaba/android/user/settings/activity/FontSettingActivity;->b()[F

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/alibaba/android/user/settings/activity/FontSettingActivity;->a(Lcom/alibaba/android/user/settings/activity/FontSettingActivity;F[F)I

    move-result v0

    .line 85
    .local v0, "normalTick":I
    iget-object v2, p0, Lcom/alibaba/android/user/settings/activity/FontSettingActivity$1;->a:Lcom/alibaba/android/user/settings/activity/FontSettingActivity;

    invoke-static {v2}, Lcom/alibaba/android/user/settings/activity/FontSettingActivity;->a(Lcom/alibaba/android/user/settings/activity/FontSettingActivity;)Landroid/widget/SeekBar;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/alibaba/android/user/settings/activity/FontSettingActivity$1;->a:Lcom/alibaba/android/user/settings/activity/FontSettingActivity;

    invoke-static {v3}, Lcom/alibaba/android/user/settings/activity/FontSettingActivity;->a(Lcom/alibaba/android/user/settings/activity/FontSettingActivity;)Landroid/widget/SeekBar;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/alibaba/android/user/settings/activity/FontSettingActivity$1;->a:Lcom/alibaba/android/user/settings/activity/FontSettingActivity;

    invoke-static {v3}, Lcom/alibaba/android/user/settings/activity/FontSettingActivity;->a(Lcom/alibaba/android/user/settings/activity/FontSettingActivity;)Landroid/widget/SeekBar;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {}, Lcom/alibaba/android/user/settings/activity/FontSettingActivity;->b()[F

    move-result-object v3

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    div-int/2addr v2, v3

    mul-int/2addr v2, v0

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/alibaba/android/user/settings/activity/FontSettingActivity$1;->a:Lcom/alibaba/android/user/settings/activity/FontSettingActivity;

    invoke-static {v3}, Lcom/alibaba/android/user/settings/activity/FontSettingActivity;->a(Lcom/alibaba/android/user/settings/activity/FontSettingActivity;)Landroid/widget/SeekBar;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getPaddingLeft()I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_0
.end method
