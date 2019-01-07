.class public final Lbya;
.super Lcqr;
.source "LiveSessionAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcqr",
        "<",
        "Lbyb;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcqr;-><init>(Landroid/app/Activity;)V

    .line 17
    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    check-cast p1, Lbyb;

    .line 2021
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p1, Lbyb;->c:Ljava/lang/String;

    goto :goto_0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v7, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 28
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lbyc;

    if-nez v1, :cond_2

    .line 29
    :cond_0
    new-instance v0, Lbyc;

    iget-object v1, p0, Lbya;->b:Landroid/app/Activity;

    invoke-direct {v0, v1, p3}, Lbyc;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;)V

    .line 1065
    .local v0, "holder":Lbyc;
    iget-object p2, v0, Lbyc;->a:Landroid/view/View;

    .line 31
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 36
    :goto_0
    if-eqz v0, :cond_1

    .line 37
    invoke-virtual {p0, p1}, Lbya;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbyb;

    .line 1070
    iget-object v4, v0, Lbyc;->g:Landroid/content/Context;

    invoke-static {v4}, Lcms;->p(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1073
    if-eqz v1, :cond_1

    iget-object v4, v1, Lbyb;->a:Lcom/alibaba/android/dingtalk/livebase/model/LivePlayObject;

    if-nez v4, :cond_3

    .line 39
    :cond_1
    :goto_1
    return-object p2

    .line 33
    .end local v0    # "holder":Lbyc;
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbyc;

    .restart local v0    # "holder":Lbyc;
    goto :goto_0

    .line 1076
    :cond_3
    iput-object v1, v0, Lbyc;->i:Lbyb;

    .line 1078
    iget-object v4, v0, Lbyc;->h:Lcom/alibaba/doraemon/image/ImageMagician;

    iget-object v5, v0, Lbyc;->b:Landroid/widget/ImageView;

    invoke-interface {v4, v5, v7, v7}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;)V

    .line 1079
    iget-object v4, v0, Lbyc;->h:Lcom/alibaba/doraemon/image/ImageMagician;

    iget-object v5, v0, Lbyc;->b:Landroid/widget/ImageView;

    iget-object v6, v1, Lbyb;->a:Lcom/alibaba/android/dingtalk/livebase/model/LivePlayObject;

    iget-object v6, v6, Lcom/alibaba/android/dingtalk/livebase/model/LivePlayObject;->coverUrl:Ljava/lang/String;

    invoke-interface {v4, v5, v6, v7}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;)V

    .line 1080
    iget-object v4, v0, Lbyc;->c:Landroid/widget/TextView;

    iget-object v5, v1, Lbyb;->a:Lcom/alibaba/android/dingtalk/livebase/model/LivePlayObject;

    iget-object v5, v5, Lcom/alibaba/android/dingtalk/livebase/model/LivePlayObject;->title:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1081
    iget-object v4, v1, Lbyb;->b:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 1082
    iget-object v4, v0, Lbyc;->e:Landroid/widget/TextView;

    iget-object v5, v0, Lbyc;->g:Landroid/content/Context;

    sget v6, Lbtp$g;->and_share_from:I

    new-array v7, v2, [Ljava/lang/Object;

    iget-object v8, v1, Lbyb;->b:Ljava/lang/String;

    aput-object v8, v7, v3

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1085
    :cond_4
    iget-object v4, v1, Lbyb;->a:Lcom/alibaba/android/dingtalk/livebase/model/LivePlayObject;

    iget v4, v4, Lcom/alibaba/android/dingtalk/livebase/model/LivePlayObject;->type:I

    if-ne v4, v2, :cond_5

    .line 1086
    :goto_2
    iget-object v4, v0, Lbyc;->f:Landroid/widget/TextView;

    if-eqz v2, :cond_6

    :goto_3
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1087
    iget-object v2, v0, Lbyc;->f:Landroid/widget/TextView;

    invoke-static {v2}, Lbxl;->a(Landroid/widget/TextView;)V

    .line 1088
    iget-object v2, v0, Lbyc;->c:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->requestLayout()V

    .line 1090
    iget-object v2, v0, Lbyc;->d:Landroid/widget/TextView;

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1091
    iget-object v1, v1, Lbyb;->a:Lcom/alibaba/android/dingtalk/livebase/model/LivePlayObject;

    iget-wide v4, v1, Lcom/alibaba/android/dingtalk/livebase/model/LivePlayObject;->anchor:J

    .line 1092
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->f(J)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    move-result-object v1

    .line 1093
    if-eqz v1, :cond_7

    .line 1094
    iget-object v2, v0, Lbyc;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lbyc;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_5
    move v2, v3

    .line 1085
    goto :goto_2

    .line 1086
    :cond_6
    const/16 v3, 0x8

    goto :goto_3

    .line 1096
    :cond_7
    new-instance v2, Lbyc$1;

    invoke-direct {v2, v0, v4, v5}, Lbyc$1;-><init>(Lbyc;J)V

    .line 1114
    iget-object v1, v0, Lbyc;->g:Landroid/content/Context;

    instance-of v1, v1, Landroid/app/Activity;

    if-eqz v1, :cond_8

    .line 1115
    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v3

    const-class v6, Lcma;

    iget-object v1, v0, Lbyc;->g:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-interface {v3, v2, v6, v1}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcma;

    .line 1117
    :goto_4
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v2

    invoke-virtual {v2, v4, v5, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(JLcma;)V

    goto/16 :goto_1

    :cond_8
    move-object v1, v2

    goto :goto_4
.end method
