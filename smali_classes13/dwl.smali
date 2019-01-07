.class public final Ldwl;
.super Lcom/alibaba/android/dingtalkim/onebox/BaseOneBoxViewHolder;
.source "BusinessItemBoxViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/android/dingtalkim/onebox/BaseOneBoxViewHolder",
        "<",
        "Lcom/alibaba/android/dingtalkim/models/BusinessItemObject;",
        ">;"
    }
.end annotation


# instance fields
.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkim/onebox/BaseOneBoxViewHolder;-><init>(Landroid/app/Activity;)V

    .line 66
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 70
    sget v0, Lctk$g;->box_business_item:I

    return v0
.end method

.method public final a(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 75
    sget v0, Lctk$f;->tv_date:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ldwl;->d:Landroid/widget/TextView;

    .line 76
    sget v0, Lctk$f;->tv_time:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ldwl;->e:Landroid/widget/TextView;

    .line 77
    sget v0, Lctk$f;->tv_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ldwl;->g:Landroid/widget/TextView;

    .line 78
    sget v0, Lctk$f;->tv_desc:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ldwl;->h:Landroid/widget/TextView;

    .line 79
    sget v0, Lctk$f;->img_icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iput-object v0, p0, Ldwl;->f:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 80
    sget v0, Lctk$f;->img_arrow:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Ldwl;->i:Landroid/widget/ImageView;

    .line 81
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v8, 0x1

    const/4 v1, 0x0

    .line 48
    check-cast p1, Lcom/alibaba/android/dingtalkim/models/BusinessItemObject;

    .line 2085
    if-eqz p1, :cond_5

    .line 2088
    new-instance v0, Ljava/util/Date;

    iget-wide v2, p1, Lcom/alibaba/android/dingtalkim/models/BusinessItemObject;->createAt:J

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 2089
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "MM/dd HH:mm"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 2090
    invoke-virtual {v2, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 2091
    const-string/jumbo v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2093
    iget-object v2, p0, Ldwl;->d:Landroid/widget/TextView;

    aget-object v3, v0, v1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2094
    iget-object v2, p0, Ldwl;->e:Landroid/widget/TextView;

    aget-object v0, v0, v8

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2096
    iget-object v0, p1, Lcom/alibaba/android/dingtalkim/models/BusinessItemObject;->content:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2097
    iget-object v0, p0, Ldwl;->h:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/alibaba/android/dingtalkim/models/BusinessItemObject;->content:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2098
    iget-object v0, p0, Ldwl;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2099
    iget-object v0, p0, Ldwl;->g:Landroid/widget/TextView;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 2106
    :goto_0
    iget-object v0, p1, Lcom/alibaba/android/dingtalkim/models/BusinessItemObject;->title:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 2107
    iget-object v0, p1, Lcom/alibaba/android/dingtalkim/models/BusinessItemObject;->titleFormat:Ljava/util/List;

    if-eqz v0, :cond_6

    iget-object v0, p1, Lcom/alibaba/android/dingtalkim/models/BusinessItemObject;->titleFormat:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 2108
    new-instance v2, Landroid/text/SpannableString;

    iget-object v0, p1, Lcom/alibaba/android/dingtalkim/models/BusinessItemObject;->title:Ljava/lang/String;

    invoke-direct {v2, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 2109
    iget-object v0, p1, Lcom/alibaba/android/dingtalkim/models/BusinessItemObject;->title:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    .line 2110
    iget-object v0, p1, Lcom/alibaba/android/dingtalkim/models/BusinessItemObject;->titleFormat:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/models/FormatObject;

    .line 2111
    if-eqz v0, :cond_0

    iget v5, v0, Lcom/alibaba/android/dingtalkim/models/FormatObject;->bold:I

    if-ne v5, v8, :cond_0

    iget v5, v0, Lcom/alibaba/android/dingtalkim/models/FormatObject;->start:I

    if-gt v5, v3, :cond_0

    .line 2114
    iget v5, v0, Lcom/alibaba/android/dingtalkim/models/FormatObject;->end:I

    if-le v5, v3, :cond_1

    .line 2115
    iput v3, v0, Lcom/alibaba/android/dingtalkim/models/FormatObject;->end:I

    .line 2117
    :cond_1
    iget v5, v0, Lcom/alibaba/android/dingtalkim/models/FormatObject;->start:I

    iget v6, v0, Lcom/alibaba/android/dingtalkim/models/FormatObject;->end:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 2118
    iget v6, v0, Lcom/alibaba/android/dingtalkim/models/FormatObject;->start:I

    iget v0, v0, Lcom/alibaba/android/dingtalkim/models/FormatObject;->end:I

    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2119
    new-instance v6, Landroid/text/style/StyleSpan;

    invoke-direct {v6, v8}, Landroid/text/style/StyleSpan;-><init>(I)V

    const/16 v7, 0x21

    invoke-virtual {v2, v6, v5, v0, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_1

    .line 2101
    :cond_2
    iget-object v0, p0, Ldwl;->h:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2102
    iget-object v0, p0, Ldwl;->g:Landroid/widget/TextView;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    goto :goto_0

    .line 2121
    :cond_3
    iget-object v0, p0, Ldwl;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2127
    :cond_4
    :goto_2
    iget-object v0, p1, Lcom/alibaba/android/dingtalkim/models/BusinessItemObject;->icon:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 2128
    iget-object v0, p0, Ldwl;->f:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    const/4 v2, 0x0

    iget-object v3, p1, Lcom/alibaba/android/dingtalkim/models/BusinessItemObject;->icon:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2133
    :goto_3
    iget-object v2, p0, Ldwl;->i:Landroid/widget/ImageView;

    iget-object v0, p1, Lcom/alibaba/android/dingtalkim/models/BusinessItemObject;->url:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x4

    :goto_4
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 48
    :cond_5
    return-void

    .line 2123
    :cond_6
    iget-object v0, p0, Ldwl;->g:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/alibaba/android/dingtalkim/models/BusinessItemObject;->title:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 2130
    :cond_7
    iget-object v0, p0, Ldwl;->f:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    sget v2, Lctk$e;->icon_box_business_item:I

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setImageResource(I)V

    goto :goto_3

    :cond_8
    move v0, v1

    .line 2133
    goto :goto_4
.end method

.method public final synthetic a(Ljava/lang/Object;Landroid/view/View;I)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 48
    check-cast p1, Lcom/alibaba/android/dingtalkim/models/BusinessItemObject;

    .line 1139
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/alibaba/android/dingtalkim/models/BusinessItemObject;->url:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1141
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "chat_onebox_contactexter_click"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 1144
    iget-object v0, p1, Lcom/alibaba/android/dingtalkim/models/BusinessItemObject;->url:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1145
    if-eqz v0, :cond_1

    const-string/jumbo v1, "qr.dingtalk.com"

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1146
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    iget-object v1, p0, Ldwl;->a:Landroid/app/Activity;

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    iget-object v1, p1, Lcom/alibaba/android/dingtalkim/models/BusinessItemObject;->url:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    .line 1148
    :cond_1
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v0

    iget-object v1, p0, Ldwl;->a:Landroid/app/Activity;

    iget-object v2, p1, Lcom/alibaba/android/dingtalkim/models/BusinessItemObject;->url:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lgvm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final bridge synthetic b(Ljava/lang/Object;Landroid/view/View;I)Z
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    return v0
.end method
