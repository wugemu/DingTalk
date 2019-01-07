.class final Lgtv;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "IntroducerHolder.java"


# instance fields
.field a:Landroid/view/View;

.field b:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

.field c:Landroid/widget/TextView;

.field d:Landroid/widget/ImageView;

.field e:Landroid/widget/LinearLayout;

.field f:Landroid/widget/TextView;

.field g:Landroid/widget/ImageView;

.field h:Landroid/widget/TextView;

.field i:Landroid/widget/TextView;

.field j:Lgup;

.field private k:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "itemView"    # Landroid/view/View;

    .prologue
    .line 35
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 36
    iput-object p1, p0, Lgtv;->k:Landroid/content/Context;

    .line 37
    iput-object p2, p0, Lgtv;->a:Landroid/view/View;

    .line 1042
    iget-object v0, p0, Lgtv;->a:Landroid/view/View;

    sget v1, Lgtt$d;->iv_avatar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iput-object v0, p0, Lgtv;->b:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 1043
    iget-object v0, p0, Lgtv;->a:Landroid/view/View;

    sget v1, Lgtt$d;->tv_name:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lgtv;->c:Landroid/widget/TextView;

    .line 1044
    iget-object v0, p0, Lgtv;->a:Landroid/view/View;

    sget v1, Lgtt$d;->iv_auth:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lgtv;->d:Landroid/widget/ImageView;

    .line 1045
    iget-object v0, p0, Lgtv;->a:Landroid/view/View;

    sget v1, Lgtt$d;->ll_org:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lgtv;->e:Landroid/widget/LinearLayout;

    .line 1046
    iget-object v0, p0, Lgtv;->a:Landroid/view/View;

    sget v1, Lgtt$d;->tv_org_name:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lgtv;->f:Landroid/widget/TextView;

    .line 1047
    iget-object v0, p0, Lgtv;->a:Landroid/view/View;

    sget v1, Lgtt$d;->iv_org_auth:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lgtv;->g:Landroid/widget/ImageView;

    .line 1048
    iget-object v0, p0, Lgtv;->a:Landroid/view/View;

    sget v1, Lgtt$d;->tv_relation:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lgtv;->h:Landroid/widget/TextView;

    .line 1049
    iget-object v0, p0, Lgtv;->a:Landroid/view/View;

    sget v1, Lgtt$d;->tv_reason:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lgtv;->i:Landroid/widget/TextView;

    .line 39
    return-void
.end method
