.class final Lcom/alibaba/android/dingtalk/redpackets/fragments/SendLuckyTimeRedPacketsFragment$1;
.super Ljava/lang/Object;
.source "SendLuckyTimeRedPacketsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalk/redpackets/fragments/SendLuckyTimeRedPacketsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/redpackets/fragments/SendLuckyTimeRedPacketsFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/redpackets/fragments/SendLuckyTimeRedPacketsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalk/redpackets/fragments/SendLuckyTimeRedPacketsFragment;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendLuckyTimeRedPacketsFragment$1;->a:Lcom/alibaba/android/dingtalk/redpackets/fragments/SendLuckyTimeRedPacketsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v5, 0x1

    const/16 v4, 0xb

    .line 85
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    const-string/jumbo v2, "redenvelope_luckytime_settime_click"

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 86
    invoke-static {}, Lclu;->a()Ljava/util/Calendar;

    move-result-object v6

    .line 87
    .local v6, "calendar":Ljava/util/Calendar;
    invoke-static {}, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendLuckyTimeRedPacketsFragment;->g()J

    move-result-wide v2

    invoke-virtual {v6, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 88
    invoke-virtual {v6, v4}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 89
    .local v7, "curHour":I
    const/16 v1, 0xc

    invoke-virtual {v6, v1}, Ljava/util/Calendar;->get(I)I

    move-result v8

    .line 90
    .local v8, "curMinute":I
    const/4 v1, 0x2

    invoke-virtual {v6, v4, v1}, Ljava/util/Calendar;->add(II)V

    .line 91
    invoke-virtual {v6, v4}, Ljava/util/Calendar;->get(I)I

    move-result v9

    .line 93
    .local v9, "initHour":I
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/DDTimePickerDialog;

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendLuckyTimeRedPacketsFragment$1;->a:Lcom/alibaba/android/dingtalk/redpackets/fragments/SendLuckyTimeRedPacketsFragment;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendLuckyTimeRedPacketsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendLuckyTimeRedPacketsFragment$1$1;

    invoke-direct {v2, p0, v7}, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendLuckyTimeRedPacketsFragment$1$1;-><init>(Lcom/alibaba/android/dingtalk/redpackets/fragments/SendLuckyTimeRedPacketsFragment$1;I)V

    iget-object v3, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendLuckyTimeRedPacketsFragment$1;->a:Lcom/alibaba/android/dingtalk/redpackets/fragments/SendLuckyTimeRedPacketsFragment;

    iget v3, v3, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendLuckyTimeRedPacketsFragment;->w:I

    if-nez v3, :cond_0

    move v3, v9

    :goto_0
    iget-object v4, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendLuckyTimeRedPacketsFragment$1;->a:Lcom/alibaba/android/dingtalk/redpackets/fragments/SendLuckyTimeRedPacketsFragment;

    iget v4, v4, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendLuckyTimeRedPacketsFragment;->x:I

    if-nez v4, :cond_1

    move v4, v8

    :goto_1
    invoke-direct/range {v0 .. v5}, Lcom/alibaba/android/dingtalkbase/widgets/DDTimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    .line 113
    .local v0, "timePickerDialog":Lcom/alibaba/android/dingtalkbase/widgets/DDTimePickerDialog;
    invoke-virtual {v0, v5}, Lcom/alibaba/android/dingtalkbase/widgets/DDTimePickerDialog;->setCanceledOnTouchOutside(Z)V

    .line 114
    invoke-static {v0}, Lcms;->a(Landroid/app/TimePickerDialog;)V

    .line 116
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/DDTimePickerDialog;->show()V

    .line 117
    return-void

    .line 93
    .end local v0    # "timePickerDialog":Lcom/alibaba/android/dingtalkbase/widgets/DDTimePickerDialog;
    :cond_0
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendLuckyTimeRedPacketsFragment$1;->a:Lcom/alibaba/android/dingtalk/redpackets/fragments/SendLuckyTimeRedPacketsFragment;

    iget v3, v3, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendLuckyTimeRedPacketsFragment;->w:I

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendLuckyTimeRedPacketsFragment$1;->a:Lcom/alibaba/android/dingtalk/redpackets/fragments/SendLuckyTimeRedPacketsFragment;

    iget v4, v4, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendLuckyTimeRedPacketsFragment;->x:I

    goto :goto_1
.end method
