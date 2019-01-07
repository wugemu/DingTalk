.class final Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity$9;
.super Ljava/lang/Object;
.source "FestivalRedPacketsPickActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;

    .prologue
    .line 412
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity$9;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 415
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity$9;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;

    new-instance v1, Landroid/view/animation/TranslateAnimation;

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity$9;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;

    invoke-static {v2}, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->s(Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageView;->getX()F

    move-result v2

    iget-object v3, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity$9;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;

    .line 416
    invoke-static {v3}, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->s(Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ImageView;->getY()F

    move-result v3

    iget-object v4, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity$9;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;

    .line 417
    invoke-static {v4}, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->s(Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ImageView;->getX()F

    move-result v4

    iget-object v5, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity$9;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;

    .line 418
    invoke-static {v5}, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->s(Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;)Landroid/widget/ImageView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ImageView;->getY()F

    move-result v5

    iget-object v6, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity$9;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;

    invoke-static {v6}, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->s(Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;)Landroid/widget/ImageView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/ImageView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 415
    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->b(Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;Landroid/view/animation/Animation;)Landroid/view/animation/Animation;

    .line 419
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity$9;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->t(Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;)Landroid/view/animation/Animation;

    move-result-object v0

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 420
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity$9;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->t(Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;)Landroid/view/animation/Animation;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity$9$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity$9$1;-><init>(Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity$9;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 436
    return-void
.end method
