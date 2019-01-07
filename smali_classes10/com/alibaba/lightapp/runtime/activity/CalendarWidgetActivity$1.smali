.class final Lcom/alibaba/lightapp/runtime/activity/CalendarWidgetActivity$1;
.super Ljava/lang/Object;
.source "CalendarWidgetActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/activity/CalendarWidgetActivity;->onBackPressed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/lightapp/runtime/activity/CalendarWidgetActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/activity/CalendarWidgetActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/activity/CalendarWidgetActivity;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/activity/CalendarWidgetActivity$1;->a:Lcom/alibaba/lightapp/runtime/activity/CalendarWidgetActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/CalendarWidgetActivity$1;->a:Lcom/alibaba/lightapp/runtime/activity/CalendarWidgetActivity;

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/activity/CalendarWidgetActivity;->finish()V

    .line 133
    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 138
    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 128
    return-void
.end method
