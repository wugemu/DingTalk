.class public final Lbim;
.super Ljava/lang/Object;
.source "DingMemberHolder.java"


# instance fields
.field a:Landroid/app/Activity;

.field public b:Layc;

.field public c:Landroid/widget/TextView;

.field public d:Landroid/view/View;

.field public e:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

.field public f:Landroid/widget/TextView;

.field public g:Landroid/widget/CheckBox;

.field public h:Landroid/view/View;

.field public i:Landroid/view/View;

.field private j:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Layc;Landroid/view/View;)V
    .locals 2
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "dingMemberAdapter"    # Layc;
    .param p3, "rootView"    # Landroid/view/View;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lbim;->a:Landroid/app/Activity;

    .line 44
    iput-object p2, p0, Lbim;->b:Layc;

    .line 45
    iput-object p3, p0, Lbim;->j:Landroid/view/View;

    .line 1050
    iget-object v0, p0, Lbim;->j:Landroid/view/View;

    sget v1, Laxp$f;->tv_letter:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbim;->c:Landroid/widget/TextView;

    .line 1051
    iget-object v0, p0, Lbim;->j:Landroid/view/View;

    sget v1, Laxp$f;->letter_divider:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lbim;->d:Landroid/view/View;

    .line 1052
    iget-object v0, p0, Lbim;->j:Landroid/view/View;

    sget v1, Laxp$f;->avatarView:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iput-object v0, p0, Lbim;->e:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 1053
    iget-object v0, p0, Lbim;->j:Landroid/view/View;

    sget v1, Laxp$f;->tv_contact_name:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbim;->f:Landroid/widget/TextView;

    .line 1054
    iget-object v0, p0, Lbim;->j:Landroid/view/View;

    sget v1, Laxp$f;->divider_line:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lbim;->h:Landroid/view/View;

    .line 1055
    iget-object v0, p0, Lbim;->j:Landroid/view/View;

    sget v1, Laxp$f;->click_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lbim;->i:Landroid/view/View;

    .line 1056
    iget-object v0, p0, Lbim;->j:Landroid/view/View;

    sget v1, Laxp$f;->checkbox:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lbim;->g:Landroid/widget/CheckBox;

    .line 47
    return-void
.end method
