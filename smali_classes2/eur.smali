.class public Leur;
.super Leul;
.source "TeleConfRecordAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Leur$d;,
        Leur$b;,
        Leur$a;,
        Leur$f;,
        Leur$c;,
        Leur$e;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Leul",
        "<",
        "Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;",
        ">;"
    }
.end annotation


# static fields
.field private static final c:Ljava/lang/String;


# instance fields
.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Lexi$c;

.field private g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const-class v0, Leur;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Leur;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lexi$c;)V
    .locals 2
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "activityView"    # Lexi$c;

    .prologue
    const/4 v0, 0x1

    .line 66
    invoke-direct {p0, p1}, Leul;-><init>(Landroid/app/Activity;)V

    .line 58
    const-string/jumbo v1, "%s (%d)"

    iput-object v1, p0, Leur;->d:Ljava/lang/String;

    .line 59
    const-string/jumbo v1, "%s (99+)"

    iput-object v1, p0, Leur;->e:Ljava/lang/String;

    .line 63
    iput-boolean v0, p0, Leur;->g:Z

    .line 67
    iput-object p2, p0, Leur;->f:Lexi$c;

    .line 68
    iget-object v1, p0, Leur;->b:Landroid/app/Activity;

    invoke-static {v1}, Lewp;->f(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    iput-boolean v0, p0, Leur;->g:Z

    .line 69
    return-void

    .line 68
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Leur;)Lexi$c;
    .locals 1
    .param p0, "x0"    # Leur;

    .prologue
    .line 55
    iget-object v0, p0, Leur;->f:Lexi$c;

    return-object v0
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Leur;->c:Ljava/lang/String;

    return-object v0
.end method

