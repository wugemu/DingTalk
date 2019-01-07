.class public final Lcom/alibaba/android/user/contact/adapters/holder/Add2OrgChoiceViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "Add2OrgChoiceViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/user/contact/adapters/holder/Add2OrgChoiceViewHolder$ChoiceType;
    }
.end annotation


# instance fields
.field public a:Landroid/view/View;

.field public b:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

.field public c:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

.field public d:Landroid/widget/TextView;

.field public e:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

.field public f:Landroid/widget/TextView;

.field public g:Lcom/alibaba/android/user/contact/adapters/holder/Add2OrgChoiceViewHolder$ChoiceType;

.field public h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "itemView"    # Landroid/view/View;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 1041
    if-eqz p1, :cond_0

    .line 1042
    sget v0, Lezg$h;->v_divider:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/contact/adapters/holder/Add2OrgChoiceViewHolder;->a:Landroid/view/View;

    .line 1043
    sget v0, Lezg$h;->if_icon_bg:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/adapters/holder/Add2OrgChoiceViewHolder;->b:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 1044
    sget v0, Lezg$h;->if_icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/adapters/holder/Add2OrgChoiceViewHolder;->c:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 1045
    sget v0, Lezg$h;->tv_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/adapters/holder/Add2OrgChoiceViewHolder;->d:Landroid/widget/TextView;

    .line 1046
    sget v0, Lezg$h;->if_red_packet:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/adapters/holder/Add2OrgChoiceViewHolder;->e:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 1047
    sget v0, Lezg$h;->tv_tip:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/adapters/holder/Add2OrgChoiceViewHolder;->f:Landroid/widget/TextView;

    .line 38
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 2
    .param p1, "visible"    # Z

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 100
    sget-object v0, Lcom/alibaba/android/user/contact/adapters/holder/Add2OrgChoiceViewHolder$ChoiceType;->Wechat:Lcom/alibaba/android/user/contact/adapters/holder/Add2OrgChoiceViewHolder$ChoiceType;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/adapters/holder/Add2OrgChoiceViewHolder;->g:Lcom/alibaba/android/user/contact/adapters/holder/Add2OrgChoiceViewHolder$ChoiceType;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/user/contact/adapters/holder/Add2OrgChoiceViewHolder$ChoiceType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 101
    iget-object v0, p0, Lcom/alibaba/android/user/contact/adapters/holder/Add2OrgChoiceViewHolder;->e:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setVisibility(I)V

    .line 105
    :goto_0
    return-void

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/contact/adapters/holder/Add2OrgChoiceViewHolder;->e:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setVisibility(I)V

    goto :goto_0
.end method
