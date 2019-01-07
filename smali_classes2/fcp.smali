.class public final Lfcp;
.super Lfcm;
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
    .line 31
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lfcm;-><init>(Landroid/view/View;Lfdf;)V

    .line 32
    sget v0, Lezg$h;->item_circle_header_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lfcp;->l:Landroid/view/View;

    .line 33
    sget v0, Lezg$h;->item_circle_header_avatar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iput-object v0, p0, Lfcp;->j:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 34
    sget v0, Lezg$h;->item_circle_header_name:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lfcp;->k:Landroid/widget/TextView;

    .line 36
    iget-object v0, p0, Lfcp;->j:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    invoke-virtual {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    iget-object v0, p0, Lfcp;->k:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    iget-object v0, p0, Lfcp;->l:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    iput-boolean p4, p0, Lfcp;->n:Z

    .line 42
    iput-wide p2, p0, Lfcp;->m:J

    .line 45
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-nez v0, :cond_0

    .line 46
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v0

    invoke-virtual {v0}, Lccr;->c()J

    move-result-wide v0

    iput-wide v0, p0, Lfcp;->m:J

    .line 48
    :cond_0
    return-void
.end method


# virtual methods
.method protected final a(Landroid/view/View;)V
    .locals 0
    .param p1, "convertView"    # Landroid/view/View;

    .prologue
    .line 52
    return-void
.end method

.method protected final a(Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;)V
    .locals 0
    .param p1, "postObject"    # Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 62
    return-void
.end method

.method public final b(Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;)V
    .locals 4
    .param p1, "object"    # Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 56
    iget-wide v0, p0, Lfcp;->m:J

    iget-object v2, p0, Lfcp;->j:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iget-object v3, p0, Lfcp;->k:Landroid/widget/TextView;

    invoke-virtual {p0, v0, v1, v2, v3}, Lfcp;->a(JLcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;Landroid/widget/TextView;)V

    .line 57
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 66
    iget-object v1, p0, Lfcp;->j:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Lfcp;->k:Landroid/widget/TextView;

    if-ne p1, v1, :cond_1

    .line 67
    :cond_0
    iget-boolean v1, p0, Lfcp;->n:Z

    if-eqz v1, :cond_2

    .line 68
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    iget-object v2, p0, Lfcp;->a:Landroid/app/Activity;

    iget-wide v4, p0, Lfcp;->m:J

    invoke-virtual {v1, v2, v4, v5}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Landroid/app/Activity;J)V

    .line 79
    :cond_1
    :goto_0
    return-void

    .line 71
    :cond_2
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lfcp;->a:Landroid/app/Activity;

    const-class v2, Lcom/alibaba/android/user/connection/activity/CircleUserTimeLineActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 72
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "user_id"

    iget-wide v2, p0, Lfcp;->m:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 73
    iget-object v1, p0, Lfcp;->a:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
