.class public final Lcal;
.super Landroid/widget/BaseAdapter;
.source "MyRedPacketsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcal$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/BaseAdapter;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsMessageBodyExt;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/app/Activity;

.field private d:I

.field private e:Landroid/view/View$OnLongClickListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/util/ArrayList;I)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p3, "pageType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/ArrayList",
            "<TT;>;I)V"
        }
    .end annotation

    .prologue
    .line 73
    .local p0, "this":Lcal;, "Lcal<TT;>;"
    .local p2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 68
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcal;->b:Ljava/util/Map;

    .line 338
    new-instance v0, Lcal$3;

    invoke-direct {v0, p0}, Lcal$3;-><init>(Lcal;)V

    iput-object v0, p0, Lcal;->e:Landroid/view/View$OnLongClickListener;

    .line 74
    iput-object p2, p0, Lcal;->a:Ljava/util/List;

    .line 75
    iput-object p1, p0, Lcal;->c:Landroid/app/Activity;

    .line 76
    iput p3, p0, Lcal;->d:I

    .line 77
    return-void
.end method

.method static synthetic a(Lcal;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcal;

    .prologue
    .line 66
    iget-object v0, p0, Lcal;->c:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic b(Lcal;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcal;

    .prologue
    .line 66
    iget-object v0, p0, Lcal;->a:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 80
    .local p0, "this":Lcal;, "Lcal<TT;>;"
    iget-object v0, p0, Lcal;->a:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcal;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 85
    .local p0, "this":Lcal;, "Lcal<TT;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 90
    .local p0, "this":Lcal;, "Lcal<TT;>;"
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 96
    .local p0, "this":Lcal;, "Lcal<TT;>;"
    if-nez p2, :cond_3

    .line 97
    iget-object v4, p0, Lcal;->c:Landroid/app/Activity;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    sget v5, Lcaj$e;->item_my_redpackets:I

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 98
    new-instance v3, Lcal$a;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcal$a;-><init>(B)V

    .line 99
    .local v3, "viewHolder":Lcal$a;
    sget v4, Lcaj$d;->tv_left_top:I

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v3, Lcal$a;->a:Landroid/widget/TextView;

    .line 100
    sget v4, Lcaj$d;->tv_left_bottom:I

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v3, Lcal$a;->b:Landroid/widget/TextView;

    .line 101
    sget v4, Lcaj$d;->tv_right_top:I

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v3, Lcal$a;->c:Landroid/widget/TextView;

    .line 102
    sget v4, Lcaj$d;->tv_right_bottom:I

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v3, Lcal$a;->d:Landroid/widget/TextView;

    .line 103
    invoke-virtual {p2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 107
    :goto_0
    sget v4, Lcaj$c;->list_item_common_selector:I

    invoke-virtual {p2, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 108
    iget-object v4, p0, Lcal;->a:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 109
    .local v0, "detail":Ljava/lang/Object;, "TT;"
    iget v4, p0, Lcal;->d:I

    if-nez v4, :cond_e

    .line 110
    instance-of v4, v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    if-eqz v4, :cond_1

    .line 112
    const/4 v1, 0x0

    .local v1, "extObject":Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsMessageBodyExt;
    move-object v4, v0

    .line 113
    check-cast v4, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    iget-object v4, v4, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->ext:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObjectExt;

    if-eqz v4, :cond_0

    move-object v4, v0

    check-cast v4, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    iget-object v4, v4, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->ext:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObjectExt;

    iget-object v4, v4, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObjectExt;->festivalRedPacket:Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsMessageBodyExt;

    if-eqz v4, :cond_0

    move-object v4, v0

    .line 114
    check-cast v4, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    iget-object v4, v4, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->ext:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObjectExt;

    iget-object v1, v4, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObjectExt;->festivalRedPacket:Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsMessageBodyExt;

    :cond_0
    move-object v4, v0

    .line 117
    check-cast v4, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    iget-wide v4, v4, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->pickPlanTime:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_4

    .line 118
    iget-object v4, v3, Lcal$a;->a:Landroid/widget/TextView;

    sget v5, Lcaj$f;->dt_redenvelop_goodtime:I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 133
    :goto_1
    iget-object v4, v3, Lcal$a;->d:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    move-object v4, v0

    .line 134
    check-cast v4, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    iget v4, v4, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->status:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_9

    .line 135
    iget-object v5, v3, Lcal$a;->d:Landroid/widget/TextView;

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v4

    invoke-virtual {v4}, Lcid;->c()Landroid/app/Application;

    move-result-object v6

    sget v7, Lcaj$f;->redpackets_picked_detail:I

    const/4 v4, 0x2

    new-array v8, v4, [Ljava/lang/Object;

    const/4 v9, 0x0

    move-object v4, v0

    check-cast v4, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    iget v4, v4, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->count:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v8, v9

    const/4 v9, 0x1

    move-object v4, v0

    check-cast v4, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    iget v4, v4, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->size:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/app/Application;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    iget-object v4, v3, Lcal$a;->d:Landroid/widget/TextView;

    iget-object v5, p0, Lcal;->c:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcaj$b;->text_color_gray:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 149
    :goto_2
    iget-object v5, v3, Lcal$a;->c:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object v4, v0

    check-cast v4, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    iget-object v4, v4, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->amount:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v6

    invoke-virtual {v6}, Lcid;->c()Landroid/app/Application;

    move-result-object v6

    sget v7, Lcaj$f;->redpackets_yuan:I

    invoke-virtual {v6, v7}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v4, v0

    .line 150
    check-cast v4, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    iget-wide v4, v4, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->createTime:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_d

    .line 151
    iget-object v4, v3, Lcal$a;->b:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 158
    .end local v1    # "extObject":Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsMessageBodyExt;
    :cond_1
    :goto_3
    new-instance v4, Lcal$1;

    invoke-direct {v4, p0, v0, p1}, Lcal$1;-><init>(Lcal;Ljava/lang/Object;I)V

    invoke-virtual {p2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 333
    :cond_2
    :goto_4
    iget-object v4, p0, Lcal;->e:Landroid/view/View$OnLongClickListener;

    invoke-virtual {p2, v4}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 334
    return-object p2

    .line 105
    .end local v0    # "detail":Ljava/lang/Object;, "TT;"
    .end local v3    # "viewHolder":Lcal$a;
    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcal$a;

    .restart local v3    # "viewHolder":Lcal$a;
    goto/16 :goto_0

    .line 119
    .restart local v0    # "detail":Ljava/lang/Object;, "TT;"
    .restart local v1    # "extObject":Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsMessageBodyExt;
    :cond_4
    if-eqz v1, :cond_6

    iget-object v4, v1, Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsMessageBodyExt;->packageMediaId:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 120
    iget-object v4, v1, Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsMessageBodyExt;->packageName:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 121
    iget-object v4, v3, Lcal$a;->a:Landroid/widget/TextView;

    iget-object v5, v1, Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsMessageBodyExt;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 123
    :cond_5
    iget-object v4, v3, Lcal$a;->a:Landroid/widget/TextView;

    sget v5, Lcaj$f;->dt_redenvelop_entry:I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_1

    :cond_6
    move-object v4, v0

    .line 125
    check-cast v4, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    iget v4, v4, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->type:I

    if-nez v4, :cond_7

    .line 126
    iget-object v4, v3, Lcal$a;->a:Landroid/widget/TextView;

    sget v5, Lcaj$f;->redpackets_random:I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_1

    :cond_7
    move-object v4, v0

    .line 127
    check-cast v4, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    iget v4, v4, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->type:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_8

    .line 128
    iget-object v4, v3, Lcal$a;->a:Landroid/widget/TextView;

    sget v5, Lcaj$f;->redpackets_normal:I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_1

    .line 130
    :cond_8
    iget-object v4, v3, Lcal$a;->a:Landroid/widget/TextView;

    sget v5, Lcaj$f;->redpackets_oriented:I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_1

    :cond_9
    move-object v4, v0

    .line 137
    check-cast v4, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    iget v4, v4, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->status:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_a

    .line 138
    iget-object v5, v3, Lcal$a;->d:Landroid/widget/TextView;

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v4

    invoke-virtual {v4}, Lcid;->c()Landroid/app/Application;

    move-result-object v6

    sget v7, Lcaj$f;->redpackets_picked_expired_detail:I

    const/4 v4, 0x2

    new-array v8, v4, [Ljava/lang/Object;

    const/4 v9, 0x0

    move-object v4, v0

    check-cast v4, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    iget v4, v4, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->count:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v8, v9

    const/4 v9, 0x1

    move-object v4, v0

    check-cast v4, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    iget v4, v4, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->size:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/app/Application;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    iget-object v4, v3, Lcal$a;->d:Landroid/widget/TextView;

    iget-object v5, p0, Lcal;->c:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcaj$b;->text_color_gray:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_2

    :cond_a
    move-object v4, v0

    .line 140
    check-cast v4, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    iget v4, v4, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->status:I

    if-eqz v4, :cond_b

    move-object v4, v0

    check-cast v4, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    iget v4, v4, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->status:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_c

    .line 142
    :cond_b
    iget-object v4, v3, Lcal$a;->d:Landroid/widget/TextView;

    sget v5, Lcaj$f;->redpackets_need_resend:I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 143
    sget v4, Lcaj$c;->redpackets_listview_resend_selector:I

    invoke-virtual {p2, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 144
    iget-object v4, v3, Lcal$a;->d:Landroid/widget/TextView;

    iget-object v5, p0, Lcal;->c:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcaj$b;->redpackets_red_text:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_2

    .line 146
    :cond_c
    iget-object v5, v3, Lcal$a;->d:Landroid/widget/TextView;

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v4

    invoke-virtual {v4}, Lcid;->c()Landroid/app/Application;

    move-result-object v6

    sget v7, Lcaj$f;->redpackets_picking_detail:I

    const/4 v4, 0x2

    new-array v8, v4, [Ljava/lang/Object;

    const/4 v9, 0x0

    move-object v4, v0

    check-cast v4, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    iget v4, v4, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->count:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v8, v9

    const/4 v9, 0x1

    move-object v4, v0

    check-cast v4, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    iget v4, v4, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->size:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/app/Application;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    iget-object v4, v3, Lcal$a;->d:Landroid/widget/TextView;

    iget-object v5, p0, Lcal;->c:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcaj$b;->text_color_gray:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_2

    .line 153
    :cond_d
    iget-object v4, v3, Lcal$a;->b:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 154
    iget-object v5, v3, Lcal$a;->b:Landroid/widget/TextView;

    move-object v4, v0

    check-cast v4, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    iget-wide v6, v4, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->createTime:J

    invoke-static {v6, v7}, Lcbw;->c(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 289
    .end local v1    # "extObject":Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsMessageBodyExt;
    :cond_e
    instance-of v4, v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsObject;

    if-eqz v4, :cond_2

    .line 290
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v5

    move-object v4, v0

    check-cast v4, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsObject;

    iget-wide v6, v4, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsObject;->sender:J

    invoke-virtual {v5, v6, v7}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->d(J)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    move-result-object v2

    .line 291
    .local v2, "userProfileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    if-eqz v2, :cond_10

    .line 292
    iget-object v4, v3, Lcal$a;->a:Landroid/widget/TextView;

    iget-object v5, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_5
    move-object v4, v0

    .line 296
    check-cast v4, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsObject;

    iget-wide v4, v4, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsObject;->createTime:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_11

    .line 297
    iget-object v4, v3, Lcal$a;->b:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 302
    :goto_6
    iget-object v5, v3, Lcal$a;->c:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object v4, v0

    check-cast v4, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsObject;

    iget-object v4, v4, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsObject;->amount:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v6

    invoke-virtual {v6}, Lcid;->c()Landroid/app/Application;

    move-result-object v6

    sget v7, Lcaj$f;->redpackets_yuan:I

    invoke-virtual {v6, v7}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 303
    iget-object v4, v3, Lcal$a;->d:Landroid/widget/TextView;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    move-object v4, v0

    .line 304
    check-cast v4, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsObject;

    iget-object v4, v4, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsObject;->statusMsg:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_f

    .line 305
    iget-object v4, v3, Lcal$a;->d:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 306
    iget-object v5, v3, Lcal$a;->d:Landroid/widget/TextView;

    move-object v4, v0

    check-cast v4, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsObject;

    iget-object v4, v4, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsObject;->statusMsg:Ljava/lang/String;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 308
    :cond_f
    new-instance v4, Lcal$2;

    invoke-direct {v4, p0, v0}, Lcal$2;-><init>(Lcal;Ljava/lang/Object;)V

    invoke-virtual {p2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_4

    .line 294
    :cond_10
    iget-object v5, v3, Lcal$a;->a:Landroid/widget/TextView;

    move-object v4, v0

    check-cast v4, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsObject;

    iget-wide v6, v4, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsObject;->sender:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 299
    :cond_11
    iget-object v4, v3, Lcal$a;->b:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 300
    iget-object v5, v3, Lcal$a;->b:Landroid/widget/TextView;

    move-object v4, v0

    check-cast v4, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsObject;

    iget-wide v6, v4, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsObject;->createTime:J

    invoke-static {v6, v7}, Lcbw;->c(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6
.end method
