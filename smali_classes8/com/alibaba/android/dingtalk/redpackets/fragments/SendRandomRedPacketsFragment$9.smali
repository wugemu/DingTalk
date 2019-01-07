.class final Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment$9;
.super Ljava/lang/Object;
.source "SendRandomRedPacketsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;

    .prologue
    .line 252
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment$9;->a:Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 11
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/16 v10, 0xc

    const/16 v4, 0xb

    const/4 v5, 0x1

    .line 255
    const-string/jumbo v1, "lucky_time_used"

    invoke-static {v1, v5}, Lcpk;->b(Ljava/lang/String;Z)V

    .line 256
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment$9;->a:Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;->c(Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 258
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    const-string/jumbo v2, "redenvelope_luckytime_settime_click"

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 259
    invoke-static {}, Lclu;->a()Ljava/util/Calendar;

    move-result-object v6

    .line 260
    .local v6, "calendar":Ljava/util/Calendar;
    invoke-static {}, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;->g()J

    move-result-wide v2

    invoke-virtual {v6, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 261
    invoke-virtual {v6, v4}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 262
    .local v7, "curHour":I
    const/4 v1, 0x5

    invoke-virtual {v6, v10, v1}, Ljava/util/Calendar;->add(II)V

    .line 263
    invoke-virtual {v6, v10}, Ljava/util/Calendar;->get(I)I

    move-result v8

    .line 264
    .local v8, "curMinute":I
    invoke-virtual {v6, v4}, Ljava/util/Calendar;->get(I)I

    move-result v9

    .line 267
    .local v9, "initHour":I
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/DDTimePickerDialog;

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment$9;->a:Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment$9$1;

    invoke-direct {v2, p0, v7}, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment$9$1;-><init>(Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment$9;I)V

    iget-object v3, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment$9;->a:Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;

    iget v3, v3, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;->w:I

    if-nez v3, :cond_0

    move v3, v9

    :goto_0
    iget-object v4, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment$9;->a:Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;

    iget v4, v4, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;->x:I

    if-nez v4, :cond_1

    move v4, v8

    :goto_1
    invoke-direct/range {v0 .. v5}, Lcom/alibaba/android/dingtalkbase/widgets/DDTimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    .line 285
    .local v0, "timePickerDialog":Lcom/alibaba/android/dingtalkbase/widgets/DDTimePickerDialog;
    const/4 v1, -0x2

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment$9;->a:Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;

    sget v3, Lcaj$f;->dt_common_clean_time:I

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment$9$2;

    invoke-direct {v3, p0}, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment$9$2;-><init>(Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment$9;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/DDTimePickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 293
    invoke-virtual {v0, v5}, Lcom/alibaba/android/dingtalkbase/widgets/DDTimePickerDialog;->setCanceledOnTouchOutside(Z)V

    .line 294
    invoke-static {v0}, Lcms;->a(Landroid/app/TimePickerDialog;)V

    .line 296
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/DDTimePickerDialog;->show()V

    .line 297
    return-void

    .line 267
    .end local v0    # "timePickerDialog":Lcom/alibaba/android/dingtalkbase/widgets/DDTimePickerDialog;
    :cond_0
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment$9;->a:Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;

    iget v3, v3, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;->w:I

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment$9;->a:Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;

    iget v4, v4, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;->x:I

    goto :goto_1
.end method
