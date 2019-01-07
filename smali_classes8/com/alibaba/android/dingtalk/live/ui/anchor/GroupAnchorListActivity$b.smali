.class final Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity$b;
.super Ljava/lang/Object;
.source "GroupAnchorListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field a:Landroid/view/View;

.field b:Landroid/widget/TextView;

.field c:Landroid/widget/TextView;

.field d:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

.field e:Landroid/view/View;

.field final synthetic f:Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity;Landroid/view/View;)V
    .locals 1
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 493
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity$b;->f:Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 494
    iput-object p2, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity$b;->a:Landroid/view/View;

    .line 495
    sget v0, Lbtp$e;->tv_name:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity$b;->b:Landroid/widget/TextView;

    .line 496
    sget v0, Lbtp$e;->tv_identity:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity$b;->c:Landroid/widget/TextView;

    .line 497
    sget v0, Lbtp$e;->iv_avatar:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity$b;->d:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 498
    sget v0, Lbtp$e;->divider:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity$b;->e:Landroid/view/View;

    .line 499
    return-void
.end method
