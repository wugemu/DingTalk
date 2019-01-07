.class final Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$47;
.super Ljava/lang/Object;
.source "TeleConfRunningActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->q()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    .prologue
    .line 2955
    iput-object p1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$47;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2958
    invoke-static {}, Levi;->p()Levi;

    move-result-object v0

    invoke-virtual {v0}, Levi;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2981
    :cond_0
    :goto_0
    return-void

    .line 2961
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$47;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-static {v0}, Lcms;->e(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2962
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$47;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->aa(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2963
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$47;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->G(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setClickable(Z)V

    .line 2964
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$47;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->R(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2965
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$47;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->R(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setClickable(Z)V

    .line 2966
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$47;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->R(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$47;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-virtual {v1}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Leuj$f;->conf_white_6_0:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2967
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$47;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->R(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Landroid/widget/TextView;

    move-result-object v0

    sget v1, Leuj$h;->conf_panel_unable_bg_shape:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 2968
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$47;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-static {v0, v3}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->h(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;Z)Z

    .line 2969
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$47;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->ab(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 2970
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$47;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->ab(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 2973
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$47;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->aa(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2974
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$47;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->G(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setClickable(Z)V

    .line 2975
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$47;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->R(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2976
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$47;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->R(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setClickable(Z)V

    .line 2977
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$47;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->R(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$47;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-virtual {v1}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Leuj$f;->color_white_black_blue_selector:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 2978
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$47;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->R(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Landroid/widget/TextView;

    move-result-object v0

    sget v1, Leuj$h;->conf_panel_mute_bg:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 2979
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$47;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-static {v0, v4}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->h(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;Z)Z

    goto/16 :goto_0
.end method
