.class final Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$11;
.super Ljava/lang/Object;
.source "TeleConfRunningActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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
    .line 1141
    iput-object p1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$11;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "motionEvent"    # Landroid/view/MotionEvent;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 1144
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$11;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->L(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, p2}, Lcqc;->a(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1153
    :cond_0
    :goto_0
    return v1

    .line 1146
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$11;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->M(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, p2}, Lcqc;->a(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1148
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$11;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->N(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Lcom/alibaba/android/teleconf/widget/ExtendedAvatarImageView;

    move-result-object v0

    invoke-static {v0, p2}, Lcqc;->a(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1151
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$11;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    const-wide/16 v2, 0x12c

    invoke-static {v0, v2, v3, v1}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;JZ)V

    goto :goto_0
.end method
