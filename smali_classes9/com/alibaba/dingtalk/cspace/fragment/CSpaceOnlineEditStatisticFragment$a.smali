.class final Lcom/alibaba/dingtalk/cspace/fragment/CSpaceOnlineEditStatisticFragment$a;
.super Lcom/alibaba/dingtalk/cspace/listbase/ArrayListAdapter;
.source "CSpaceOnlineEditStatisticFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/cspace/fragment/CSpaceOnlineEditStatisticFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/dingtalk/cspace/listbase/ArrayListAdapter",
        "<",
        "Lcom/alibaba/dingtalk/cspace/fragment/CSpaceOnlineEditStatisticFragment$b;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceOnlineEditStatisticFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceOnlineEditStatisticFragment;Landroid/content/Context;)V
    .locals 0
    .param p2, "mContext"    # Landroid/content/Context;

    .prologue
    .line 242
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceOnlineEditStatisticFragment$a;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceOnlineEditStatisticFragment;

    .line 243
    invoke-direct {p0, p2}, Lcom/alibaba/dingtalk/cspace/listbase/ArrayListAdapter;-><init>(Landroid/content/Context;)V

    .line 244
    return-void
.end method


# virtual methods
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 249
    if-nez p2, :cond_1

    .line 250
    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceOnlineEditStatisticFragment$a;->m:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    sget v5, Lfzs$g;->cspace_online_edit_staticstic_list_item:I

    invoke-virtual {v3, v5, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 251
    new-instance v2, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceOnlineEditStatisticFragment$c;

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceOnlineEditStatisticFragment$a;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceOnlineEditStatisticFragment;

    const/4 v5, 0x0

    invoke-direct {v2, v3, v5}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceOnlineEditStatisticFragment$c;-><init>(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceOnlineEditStatisticFragment;B)V

    .line 252
    .local v2, "viewHolder":Lcom/alibaba/dingtalk/cspace/fragment/CSpaceOnlineEditStatisticFragment$c;
    sget v3, Lfzs$f;->tv_avatar:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iput-object v3, v2, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceOnlineEditStatisticFragment$c;->a:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 253
    sget v3, Lfzs$f;->tv_name:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceOnlineEditStatisticFragment$c;->b:Landroid/widget/TextView;

    .line 254
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 259
    :goto_0
    invoke-virtual {p0, p1}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceOnlineEditStatisticFragment$a;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceOnlineEditStatisticFragment$b;

    .line 260
    .local v1, "userModel":Lcom/alibaba/dingtalk/cspace/fragment/CSpaceOnlineEditStatisticFragment$b;
    if-eqz v2, :cond_0

    if-nez v1, :cond_2

    :cond_0
    move-object p2, v4

    .line 298
    .end local p2    # "convertView":Landroid/view/View;
    :goto_1
    return-object p2

    .line 256
    .end local v1    # "userModel":Lcom/alibaba/dingtalk/cspace/fragment/CSpaceOnlineEditStatisticFragment$b;
    .end local v2    # "viewHolder":Lcom/alibaba/dingtalk/cspace/fragment/CSpaceOnlineEditStatisticFragment$c;
    .restart local p2    # "convertView":Landroid/view/View;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceOnlineEditStatisticFragment$c;

    .restart local v2    # "viewHolder":Lcom/alibaba/dingtalk/cspace/fragment/CSpaceOnlineEditStatisticFragment$c;
    goto :goto_0

    .line 264
    .restart local v1    # "userModel":Lcom/alibaba/dingtalk/cspace/fragment/CSpaceOnlineEditStatisticFragment$b;
    :cond_2
    iget-object v3, v2, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceOnlineEditStatisticFragment$c;->a:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 1317
    iget-wide v4, v1, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceOnlineEditStatisticFragment$b;->a:J

    .line 264
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setTag(Ljava/lang/Object;)V

    .line 265
    iget-object v3, v2, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceOnlineEditStatisticFragment$c;->a:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    const-string/jumbo v4, ""

    const-string/jumbo v5, ""

    invoke-virtual {v3, v4, v5}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    iget-object v3, v2, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceOnlineEditStatisticFragment$c;->b:Landroid/widget/TextView;

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 268
    new-instance v0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceOnlineEditStatisticFragment$a$1;

    invoke-direct {v0, p0, v1, v2}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceOnlineEditStatisticFragment$a$1;-><init>(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceOnlineEditStatisticFragment$a;Lcom/alibaba/dingtalk/cspace/fragment/CSpaceOnlineEditStatisticFragment$b;Lcom/alibaba/dingtalk/cspace/fragment/CSpaceOnlineEditStatisticFragment$c;)V

    .line 297
    .local v0, "callback":Lcma;, "Lcma<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;"
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v3

    .line 2317
    iget-wide v4, v1, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceOnlineEditStatisticFragment$b;->a:J

    .line 297
    invoke-virtual {v3, v4, v5, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(JLcma;)V

    goto :goto_1
.end method
