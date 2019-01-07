.class public final Leun;
.super Leul;
.source "TeleConfAlarmRecordAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Leun$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Leul",
        "<",
        "Lcom/alibaba/android/teleconf/data/ConfRecordItem;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Leul;-><init>(Landroid/app/Activity;)V

    .line 23
    return-void
.end method


# virtual methods
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const-wide/16 v10, 0x3e8

    const/16 v3, 0x8

    const/4 v8, 0x1

    const/4 v4, 0x0

    .line 28
    if-nez p2, :cond_1

    .line 29
    iget-object v2, p0, Leun;->b:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    .line 1074
    sget v5, Leuj$j;->layout_conf_call_alarm_record_item:I

    .line 29
    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 30
    new-instance v0, Leun$a;

    invoke-direct {v0, p0}, Leun$a;-><init>(Leun;)V

    .line 31
    .local v0, "holder":Leun$a;
    sget v2, Leuj$i;->call_alarm_record_call_icon:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v0, Leun$a;->e:Landroid/view/View;

    .line 32
    sget v2, Leuj$i;->call_alarm_record_num:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Leun$a;->a:Landroid/widget/TextView;

    .line 33
    sget v2, Leuj$i;->call_alarm_record_user:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Leun$a;->b:Landroid/widget/TextView;

    .line 34
    sget v2, Leuj$i;->call_alarm_record_type:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Leun$a;->c:Landroid/widget/TextView;

    .line 35
    sget v2, Leuj$i;->call_alarm_record_time:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Leun$a;->d:Landroid/widget/TextView;

    .line 37
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 41
    :goto_0
    iget-object v2, p0, Leun;->a:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/teleconf/data/ConfRecordItem;

    .line 42
    .local v1, "recordItem":Lcom/alibaba/android/teleconf/data/ConfRecordItem;
    if-eqz v0, :cond_0

    .line 2049
    if-eqz v0, :cond_0

    if-nez v1, :cond_2

    .line 45
    :cond_0
    :goto_1
    return-object p2

    .line 39
    .end local v0    # "holder":Leun$a;
    .end local v1    # "recordItem":Lcom/alibaba/android/teleconf/data/ConfRecordItem;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leun$a;

    .restart local v0    # "holder":Leun$a;
    goto :goto_0

    .line 2052
    .restart local v1    # "recordItem":Lcom/alibaba/android/teleconf/data/ConfRecordItem;
    :cond_2
    iget v2, v1, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->noAnswerCount:I

    if-le v2, v8, :cond_3

    .line 2053
    iget-object v2, v0, Leun$a;->a:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2054
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v5, "("

    aput-object v5, v2, v4

    iget v5, v1, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->noAnswerCount:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v8

    const/4 v5, 0x2

    const-string/jumbo v6, ")"

    aput-object v6, v2, v5

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2055
    iget-object v5, v0, Leun$a;->a:Landroid/widget/TextView;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2059
    :goto_2
    iget-object v2, v0, Leun$a;->b:Landroid/widget/TextView;

    iget-object v5, v1, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->targetNicks:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2060
    iget-object v2, v0, Leun$a;->c:Landroid/widget/TextView;

    iget-object v5, p0, Leun;->b:Landroid/app/Activity;

    sget v6, Leuj$l;->dt_conference_history_conferencetype_voipoto:I

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2062
    iget-wide v6, v1, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->beginTime:J

    mul-long/2addr v6, v10

    invoke-static {v6, v7}, Leyr;->a(J)Ljava/lang/String;

    move-result-object v2

    .line 2063
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    iget-object v5, p0, Leun;->b:Landroid/app/Activity;

    sget v6, Leuj$l;->calendar_today:I

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 2064
    iget-object v5, v0, Leun$a;->d:Landroid/widget/TextView;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2070
    :goto_3
    iget-object v5, v0, Leun$a;->e:Landroid/view/View;

    invoke-virtual {p0}, Leun;->getCount()I

    move-result v2

    if-le v2, v8, :cond_5

    move v2, v3

    :goto_4
    invoke-virtual {v5, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 2057
    :cond_3
    iget-object v2, v0, Leun$a;->a:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 2066
    :cond_4
    iget-wide v6, v1, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->beginTime:J

    mul-long/2addr v6, v10

    invoke-static {v6, v7}, Leyr;->b(J)Ljava/lang/String;

    move-result-object v2

    .line 2067
    iget-object v5, v0, Leun$a;->d:Landroid/widget/TextView;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_5
    move v2, v4

    .line 2070
    goto :goto_4
.end method
