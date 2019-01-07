.class final Lcom/alibaba/android/dingtalk/redpackets/fragments/SendLuckyTimeRedPacketsFragment$1$1;
.super Ljava/lang/Object;
.source "SendLuckyTimeRedPacketsFragment.java"

# interfaces
.implements Landroid/app/TimePickerDialog$OnTimeSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalk/redpackets/fragments/SendLuckyTimeRedPacketsFragment$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/alibaba/android/dingtalk/redpackets/fragments/SendLuckyTimeRedPacketsFragment$1;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/redpackets/fragments/SendLuckyTimeRedPacketsFragment$1;I)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/dingtalk/redpackets/fragments/SendLuckyTimeRedPacketsFragment$1;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendLuckyTimeRedPacketsFragment$1$1;->b:Lcom/alibaba/android/dingtalk/redpackets/fragments/SendLuckyTimeRedPacketsFragment$1;

    iput p2, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendLuckyTimeRedPacketsFragment$1$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTimeSet(Landroid/widget/TimePicker;II)V
    .locals 8
    .param p1, "timePicker"    # Landroid/widget/TimePicker;
    .param p2, "hour"    # I
    .param p3, "minute"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 96
    invoke-static {}, Lclu;->a()Ljava/util/Calendar;

    move-result-object v0

    .line 97
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-static {}, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendLuckyTimeRedPacketsFragment;->g()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 99
    const/16 v1, 0xb

    invoke-virtual {v0, v1, p2}, Ljava/util/Calendar;->set(II)V

    .line 100
    const/16 v1, 0xc

    invoke-virtual {v0, v1, p3}, Ljava/util/Calendar;->set(II)V

    .line 101
    const/4 v6, 0x0

    .line 102
    .local v6, "isTomorrow":Z
    iget v1, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendLuckyTimeRedPacketsFragment$1$1;->a:I

    if-ge p2, v1, :cond_0

    .line 103
    const/4 v1, 0x5

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v4}, Ljava/util/Calendar;->add(II)V

    .line 104
    const/4 v6, 0x1

    .line 106
    :cond_0
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 107
    .local v2, "timePick":J
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendLuckyTimeRedPacketsFragment$1$1;->b:Lcom/alibaba/android/dingtalk/redpackets/fragments/SendLuckyTimeRedPacketsFragment$1;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendLuckyTimeRedPacketsFragment$1;->a:Lcom/alibaba/android/dingtalk/redpackets/fragments/SendLuckyTimeRedPacketsFragment;

    const/4 v7, 0x0

    move v4, p2

    move v5, p3

    invoke-static/range {v1 .. v7}, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendLuckyTimeRedPacketsFragment;->a(Lcom/alibaba/android/dingtalk/redpackets/fragments/SendLuckyTimeRedPacketsFragment;JIIZLjava/lang/String;)V

    .line 108
    return-void
.end method
