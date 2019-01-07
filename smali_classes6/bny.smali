.class public final Lbny;
.super Lbnv;
.source "HeaderViewHolder.java"


# instance fields
.field private j:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/view/View;

.field private m:J

.field private n:Z


# direct methods
.method public constructor <init>(Landroid/view/View;JZ)V
    .locals 2
    .param p1, "item"    # Landroid/view/View;
    .param p2, "uid"    # J
    .param p4, "isFromTimeline"    # Z

    .prologue
    .line 28
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lbnv;-><init>(Landroid/view/View;Lboq;)V

    .line 29
    sget v0, Lbpu$d;->item_circle_header_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lbny;->l:Landroid/view/View;

    .line 30
    sget v0, Lbpu$d;->item_circle_header_avatar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iput-object v0, p0, Lbny;->j:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 31
    sget v0, Lbpu$d;->item_circle_header_name:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbny;->k:Landroid/widget/TextView;

    .line 33
    iget-object v0, p0, Lbny;->j:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    invoke-virtual {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34
    iget-object v0, p0, Lbny;->k:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 35
    iget-object v0, p0, Lbny;->l:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    iput-boolean p4, p0, Lbny;->n:Z

    .line 39
    iput-wide p2, p0, Lbny;->m:J

    .line 42
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-nez v0, :cond_0

    .line 43
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v0

    invoke-virtual {v0}, Lccr;->c()J

    move-result-wide v0

    iput-wide v0, p0, Lbny;->m:J

    .line 45
    :cond_0
    return-void
.end method


# virtual methods
.method protected final a(Landroid/view/View;)V
    .locals 0
    .param p1, "convertView"    # Landroid/view/View;

    .prologue
    .line 49
    return-void
.end method

.method protected final a(Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;)V
    .locals 0
    .param p1, "postObject"    # Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 59
    return-void
.end method

.method public final b(Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;)V
    .locals 4
    .param p1, "object"    # Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 53
    iget-wide v0, p0, Lbny;->m:J

    iget-object v2, p0, Lbny;->j:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iget-object v3, p0, Lbny;->k:Landroid/widget/TextView;

    invoke-virtual {p0, v0, v1, v2, v3}, Lbny;->a(JLcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;Landroid/widget/TextView;)V

    .line 54
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 63
    iget-object v0, p0, Lbny;->j:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lbny;->k:Landroid/widget/TextView;

    if-ne p1, v0, :cond_4

    .line 64
    :cond_0
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    .line 1211
    iget-boolean v0, p0, Lbnv;->d:Z

    .line 64
    if-eqz v0, :cond_2

    const-string/jumbo v0, "detail_click_post_author_avatar"

    :goto_0
    invoke-interface {v1, v0}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 65
    iget-boolean v0, p0, Lbny;->n:Z

    if-eqz v0, :cond_3

    .line 66
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    iget-object v1, p0, Lbny;->a:Landroid/app/Activity;

    iget-wide v2, p0, Lbny;->m:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Landroid/app/Activity;J)V

    .line 73
    :cond_1
    :goto_1
    return-void

    .line 64
    :cond_2
    const-string/jumbo v0, "feed_click_myself_avatar"

    goto :goto_0

    .line 68
    :cond_3
    invoke-static {}, Lcom/alibaba/android/dingtalk/circlebase/CircleInterface;->f()Lcom/alibaba/android/dingtalk/circlebase/CircleInterface;

    move-result-object v0

    iget-object v1, p0, Lbny;->a:Landroid/app/Activity;

    iget-wide v2, p0, Lbny;->m:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/android/dingtalk/circlebase/CircleInterface;->a(Landroid/app/Activity;J)V

    goto :goto_1

    .line 70
    :cond_4
    iget-object v0, p0, Lbny;->l:Landroid/view/View;

    if-ne p1, v0, :cond_1

    .line 71
    invoke-virtual {p0}, Lbny;->a()V

    goto :goto_1
.end method
