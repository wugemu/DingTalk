.class final Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$16;
.super Ljava/lang/Object;
.source "TeleConfRunningActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;
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
    .line 1355
    iput-object p1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$16;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1358
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$16;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->R(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1359
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$16;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->R(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1360
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$16;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->R(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 1361
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$16;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->R(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$16;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-virtual {v1}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Leuj$f;->color_white_black_blue_selector:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 1362
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$16;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->R(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Landroid/widget/TextView;

    move-result-object v0

    sget v1, Leuj$h;->conf_panel_mute_bg:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 1364
    :cond_0
    return-void
.end method
