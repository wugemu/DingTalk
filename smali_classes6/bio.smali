.class public final Lbio;
.super Ljava/lang/Object;
.source "EditMeetingRecorderHolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbio$a;
    }
.end annotation


# instance fields
.field public a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

.field public b:Landroid/view/View;

.field public c:Landroid/widget/CheckBox;

.field public d:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

.field public e:Landroid/widget/TextView;

.field public f:Landroid/view/View;

.field g:Lbio$a;

.field public h:Landroid/widget/CompoundButton$OnCheckedChangeListener;


# direct methods
.method public constructor <init>(Landroid/view/View;Lbio$a;)V
    .locals 2
    .param p1, "rootView"    # Landroid/view/View;
    .param p2, "chooseListener"    # Lbio$a;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lbio;->b:Landroid/view/View;

    .line 35
    iget-object v0, p0, Lbio;->b:Landroid/view/View;

    sget v1, Laxp$f;->cb_choose:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lbio;->c:Landroid/widget/CheckBox;

    .line 36
    iget-object v0, p0, Lbio;->b:Landroid/view/View;

    sget v1, Laxp$f;->iv_avatar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iput-object v0, p0, Lbio;->d:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 37
    iget-object v0, p0, Lbio;->b:Landroid/view/View;

    sget v1, Laxp$f;->tv_name:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbio;->e:Landroid/widget/TextView;

    .line 38
    iget-object v0, p0, Lbio;->b:Landroid/view/View;

    sget v1, Laxp$f;->bottom_divider:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lbio;->f:Landroid/view/View;

    .line 39
    iget-object v0, p0, Lbio;->b:Landroid/view/View;

    new-instance v1, Lbio$1;

    invoke-direct {v1, p0}, Lbio$1;-><init>(Lbio;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    new-instance v0, Lbio$2;

    invoke-direct {v0, p0}, Lbio$2;-><init>(Lbio;)V

    iput-object v0, p0, Lbio;->h:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 58
    iput-object p2, p0, Lbio;->g:Lbio$a;

    .line 59
    return-void
.end method
