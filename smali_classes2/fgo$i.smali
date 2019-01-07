.class final Lfgo$i;
.super Lfgo$l;
.source "NewRequestAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfgo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "i"
.end annotation


# instance fields
.field final synthetic a:Lfgo;


# direct methods
.method public constructor <init>(Lfgo;)V
    .locals 3

    .prologue
    .line 740
    iput-object p1, p0, Lfgo$i;->a:Lfgo;

    invoke-direct {p0}, Lfgo$l;-><init>()V

    .line 741
    invoke-static {p1}, Lfgo;->b(Lfgo;)Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;

    move-result-object v0

    sget v1, Lezg$j;->item_resignation_friend_recommend_header:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lfgo$i;->i:Landroid/view/View;

    .line 742
    iget-object v0, p0, Lfgo$i;->i:Landroid/view/View;

    sget v1, Lezg$h;->title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lezg$l;->dt_contact_friend_request_dismiss_recommend_title:I

    invoke-static {v1}, Leda;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 743
    iget-object v0, p0, Lfgo$i;->i:Landroid/view/View;

    sget v1, Lezg$h;->content:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lezg$l;->dt_contact_friend_request_dismiss_recommend_message:I

    invoke-static {v1}, Leda;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 744
    iget-object v0, p0, Lfgo$i;->i:Landroid/view/View;

    sget v1, Lezg$h;->tv_day_hint:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lezg$l;->dt_contact_friend_request_dismiss_recommend_expire:I

    invoke-static {v1}, Leda;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 745
    return-void
.end method


# virtual methods
.method public final a(ILfgm;)V
    .locals 4
    .param p1, "position"    # I
    .param p2, "data"    # Lfgm;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 749
    const/4 v0, 0x0

    .line 750
    .local v0, "digit1":I
    const/4 v1, 0x0

    .line 751
    .local v1, "digit2":I
    if-eqz p2, :cond_0

    iget-object v2, p2, Lfgm;->e:Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;

    if-eqz v2, :cond_0

    .line 752
    iget-object v2, p2, Lfgm;->e:Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;

    iget v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;->status:I

    div-int/lit8 v0, v2, 0xa

    .line 753
    iget-object v2, p2, Lfgm;->e:Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;

    iget v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;->status:I

    rem-int/lit8 v1, v2, 0xa

    .line 756
    :cond_0
    iget-object v2, p0, Lfgo$i;->i:Landroid/view/View;

    sget v3, Lezg$h;->tv_day_digit_1:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 757
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 758
    iget-object v2, p0, Lfgo$i;->i:Landroid/view/View;

    sget v3, Lezg$h;->tv_day_digit_2:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 759
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 760
    return-void
.end method
