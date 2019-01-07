.class final Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$11;
.super Ljava/lang/Object;
.source "TeleVideoPowerfulConfActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->i(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;

    .prologue
    .line 2634
    iput-object p1, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$11;->b:Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;

    iput-boolean p2, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$11;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 2642
    iget-boolean v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$11;->a:Z

    if-eqz v0, :cond_1

    .line 2643
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$11;->b:Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->i(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;)Levp;

    move-result-object v0

    invoke-virtual {v0}, Levp;->a()V

    .line 2644
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$11;->b:Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->O(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2649
    :cond_0
    :goto_0
    return-void

    .line 2646
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$11;->b:Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->O(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2647
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$11;->b:Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->i(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;)Levp;

    move-result-object v0

    .line 3113
    iget-object v1, v0, Levp;->a:Lcom/alibaba/android/teleconf/adapters/TeleVideoMemberAdapter;

    if-eqz v1, :cond_0

    .line 3114
    iget-object v1, v0, Levp;->a:Lcom/alibaba/android/teleconf/adapters/TeleVideoMemberAdapter;

    invoke-virtual {v1}, Lcom/alibaba/android/teleconf/adapters/TeleVideoMemberAdapter;->a()V

    .line 3115
    iget-object v0, v0, Levp;->a:Lcom/alibaba/android/teleconf/adapters/TeleVideoMemberAdapter;

    invoke-virtual {v0}, Lcom/alibaba/android/teleconf/adapters/TeleVideoMemberAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 2654
    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 2637
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$11;->b:Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->O(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2638
    return-void
.end method
