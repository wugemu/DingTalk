.class public final Lbic;
.super Ljava/lang/Object;
.source "CheckInMemberViewHolder.java"


# instance fields
.field public a:Landroid/view/View;

.field public b:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

.field public c:Landroid/widget/TextView;

.field public d:Landroid/widget/TextView;

.field public e:Landroid/widget/TextView;

.field public f:Landroid/view/View;

.field public g:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;)V
    .locals 2
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "rootView"    # Landroid/view/View;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lbic;->g:Landroid/app/Activity;

    .line 40
    iput-object p2, p0, Lbic;->a:Landroid/view/View;

    .line 41
    iget-object v0, p0, Lbic;->a:Landroid/view/View;

    sget v1, Laxp$f;->view_avatar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iput-object v0, p0, Lbic;->b:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 42
    iget-object v0, p0, Lbic;->a:Landroid/view/View;

    sget v1, Laxp$f;->tv_name:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbic;->c:Landroid/widget/TextView;

    .line 43
    iget-object v0, p0, Lbic;->a:Landroid/view/View;

    sget v1, Laxp$f;->tv_status:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbic;->d:Landroid/widget/TextView;

    .line 44
    iget-object v0, p0, Lbic;->a:Landroid/view/View;

    sget v1, Laxp$f;->tv_not_invited:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbic;->e:Landroid/widget/TextView;

    .line 45
    iget-object v0, p0, Lbic;->a:Landroid/view/View;

    sget v1, Laxp$f;->divider_line:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lbic;->f:Landroid/view/View;

    .line 46
    return-void
.end method
