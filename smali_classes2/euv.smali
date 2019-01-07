.class public final Leuv;
.super Leul;
.source "TeleMemberRecordAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Leuv$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Leul",
        "<",
        "Lcom/alibaba/android/teleconf/data/TeleMemberRecord;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .param p1, "context"    # Landroid/app/Activity;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Leul;-><init>(Landroid/app/Activity;)V

    .line 22
    return-void
.end method


# virtual methods
.method public a(JLjava/lang/String;I)V
    .locals 7
    .param p1, "time"    # J
    .param p3, "info"    # Ljava/lang/String;
    .param p4, "colorType"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 43
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-lez v2, :cond_1

    .line 44
    const-string/jumbo v2, "%s %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcog;->c(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    aput-object p3, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 48
    .local v1, "text":Ljava/lang/String;
    :goto_0
    new-instance v0, Lcom/alibaba/android/teleconf/data/TeleMemberRecord;

    invoke-direct {v0, v1, p4}, Lcom/alibaba/android/teleconf/data/TeleMemberRecord;-><init>(Ljava/lang/String;I)V

    .line 1025
    .local v0, "record":Lcom/alibaba/android/teleconf/data/TeleMemberRecord;
    iget-object v2, v0, Lcom/alibaba/android/teleconf/data/TeleMemberRecord;->infoText:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1028
    iget-object v2, p0, Leuv;->a:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 1029
    iget-object v2, p0, Leuv;->a:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    :cond_0
    invoke-virtual {p0}, Leuv;->notifyDataSetChanged()V

    .line 51
    return-void

    .line 46
    .end local v0    # "record":Lcom/alibaba/android/teleconf/data/TeleMemberRecord;
    .end local v1    # "text":Ljava/lang/String;
    :cond_1
    const-string/jumbo v2, "%s"

    new-array v3, v6, [Ljava/lang/Object;

    aput-object p3, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "text":Ljava/lang/String;
    goto :goto_0
.end method

.method public final a(Ljava/lang/String;J)V
    .locals 2
    .param p1, "info"    # Ljava/lang/String;
    .param p2, "time"    # J

    .prologue
    .line 34
    const/4 v0, 0x0

    invoke-virtual {p0, p2, p3, p1, v0}, Leuv;->a(JLjava/lang/String;I)V

    .line 35
    return-void
.end method

.method public final a(Ljava/lang/String;JI)V
    .locals 0
    .param p1, "info"    # Ljava/lang/String;
    .param p2, "time"    # J
    .param p4, "colorType"    # I

    .prologue
    .line 38
    invoke-virtual {p0, p2, p3, p1, p4}, Leuv;->a(JLjava/lang/String;I)V

    .line 39
    return-void
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 63
    .line 64
    move-object v2, p2

    .local v2, "raw":Landroid/view/View;
    if-nez p2, :cond_2

    .line 65
    iget-object v3, p0, Leuv;->b:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 1090
    .local v1, "inflater":Landroid/view/LayoutInflater;
    sget v3, Leuj$j;->layout_conf_member_record:I

    .line 66
    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 68
    new-instance v0, Leuv$a;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v3}, Leuv$a;-><init>(Leuv;B)V

    .line 69
    .local v0, "holder":Leuv$a;
    sget v3, Leuj$i;->tv_member_info:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/teleconf/widget/TeleRecordTextView;

    iput-object v3, v0, Leuv$a;->a:Lcom/alibaba/android/teleconf/widget/TeleRecordTextView;

    .line 71
    invoke-virtual {v2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 2083
    .end local v1    # "inflater":Landroid/view/LayoutInflater;
    :goto_0
    iget-object v3, p0, Leuv;->a:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/teleconf/data/TeleMemberRecord;

    .line 2084
    if-eqz v3, :cond_1

    .line 2085
    iget-object v4, v0, Leuv$a;->a:Lcom/alibaba/android/teleconf/widget/TeleRecordTextView;

    iget-object v5, v3, Lcom/alibaba/android/teleconf/data/TeleMemberRecord;->infoText:Ljava/lang/String;

    iget v3, v3, Lcom/alibaba/android/teleconf/data/TeleMemberRecord;->colorType:I

    .line 3039
    if-eqz v5, :cond_0

    .line 3040
    invoke-virtual {v4, v5}, Lcom/alibaba/android/teleconf/widget/TeleRecordTextView;->setText(Ljava/lang/CharSequence;)V

    .line 3042
    :cond_0
    iput v3, v4, Lcom/alibaba/android/teleconf/widget/TeleRecordTextView;->a:I

    .line 3043
    iget v3, v4, Lcom/alibaba/android/teleconf/widget/TeleRecordTextView;->a:I

    packed-switch v3, :pswitch_data_0

    .line 79
    :cond_1
    :goto_1
    return-object v2

    .line 74
    .end local v0    # "holder":Leuv$a;
    :cond_2
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leuv$a;

    .restart local v0    # "holder":Leuv$a;
    goto :goto_0

    .line 3045
    :pswitch_0
    invoke-virtual {v4}, Lcom/alibaba/android/teleconf/widget/TeleRecordTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v5, Leuj$f;->text_color_white:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v4, v3}, Lcom/alibaba/android/teleconf/widget/TeleRecordTextView;->setTextColor(I)V

    goto :goto_1

    .line 3048
    :pswitch_1
    invoke-virtual {v4}, Lcom/alibaba/android/teleconf/widget/TeleRecordTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v5, Leuj$f;->text_color_red:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v4, v3}, Lcom/alibaba/android/teleconf/widget/TeleRecordTextView;->setTextColor(I)V

    goto :goto_1

    .line 3051
    :pswitch_2
    invoke-virtual {v4}, Lcom/alibaba/android/teleconf/widget/TeleRecordTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v5, Leuj$f;->text_color_green:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v4, v3}, Lcom/alibaba/android/teleconf/widget/TeleRecordTextView;->setTextColor(I)V

    goto :goto_1

    .line 3054
    :pswitch_3
    invoke-virtual {v4}, Lcom/alibaba/android/teleconf/widget/TeleRecordTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v5, Leuj$f;->text_color_blue:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v4, v3}, Lcom/alibaba/android/teleconf/widget/TeleRecordTextView;->setTextColor(I)V

    goto :goto_1

    .line 3043
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public final isEnabled(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 56
    const/4 v0, 0x0

    return v0
.end method
