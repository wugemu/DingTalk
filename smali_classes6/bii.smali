.class public final Lbii;
.super Ljava/lang/Object;
.source "ConfirmMemberHolder.java"


# instance fields
.field public a:Landroid/app/Activity;

.field public b:Laxy;

.field public c:Landroid/view/View;

.field public d:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

.field public e:Landroid/widget/TextView;

.field public f:Landroid/widget/TextView;

.field public g:Landroid/view/View;

.field public h:Landroid/widget/CheckBox;

.field public i:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Laxy;Landroid/view/View;)V
    .locals 2
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "adapter"    # Laxy;
    .param p3, "rootView"    # Landroid/view/View;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lbii;->a:Landroid/app/Activity;

    .line 39
    iput-object p2, p0, Lbii;->b:Laxy;

    .line 40
    iput-object p3, p0, Lbii;->c:Landroid/view/View;

    .line 41
    iget-object v0, p0, Lbii;->c:Landroid/view/View;

    sget v1, Laxp$f;->tv_contact_name:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbii;->e:Landroid/widget/TextView;

    .line 42
    iget-object v0, p0, Lbii;->c:Landroid/view/View;

    sget v1, Laxp$f;->tv_contact_title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbii;->f:Landroid/widget/TextView;

    .line 43
    iget-object v0, p0, Lbii;->c:Landroid/view/View;

    sget v1, Laxp$f;->divider_line:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lbii;->g:Landroid/view/View;

    .line 44
    iget-object v0, p0, Lbii;->c:Landroid/view/View;

    sget v1, Laxp$f;->avatarView:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iput-object v0, p0, Lbii;->d:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 45
    iget-object v0, p0, Lbii;->c:Landroid/view/View;

    sget v1, Laxp$f;->checkbox:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lbii;->h:Landroid/widget/CheckBox;

    .line 46
    iget-object v0, p0, Lbii;->c:Landroid/view/View;

    sget v1, Laxp$f;->finish_divider_line:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lbii;->i:Landroid/view/View;

    .line 47
    return-void
.end method
