.class public final Leti;
.super Ljava/lang/Object;
.source "DingSearchResultConvergeHolder.java"


# instance fields
.field public a:Landroid/view/View;

.field public b:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

.field public c:Landroid/widget/TextView;

.field public d:Landroid/widget/TextView;

.field public e:Landroid/widget/TextView;

.field public f:Landroid/view/View;

.field public g:Landroid/app/Activity;

.field private h:Lemx;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lemx;Landroid/view/View;)V
    .locals 1
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "adapter"    # Lemx;
    .param p3, "rootView"    # Landroid/view/View;

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Leti;->g:Landroid/app/Activity;

    .line 59
    iput-object p2, p0, Leti;->h:Lemx;

    .line 60
    iput-object p3, p0, Leti;->a:Landroid/view/View;

    .line 61
    sget v0, Lemt$e;->tv_avatar:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iput-object v0, p0, Leti;->b:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 62
    sget v0, Lemt$e;->tv_name:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Leti;->c:Landroid/widget/TextView;

    .line 63
    sget v0, Lemt$e;->tv_date:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Leti;->d:Landroid/widget/TextView;

    .line 64
    sget v0, Lemt$e;->tv_desc:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Leti;->e:Landroid/widget/TextView;

    .line 65
    sget v0, Lemt$e;->divider_line:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Leti;->f:Landroid/view/View;

    .line 66
    return-void
.end method