.method private a(I)Ljava/lang/String;
    .locals 3
    .param p1, "type"    # I

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 827
    packed-switch p1, :pswitch_data_0

    .line 847
    iget-object v1, p0, Leur;->b:Landroid/app/Activity;

    sget v2, Leuj$l;->dt_conference_history_conferencetype_call:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 850
    .local v0, "callType":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 830
    .end local v0    # "callType":Ljava/lang/String;
    :pswitch_0
    iget-object v1, p0, Leur;->b:Landroid/app/Activity;

    sget v2, Leuj$l;->dt_conference_history_conferencetype_call:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 831
    .restart local v0    # "callType":Ljava/lang/String;
    goto :goto_0

    .line 834
    .end local v0    # "callType":Ljava/lang/String;
    :pswitch_1
    iget-object v1, p0, Leur;->b:Landroid/app/Activity;

    sget v2, Leuj$l;->dt_conference_history_conferencetype_videooto:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 835
    .restart local v0    # "callType":Ljava/lang/String;
    goto :goto_0

    .line 838
    .end local v0    # "callType":Ljava/lang/String;
    :pswitch_2
    iget-object v1, p0, Leur;->b:Landroid/app/Activity;

    sget v2, Leuj$l;->dt_conference_history_conferencetype_voipoto:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 839
    .restart local v0    # "callType":Ljava/lang/String;
    goto :goto_0

    .line 841
    .end local v0    # "callType":Ljava/lang/String;
    :pswitch_3
    iget-object v1, p0, Leur;->b:Landroid/app/Activity;

    sget v2, Leuj$l;->dt_conference_bizcall_histovry_type:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 842
    .restart local v0    # "callType":Ljava/lang/String;
    goto :goto_0

    .line 844
    .end local v0    # "callType":Ljava/lang/String;
    :pswitch_4
    iget-object v1, p0, Leur;->b:Landroid/app/Activity;

    sget v2, Leuj$l;->dt_conference_syscall_histovry_type:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 845
    .restart local v0    # "callType":Ljava/lang/String;
    goto :goto_0

    .line 827
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private a(Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;Lcom/alibaba/android/teleconf/data/ConfRecordItem;)Ljava/lang/String;
    .locals 7
    .param p1, "recordObject"    # Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;
    .param p2, "record"    # Lcom/alibaba/android/teleconf/data/ConfRecordItem;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x1

    .line 559
    iget v2, p2, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->callType:I

    if-ne v4, v2, :cond_1

    .line 560
    iget v2, p1, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;->l:I

    if-lez v2, :cond_0

    .line 561
    iget-object v2, p0, Leur;->b:Landroid/app/Activity;

    sget v3, Leuj$l;->and_conf_txt_multiple_call:I

    new-array v4, v4, [Ljava/lang/Object;

    iget v5, p1, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;->l:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 586
    .local v0, "multiMsg":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 563
    .end local v0    # "multiMsg":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Leur;->b:Landroid/app/Activity;

    sget v3, Leuj$l;->and_conference_call:I

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "multiMsg":Ljava/lang/String;
    goto :goto_0

    .line 565
    .end local v0    # "multiMsg":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x5

    iget v3, p2, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->callType:I

    if-ne v2, v3, :cond_3

    .line 566
    iget v2, p1, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;->l:I

    if-lez v2, :cond_2

    .line 567
    iget-object v2, p0, Leur;->b:Landroid/app/Activity;

    sget v3, Leuj$l;->dt_conference_multi_video_call:I

    new-array v4, v4, [Ljava/lang/Object;

    iget v5, p1, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;->l:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "multiMsg":Ljava/lang/String;
    goto :goto_0

    .line 569
    .end local v0    # "multiMsg":Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Leur;->b:Landroid/app/Activity;

    sget v3, Leuj$l;->and_conference_video_call:I

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "multiMsg":Ljava/lang/String;
    goto :goto_0

    .line 571
    .end local v0    # "multiMsg":Ljava/lang/String;
    :cond_3
    const/4 v2, 0x3

    iget v3, p2, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->callType:I

    if-ne v2, v3, :cond_6

    .line 572
    iget v2, p1, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;->l:I

    if-lez v2, :cond_5

    .line 573
    invoke-static {}, Lewx;->f()Z

    move-result v2

    if-eqz v2, :cond_4

    sget v1, Leuj$l;->and_conf_txt_multi_voip_call_ext:I

    .line 575
    .local v1, "resId":I
    :goto_1
    iget-object v2, p0, Leur;->b:Landroid/app/Activity;

    new-array v3, v4, [Ljava/lang/Object;

    iget v4, p1, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;->l:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v2, v1, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 576
    .restart local v0    # "multiMsg":Ljava/lang/String;
    goto :goto_0

    .line 573
    .end local v0    # "multiMsg":Ljava/lang/String;
    .end local v1    # "resId":I
    :cond_4
    sget v1, Leuj$l;->and_conf_txt_multi_voip_call:I

    goto :goto_1

    .line 577
    :cond_5
    iget-object v2, p0, Leur;->b:Landroid/app/Activity;

    invoke-static {}, Lewp;->e()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "multiMsg":Ljava/lang/String;
    goto :goto_0

    .line 580
    .end local v0    # "multiMsg":Ljava/lang/String;
    :cond_6
    iget v2, p1, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;->l:I

    if-lez v2, :cond_7

    .line 581
    iget-object v2, p0, Leur;->b:Landroid/app/Activity;

    sget v3, Leuj$l;->and_conf_txt_multiple_call:I

    new-array v4, v4, [Ljava/lang/Object;

    iget v5, p1, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;->l:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "multiMsg":Ljava/lang/String;
    goto/16 :goto_0

    .line 583
    .end local v0    # "multiMsg":Ljava/lang/String;
    :cond_7
    iget-object v2, p0, Leur;->b:Landroid/app/Activity;

    sget v3, Leuj$l;->and_conference_call:I

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "multiMsg":Ljava/lang/String;
    goto/16 :goto_0
.end method

.method private a(Leur$c;Lcom/alibaba/android/teleconf/data/ConfRecordItem;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "holder"    # Leur$c;
    .param p2, "record"    # Lcom/alibaba/android/teleconf/data/ConfRecordItem;
    .param p3, "format"    # Ljava/lang/String;
    .param p4, "format2"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/16 v3, 0x64

    .line 590
    iget v0, p2, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->noAnswerCount:I

    if-lez v0, :cond_2

    .line 51244
    iget-object v0, p1, Leur$c;->d:Landroid/widget/TextView;

    .line 591
    iget-object v1, p0, Leur;->b:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Leuj$f;->uidic_global_color_c3:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 592
    iget v0, p2, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->noAnswerCount:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    iget v0, p2, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->noAnswerCount:I

    if-ge v0, v3, :cond_1

    .line 51245
    iget-object v0, p1, Leur$c;->d:Landroid/widget/TextView;

    .line 593
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51247
    :cond_0
    :goto_0
    iget-object v0, p1, Leur$c;->e:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 599
    sget v1, Leuj$l;->icon_callrecord:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setText(I)V

    .line 51248
    iget-object v0, p1, Leur$c;->e:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 600
    iget-object v1, p0, Leur;->b:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Leuj$f;->ui_common_alert_icon_bg_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setTextColor(I)V

    .line 51249
    iget-object v0, p1, Leur$c;->f:Landroid/widget/TextView;

    .line 601
    iget-object v1, p0, Leur;->b:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Leuj$f;->ui_common_alert_text_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 51250
    iget-object v0, p1, Leur$c;->g:Landroid/widget/TextView;

    .line 602
    iget-object v1, p0, Leur;->b:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Leuj$f;->ui_common_alert_text_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 606
    :goto_1
    return-void

    .line 594
    :cond_1
    iget v0, p2, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->noAnswerCount:I

    if-lt v0, v3, :cond_0

    .line 51246
    iget-object v0, p1, Leur$c;->d:Landroid/widget/TextView;

    .line 595
    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 604
    :cond_2
    invoke-direct {p0, p1}, Leur;->b(Leur$e;)V

    goto :goto_1
.end method

.method private a(Leur$e;)V
    .locals 5
    .param p1, "holder"    # Leur$e;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 609
    if-nez p1, :cond_1

    .line 633
    :cond_0
    :goto_0
    return-void

    .line 612
    :cond_1
    instance-of v2, p1, Leur$c;

    if-eqz v2, :cond_2

    move-object v0, p1

    .line 613
    check-cast v0, Leur$c;

    .line 51251
    .local v0, "itemHolder":Leur$c;
    iget-object v2, v0, Leur$c;->d:Landroid/widget/TextView;

    .line 615
    iget-object v3, p0, Leur;->b:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Leuj$f;->black:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 51252
    iget-object v2, v0, Leur$c;->e:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 618
    sget v3, Leuj$l;->icon_dialrecord:I

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setText(I)V

    .line 51253
    iget-object v2, v0, Leur$c;->e:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 619
    iget-object v3, p0, Leur;->b:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Leuj$f;->ui_common_level1_icon_bg_color:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setTextColor(I)V

    .line 51254
    iget-object v2, v0, Leur$c;->f:Landroid/widget/TextView;

    .line 620
    iget-object v3, p0, Leur;->b:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Leuj$f;->ui_common_level3_text_color:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 51255
    iget-object v2, v0, Leur$c;->g:Landroid/widget/TextView;

    .line 621
    iget-object v3, p0, Leur;->b:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Leuj$f;->ui_common_level3_text_color:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 622
    .end local v0    # "itemHolder":Leur$c;
    :cond_2
    instance-of v2, p1, Leur$d;

    if-eqz v2, :cond_0

    move-object v1, p1

    .line 623
    check-cast v1, Leur$d;

    .line 51256
    .local v1, "runningHolder":Leur$d;
    iget-object v2, v1, Leur$d;->a:Landroid/widget/TextView;

    .line 625
    iget-object v3, p0, Leur;->b:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Leuj$f;->black:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 51257
    iget-object v2, v1, Leur$d;->b:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 628
    sget v3, Leuj$l;->icon_dialrecord:I

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setText(I)V

    .line 51258
    iget-object v2, v1, Leur$d;->b:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 629
    iget-object v3, p0, Leur;->b:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Leuj$f;->ui_common_level1_icon_bg_color:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setTextColor(I)V

    .line 51259
    iget-object v2, v1, Leur$d;->c:Landroid/widget/TextView;

    .line 630
    iget-object v3, p0, Leur;->b:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Leuj$f;->ui_common_level3_text_color:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 51260
    iget-object v2, v1, Leur$d;->d:Landroid/widget/TextView;

    .line 631
    iget-object v3, p0, Leur;->b:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Leuj$f;->ui_common_level3_text_color:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0
.end method

.method private b(Leur$e;)V
    .locals 5
    .param p1, "holder"    # Leur$e;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 636
    if-nez p1, :cond_1

    .line 660
    :cond_0
    :goto_0
    return-void

    .line 639
    :cond_1
    instance-of v2, p1, Leur$c;

    if-eqz v2, :cond_2

    move-object v0, p1

    .line 640
    check-cast v0, Leur$c;

    .line 51261
    .local v0, "itemHolder":Leur$c;
    iget-object v2, v0, Leur$c;->d:Landroid/widget/TextView;

    .line 642
    iget-object v3, p0, Leur;->b:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Leuj$f;->black:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 51262
    iget-object v2, v0, Leur$c;->e:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 645
    sget v3, Leuj$l;->icon_callrecord:I

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setText(I)V

    .line 51263
    iget-object v2, v0, Leur$c;->e:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 646
    iget-object v3, p0, Leur;->b:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Leuj$f;->ui_common_level1_icon_bg_color:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setTextColor(I)V

    .line 51264
    iget-object v2, v0, Leur$c;->f:Landroid/widget/TextView;

    .line 647
    iget-object v3, p0, Leur;->b:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Leuj$f;->ui_common_level3_text_color:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 51265
    iget-object v2, v0, Leur$c;->g:Landroid/widget/TextView;

    .line 648
    iget-object v3, p0, Leur;->b:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Leuj$f;->ui_common_level3_text_color:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 649
    .end local v0    # "itemHolder":Leur$c;
    :cond_2
    instance-of v2, p1, Leur$d;

    if-eqz v2, :cond_0

    move-object v1, p1

    .line 650
    check-cast v1, Leur$d;

    .line 51266
    .local v1, "runningHolder":Leur$d;
    iget-object v2, v1, Leur$d;->a:Landroid/widget/TextView;

    .line 652
    iget-object v3, p0, Leur;->b:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Leuj$f;->black:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 51267
    iget-object v2, v1, Leur$d;->b:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 655
    sget v3, Leuj$l;->icon_callrecord:I

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setText(I)V

    .line 51268
    iget-object v2, v1, Leur$d;->b:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 656
    iget-object v3, p0, Leur;->b:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Leuj$f;->ui_common_level1_icon_bg_color:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setTextColor(I)V

    .line 51269
    iget-object v2, v1, Leur$d;->c:Landroid/widget/TextView;

    .line 657
    iget-object v3, p0, Leur;->b:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Leuj$f;->ui_common_level3_text_color:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 51270
    iget-object v2, v1, Leur$d;->d:Landroid/widget/TextView;

    .line 658
    iget-object v3, p0, Leur;->b:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Leuj$f;->ui_common_level3_text_color:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0
.end method


# virtual methods
.method public getItemViewType(I)I
    .locals 2
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 90
    const/4 v0, -0x1

    .line 91
    .local v0, "type":I
    iget-object v1, p0, Leur;->a:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 92
    iget-object v1, p0, Leur;->a:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;

    iget-object v1, v1, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;->a:Lcom/alibaba/android/teleconf/data/TeleConfRecordObject$InfoItemType;

    invoke-virtual {v1}, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject$InfoItemType;->ordinal()I

    move-result v0

    .line 94
    :cond_0
    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 19
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 104
    const/4 v5, 0x0

    .line 105
    .local v5, "itemHolder":Leur$c;
    const/4 v10, 0x0

    .line 106
    .local v10, "virtualHolder":Leur$f;
    const/4 v2, 0x0

    .line 107
    .local v2, "contactHolder":Leur$a;
    const/4 v3, 0x0

    .line 108
    .local v3, "emptyGrantHolder":Leur$b;
    const/4 v8, 0x0

    .line 110
    .local v8, "runningHolder":Leur$d;
    invoke-virtual/range {p0 .. p1}, Leur;->getItemViewType(I)I

    move-result v9

    .line 112
    .local v9, "type":I
    move-object/from16 v6, p2

    .local v6, "raw":Landroid/view/View;
    if-nez p2, :cond_9

    .line 113
    move-object/from16 v0, p0

    iget-object v11, v0, Leur;->b:Landroid/app/Activity;

    invoke-virtual {v11}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    .line 114
    .local v4, "inflater":Landroid/view/LayoutInflater;
    sget-object v11, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject$InfoItemType;->InfoItem:Lcom/alibaba/android/teleconf/data/TeleConfRecordObject$InfoItemType;

    invoke-virtual {v11}, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject$InfoItemType;->ordinal()I

    move-result v11

    if-ne v9, v11, :cond_2

    .line 1854
    sget v11, Leuj$j;->layout_conf_record_item_v2:I

    .line 115
    const/4 v12, 0x0

    invoke-virtual {v4, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 116
    new-instance v5, Leur$c;

    .end local v5    # "itemHolder":Leur$c;
    const/4 v11, 0x0

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v11}, Leur$c;-><init>(Leur;B)V

    .line 117
    .restart local v5    # "itemHolder":Leur$c;
    sget v11, Leuj$i;->item_call_avatars_layout:I

    invoke-virtual {v6, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .line 1885
    iput-object v11, v5, Leur$c;->a:Landroid/view/View;

    .line 118
    sget v11, Leuj$i;->item_call_avatars:I

    invoke-virtual {v6, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/alibaba/android/teleconf/widget/TeleConfAvatar;

    .line 2885
    iput-object v11, v5, Leur$c;->b:Lcom/alibaba/android/teleconf/widget/TeleConfAvatar;

    .line 119
    sget v11, Leuj$i;->external_contact_icon:I

    invoke-virtual {v6, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    .line 3885
    iput-object v11, v5, Leur$c;->c:Landroid/widget/ImageView;

    .line 120
    sget v11, Leuj$i;->tv_name:I

    invoke-virtual {v6, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 4885
    iput-object v11, v5, Leur$c;->d:Landroid/widget/TextView;

    .line 121
    sget v11, Leuj$i;->item_call_status_icon:I

    invoke-virtual {v6, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 5885
    iput-object v11, v5, Leur$c;->e:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 122
    sget v11, Leuj$i;->item_call_type:I

    invoke-virtual {v6, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 6885
    iput-object v11, v5, Leur$c;->f:Landroid/widget/TextView;

    .line 123
    sget v11, Leuj$i;->tv_begin_time:I

    invoke-virtual {v6, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 7885
    iput-object v11, v5, Leur$c;->g:Landroid/widget/TextView;

    .line 124
    sget v11, Leuj$i;->tv_invite_user_area:I

    invoke-virtual {v6, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .line 8885
    iput-object v11, v5, Leur$c;->i:Landroid/view/View;

    .line 126
    sget v11, Leuj$i;->add_external_contact_layout:I

    invoke-virtual {v6, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .line 9885
    iput-object v11, v5, Leur$c;->j:Landroid/view/View;

    .line 127
    sget v11, Leuj$i;->write_visit_record_layout:I

    invoke-virtual {v6, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .line 10885
    iput-object v11, v5, Leur$c;->k:Landroid/view/View;

    .line 128
    sget v11, Leuj$i;->jump_to_call_setting:I

    invoke-virtual {v6, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .line 11885
    iput-object v11, v5, Leur$c;->l:Landroid/view/View;

    .line 130
    sget v11, Leuj$i;->tv_call:I

    invoke-virtual {v6, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .line 12885
    iput-object v11, v5, Leur$c;->h:Landroid/view/View;

    .line 131
    sget v11, Leuj$i;->tv_item_line:I

    invoke-virtual {v6, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .line 13885
    iput-object v11, v5, Leur$c;->m:Landroid/view/View;

    .line 133
    invoke-virtual {v6, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 194
    .end local v4    # "inflater":Landroid/view/LayoutInflater;
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v11, v0, Leur;->a:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    move/from16 v0, p1

    if-lt v0, v11, :cond_f

    .line 215
    :cond_1
    :goto_1
    return-object v6

    .line 135
    .restart local v4    # "inflater":Landroid/view/LayoutInflater;
    :cond_2
    sget-object v11, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject$InfoItemType;->InfoHeader:Lcom/alibaba/android/teleconf/data/TeleConfRecordObject$InfoItemType;

    invoke-virtual {v11}, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject$InfoItemType;->ordinal()I

    move-result v11

    if-ne v9, v11, :cond_3

    .line 14858
    sget v11, Leuj$j;->layout_conf_record_header_item:I

    .line 136
    const/4 v12, 0x0

    invoke-virtual {v4, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    goto :goto_0

    .line 137
    :cond_3
    sget-object v11, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject$InfoItemType;->InfoItemVirtual:Lcom/alibaba/android/teleconf/data/TeleConfRecordObject$InfoItemType;

    invoke-virtual {v11}, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject$InfoItemType;->ordinal()I

    move-result v11

    if-ne v9, v11, :cond_4

    .line 14862
    sget v11, Leuj$j;->layout_conf_record_item_virtual:I

    .line 138
    const/4 v12, 0x0

    invoke-virtual {v4, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 139
    new-instance v10, Leur$f;

    .end local v10    # "virtualHolder":Leur$f;
    const/4 v11, 0x0

    move-object/from16 v0, p0

    invoke-direct {v10, v0, v11}, Leur$f;-><init>(Leur;B)V

    .line 140
    .restart local v10    # "virtualHolder":Leur$f;
    sget v11, Leuj$i;->item_view:I

    invoke-virtual {v6, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .line 14905
    iput-object v11, v10, Leur$f;->a:Landroid/view/View;

    .line 141
    sget v11, Leuj$i;->item_content_layout:I

    invoke-virtual {v6, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .line 15905
    iput-object v11, v10, Leur$f;->b:Landroid/view/View;

    .line 142
    sget v11, Leuj$i;->item_left_icon:I

    invoke-virtual {v6, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 16905
    iput-object v11, v10, Leur$f;->c:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 143
    sget v11, Leuj$i;->tv_name:I

    invoke-virtual {v6, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 17905
    iput-object v11, v10, Leur$f;->d:Landroid/widget/TextView;

    .line 144
    sget v11, Leuj$i;->tv_title:I

    invoke-virtual {v6, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 18905
    iput-object v11, v10, Leur$f;->e:Landroid/widget/TextView;

    .line 145
    sget v11, Leuj$i;->item_right_arrow:I

    invoke-virtual {v6, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 19905
    iput-object v11, v10, Leur$f;->f:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 147
    sget v11, Leuj$i;->item_ad_icon:I

    invoke-virtual {v6, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/alibaba/android/dingtalkbase/widgets/RoundedImageView;

    .line 20905
    iput-object v11, v10, Leur$f;->g:Lcom/alibaba/android/dingtalkbase/widgets/RoundedImageView;

    .line 149
    invoke-virtual {v6, v10}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 150
    :cond_4
    sget-object v11, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject$InfoItemType;->InfoItemContact:Lcom/alibaba/android/teleconf/data/TeleConfRecordObject$InfoItemType;

    invoke-virtual {v11}, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject$InfoItemType;->ordinal()I

    move-result v11

    if-eq v9, v11, :cond_5

    sget-object v11, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject$InfoItemType;->InfoItemFunctions:Lcom/alibaba/android/teleconf/data/TeleConfRecordObject$InfoItemType;

    .line 151
    invoke-virtual {v11}, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject$InfoItemType;->ordinal()I

    move-result v11

    if-ne v9, v11, :cond_6

    .line 21866
    :cond_5
    sget v11, Leuj$j;->layout_conf_record_item_contact:I

    .line 152
    const/4 v12, 0x0

    invoke-virtual {v4, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 153
    new-instance v2, Leur$a;

    .end local v2    # "contactHolder":Leur$a;
    const/4 v11, 0x0

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v11}, Leur$a;-><init>(Leur;B)V

    .line 154
    .restart local v2    # "contactHolder":Leur$a;
    sget v11, Leuj$i;->item_content_layout:I

    invoke-virtual {v6, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .line 21915
    iput-object v11, v2, Leur$a;->a:Landroid/view/View;

    .line 155
    sget v11, Leuj$i;->item_function_grid:I

    invoke-virtual {v6, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/alibaba/android/teleconf/widget/UnFoldGridView;

    .line 22915
    iput-object v11, v2, Leur$a;->b:Lcom/alibaba/android/teleconf/widget/UnFoldGridView;

    .line 157
    invoke-virtual {v6, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 158
    :cond_6
    sget-object v11, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject$InfoItemType;->InfoEmpty:Lcom/alibaba/android/teleconf/data/TeleConfRecordObject$InfoItemType;

    invoke-virtual {v11}, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject$InfoItemType;->ordinal()I

    move-result v11

    if-ne v9, v11, :cond_7

    .line 23874
    sget v11, Leuj$j;->layout_conf_no_records:I

    .line 159
    const/4 v12, 0x0

    invoke-virtual {v4, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    goto/16 :goto_0

    .line 160
    :cond_7
    sget-object v11, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject$InfoItemType;->InfoEmptyGrant:Lcom/alibaba/android/teleconf/data/TeleConfRecordObject$InfoItemType;

    invoke-virtual {v11}, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject$InfoItemType;->ordinal()I

    move-result v11

    if-ne v9, v11, :cond_8

    .line 24870
    sget v11, Leuj$j;->layout_conf_no_records_permission_grant:I

    .line 161
    const/4 v12, 0x0

    invoke-virtual {v4, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 162
    new-instance v3, Leur$b;

    .end local v3    # "emptyGrantHolder":Leur$b;
    const/4 v11, 0x0

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v11}, Leur$b;-><init>(Leur;B)V

    .line 163
    .restart local v3    # "emptyGrantHolder":Leur$b;
    sget v11, Leuj$i;->grant_setting:I

    invoke-virtual {v6, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iput-object v11, v3, Leur$b;->a:Landroid/widget/TextView;

    .line 165
    invoke-virtual {v6, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 166
    :cond_8
    sget-object v11, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject$InfoItemType;->InfoItemRunning:Lcom/alibaba/android/teleconf/data/TeleConfRecordObject$InfoItemType;

    invoke-virtual {v11}, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject$InfoItemType;->ordinal()I

    move-result v11

    if-ne v9, v11, :cond_0

    .line 24878
    sget v11, Leuj$j;->layout_conf_record_running_item:I

    .line 167
    const/4 v12, 0x0

    invoke-virtual {v4, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 168
    new-instance v8, Leur$d;

    .end local v8    # "runningHolder":Leur$d;
    const/4 v11, 0x0

    move-object/from16 v0, p0

    invoke-direct {v8, v0, v11}, Leur$d;-><init>(Leur;B)V

    .line 169
    .restart local v8    # "runningHolder":Leur$d;
    sget v11, Leuj$i;->tv_name:I

    invoke-virtual {v6, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 24924
    iput-object v11, v8, Leur$d;->a:Landroid/widget/TextView;

    .line 170
    sget v11, Leuj$i;->item_call_status_icon:I

    invoke-virtual {v6, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 25924
    iput-object v11, v8, Leur$d;->b:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 171
    sget v11, Leuj$i;->item_call_type:I

    invoke-virtual {v6, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 26924
    iput-object v11, v8, Leur$d;->c:Landroid/widget/TextView;

    .line 172
    sget v11, Leuj$i;->tv_begin_time:I

    invoke-virtual {v6, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 27924
    iput-object v11, v8, Leur$d;->d:Landroid/widget/TextView;

    .line 174
    sget v11, Leuj$i;->item_running_status_icon:I

    invoke-virtual {v6, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    .line 28924
    iput-object v11, v8, Leur$d;->e:Landroid/widget/ImageView;

    .line 175
    sget v11, Leuj$i;->tv_item_line:I

    invoke-virtual {v6, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .line 29924
    iput-object v11, v8, Leur$d;->f:Landroid/view/View;

    .line 177
    invoke-virtual {v6, v8}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 180
    .end local v4    # "inflater":Landroid/view/LayoutInflater;
    :cond_9
    sget-object v11, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject$InfoItemType;->InfoItem:Lcom/alibaba/android/teleconf/data/TeleConfRecordObject$InfoItemType;

    invoke-virtual {v11}, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject$InfoItemType;->ordinal()I

    move-result v11

    if-ne v9, v11, :cond_a

    .line 181
    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "itemHolder":Leur$c;
    check-cast v5, Leur$c;

    .restart local v5    # "itemHolder":Leur$c;
    goto/16 :goto_0

    .line 182
    :cond_a
    sget-object v11, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject$InfoItemType;->InfoItemVirtual:Lcom/alibaba/android/teleconf/data/TeleConfRecordObject$InfoItemType;

    invoke-virtual {v11}, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject$InfoItemType;->ordinal()I

    move-result v11

    if-ne v9, v11, :cond_b

    .line 183
    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "virtualHolder":Leur$f;
    check-cast v10, Leur$f;

    .restart local v10    # "virtualHolder":Leur$f;
    goto/16 :goto_0

    .line 184
    :cond_b
    sget-object v11, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject$InfoItemType;->InfoItemContact:Lcom/alibaba/android/teleconf/data/TeleConfRecordObject$InfoItemType;

    invoke-virtual {v11}, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject$InfoItemType;->ordinal()I

    move-result v11

    if-eq v9, v11, :cond_c

    sget-object v11, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject$InfoItemType;->InfoItemFunctions:Lcom/alibaba/android/teleconf/data/TeleConfRecordObject$InfoItemType;

    .line 185
    invoke-virtual {v11}, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject$InfoItemType;->ordinal()I

    move-result v11

    if-ne v9, v11, :cond_d

    .line 186
    :cond_c
    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "contactHolder":Leur$a;
    check-cast v2, Leur$a;

    .restart local v2    # "contactHolder":Leur$a;
    goto/16 :goto_0

    .line 187
    :cond_d
    sget-object v11, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject$InfoItemType;->InfoEmptyGrant:Lcom/alibaba/android/teleconf/data/TeleConfRecordObject$InfoItemType;

    invoke-virtual {v11}, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject$InfoItemType;->ordinal()I

    move-result v11

    if-ne v9, v11, :cond_e

    .line 188
    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "emptyGrantHolder":Leur$b;
    check-cast v3, Leur$b;

    .restart local v3    # "emptyGrantHolder":Leur$b;
    goto/16 :goto_0

    .line 189
    :cond_e
    sget-object v11, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject$InfoItemType;->InfoItemRunning:Lcom/alibaba/android/teleconf/data/TeleConfRecordObject$InfoItemType;

    invoke-virtual {v11}, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject$InfoItemType;->ordinal()I

    move-result v11

    if-ne v9, v11, :cond_0

    .line 190
    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "runningHolder":Leur$d;
    check-cast v8, Leur$d;

    .restart local v8    # "runningHolder":Leur$d;
    goto/16 :goto_0

    .line 199
    :cond_f
    move-object/from16 v0, p0

    iget-object v11, v0, Leur;->a:Ljava/util/List;

    move/from16 v0, p1

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;

    .line 200
    .local v7, "record":Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;
    if-eqz v7, :cond_1

    .line 201
    if-eqz v5, :cond_2f

    .line 30405
    if-ltz p1, :cond_10

    if-eqz v5, :cond_10

    if-nez v7, :cond_11

    .line 50913
    :cond_10
    :goto_2
    if-eqz v5, :cond_1

    if-ltz p1, :cond_1

    if-eqz v7, :cond_1

    .line 50916
    iget-object v11, v7, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;->h:Lcom/alibaba/android/teleconf/data/ConfRecordItem;

    .line 50917
    if-eqz v11, :cond_1

    .line 51024
    iget-object v12, v5, Leur$c;->h:Landroid/view/View;

    .line 50921
    new-instance v13, Leur$3;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v11}, Leur$3;-><init>(Leur;Lcom/alibaba/android/teleconf/data/ConfRecordItem;)V

    invoke-virtual {v12, v13}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51025
    iget-object v12, v5, Leur$c;->i:Landroid/view/View;

    .line 50930
    new-instance v13, Leur$4;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v11, v7}, Leur$4;-><init>(Leur;Lcom/alibaba/android/teleconf/data/ConfRecordItem;Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;)V

    invoke-virtual {v12, v13}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51026
    iget-object v12, v5, Leur$c;->j:Landroid/view/View;

    .line 50960
    new-instance v13, Leur$5;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v11}, Leur$5;-><init>(Leur;Lcom/alibaba/android/teleconf/data/ConfRecordItem;)V

    invoke-virtual {v12, v13}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51027
    iget-object v12, v5, Leur$c;->k:Landroid/view/View;

    .line 50971
    new-instance v13, Leur$6;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v11}, Leur$6;-><init>(Leur;Lcom/alibaba/android/teleconf/data/ConfRecordItem;)V

    invoke-virtual {v12, v13}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51028
    iget-object v12, v5, Leur$c;->a:Landroid/view/View;

    .line 50981
    new-instance v13, Leur$7;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v11}, Leur$7;-><init>(Leur;Lcom/alibaba/android/teleconf/data/ConfRecordItem;)V

    invoke-virtual {v12, v13}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51029
    iget-object v11, v5, Leur$c;->l:Landroid/view/View;

    .line 51009
    new-instance v12, Leur$8;

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v7, v5}, Leur$8;-><init>(Leur;Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;Leur$c;)V

    invoke-virtual {v11, v12}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    .line 30408
    :cond_11
    iget-object v15, v7, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;->h:Lcom/alibaba/android/teleconf/data/ConfRecordItem;

    .line 30409
    if-eqz v15, :cond_10

    .line 30412
    sget-object v11, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject$InfoItemType;->InfoItem:Lcom/alibaba/android/teleconf/data/TeleConfRecordObject$InfoItemType;

    iget-object v12, v7, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;->a:Lcom/alibaba/android/teleconf/data/TeleConfRecordObject$InfoItemType;

    if-ne v11, v12, :cond_10

    .line 30413
    invoke-virtual {v15}, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->isSystemCallLog()Z

    move-result v11

    if-eqz v11, :cond_1c

    .line 30885
    iget-object v11, v5, Leur$c;->b:Lcom/alibaba/android/teleconf/widget/TeleConfAvatar;

    .line 30513
    iget-object v12, v15, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->targetNicks:Ljava/lang/String;

    invoke-virtual {v11, v12}, Lcom/alibaba/android/teleconf/widget/TeleConfAvatar;->setAvatar(Ljava/lang/String;)V

    .line 31885
    iget-object v11, v5, Leur$c;->d:Landroid/widget/TextView;

    .line 30514
    iget-object v12, v15, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->targetNicks:Ljava/lang/String;

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 30515
    invoke-virtual {v15}, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->isOutgoing()Z

    move-result v11

    if-nez v11, :cond_1b

    .line 30516
    iget-wide v12, v15, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->lastTime:J

    const-wide/16 v16, 0x0

    cmp-long v11, v12, v16

    if-nez v11, :cond_1a

    .line 30517
    move-object/from16 v0, p0

    iget-object v11, v0, Leur;->d:Ljava/lang/String;

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    iget-object v14, v15, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->targetNicks:Ljava/lang/String;

    aput-object v14, v12, v13

    const/4 v13, 0x1

    iget v14, v15, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->noAnswerCount:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Leur;->e:Ljava/lang/String;

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    iget-object v0, v15, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->targetNicks:Ljava/lang/String;

    move-object/from16 v16, v0

    aput-object v16, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 32885
    iget-object v13, v5, Leur$c;->d:Landroid/widget/TextView;

    .line 32663
    move-object/from16 v0, p0

    iget-object v14, v0, Leur;->b:Landroid/app/Activity;

    invoke-virtual {v14}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    sget v16, Leuj$f;->uidic_global_color_c3:I

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setTextColor(I)V

    .line 32664
    iget v13, v15, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->noAnswerCount:I

    const/4 v14, 0x1

    if-le v13, v14, :cond_19

    iget v13, v15, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->noAnswerCount:I

    const/16 v14, 0x64

    if-ge v13, v14, :cond_19

    .line 33885
    iget-object v12, v5, Leur$c;->d:Landroid/widget/TextView;

    .line 32665
    invoke-virtual {v12, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 35885
    :cond_12
    :goto_3
    iget-object v11, v5, Leur$c;->e:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 32671
    sget v12, Leuj$l;->icon_callrecord:I

    invoke-virtual {v11, v12}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setText(I)V

    .line 36885
    iget-object v11, v5, Leur$c;->e:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 32672
    move-object/from16 v0, p0

    iget-object v12, v0, Leur;->b:Landroid/app/Activity;

    invoke-virtual {v12}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Leuj$f;->ui_common_alert_icon_bg_color:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getColor(I)I

    move-result v12

    invoke-virtual {v11, v12}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setTextColor(I)V

    .line 37885
    iget-object v11, v5, Leur$c;->f:Landroid/widget/TextView;

    .line 32673
    move-object/from16 v0, p0

    iget-object v12, v0, Leur;->b:Landroid/app/Activity;

    invoke-virtual {v12}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Leuj$f;->ui_common_alert_text_color:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getColor(I)I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setTextColor(I)V

    .line 38885
    iget-object v11, v5, Leur$c;->g:Landroid/widget/TextView;

    .line 32674
    move-object/from16 v0, p0

    iget-object v12, v0, Leur;->b:Landroid/app/Activity;

    invoke-virtual {v12}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Leuj$f;->ui_common_alert_text_color:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getColor(I)I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setTextColor(I)V

    .line 30419
    :goto_4
    iget v11, v15, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->callType:I

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Leur;->a(I)Ljava/lang/String;

    move-result-object v11

    .line 30420
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_23

    .line 48885
    iget-object v11, v5, Leur$c;->f:Landroid/widget/TextView;

    .line 30421
    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 50886
    :goto_5
    iget-object v11, v5, Leur$c;->g:Landroid/widget/TextView;

    .line 30427
    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 30428
    iget-wide v12, v15, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->beginTime:J

    const-wide/16 v16, 0x3e8

    mul-long v12, v12, v16

    .line 50887
    invoke-static {v12, v13}, Leyr;->a(J)Ljava/lang/String;

    move-result-object v12

    .line 30429
    const/4 v11, 0x0

    .line 30430
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_24

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v13

    invoke-virtual {v13}, Lcid;->c()Landroid/app/Application;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    sget v14, Leuj$l;->calendar_today:I

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_24

    .line 50888
    iget-object v13, v5, Leur$c;->g:Landroid/widget/TextView;

    .line 30431
    invoke-virtual {v13, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 30438
    :goto_6
    move-object/from16 v0, p0

    iget-object v12, v0, Leur;->a:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    move/from16 v0, p1

    if-ne v0, v12, :cond_25

    .line 50891
    iget-object v12, v5, Leur$c;->m:Landroid/view/View;

    .line 30439
    const/16 v13, 0x8

    invoke-virtual {v12, v13}, Landroid/view/View;->setVisibility(I)V

    .line 30444
    :goto_7
    iget-object v12, v7, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;->k:Ljava/lang/Boolean;

    if-eqz v12, :cond_26

    iget-object v12, v7, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;->k:Ljava/lang/Boolean;

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    if-eqz v12, :cond_26

    .line 50893
    iget-object v12, v5, Leur$c;->l:Landroid/view/View;

    .line 30445
    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/view/View;->setVisibility(I)V

    .line 30450
    :goto_8
    const/4 v13, 0x0

    .line 30451
    const/4 v12, 0x0

    .line 30453
    invoke-virtual {v15}, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->isShowPotentialCustomer()Z

    move-result v16

    .line 30455
    iget-object v14, v15, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->isExternal:Ljava/lang/Boolean;

    if-eqz v14, :cond_13

    invoke-virtual {v15}, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->isOrgOpenExternalFunction()Z

    move-result v14

    if-nez v14, :cond_27

    .line 50895
    :cond_13
    iget-object v11, v5, Leur$c;->c:Landroid/widget/ImageView;

    .line 30456
    const/16 v14, 0x8

    invoke-virtual {v11, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 50896
    iget-object v11, v5, Leur$c;->k:Landroid/view/View;

    .line 30457
    const/16 v14, 0x8

    invoke-virtual {v11, v14}, Landroid/view/View;->setVisibility(I)V

    .line 50897
    iget-object v11, v5, Leur$c;->j:Landroid/view/View;

    .line 30467
    :goto_9
    const/16 v14, 0x8

    move/from16 v18, v14

    move v14, v13

    move-object v13, v11

    move/from16 v11, v18

    :goto_a
    invoke-virtual {v13, v11}, Landroid/view/View;->setVisibility(I)V

    .line 30470
    invoke-virtual {v15}, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->isPhoneNumExist()Z

    move-result v11

    .line 30471
    invoke-virtual {v15}, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->isBizCall()Z

    move-result v13

    if-nez v13, :cond_14

    invoke-virtual {v15}, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->isSystemCall()Z

    move-result v13

    if-eqz v13, :cond_15

    :cond_14
    if-eqz v11, :cond_15

    .line 30472
    iget-object v11, v15, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->targetNicks:Ljava/lang/String;

    iget-object v13, v15, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->phoneNum:Ljava/lang/String;

    invoke-static {v11, v13}, Leyv;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    .line 30473
    if-eqz v11, :cond_15

    .line 50901
    iget-object v11, v5, Leur$c;->d:Landroid/widget/TextView;

    .line 30474
    iget-object v13, v15, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->phoneNum:Ljava/lang/String;

    invoke-static {v13}, Leyv;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50902
    :cond_15
    iget-object v13, v5, Leur$c;->h:Landroid/view/View;

    .line 30477
    if-nez v14, :cond_16

    if-eqz v12, :cond_2c

    :cond_16
    const/16 v11, 0x8

    :goto_b
    invoke-virtual {v13, v11}, Landroid/view/View;->setVisibility(I)V

    .line 30479
    const/4 v11, 0x0

    .line 30480
    move-object/from16 v0, p0

    iget-boolean v12, v0, Leur;->g:Z

    if-eqz v12, :cond_17

    .line 30481
    iget-boolean v12, v15, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->isYourVIP:Z

    if-eqz v12, :cond_2d

    .line 50903
    iget-object v11, v5, Leur$c;->d:Landroid/widget/TextView;

    .line 30482
    const/4 v12, 0x0

    const/4 v13, 0x0

    sget v14, Leuj$h;->teleconf_vip_card:I

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v11, v12, v13, v14, v0}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 50904
    iget-object v11, v5, Leur$c;->d:Landroid/widget/TextView;

    .line 30483
    move-object/from16 v0, p0

    iget-object v12, v0, Leur;->b:Landroid/app/Activity;

    const/high16 v13, 0x40a00000    # 5.0f

    invoke-static {v12, v13}, Lcms;->c(Landroid/content/Context;F)I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 30485
    const/4 v11, 0x1

    .line 30498
    :cond_17
    :goto_c
    if-nez v11, :cond_18

    invoke-virtual {v15}, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->isSystemCallLog()Z

    move-result v12

    if-eqz v12, :cond_18

    .line 50909
    iget-object v11, v5, Leur$c;->d:Landroid/widget/TextView;

    .line 30499
    const/4 v12, 0x0

    const/4 v13, 0x0

    sget v14, Leuj$h;->teleconf_icon_mobile:I

    const/4 v15, 0x0

    invoke-virtual {v11, v12, v13, v14, v15}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 50910
    iget-object v11, v5, Leur$c;->d:Landroid/widget/TextView;

    .line 30500
    move-object/from16 v0, p0

    iget-object v12, v0, Leur;->b:Landroid/app/Activity;

    const/high16 v13, 0x40a00000    # 5.0f

    invoke-static {v12, v13}, Lcms;->c(Landroid/content/Context;F)I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 30502
    const/4 v11, 0x1

    .line 30505
    :cond_18
    if-nez v11, :cond_10

    .line 50911
    iget-object v11, v5, Leur$c;->d:Landroid/widget/TextView;

    .line 30506
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v11, v12, v13, v14, v15}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 50912
    iget-object v11, v5, Leur$c;->d:Landroid/widget/TextView;

    .line 30507
    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    goto/16 :goto_2

    .line 32666
    :cond_19
    iget v11, v15, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->noAnswerCount:I

    const/16 v13, 0x64

    if-lt v11, v13, :cond_12

    .line 34885
    iget-object v11, v5, Leur$c;->d:Landroid/widget/TextView;

    .line 32667
    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 30519
    :cond_1a
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Leur;->b(Leur$e;)V

    goto/16 :goto_4

    .line 30522
    :cond_1b
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Leur;->a(Leur$e;)V

    goto/16 :goto_4

    .line 39885
    :cond_1c
    iget-object v11, v5, Leur$c;->b:Lcom/alibaba/android/teleconf/widget/TeleConfAvatar;

    .line 39527
    iget-object v12, v7, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;->i:Ljava/util/List;

    invoke-virtual {v11, v12}, Lcom/alibaba/android/teleconf/widget/TeleConfAvatar;->setAvatars(Ljava/util/List;)V

    .line 39528
    iget-wide v12, v15, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->callerId:J

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v11

    invoke-virtual {v11}, Lccr;->c()J

    move-result-wide v16

    cmp-long v11, v12, v16

    if-eqz v11, :cond_1d

    const/4 v11, 0x1

    .line 39529
    :goto_d
    invoke-virtual {v15}, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->isMultiUserCall()Z

    move-result v12

    if-eqz v12, :cond_1f

    .line 39530
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v15}, Leur;->a(Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;Lcom/alibaba/android/teleconf/data/ConfRecordItem;)Ljava/lang/String;

    move-result-object v12

    .line 40885
    iget-object v13, v5, Leur$c;->d:Landroid/widget/TextView;

    .line 39531
    invoke-virtual {v13, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 39532
    if-eqz v11, :cond_1e

    .line 39533
    move-object/from16 v0, p0

    iget-object v11, v0, Leur;->d:Ljava/lang/String;

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v12, v13, v14

    const/4 v14, 0x1

    iget v0, v15, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->noAnswerCount:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v13, v14

    invoke-static {v11, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v13, v0, Leur;->e:Ljava/lang/String;

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v12, v14, v16

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v15, v11, v12}, Leur;->a(Leur$c;Lcom/alibaba/android/teleconf/data/ConfRecordItem;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 39528
    :cond_1d
    const/4 v11, 0x0

    goto :goto_d

    .line 39535
    :cond_1e
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Leur;->a(Leur$e;)V

    goto/16 :goto_4

    .line 39538
    :cond_1f
    invoke-virtual {v15}, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->isSingleUserCall()Z

    move-result v12

    if-eqz v12, :cond_21

    .line 41885
    iget-object v12, v5, Leur$c;->d:Landroid/widget/TextView;

    .line 39539
    iget-object v13, v15, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->targetNicks:Ljava/lang/String;

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 39540
    if-eqz v11, :cond_20

    .line 39541
    move-object/from16 v0, p0

    iget-object v11, v0, Leur;->d:Ljava/lang/String;

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    iget-object v14, v15, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->targetNicks:Ljava/lang/String;

    aput-object v14, v12, v13

    const/4 v13, 0x1

    iget v14, v15, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->noAnswerCount:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Leur;->e:Ljava/lang/String;

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    iget-object v0, v15, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->targetNicks:Ljava/lang/String;

    move-object/from16 v16, v0

    aput-object v16, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v15, v11, v12}, Leur;->a(Leur$c;Lcom/alibaba/android/teleconf/data/ConfRecordItem;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 39543
    :cond_20
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Leur;->a(Leur$e;)V

    goto/16 :goto_4

    .line 42885
    :cond_21
    iget-object v12, v5, Leur$c;->d:Landroid/widget/TextView;

    .line 39546
    iget-object v13, v15, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->targetNicks:Ljava/lang/String;

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43885
    iget-object v12, v5, Leur$c;->d:Landroid/widget/TextView;

    .line 39548
    move-object/from16 v0, p0

    iget-object v13, v0, Leur;->b:Landroid/app/Activity;

    invoke-virtual {v13}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    sget v14, Leuj$f;->black:I

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getColor(I)I

    move-result v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setTextColor(I)V

    .line 44885
    iget-object v12, v5, Leur$c;->e:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 39549
    if-eqz v11, :cond_22

    sget v11, Leuj$l;->icon_callrecord:I

    :goto_e
    invoke-virtual {v12, v11}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setText(I)V

    .line 45885
    iget-object v11, v5, Leur$c;->e:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 39550
    move-object/from16 v0, p0

    iget-object v12, v0, Leur;->b:Landroid/app/Activity;

    invoke-virtual {v12}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Leuj$f;->ui_common_level1_icon_bg_color:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getColor(I)I

    move-result v12

    invoke-virtual {v11, v12}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setTextColor(I)V

    .line 46885
    iget-object v11, v5, Leur$c;->f:Landroid/widget/TextView;

    .line 39551
    move-object/from16 v0, p0

    iget-object v12, v0, Leur;->b:Landroid/app/Activity;

    invoke-virtual {v12}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Leuj$f;->ui_common_level3_text_color:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getColor(I)I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setTextColor(I)V

    .line 47885
    iget-object v11, v5, Leur$c;->g:Landroid/widget/TextView;

    .line 39552
    move-object/from16 v0, p0

    iget-object v12, v0, Leur;->b:Landroid/app/Activity;

    invoke-virtual {v12}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Leuj$f;->ui_common_level3_text_color:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getColor(I)I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_4

    .line 39549
    :cond_22
    sget v11, Leuj$l;->icon_dialrecord:I

    goto :goto_e

    .line 49885
    :cond_23
    iget-object v12, v5, Leur$c;->f:Landroid/widget/TextView;

    .line 30423
    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 50885
    iget-object v12, v5, Leur$c;->f:Landroid/widget/TextView;

    .line 30424
    invoke-virtual {v12, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 30433
    :cond_24
    const/4 v11, 0x1

    .line 30434
    iget-wide v12, v15, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->beginTime:J

    const-wide/16 v16, 0x3e8

    mul-long v12, v12, v16

    .line 50889
    invoke-static {v12, v13}, Leyr;->b(J)Ljava/lang/String;

    move-result-object v12

    .line 50890
    iget-object v13, v5, Leur$c;->g:Landroid/widget/TextView;

    .line 30435
    invoke-virtual {v13, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    .line 50892
    :cond_25
    iget-object v12, v5, Leur$c;->m:Landroid/view/View;

    .line 30441
    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_7

    .line 50894
    :cond_26
    iget-object v12, v5, Leur$c;->l:Landroid/view/View;

    .line 30447
    const/16 v13, 0x8

    invoke-virtual {v12, v13}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_8

    .line 50898
    :cond_27
    iget-object v13, v5, Leur$c;->c:Landroid/widget/ImageView;

    .line 30461
    invoke-virtual {v15}, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->isBizCall()Z

    move-result v12

    if-eqz v12, :cond_28

    invoke-virtual {v15}, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->isExternal()Z

    move-result v12

    if-eqz v12, :cond_28

    const/4 v12, 0x0

    :goto_f
    invoke-virtual {v13, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 30463
    if-eqz v11, :cond_29

    invoke-virtual {v15}, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->isShowWriteVisitRecord()Z

    move-result v12

    if-eqz v12, :cond_29

    if-nez v16, :cond_29

    const/4 v12, 0x1

    .line 50899
    :goto_10
    iget-object v14, v5, Leur$c;->k:Landroid/view/View;

    .line 30464
    if-eqz v12, :cond_2a

    const/4 v13, 0x0

    :goto_11
    invoke-virtual {v14, v13}, Landroid/view/View;->setVisibility(I)V

    .line 30466
    invoke-virtual {v15}, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->isCanShowAddExternal()Z

    move-result v13

    if-eqz v13, :cond_2b

    if-eqz v11, :cond_2b

    invoke-virtual {v15}, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->isShowAddExternalContact()Z

    move-result v11

    if-eqz v11, :cond_2b

    if-nez v16, :cond_2b

    const/4 v11, 0x1

    .line 50900
    :goto_12
    iget-object v13, v5, Leur$c;->j:Landroid/view/View;

    .line 30467
    if-eqz v11, :cond_44

    const/4 v14, 0x0

    move/from16 v18, v14

    move v14, v12

    move v12, v11

    move/from16 v11, v18

    goto/16 :goto_a

    .line 30461
    :cond_28
    const/16 v12, 0x8

    goto :goto_f

    .line 30463
    :cond_29
    const/4 v12, 0x0

    goto :goto_10

    .line 30464
    :cond_2a
    const/16 v13, 0x8

    goto :goto_11

    .line 30466
    :cond_2b
    const/4 v11, 0x0

    goto :goto_12

    .line 30477
    :cond_2c
    const/4 v11, 0x0

    goto/16 :goto_b

    .line 30486
    :cond_2d
    if-eqz v16, :cond_2e

    .line 50905
    iget-object v11, v5, Leur$c;->d:Landroid/widget/TextView;

    .line 30487
    const/4 v12, 0x0

    const/4 v13, 0x0

    sget v14, Leuj$h;->teleconf_potential_customer:I

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v11, v12, v13, v14, v0}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 50906
    iget-object v11, v5, Leur$c;->d:Landroid/widget/TextView;

    .line 30488
    move-object/from16 v0, p0

    iget-object v12, v0, Leur;->b:Landroid/app/Activity;

    const/high16 v13, 0x40a00000    # 5.0f

    invoke-static {v12, v13}, Lcms;->c(Landroid/content/Context;F)I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 30490
    const/4 v11, 0x1

    goto/16 :goto_c

    .line 30491
    :cond_2e
    iget v12, v7, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;->l:I

    const/4 v13, 0x2

    if-gt v12, v13, :cond_17

    invoke-virtual {v15}, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->isDingSimCard()Z

    move-result v12

    if-eqz v12, :cond_17

    .line 50907
    iget-object v11, v5, Leur$c;->d:Landroid/widget/TextView;

    .line 30492
    const/4 v12, 0x0

    const/4 v13, 0x0

    sget v14, Leuj$h;->teleconf_ding_card:I

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v11, v12, v13, v14, v0}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 50908
    iget-object v11, v5, Leur$c;->d:Landroid/widget/TextView;

    .line 30493
    move-object/from16 v0, p0

    iget-object v12, v0, Leur;->b:Landroid/app/Activity;

    const/high16 v13, 0x40a00000    # 5.0f

    invoke-static {v12, v13}, Lcms;->c(Landroid/content/Context;F)I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 30495
    const/4 v11, 0x1

    goto/16 :goto_c

    .line 204
    :cond_2f
    if-eqz v10, :cond_37

    .line 51030
    if-eqz v7, :cond_1

    if-eqz v10, :cond_1

    .line 51033
    sget-object v11, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject$InfoItemType;->InfoItemVirtual:Lcom/alibaba/android/teleconf/data/TeleConfRecordObject$InfoItemType;

    iget-object v12, v7, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;->a:Lcom/alibaba/android/teleconf/data/TeleConfRecordObject$InfoItemType;

    if-ne v11, v12, :cond_1

    .line 51034
    iget-object v11, v7, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;->m:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_30

    .line 51088
    iget-object v11, v10, Leur$f;->b:Landroid/view/View;

    .line 51035
    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/view/View;->setVisibility(I)V

    .line 51089
    iget-object v11, v10, Leur$f;->g:Lcom/alibaba/android/dingtalkbase/widgets/RoundedImageView;

    .line 51036
    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/alibaba/android/dingtalkbase/widgets/RoundedImageView;->setVisibility(I)V

    .line 51038
    invoke-static {}, Levx;->a()Levx;

    move-result-object v11

    .line 51090
    iget-object v12, v10, Leur$f;->g:Lcom/alibaba/android/dingtalkbase/widgets/RoundedImageView;

    .line 51038
    iget-object v13, v7, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;->m:Ljava/lang/String;

    invoke-virtual {v11, v12, v13}, Levx;->a(Landroid/widget/ImageView;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 51091
    :cond_30
    iget-object v11, v10, Leur$f;->b:Landroid/view/View;

    .line 51040
    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/view/View;->setVisibility(I)V

    .line 51092
    iget-object v11, v10, Leur$f;->g:Lcom/alibaba/android/dingtalkbase/widgets/RoundedImageView;

    .line 51041
    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Lcom/alibaba/android/dingtalkbase/widgets/RoundedImageView;->setVisibility(I)V

    .line 51093
    iget-object v11, v10, Leur$f;->d:Landroid/widget/TextView;

    .line 51043
    iget-object v12, v7, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;->b:Ljava/lang/String;

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51044
    iget-object v11, v7, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;->c:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_34

    .line 51094
    iget-object v11, v10, Leur$f;->e:Landroid/widget/TextView;

    .line 51045
    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 51051
    :goto_13
    iget-object v11, v7, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;->e:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_35

    .line 51097
    iget-object v11, v10, Leur$f;->c:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 51052
    const-string/jumbo v12, ""

    iget-object v13, v7, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;->e:Ljava/lang/String;

    invoke-virtual {v11, v12, v13}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 51098
    iget-object v11, v10, Leur$f;->c:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 51053
    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setVisibility(I)V

    .line 51060
    :goto_14
    :try_start_0
    iget-object v11, v7, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;->g:Lcom/alibaba/android/teleconf/data/TeleConfRecordObject$a;

    if-eqz v11, :cond_33

    .line 51061
    iget-object v11, v7, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;->g:Lcom/alibaba/android/teleconf/data/TeleConfRecordObject$a;

    iget v11, v11, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject$a;->a:I

    if-eqz v11, :cond_31

    .line 51100
    iget-object v11, v10, Leur$f;->a:Landroid/view/View;

    .line 51062
    iget-object v12, v7, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;->g:Lcom/alibaba/android/teleconf/data/TeleConfRecordObject$a;

    iget v12, v12, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject$a;->a:I

    invoke-virtual {v11, v12}, Landroid/view/View;->setBackgroundColor(I)V

    .line 51064
    :cond_31
    iget-object v11, v7, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;->g:Lcom/alibaba/android/teleconf/data/TeleConfRecordObject$a;

    iget v11, v11, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject$a;->b:I

    if-eqz v11, :cond_32

    .line 51101
    iget-object v11, v10, Leur$f;->d:Landroid/widget/TextView;

    .line 51065
    iget-object v12, v7, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;->g:Lcom/alibaba/android/teleconf/data/TeleConfRecordObject$a;

    iget v12, v12, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject$a;->b:I

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setTextColor(I)V

    .line 51067
    :cond_32
    iget-object v11, v7, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;->g:Lcom/alibaba/android/teleconf/data/TeleConfRecordObject$a;

    iget v11, v11, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject$a;->c:I

    if-eqz v11, :cond_33

    .line 51102
    iget-object v11, v10, Leur$f;->e:Landroid/widget/TextView;

    .line 51068
    iget-object v12, v7, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;->g:Lcom/alibaba/android/teleconf/data/TeleConfRecordObject$a;

    iget v12, v12, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject$a;->c:I

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setTextColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 51075
    :cond_33
    :goto_15
    iget-object v11, v7, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;->f:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_36

    .line 51103
    iget-object v11, v10, Leur$f;->f:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 51076
    const-string/jumbo v12, ""

    iget-object v13, v7, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;->f:Ljava/lang/String;

    invoke-virtual {v11, v12, v13}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 51104
    iget-object v11, v10, Leur$f;->f:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 51077
    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setVisibility(I)V

    goto/16 :goto_1

    .line 51095
    :cond_34
    iget-object v11, v10, Leur$f;->e:Landroid/widget/TextView;

    .line 51047
    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 51096
    iget-object v11, v10, Leur$f;->e:Landroid/widget/TextView;

    .line 51048
    iget-object v12, v7, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;->c:Ljava/lang/String;

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_13

    .line 51099
    :cond_35
    iget-object v11, v10, Leur$f;->c:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 51056
    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setVisibility(I)V

    goto :goto_14

    .line 51072
    :catch_0
    move-exception v11

    const-string/jumbo v11, "tele_conf"

    sget-object v12, Leur;->c:Ljava/lang/String;

    const-string/jumbo v13, "theme setting exp"

    invoke-static {v11, v12, v13}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_15

    .line 51079
    :cond_36
    move-object/from16 v0, p0

    iget-object v11, v0, Leur;->b:Landroid/app/Activity;

    invoke-virtual {v11}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    sget v12, Leuj$f;->pure_white:I

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v11

    .line 51105
    iget-object v12, v10, Leur$f;->d:Landroid/widget/TextView;

    .line 51080
    invoke-virtual {v12}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v12

    if-ne v12, v11, :cond_1

    .line 51106
    iget-object v11, v10, Leur$f;->f:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 51081
    sget v12, Leuj$h;->conf_white_right_arrow:I

    invoke-virtual {v11, v12}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 206
    :cond_37
    if-eqz v2, :cond_3b

    .line 51107
    if-eqz v2, :cond_1

    if-eqz v7, :cond_1

    .line 51110
    iget-object v11, v7, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;->a:Lcom/alibaba/android/teleconf/data/TeleConfRecordObject$InfoItemType;

    sget-object v12, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject$InfoItemType;->InfoItemFunctions:Lcom/alibaba/android/teleconf/data/TeleConfRecordObject$InfoItemType;

    if-ne v11, v12, :cond_3a

    iget-object v11, v7, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;->n:Ljava/util/List;

    if-eqz v11, :cond_3a

    iget-object v11, v7, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;->n:Ljava/util/List;

    .line 51111
    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_3a

    .line 51168
    iget-object v11, v2, Leur$a;->a:Landroid/view/View;

    .line 51112
    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/view/View;->setVisibility(I)V

    .line 51169
    iget-object v11, v2, Leur$a;->b:Lcom/alibaba/android/teleconf/widget/UnFoldGridView;

    .line 51113
    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/alibaba/android/teleconf/widget/UnFoldGridView;->setVisibility(I)V

    .line 51115
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 51116
    iget-object v11, v7, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;->n:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_38
    :goto_16
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_39

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/alibaba/android/teleconf/data/TeleCodeNumberObject;

    .line 51117
    if-eqz v11, :cond_38

    .line 51120
    new-instance v14, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;

    sget-object v15, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject$ShowType;->NormalType:Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject$ShowType;

    invoke-direct {v14, v15}, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;-><init>(Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject$ShowType;)V

    .line 51121
    iput-object v11, v14, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;->a:Ljava/lang/Object;

    .line 51123
    invoke-interface {v12, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_16

    .line 51170
    :cond_39
    iget-object v11, v2, Leur$a;->b:Lcom/alibaba/android/teleconf/widget/UnFoldGridView;

    .line 51125
    new-instance v13, Leum;

    move-object/from16 v0, p0

    iget-object v14, v0, Leur;->b:Landroid/app/Activity;

    const/4 v15, 0x0

    invoke-direct {v13, v14, v12, v15}, Leum;-><init>(Landroid/app/Activity;Ljava/util/List;I)V

    invoke-virtual {v11, v13}, Lcom/alibaba/android/teleconf/widget/UnFoldGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 51171
    iget-object v11, v2, Leur$a;->b:Lcom/alibaba/android/teleconf/widget/UnFoldGridView;

    .line 51126
    new-instance v12, Leur$2;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Leur$2;-><init>(Leur;)V

    invoke-virtual {v11, v12}, Lcom/alibaba/android/teleconf/widget/UnFoldGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto/16 :goto_1

    .line 51172
    :cond_3a
    iget-object v11, v2, Leur$a;->a:Landroid/view/View;

    .line 51164
    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/view/View;->setVisibility(I)V

    .line 51173
    iget-object v11, v2, Leur$a;->b:Lcom/alibaba/android/teleconf/widget/UnFoldGridView;

    .line 51165
    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Lcom/alibaba/android/teleconf/widget/UnFoldGridView;->setVisibility(I)V

    goto/16 :goto_1

    .line 208
    :cond_3b
    if-eqz v3, :cond_3c

    .line 51174
    if-eqz v3, :cond_1

    if-eqz v7, :cond_1

    .line 51177
    iget-object v11, v7, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;->a:Lcom/alibaba/android/teleconf/data/TeleConfRecordObject$InfoItemType;

    sget-object v12, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject$InfoItemType;->InfoEmptyGrant:Lcom/alibaba/android/teleconf/data/TeleConfRecordObject$InfoItemType;

    if-ne v11, v12, :cond_1

    .line 51178
    iget-object v11, v3, Leur$b;->a:Landroid/widget/TextView;

    new-instance v12, Leur$1;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Leur$1;-><init>(Leur;)V

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    .line 210
    :cond_3c
    if-eqz v8, :cond_1

    .line 51187
    if-eqz v8, :cond_1

    if-eqz v7, :cond_1

    iget-object v11, v7, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;->a:Lcom/alibaba/android/teleconf/data/TeleConfRecordObject$InfoItemType;

    sget-object v12, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject$InfoItemType;->InfoItemRunning:Lcom/alibaba/android/teleconf/data/TeleConfRecordObject$InfoItemType;

    if-ne v11, v12, :cond_1

    iget-object v11, v7, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;->h:Lcom/alibaba/android/teleconf/data/ConfRecordItem;

    if-eqz v11, :cond_1

    .line 51193
    iget-object v11, v7, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;->h:Lcom/alibaba/android/teleconf/data/ConfRecordItem;

    iget-wide v12, v11, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->callerId:J

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v11

    invoke-virtual {v11}, Lccr;->c()J

    move-result-wide v14

    cmp-long v11, v12, v14

    if-eqz v11, :cond_3e

    const/4 v11, 0x1

    .line 51194
    :goto_17
    iget-object v12, v7, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;->h:Lcom/alibaba/android/teleconf/data/ConfRecordItem;

    invoke-virtual {v12}, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->isMultiUserCall()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 51195
    iget-object v12, v7, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;->h:Lcom/alibaba/android/teleconf/data/ConfRecordItem;

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v12}, Leur;->a(Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;Lcom/alibaba/android/teleconf/data/ConfRecordItem;)Ljava/lang/String;

    move-result-object v12

    .line 51233
    iget-object v13, v8, Leur$d;->a:Landroid/widget/TextView;

    .line 51196
    invoke-virtual {v13, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51197
    if-eqz v11, :cond_3f

    .line 51198
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Leur;->b(Leur$e;)V

    .line 51202
    :goto_18
    iget-object v11, v7, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;->h:Lcom/alibaba/android/teleconf/data/ConfRecordItem;

    iget v11, v11, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->callType:I

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Leur;->a(I)Ljava/lang/String;

    move-result-object v11

    .line 51203
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_40

    .line 51234
    iget-object v11, v8, Leur$d;->c:Landroid/widget/TextView;

    .line 51204
    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 51210
    :goto_19
    iget-object v11, v7, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;->h:Lcom/alibaba/android/teleconf/data/ConfRecordItem;

    iget-wide v12, v11, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->beginTime:J

    const-wide/16 v14, 0x3e8

    mul-long/2addr v12, v14

    .line 51237
    invoke-static {v12, v13}, Leyr;->a(J)Ljava/lang/String;

    move-result-object v11

    .line 51211
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_41

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v12

    invoke-virtual {v12}, Lcid;->c()Landroid/app/Application;

    move-result-object v12

    invoke-virtual {v12}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Leuj$l;->calendar_today:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_41

    .line 51238
    iget-object v12, v8, Leur$d;->d:Landroid/widget/TextView;

    .line 51212
    invoke-virtual {v12, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51241
    :goto_1a
    iget-object v11, v8, Leur$d;->d:Landroid/widget/TextView;

    .line 51217
    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 51219
    const/4 v12, 0x0

    .line 51221
    :try_start_1
    move-object/from16 v0, p0

    iget-object v11, v0, Leur;->b:Landroid/app/Activity;

    sget v13, Leuj$b;->conf_view_breath_animator:I

    invoke-static {v11, v13}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v11

    .line 51225
    :goto_1b
    if-eqz v11, :cond_3d

    .line 51242
    iget-object v12, v8, Leur$d;->e:Landroid/widget/ImageView;

    .line 51226
    invoke-virtual {v11, v12}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 51227
    invoke-virtual {v11}, Landroid/animation/Animator;->start()V

    .line 51229
    :cond_3d
    iget-object v11, v7, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;->o:Ljava/lang/Boolean;

    if-eqz v11, :cond_42

    iget-object v11, v7, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;->o:Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    .line 51243
    :goto_1c
    iget-object v12, v8, Leur$d;->f:Landroid/view/View;

    .line 51230
    if-eqz v11, :cond_43

    const/4 v11, 0x0

    :goto_1d
    invoke-virtual {v12, v11}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 51193
    :cond_3e
    const/4 v11, 0x0

    goto/16 :goto_17

    .line 51200
    :cond_3f
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Leur;->a(Leur$e;)V

    goto :goto_18

    .line 51235
    :cond_40
    iget-object v12, v8, Leur$d;->c:Landroid/widget/TextView;

    .line 51206
    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 51236
    iget-object v12, v8, Leur$d;->c:Landroid/widget/TextView;

    .line 51207
    invoke-virtual {v12, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_19

    .line 51214
    :cond_41
    iget-object v11, v7, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;->h:Lcom/alibaba/android/teleconf/data/ConfRecordItem;

    iget-wide v12, v11, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->beginTime:J

    const-wide/16 v14, 0x3e8

    mul-long/2addr v12, v14

    .line 51239
    invoke-static {v12, v13}, Leyr;->b(J)Ljava/lang/String;

    move-result-object v11

    .line 51240
    iget-object v12, v8, Leur$d;->d:Landroid/widget/TextView;

    .line 51215
    invoke-virtual {v12, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1a

    .line 51222
    :catch_1
    move-exception v11

    .line 51223
    invoke-virtual {v11}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    move-object v11, v12

    goto :goto_1b

    .line 51229
    :cond_42
    const/4 v11, 0x0

    goto :goto_1c

    .line 51230
    :cond_43
    const/16 v11, 0x8

    goto :goto_1d

    :cond_44
    move-object/from16 v18, v13

    move v13, v12

    move v12, v11

    move-object/from16 v11, v18

    goto/16 :goto_9
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 99
    invoke-static {}, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject$InfoItemType;->values()[Lcom/alibaba/android/teleconf/data/TeleConfRecordObject$InfoItemType;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public isEnabled(I)Z
    .locals 2
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 78
    const/4 v0, -0x1

    .line 79
    .local v0, "type":I
    iget-object v1, p0, Leur;->a:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 80
    iget-object v1, p0, Leur;->a:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;

    iget-object v1, v1, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;->a:Lcom/alibaba/android/teleconf/data/TeleConfRecordObject$InfoItemType;

    invoke-virtual {v1}, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject$InfoItemType;->ordinal()I

    move-result v0

    .line 82
    :cond_0
    sget-object v1, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject$InfoItemType;->InfoItem:Lcom/alibaba/android/teleconf/data/TeleConfRecordObject$InfoItemType;

    invoke-virtual {v1}, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject$InfoItemType;->ordinal()I

    move-result v1

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject$InfoItemType;->InfoItemVirtual:Lcom/alibaba/android/teleconf/data/TeleConfRecordObject$InfoItemType;

    .line 83
    invoke-virtual {v1}, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject$InfoItemType;->ordinal()I

    move-result v1

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject$InfoItemType;->InfoItemContact:Lcom/alibaba/android/teleconf/data/TeleConfRecordObject$InfoItemType;

    .line 84
    invoke-virtual {v1}, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject$InfoItemType;->ordinal()I

    move-result v1

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject$InfoItemType;->InfoItemRunning:Lcom/alibaba/android/teleconf/data/TeleConfRecordObject$InfoItemType;

    .line 85
    invoke-virtual {v1}, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject$InfoItemType;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_2

    :cond_1
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method
