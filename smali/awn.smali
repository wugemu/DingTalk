.class public final Lawn;
.super Landroid/widget/BaseAdapter;
.source "CalendarEventAdapterV2.java"


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lawv;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/app/Activity;

.field private c:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lawn;->a:Ljava/util/List;

    .line 30
    iput-object p1, p0, Lawn;->b:Landroid/app/Activity;

    .line 31
    return-void
.end method

.method public static a(Landroid/support/v4/app/Fragment;Landroid/view/View;)V
    .locals 8
    .param p0, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 156
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lawy;

    if-eqz v1, :cond_0

    .line 157
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lawy;

    .line 158
    .local v0, "holder":Lawy;
    if-nez v0, :cond_1

    .line 5090
    .end local v0    # "holder":Lawy;
    :cond_0
    :goto_0
    return-void

    .line 4069
    .restart local v0    # "holder":Lawy;
    :cond_1
    iget-object v2, v0, Lawy;->d:Lawv;

    .line 5052
    if-eqz p0, :cond_0

    .line 5056
    if-eqz v2, :cond_0

    .line 5060
    instance-of v1, v2, Lawr;

    if-nez v1, :cond_0

    instance-of v1, v2, Lawt;

    if-nez v1, :cond_0

    instance-of v1, v2, Lawu;

    if-nez v1, :cond_0

    instance-of v1, v2, Laww;

    if-nez v1, :cond_0

    instance-of v1, v2, Laws;

    if-nez v1, :cond_0

    instance-of v1, v2, Lawp;

    if-nez v1, :cond_0

    .line 5069
    instance-of v1, v2, Lawx;

    if-eqz v1, :cond_3

    move-object v1, v2

    .line 5070
    check-cast v1, Lawx;

    .line 6058
    iget-object v3, v1, Lawx;->b:Lcom/alibaba/android/calendar/data/object/InstanceShowObject;

    .line 5071
    if-eqz v3, :cond_0

    .line 7058
    iget-object v1, v1, Lawx;->b:Lcom/alibaba/android/calendar/data/object/InstanceShowObject;

    .line 5077
    invoke-static {v1}, Lawc;->o(Lcom/alibaba/android/calendar/data/object/InstanceShowObject;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 5081
    invoke-static {v1}, Lawc;->l(Lcom/alibaba/android/calendar/data/object/InstanceShowObject;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 5082
    invoke-static {v1}, Lawc;->d(Lcom/alibaba/android/calendar/data/object/InstanceShowObject;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 5083
    invoke-static {v1}, Lawc;->b(Lcom/alibaba/android/calendar/data/object/InstanceShowObject;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 5084
    invoke-static {v1}, Lawc;->h(Lcom/alibaba/android/calendar/data/object/InstanceShowObject;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 5085
    invoke-static {v1}, Lawc;->e(Lcom/alibaba/android/calendar/data/object/InstanceShowObject;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 5086
    invoke-interface {v2}, Lawv;->isRepeatEvent()Z

    move-result v2

    .line 7096
    new-instance v3, Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;-><init>(Landroid/content/Context;)V

    .line 7097
    new-instance v4, Ljava/util/ArrayList;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 7098
    new-instance v5, Lcng;

    const/4 v6, 0x3

    sget v7, Laow$f;->dt_meeting_cancel:I

    invoke-direct {v5, v6, v7}, Lcng;-><init>(II)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7099
    invoke-virtual {v3, v4}, Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;->a(Ljava/util/List;)V

    .line 7101
    new-instance v4, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 7102
    new-instance v5, Lavo$1;

    invoke-direct {v5, v2, v1, p0}, Lavo$1;-><init>(ZLcom/alibaba/android/calendar/data/object/InstanceShowObject;Landroid/support/v4/app/Fragment;)V

    invoke-virtual {v4, v3, v5}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 7118
    invoke-virtual {v4}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    goto/16 :goto_0

    .line 5088
    :cond_2
    invoke-interface {v2}, Lawv;->isRepeatEvent()Z

    move-result v1

    invoke-static {p0, v1, v2}, Lavo;->a(Landroid/support/v4/app/Fragment;ZLawv;)V

    goto/16 :goto_0

    .line 5091
    :cond_3
    invoke-interface {v2}, Lawv;->isRepeatEvent()Z

    move-result v1

    invoke-static {p0, v1, v2}, Lavo;->a(Landroid/support/v4/app/Fragment;ZLawv;)V

    goto/16 :goto_0
.end method

.method public static a(Landroid/view/View;)V
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 145
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lawy;

    if-eqz v1, :cond_0

    .line 146
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lawy;

    .line 147
    .local v0, "holder":Lawy;
    if-nez v0, :cond_1

    .line 153
    .end local v0    # "holder":Lawy;
    :cond_0
    :goto_0
    return-void

    .line 151
    .restart local v0    # "holder":Lawy;
    :cond_1
    invoke-virtual {v0, p0}, Lawy;->onClick(Landroid/view/View;)V

    goto :goto_0
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lawn;->a:Ljava/util/List;

    if-nez v0, :cond_0

    .line 45
    const/4 v0, 0x0

    .line 47
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lawn;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 2
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 52
    iget-object v1, p0, Lawn;->a:Ljava/util/List;

    if-nez v1, :cond_1

    .line 58
    :cond_0
    :goto_0
    return-object v0

    .line 55
    :cond_1
    if-ltz p1, :cond_0

    iget-object v1, p0, Lawn;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 58
    iget-object v0, p0, Lawn;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public final getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 63
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getItemViewType(I)I
    .locals 2
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 68
    invoke-virtual {p0, p1}, Lawn;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 69
    .local v0, "object":Ljava/lang/Object;
    instance-of v1, v0, Lawv;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lawv;

    invoke-interface {v1}, Lawv;->getType()Lcom/alibaba/android/calendar/v2/data/object/EventType;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 70
    check-cast v0, Lawv;

    .end local v0    # "object":Ljava/lang/Object;
    invoke-interface {v0}, Lawv;->getType()Lcom/alibaba/android/calendar/v2/data/object/EventType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/calendar/v2/data/object/EventType;->ordinal()I

    move-result v1

    .line 72
    :goto_0
    return v1

    .restart local v0    # "object":Ljava/lang/Object;
    :cond_0
    sget-object v1, Lcom/alibaba/android/calendar/v2/data/object/EventType;->UNKNOWN:Lcom/alibaba/android/calendar/v2/data/object/EventType;

    invoke-virtual {v1}, Lcom/alibaba/android/calendar/v2/data/object/EventType;->ordinal()I

    move-result v1

    goto :goto_0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 96
    invoke-virtual {p0, p1}, Lawn;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lawv;

    .line 98
    .local v0, "event":Lawv;
    if-nez p2, :cond_6

    .line 1136
    invoke-virtual {p0, p1}, Lawn;->getItemViewType(I)I

    move-result v6

    .line 1137
    invoke-static {}, Lcom/alibaba/android/calendar/v2/data/object/EventType;->values()[Lcom/alibaba/android/calendar/v2/data/object/EventType;

    move-result-object v9

    .line 1138
    if-ltz v6, :cond_4

    array-length v10, v9

    if-ge v6, v10, :cond_4

    .line 1139
    aget-object v5, v9, v6

    .line 100
    .local v5, "type":Lcom/alibaba/android/calendar/v2/data/object/EventType;
    :goto_0
    iget-object v9, p0, Lawn;->b:Landroid/app/Activity;

    .line 2016
    if-eqz v9, :cond_0

    if-nez v5, :cond_5

    .line 2017
    :cond_0
    const/4 v1, 0x0

    .line 101
    .local v1, "holder":Lawy;
    :goto_1
    if-eqz v1, :cond_1

    .line 3036
    iget-object p2, v1, Lawy;->a:Landroid/view/View;

    .line 103
    if-eqz p2, :cond_1

    .line 104
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 110
    .end local v5    # "type":Lcom/alibaba/android/calendar/v2/data/object/EventType;
    :cond_1
    :goto_2
    if-eqz v1, :cond_3

    .line 111
    invoke-virtual {p0}, Lawn;->getCount()I

    move-result v6

    .line 3056
    iput v6, v1, Lawy;->c:I

    .line 4031
    iput-object v0, v1, Lawy;->d:Lawv;

    .line 4032
    invoke-virtual {v1}, Lawy;->c()V

    .line 115
    invoke-static {v0}, Laxe;->a(Lawv;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 116
    if-eqz p1, :cond_2

    .line 119
    add-int/lit8 v6, p1, -0x1

    invoke-virtual {p0, v6}, Lawn;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lawv;

    .line 120
    .local v4, "lastEvent":Lawv;
    invoke-static {v4}, Laxe;->a(Lawv;)Z

    .line 125
    .end local v4    # "lastEvent":Lawv;
    :cond_2
    iget v6, p0, Lawn;->c:I

    if-ne p1, v6, :cond_7

    move v3, v7

    .line 126
    .local v3, "isLastCommon":Z
    :goto_3
    iget-object v6, p0, Lawn;->a:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ne p1, v6, :cond_8

    move v2, v7

    .line 128
    .local v2, "isLast":Z
    :goto_4
    invoke-virtual {v1, v3}, Lawy;->a(Z)V

    .line 129
    invoke-virtual {v1, v2}, Lawy;->b(Z)V

    .line 132
    .end local v2    # "isLast":Z
    .end local v3    # "isLastCommon":Z
    :cond_3
    return-object p2

    .line 1141
    .end local v1    # "holder":Lawy;
    :cond_4
    sget-object v5, Lcom/alibaba/android/calendar/v2/data/object/EventType;->UNKNOWN:Lcom/alibaba/android/calendar/v2/data/object/EventType;

    goto :goto_0

    .line 2020
    .restart local v5    # "type":Lcom/alibaba/android/calendar/v2/data/object/EventType;
    :cond_5
    sget-object v6, Laxe$1;->a:[I

    invoke-virtual {v5}, Lcom/alibaba/android/calendar/v2/data/object/EventType;->ordinal()I

    move-result v10

    aget v6, v6, v10

    packed-switch v6, :pswitch_data_0

    .line 2052
    new-instance v6, Laxl;

    invoke-direct {v6}, Laxl;-><init>()V

    .line 2056
    :goto_5
    invoke-virtual {v6, v9, p3}, Lawy;->a(Landroid/app/Activity;Landroid/view/ViewGroup;)V

    move-object v1, v6

    .line 2057
    goto :goto_1

    .line 2022
    :pswitch_0
    new-instance v6, Laxf;

    invoke-direct {v6}, Laxf;-><init>()V

    goto :goto_5

    .line 2025
    :pswitch_1
    new-instance v6, Laxg;

    invoke-direct {v6}, Laxg;-><init>()V

    goto :goto_5

    .line 2028
    :pswitch_2
    new-instance v6, Laxi;

    invoke-direct {v6}, Laxi;-><init>()V

    goto :goto_5

    .line 2031
    :pswitch_3
    new-instance v6, Laxk;

    invoke-direct {v6}, Laxk;-><init>()V

    goto :goto_5

    .line 2034
    :pswitch_4
    new-instance v6, Laxh;

    invoke-direct {v6}, Laxh;-><init>()V

    goto :goto_5

    .line 2037
    :pswitch_5
    new-instance v6, Laxa;

    invoke-direct {v6}, Laxa;-><init>()V

    goto :goto_5

    .line 2040
    :pswitch_6
    new-instance v6, Laxj;

    invoke-direct {v6}, Laxj;-><init>()V

    goto :goto_5

    .line 2043
    :pswitch_7
    new-instance v6, Laxb;

    invoke-direct {v6}, Laxb;-><init>()V

    goto :goto_5

    .line 2046
    :pswitch_8
    new-instance v6, Laxc;

    invoke-direct {v6}, Laxc;-><init>()V

    goto :goto_5

    .line 2049
    :pswitch_9
    new-instance v6, Laxd;

    invoke-direct {v6}, Laxd;-><init>()V

    goto :goto_5

    .line 108
    .end local v5    # "type":Lcom/alibaba/android/calendar/v2/data/object/EventType;
    :cond_6
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lawy;

    .restart local v1    # "holder":Lawy;
    goto/16 :goto_2

    :cond_7
    move v3, v8

    .line 125
    goto/16 :goto_3

    .restart local v3    # "isLastCommon":Z
    :cond_8
    move v2, v8

    .line 126
    goto/16 :goto_4

    .line 2020
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public final getViewTypeCount()I
    .locals 1

    .prologue
    .line 77
    invoke-static {}, Lcom/alibaba/android/calendar/v2/data/object/EventType;->values()[Lcom/alibaba/android/calendar/v2/data/object/EventType;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public final notifyDataSetChanged()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 82
    iget-object v1, p0, Lawn;->a:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lawn;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 83
    const/4 v1, -0x1

    iput v1, p0, Lawn;->c:I

    .line 84
    iget-object v1, p0, Lawn;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lawv;

    .line 85
    .local v0, "event":Lawv;
    instance-of v2, v0, Lawr;

    if-nez v2, :cond_0

    .line 88
    iget v2, p0, Lawn;->c:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lawn;->c:I

    goto :goto_0

    .line 91
    .end local v0    # "event":Lawv;
    :cond_0
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 92
    return-void
.end method
