.class public final Lbih;
.super Ljava/lang/Object;
.source "CompleteMemberViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbih$a;
    }
.end annotation


# instance fields
.field public a:Landroid/view/View;

.field public b:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

.field public c:Landroid/widget/TextView;

.field public d:Landroid/widget/TextView;

.field public e:Landroid/view/View;

.field public f:Landroid/widget/CheckBox;

.field public g:Landroid/view/View;

.field public h:Landroid/widget/TextView;

.field public i:Landroid/widget/TextView;

.field public j:Lbih$a;

.field public k:Landroid/app/Activity;

.field public l:Laxx;

.field public m:Lbff;

.field n:Z

.field o:Z

.field private p:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Laxx;Landroid/view/View;ZZ)V
    .locals 2
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "adapter"    # Laxx;
    .param p3, "rootView"    # Landroid/view/View;
    .param p4, "isSender"    # Z
    .param p5, "isTaskDone"    # Z

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lbih;->k:Landroid/app/Activity;

    .line 57
    iput-object p2, p0, Lbih;->l:Laxx;

    .line 58
    iput-object p3, p0, Lbih;->a:Landroid/view/View;

    .line 59
    iput-boolean p4, p0, Lbih;->n:Z

    .line 60
    iput-boolean p5, p0, Lbih;->o:Z

    .line 61
    iget-object v0, p0, Lbih;->a:Landroid/view/View;

    sget v1, Laxp$f;->tv_contact_name:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbih;->c:Landroid/widget/TextView;

    .line 62
    iget-object v0, p0, Lbih;->a:Landroid/view/View;

    sget v1, Laxp$f;->tv_unread_count:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbih;->i:Landroid/widget/TextView;

    .line 63
    iget-object v0, p0, Lbih;->a:Landroid/view/View;

    sget v1, Laxp$f;->tv_contact_title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbih;->d:Landroid/widget/TextView;

    .line 64
    iget-object v0, p0, Lbih;->a:Landroid/view/View;

    sget v1, Laxp$f;->divider_line:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lbih;->e:Landroid/view/View;

    .line 65
    iget-object v0, p0, Lbih;->a:Landroid/view/View;

    sget v1, Laxp$f;->avatarView:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iput-object v0, p0, Lbih;->b:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 66
    iget-object v0, p0, Lbih;->a:Landroid/view/View;

    sget v1, Laxp$f;->checkbox:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lbih;->f:Landroid/widget/CheckBox;

    .line 67
    iget-object v0, p0, Lbih;->a:Landroid/view/View;

    sget v1, Laxp$f;->finish_divider_line:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lbih;->g:Landroid/view/View;

    .line 68
    iget-object v0, p0, Lbih;->a:Landroid/view/View;

    sget v1, Laxp$f;->tv_contact_delay_time:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbih;->h:Landroid/widget/TextView;

    .line 69
    iget-object v0, p0, Lbih;->a:Landroid/view/View;

    sget v1, Laxp$f;->more_icon:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbih;->p:Landroid/widget/TextView;

    .line 70
    iget-object v0, p0, Lbih;->p:Landroid/widget/TextView;

    new-instance v1, Lbih$1;

    invoke-direct {v1, p0}, Lbih$1;-><init>(Lbih;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    iget-object v1, p0, Lbih;->p:Landroid/widget/TextView;

    if-eqz p4, :cond_0

    if-nez p5, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 79
    return-void

    .line 78
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method


# virtual methods
.method public a(I)V
    .locals 3
    .param p1, "resColor"    # I

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 199
    :try_start_0
    iget-object v1, p0, Lbih;->d:Landroid/widget/TextView;

    iget-object v2, p0, Lbih;->k:Landroid/app/Activity;

    invoke-static {v2, p1}, Ldp;->c(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    :goto_0
    return-void

    .line 200
    :catch_0
    move-exception v0

    .line 201
    .local v0, "ex":Ljava/lang/RuntimeException;
    const-string/jumbo v1, "[CompleteMemberHolder]refresh title color failed"

    invoke-static {v1, v0}, Lbkr;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public a(Lchg;I)V
    .locals 4
    .param p1, "userObject"    # Lchg;
    .param p2, "chooseMode"    # I

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 149
    if-nez p2, :cond_1

    .line 150
    iget-object v0, p0, Lbih;->l:Laxx;

    .line 1115
    iget-object v0, v0, Laxx;->c:Ljava/util/HashSet;

    .line 150
    if-eqz v0, :cond_0

    iget-object v0, p0, Lbih;->l:Laxx;

    .line 2115
    iget-object v0, v0, Laxx;->c:Ljava/util/HashSet;

    .line 150
    iget-wide v2, p1, Lchg;->e:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lbih;->a:Landroid/view/View;

    iget-object v1, p0, Lbih;->k:Landroid/app/Activity;

    sget v2, Laxp$c;->ui_common_white_icon_pressed_bg_color:I

    invoke-static {v1, v2}, Ldp;->c(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 158
    :goto_0
    return-void

    .line 153
    :cond_0
    iget-object v0, p0, Lbih;->a:Landroid/view/View;

    sget v1, Laxp$e;->common_white_cell_selector:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 156
    :cond_1
    iget-object v0, p0, Lbih;->a:Landroid/view/View;

    sget v1, Laxp$e;->common_white_cell_selector:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0
.end method
