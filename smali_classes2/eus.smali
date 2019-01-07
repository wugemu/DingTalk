.class public Leus;
.super Leul;
.source "TeleConfRecordDetailAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Leus$a;,
        Leus$b;,
        Leus$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Leul",
        "<",
        "Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject;",
        ">;"
    }
.end annotation


# static fields
.field private static final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Leus;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Leus;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .param p1, "context"    # Landroid/app/Activity;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Leul;-><init>(Landroid/app/Activity;)V

    .line 25
    return-void
.end method


# virtual methods
.method public getItemViewType(I)I
    .locals 2
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 35
    const/4 v0, -0x1

    .line 36
    .local v0, "type":I
    iget-object v1, p0, Leus;->a:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 37
    iget-object v1, p0, Leus;->a:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject;

    iget-object v1, v1, Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject;->a:Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject$DetailInfoItemType;

    invoke-virtual {v1}, Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject$DetailInfoItemType;->ordinal()I

    move-result v0

    .line 39
    :cond_0
    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 49
    invoke-virtual {p0, p1}, Leus;->getItemViewType(I)I

    move-result v7

    .line 50
    .local v7, "type":I
    const/4 v3, 0x0

    .line 51
    .local v3, "headerHolder":Leus$b;
    const/4 v1, 0x0

    .line 52
    .local v1, "contentHolder":Leus$a;
    const/4 v2, 0x0

    .line 54
    .local v2, "footerHolder":Leus$c;
    if-nez p2, :cond_4

    .line 55
    sget-object v8, Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject$DetailInfoItemType;->InfoHeader:Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject$DetailInfoItemType;

    invoke-virtual {v8}, Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject$DetailInfoItemType;->ordinal()I

    move-result v8

    if-ne v7, v8, :cond_2

    .line 56
    iget-object v8, p0, Leus;->b:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    .line 1130
    .local v4, "inflater":Landroid/view/LayoutInflater;
    sget v8, Leuj$j;->layout_conf_record_detail_time_item:I

    .line 57
    invoke-virtual {v4, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 58
    new-instance v3, Leus$b;

    .end local v3    # "headerHolder":Leus$b;
    invoke-direct {v3, p0, v10}, Leus$b;-><init>(Leus;B)V

    .line 59
    .restart local v3    # "headerHolder":Leus$b;
    sget v8, Leuj$i;->header_name:I

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, v3, Leus$b;->a:Landroid/widget/TextView;

    .line 60
    invoke-virtual {p2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 86
    .end local v4    # "inflater":Landroid/view/LayoutInflater;
    :cond_0
    :goto_0
    iget-object v8, p0, Leus;->a:Ljava/util/List;

    invoke-interface {v8, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject;

    .line 87
    .local v5, "object":Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject;
    if-eqz v5, :cond_1

    .line 88
    if-eqz v3, :cond_7

    .line 89
    iget-object v8, v3, Leus$b;->a:Landroid/widget/TextView;

    iget-object v9, v5, Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject;->b:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    :cond_1
    :goto_1
    return-object p2

    .line 61
    .end local v5    # "object":Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject;
    :cond_2
    sget-object v8, Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject$DetailInfoItemType;->DetailItemInfo:Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject$DetailInfoItemType;

    invoke-virtual {v8}, Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject$DetailInfoItemType;->ordinal()I

    move-result v8

    if-ne v7, v8, :cond_3

    .line 62
    iget-object v8, p0, Leus;->b:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    .line 2127
    .restart local v4    # "inflater":Landroid/view/LayoutInflater;
    sget v8, Leuj$j;->layout_conf_record_detail_item:I

    .line 63
    invoke-virtual {v4, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 64
    new-instance v1, Leus$a;

    .end local v1    # "contentHolder":Leus$a;
    invoke-direct {v1, p0, v10}, Leus$a;-><init>(Leus;B)V

    .line 65
    .restart local v1    # "contentHolder":Leus$a;
    sget v8, Leuj$i;->tv_status_icon:I

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iput-object v8, v1, Leus$a;->a:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 66
    sget v8, Leuj$i;->tv_begin_time:I

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, v1, Leus$a;->c:Landroid/widget/TextView;

    .line 67
    sget v8, Leuj$i;->tv_type:I

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, v1, Leus$a;->b:Landroid/widget/TextView;

    .line 68
    sget v8, Leuj$i;->tv_duration:I

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, v1, Leus$a;->d:Landroid/widget/TextView;

    .line 69
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 70
    .end local v4    # "inflater":Landroid/view/LayoutInflater;
    :cond_3
    sget-object v8, Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject$DetailInfoItemType;->InfoFooter:Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject$DetailInfoItemType;

    invoke-virtual {v8}, Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject$DetailInfoItemType;->ordinal()I

    move-result v8

    if-ne v7, v8, :cond_0

    .line 71
    iget-object v8, p0, Leus;->b:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    .line 3124
    .restart local v4    # "inflater":Landroid/view/LayoutInflater;
    sget v8, Leuj$j;->layout_conf_record_detail_header_item:I

    .line 72
    invoke-virtual {v4, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 73
    new-instance v2, Leus$c;

    .end local v2    # "footerHolder":Leus$c;
    invoke-direct {v2, p0, v10}, Leus$c;-><init>(Leus;B)V

    .line 74
    .restart local v2    # "footerHolder":Leus$c;
    sget v8, Leuj$i;->header_divider:I

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, v2, Leus$c;->a:Landroid/view/View;

    goto :goto_0

    .line 78
    .end local v4    # "inflater":Landroid/view/LayoutInflater;
    :cond_4
    sget-object v8, Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject$DetailInfoItemType;->InfoHeader:Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject$DetailInfoItemType;

    invoke-virtual {v8}, Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject$DetailInfoItemType;->ordinal()I

    move-result v8

    if-ne v7, v8, :cond_5

    .line 79
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "headerHolder":Leus$b;
    check-cast v3, Leus$b;

    .restart local v3    # "headerHolder":Leus$b;
    goto/16 :goto_0

    .line 80
    :cond_5
    sget-object v8, Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject$DetailInfoItemType;->DetailItemInfo:Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject$DetailInfoItemType;

    invoke-virtual {v8}, Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject$DetailInfoItemType;->ordinal()I

    move-result v8

    if-ne v7, v8, :cond_6

    .line 81
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "contentHolder":Leus$a;
    check-cast v1, Leus$a;

    .restart local v1    # "contentHolder":Leus$a;
    goto/16 :goto_0

    .line 82
    :cond_6
    sget-object v8, Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject$DetailInfoItemType;->InfoFooter:Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject$DetailInfoItemType;

    invoke-virtual {v8}, Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject$DetailInfoItemType;->ordinal()I

    move-result v8

    if-ne v7, v8, :cond_0

    .line 83
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "footerHolder":Leus$c;
    check-cast v2, Leus$c;

    .restart local v2    # "footerHolder":Leus$c;
    goto/16 :goto_0

    .line 90
    .restart local v5    # "object":Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject;
    :cond_7
    if-eqz v1, :cond_12

    .line 91
    iget-object v8, v5, Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject;->e:Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject$CallStatus;

    .line 3154
    sget v6, Leuj$l;->icon_dialrecord:I

    .line 3155
    sget-object v9, Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject$CallStatus;->Calling:Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject$CallStatus;

    if-eq v8, v9, :cond_8

    sget-object v9, Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject$CallStatus;->CallingEx:Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject$CallStatus;

    if-ne v8, v9, :cond_a

    .line 3157
    :cond_8
    sget v6, Leuj$l;->icon_dialrecord:I

    .line 92
    .local v6, "res":I
    :cond_9
    :goto_2
    iget-object v8, v1, Leus$a;->a:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v8, v6}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setText(I)V

    .line 93
    iget-object v8, v5, Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject;->g:Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject$RecordType;

    .line 4136
    sget-object v9, Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject$RecordType;->PstnCall:Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject$RecordType;

    if-eq v8, v9, :cond_f

    .line 4138
    sget-object v9, Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject$RecordType;->VoipCall:Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject$RecordType;

    if-ne v8, v9, :cond_c

    .line 4139
    iget-object v8, p0, Leus;->b:Landroid/app/Activity;

    sget v9, Leuj$l;->dt_conference_history_conferencetype_voipoto:I

    invoke-virtual {v8, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 94
    .local v0, "callType":Ljava/lang/String;
    :goto_3
    iget-object v8, v1, Leus$a;->b:Landroid/widget/TextView;

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    iget-object v8, v1, Leus$a;->c:Landroid/widget/TextView;

    iget-object v9, v5, Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject;->c:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    iget-object v8, v5, Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject;->g:Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject$RecordType;

    sget-object v9, Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject$RecordType;->PhoneCall:Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject$RecordType;

    if-ne v8, v9, :cond_10

    iget-boolean v8, v5, Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject;->h:Z

    if-nez v8, :cond_10

    .line 97
    iget-object v8, v1, Leus$a;->d:Landroid/widget/TextView;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 101
    :goto_4
    iget-object v8, v1, Leus$a;->d:Landroid/widget/TextView;

    iget-object v9, v5, Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject;->f:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    sget-object v8, Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject$CallStatus;->IncomingEx:Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject$CallStatus;

    iget-object v9, v5, Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject;->e:Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject$CallStatus;

    if-ne v8, v9, :cond_11

    .line 104
    iget-object v8, v1, Leus$a;->a:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iget-object v9, p0, Leus;->b:Landroid/app/Activity;

    invoke-virtual {v9}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Leuj$f;->ui_common_alert_text_color:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setTextColor(I)V

    .line 105
    iget-object v8, v1, Leus$a;->b:Landroid/widget/TextView;

    iget-object v9, p0, Leus;->b:Landroid/app/Activity;

    invoke-virtual {v9}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Leuj$f;->ui_common_alert_text_color:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 106
    iget-object v8, v1, Leus$a;->c:Landroid/widget/TextView;

    iget-object v9, p0, Leus;->b:Landroid/app/Activity;

    invoke-virtual {v9}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Leuj$f;->ui_common_alert_text_color:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 107
    iget-object v8, v1, Leus$a;->d:Landroid/widget/TextView;

    iget-object v9, p0, Leus;->b:Landroid/app/Activity;

    invoke-virtual {v9}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Leuj$f;->ui_common_alert_text_color:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_1

    .line 3158
    .end local v0    # "callType":Ljava/lang/String;
    .end local v6    # "res":I
    :cond_a
    sget-object v9, Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject$CallStatus;->Incoming:Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject$CallStatus;

    if-eq v8, v9, :cond_b

    sget-object v9, Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject$CallStatus;->IncomingEx:Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject$CallStatus;

    if-ne v8, v9, :cond_9

    .line 3160
    :cond_b
    sget v6, Leuj$l;->icon_callrecord:I

    goto/16 :goto_2

    .line 4140
    .restart local v6    # "res":I
    :cond_c
    sget-object v9, Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject$RecordType;->VideoCall:Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject$RecordType;

    if-ne v8, v9, :cond_d

    .line 4141
    iget-object v8, p0, Leus;->b:Landroid/app/Activity;

    sget v9, Leuj$l;->dt_conference_history_conferencetype_videooto:I

    invoke-virtual {v8, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3

    .line 4142
    :cond_d
    sget-object v9, Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject$RecordType;->PhoneCall:Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject$RecordType;

    if-ne v8, v9, :cond_e

    .line 4143
    iget-object v8, p0, Leus;->b:Landroid/app/Activity;

    sget v9, Leuj$l;->dt_conference_syscall_histovry_type:I

    invoke-virtual {v8, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3

    .line 4144
    :cond_e
    sget-object v9, Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject$RecordType;->BizCall:Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject$RecordType;

    if-ne v8, v9, :cond_f

    .line 4145
    iget-object v8, p0, Leus;->b:Landroid/app/Activity;

    sget v9, Leuj$l;->dt_conference_bizcall_histovry_type:I

    invoke-virtual {v8, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3

    .line 4147
    :cond_f
    iget-object v8, p0, Leus;->b:Landroid/app/Activity;

    sget v9, Leuj$l;->dt_conference_history_conferencetype_call:I

    invoke-virtual {v8, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3

    .line 99
    .restart local v0    # "callType":Ljava/lang/String;
    :cond_10
    iget-object v8, v1, Leus$a;->d:Landroid/widget/TextView;

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_4

    .line 109
    :cond_11
    iget-object v8, v1, Leus$a;->a:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iget-object v9, p0, Leus;->b:Landroid/app/Activity;

    invoke-virtual {v9}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Leuj$f;->ui_common_level3_text_color:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setTextColor(I)V

    .line 110
    iget-object v8, v1, Leus$a;->b:Landroid/widget/TextView;

    iget-object v9, p0, Leus;->b:Landroid/app/Activity;

    invoke-virtual {v9}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Leuj$f;->ui_common_level3_text_color:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 111
    iget-object v8, v1, Leus$a;->c:Landroid/widget/TextView;

    iget-object v9, p0, Leus;->b:Landroid/app/Activity;

    invoke-virtual {v9}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Leuj$f;->ui_common_level3_text_color:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 112
    iget-object v8, v1, Leus$a;->d:Landroid/widget/TextView;

    iget-object v9, p0, Leus;->b:Landroid/app/Activity;

    invoke-virtual {v9}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Leuj$f;->ui_common_level3_text_color:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_1

    .line 115
    .end local v0    # "callType":Ljava/lang/String;
    .end local v6    # "res":I
    :cond_12
    if-eqz v2, :cond_1

    .line 116
    iget-object v8, v2, Leus$c;->a:Landroid/view/View;

    invoke-virtual {v8, v10}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 44
    invoke-static {}, Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject$DetailInfoItemType;->values()[Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject$DetailInfoItemType;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 30
    const/4 v0, 0x0

    return v0
.end method
