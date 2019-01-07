.class public final Lcom/alibaba/android/ding/widget/DingFilterManager$3;
.super Ljava/lang/Object;
.source "DingFilterManager.java"

# interfaces
.implements Lcom/alibaba/android/ding/base/interfaces/DingInterface$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ding/widget/DingFilterManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/widget/DingFilterManager;


# direct methods
.method public constructor <init>(Lcom/alibaba/android/ding/widget/DingFilterManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/ding/widget/DingFilterManager;

    .prologue
    .line 140
    iput-object p1, p0, Lcom/alibaba/android/ding/widget/DingFilterManager$3;->a:Lcom/alibaba/android/ding/widget/DingFilterManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 6
    .param p1, "type"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 143
    packed-switch p1, :pswitch_data_0

    .line 175
    :cond_0
    :goto_0
    return-void

    .line 145
    :pswitch_0
    invoke-static {}, Lbbl;->a()Lbbl;

    move-result-object v4

    invoke-virtual {v4, p1}, Lbbl;->c(I)Z

    move-result v0

    .line 146
    .local v0, "showCalendarRedDot":Z
    iget-object v4, p0, Lcom/alibaba/android/ding/widget/DingFilterManager$3;->a:Lcom/alibaba/android/ding/widget/DingFilterManager;

    sget-object v5, Lcom/alibaba/android/ding/widget/DingFilterManager$DING_TAB_INDEX;->CALENDAR:Lcom/alibaba/android/ding/widget/DingFilterManager$DING_TAB_INDEX;

    .line 1033
    invoke-virtual {v4, v5, v0}, Lcom/alibaba/android/ding/widget/DingFilterManager;->a(Lcom/alibaba/android/ding/widget/DingFilterManager$DING_TAB_INDEX;Z)V

    .line 147
    if-eqz v0, :cond_0

    .line 148
    invoke-static {p1}, Lbjz;->b(I)V

    goto :goto_0

    .line 152
    .end local v0    # "showCalendarRedDot":Z
    :pswitch_1
    invoke-static {}, Lbbl;->a()Lbbl;

    move-result-object v4

    invoke-virtual {v4, p1}, Lbbl;->c(I)Z

    move-result v1

    .line 153
    .local v1, "showDingRedDot":Z
    iget-object v4, p0, Lcom/alibaba/android/ding/widget/DingFilterManager$3;->a:Lcom/alibaba/android/ding/widget/DingFilterManager;

    sget-object v5, Lcom/alibaba/android/ding/widget/DingFilterManager$DING_TAB_INDEX;->DING:Lcom/alibaba/android/ding/widget/DingFilterManager$DING_TAB_INDEX;

    .line 2033
    invoke-virtual {v4, v5, v1}, Lcom/alibaba/android/ding/widget/DingFilterManager;->a(Lcom/alibaba/android/ding/widget/DingFilterManager$DING_TAB_INDEX;Z)V

    .line 154
    if-eqz v1, :cond_0

    .line 155
    invoke-static {p1}, Lbjz;->b(I)V

    goto :goto_0

    .line 159
    .end local v1    # "showDingRedDot":Z
    :pswitch_2
    invoke-static {}, Lbbl;->a()Lbbl;

    move-result-object v4

    invoke-virtual {v4, p1}, Lbbl;->c(I)Z

    move-result v3

    .line 160
    .local v3, "showTaskRedDot":Z
    iget-object v4, p0, Lcom/alibaba/android/ding/widget/DingFilterManager$3;->a:Lcom/alibaba/android/ding/widget/DingFilterManager;

    sget-object v5, Lcom/alibaba/android/ding/widget/DingFilterManager$DING_TAB_INDEX;->TASK:Lcom/alibaba/android/ding/widget/DingFilterManager$DING_TAB_INDEX;

    .line 3033
    invoke-virtual {v4, v5, v3}, Lcom/alibaba/android/ding/widget/DingFilterManager;->a(Lcom/alibaba/android/ding/widget/DingFilterManager$DING_TAB_INDEX;Z)V

    .line 161
    if-eqz v3, :cond_0

    .line 162
    invoke-static {p1}, Lbjz;->b(I)V

    goto :goto_0

    .line 166
    .end local v3    # "showTaskRedDot":Z
    :pswitch_3
    invoke-static {}, Lbbl;->a()Lbbl;

    move-result-object v4

    invoke-virtual {v4, p1}, Lbbl;->c(I)Z

    move-result v2

    .line 167
    .local v2, "showMeetingRedDot":Z
    iget-object v4, p0, Lcom/alibaba/android/ding/widget/DingFilterManager$3;->a:Lcom/alibaba/android/ding/widget/DingFilterManager;

    sget-object v5, Lcom/alibaba/android/ding/widget/DingFilterManager$DING_TAB_INDEX;->MEETING:Lcom/alibaba/android/ding/widget/DingFilterManager$DING_TAB_INDEX;

    .line 4033
    invoke-virtual {v4, v5, v2}, Lcom/alibaba/android/ding/widget/DingFilterManager;->a(Lcom/alibaba/android/ding/widget/DingFilterManager$DING_TAB_INDEX;Z)V

    .line 168
    if-eqz v2, :cond_0

    .line 169
    invoke-static {p1}, Lbjz;->b(I)V

    goto :goto_0

    .line 143
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public final a(Z)V
    .locals 0
    .param p1, "show"    # Z

    .prologue
    .line 179
    return-void
.end method
