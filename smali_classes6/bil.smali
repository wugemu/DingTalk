.class public final Lbil;
.super Ljava/lang/Object;
.source "DingMeetingStatusViewHolder.java"


# instance fields
.field public a:Landroid/view/View;

.field public b:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

.field public c:Landroid/widget/TextView;

.field public d:Landroid/widget/TextView;

.field public e:Landroid/view/View;

.field public f:Landroid/widget/CheckBox;

.field public g:Landroid/view/View;

.field public h:Landroid/widget/TextView;

.field public i:Landroid/app/Activity;

.field public j:Layb;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Layb;Landroid/view/View;)V
    .locals 2
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "adapter"    # Layb;
    .param p3, "rootView"    # Landroid/view/View;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lbil;->i:Landroid/app/Activity;

    .line 45
    iput-object p2, p0, Lbil;->j:Layb;

    .line 46
    iput-object p3, p0, Lbil;->a:Landroid/view/View;

    .line 47
    iget-object v0, p0, Lbil;->a:Landroid/view/View;

    sget v1, Laxp$f;->tv_contact_name:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbil;->c:Landroid/widget/TextView;

    .line 48
    iget-object v0, p0, Lbil;->a:Landroid/view/View;

    sget v1, Laxp$f;->tv_contact_title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbil;->d:Landroid/widget/TextView;

    .line 49
    iget-object v0, p0, Lbil;->a:Landroid/view/View;

    sget v1, Laxp$f;->divider_line:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lbil;->e:Landroid/view/View;

    .line 50
    iget-object v0, p0, Lbil;->a:Landroid/view/View;

    sget v1, Laxp$f;->avatarView:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iput-object v0, p0, Lbil;->b:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 51
    iget-object v0, p0, Lbil;->a:Landroid/view/View;

    sget v1, Laxp$f;->checkbox:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lbil;->f:Landroid/widget/CheckBox;

    .line 52
    iget-object v0, p0, Lbil;->a:Landroid/view/View;

    sget v1, Laxp$f;->finish_divider_line:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lbil;->g:Landroid/view/View;

    .line 53
    iget-object v0, p0, Lbil;->a:Landroid/view/View;

    sget v1, Laxp$f;->tv_read_status:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbil;->h:Landroid/widget/TextView;

    .line 54
    return-void
.end method
