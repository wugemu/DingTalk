.class public final Lbbb;
.super Ljava/lang/Object;
.source "EventSelectRepeatActivityPresenter.java"

# interfaces
.implements Lbba$a;


# instance fields
.field private a:Lbba$b;

.field private b:Lcom/alibaba/android/calendar/base/interfaces/RepeatFrequency;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/ding/widget/select/SingleSelectedView$a;",
            ">;"
        }
    .end annotation
.end field

.field private d:J

.field private e:J

.field private f:Ljava/lang/String;

.field private g:J

.field private h:J


# direct methods
.method public constructor <init>(Lbba$b;)V
    .locals 0
    .param p1, "view"    # Lbba$b;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lbbb;->a:Lbba$b;

    .line 39
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 49
    iget-object v0, p0, Lbbb;->a:Lbba$b;

    iget-wide v2, p0, Lbbb;->d:J

    iget-wide v4, p0, Lbbb;->g:J

    invoke-interface {v0, v2, v3, v4, v5}, Lbba$b;->a(JJ)V

    .line 50
    return-void
.end method

.method public final a(J)V
    .locals 5
    .param p1, "millis"    # J

    .prologue
    .line 132
    iput-wide p1, p0, Lbbb;->g:J

    .line 133
    iget-object v0, p0, Lbbb;->a:Lbba$b;

    iget-wide v2, p0, Lbbb;->g:J

    invoke-static {v2, v3}, Lcog;->h(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lbba$b;->a(Ljava/lang/String;)V

    .line 134
    return-void
.end method

.method public final a(Landroid/content/Intent;)V
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const-wide/16 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 43
    .line 1062
    if-eqz p1, :cond_0

    .line 1065
    const-string/jumbo v0, "intent_key_repeat_mode_data"

    invoke-static {p1, v0}, Lcoy;->b(Landroid/content/Intent;Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/calendar/base/interfaces/RepeatFrequency;

    iput-object v0, p0, Lbbb;->b:Lcom/alibaba/android/calendar/base/interfaces/RepeatFrequency;

    .line 1066
    const-string/jumbo v0, "intent_key_menu_seed"

    invoke-static {p1, v0, v6, v7}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lbbb;->d:J

    .line 1067
    const-string/jumbo v0, "intent_key_start_date"

    invoke-static {}, Lcms;->u()J

    move-result-wide v2

    invoke-static {p1, v0, v2, v3}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lbbb;->e:J

    .line 1068
    const-string/jumbo v0, "intent_key_deadline_date"

    invoke-static {p1, v0, v6, v7}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lbbb;->h:J

    .line 1069
    const-string/jumbo v0, "intent_key_source"

    invoke-static {p1, v0}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbbb;->f:Ljava/lang/String;

    .line 1073
    :cond_0
    iget-object v0, p0, Lbbb;->a:Lbba$b;

    iget-object v1, p0, Lbbb;->b:Lcom/alibaba/android/calendar/base/interfaces/RepeatFrequency;

    invoke-interface {v0, v1}, Lbba$b;->a(Lcom/alibaba/android/calendar/base/interfaces/RepeatFrequency;)V

    .line 1085
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbbb;->c:Ljava/util/List;

    .line 1086
    iget-object v0, p0, Lbbb;->c:Ljava/util/List;

    new-instance v1, Lcom/alibaba/android/ding/widget/select/SingleSelectedView$a;

    invoke-direct {v1}, Lcom/alibaba/android/ding/widget/select/SingleSelectedView$a;-><init>()V

    sget-object v2, Lcom/alibaba/android/calendar/base/interfaces/RepeatFrequency;->NO_REPEAT:Lcom/alibaba/android/calendar/base/interfaces/RepeatFrequency;

    invoke-virtual {v2}, Lcom/alibaba/android/calendar/base/interfaces/RepeatFrequency;->getTextResId()I

    move-result v2

    .line 2086
    iput v2, v1, Lcom/alibaba/android/ding/widget/select/SingleSelectedView$a;->b:I

    .line 1086
    sget-object v2, Lcom/alibaba/android/calendar/base/interfaces/RepeatFrequency;->NO_REPEAT:Lcom/alibaba/android/calendar/base/interfaces/RepeatFrequency;

    .line 2113
    iput-object v2, v1, Lcom/alibaba/android/ding/widget/select/SingleSelectedView$a;->f:Ljava/io/Serializable;

    .line 2122
    iput-boolean v4, v1, Lcom/alibaba/android/ding/widget/select/SingleSelectedView$a;->e:Z

    .line 3095
    iput-boolean v5, v1, Lcom/alibaba/android/ding/widget/select/SingleSelectedView$a;->c:Z

    .line 3104
    iput-boolean v4, v1, Lcom/alibaba/android/ding/widget/select/SingleSelectedView$a;->d:Z

    .line 1086
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1088
    iget-object v0, p0, Lbbb;->c:Ljava/util/List;

    new-instance v1, Lcom/alibaba/android/ding/widget/select/SingleSelectedView$a;

    invoke-direct {v1}, Lcom/alibaba/android/ding/widget/select/SingleSelectedView$a;-><init>()V

    sget-object v2, Lcom/alibaba/android/calendar/base/interfaces/RepeatFrequency;->EVERY_DAY:Lcom/alibaba/android/calendar/base/interfaces/RepeatFrequency;

    invoke-virtual {v2}, Lcom/alibaba/android/calendar/base/interfaces/RepeatFrequency;->getTextResId()I

    move-result v2

    .line 4086
    iput v2, v1, Lcom/alibaba/android/ding/widget/select/SingleSelectedView$a;->b:I

    .line 1088
    sget-object v2, Lcom/alibaba/android/calendar/base/interfaces/RepeatFrequency;->EVERY_DAY:Lcom/alibaba/android/calendar/base/interfaces/RepeatFrequency;

    .line 4113
    iput-object v2, v1, Lcom/alibaba/android/ding/widget/select/SingleSelectedView$a;->f:Ljava/io/Serializable;

    .line 4122
    iput-boolean v4, v1, Lcom/alibaba/android/ding/widget/select/SingleSelectedView$a;->e:Z

    .line 5095
    iput-boolean v5, v1, Lcom/alibaba/android/ding/widget/select/SingleSelectedView$a;->c:Z

    .line 5104
    iput-boolean v5, v1, Lcom/alibaba/android/ding/widget/select/SingleSelectedView$a;->d:Z

    .line 1088
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1090
    iget-object v0, p0, Lbbb;->c:Ljava/util/List;

    new-instance v1, Lcom/alibaba/android/ding/widget/select/SingleSelectedView$a;

    invoke-direct {v1}, Lcom/alibaba/android/ding/widget/select/SingleSelectedView$a;-><init>()V

    sget-object v2, Lcom/alibaba/android/calendar/base/interfaces/RepeatFrequency;->EVERY_WEEK:Lcom/alibaba/android/calendar/base/interfaces/RepeatFrequency;

    invoke-virtual {v2}, Lcom/alibaba/android/calendar/base/interfaces/RepeatFrequency;->getTextResId()I

    move-result v2

    .line 6086
    iput v2, v1, Lcom/alibaba/android/ding/widget/select/SingleSelectedView$a;->b:I

    .line 1090
    sget-object v2, Lcom/alibaba/android/calendar/base/interfaces/RepeatFrequency;->EVERY_WEEK:Lcom/alibaba/android/calendar/base/interfaces/RepeatFrequency;

    .line 6113
    iput-object v2, v1, Lcom/alibaba/android/ding/widget/select/SingleSelectedView$a;->f:Ljava/io/Serializable;

    .line 6122
    iput-boolean v4, v1, Lcom/alibaba/android/ding/widget/select/SingleSelectedView$a;->e:Z

    .line 7095
    iput-boolean v4, v1, Lcom/alibaba/android/ding/widget/select/SingleSelectedView$a;->c:Z

    .line 7104
    iput-boolean v5, v1, Lcom/alibaba/android/ding/widget/select/SingleSelectedView$a;->d:Z

    .line 1090
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1092
    iget-object v0, p0, Lbbb;->c:Ljava/util/List;

    new-instance v1, Lcom/alibaba/android/ding/widget/select/SingleSelectedView$a;

    invoke-direct {v1}, Lcom/alibaba/android/ding/widget/select/SingleSelectedView$a;-><init>()V

    sget-object v2, Lcom/alibaba/android/calendar/base/interfaces/RepeatFrequency;->EVERY_TWO_WEEK:Lcom/alibaba/android/calendar/base/interfaces/RepeatFrequency;

    invoke-virtual {v2}, Lcom/alibaba/android/calendar/base/interfaces/RepeatFrequency;->getTextResId()I

    move-result v2

    .line 8086
    iput v2, v1, Lcom/alibaba/android/ding/widget/select/SingleSelectedView$a;->b:I

    .line 1092
    sget-object v2, Lcom/alibaba/android/calendar/base/interfaces/RepeatFrequency;->EVERY_TWO_WEEK:Lcom/alibaba/android/calendar/base/interfaces/RepeatFrequency;

    .line 8113
    iput-object v2, v1, Lcom/alibaba/android/ding/widget/select/SingleSelectedView$a;->f:Ljava/io/Serializable;

    .line 8122
    iput-boolean v4, v1, Lcom/alibaba/android/ding/widget/select/SingleSelectedView$a;->e:Z

    .line 9095
    iput-boolean v4, v1, Lcom/alibaba/android/ding/widget/select/SingleSelectedView$a;->c:Z

    .line 9104
    iput-boolean v5, v1, Lcom/alibaba/android/ding/widget/select/SingleSelectedView$a;->d:Z

    .line 1092
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1094
    iget-object v0, p0, Lbbb;->c:Ljava/util/List;

    new-instance v1, Lcom/alibaba/android/ding/widget/select/SingleSelectedView$a;

    invoke-direct {v1}, Lcom/alibaba/android/ding/widget/select/SingleSelectedView$a;-><init>()V

    sget-object v2, Lcom/alibaba/android/calendar/base/interfaces/RepeatFrequency;->EVERY_MONTH:Lcom/alibaba/android/calendar/base/interfaces/RepeatFrequency;

    invoke-virtual {v2}, Lcom/alibaba/android/calendar/base/interfaces/RepeatFrequency;->getTextResId()I

    move-result v2

    .line 10086
    iput v2, v1, Lcom/alibaba/android/ding/widget/select/SingleSelectedView$a;->b:I

    .line 1094
    sget-object v2, Lcom/alibaba/android/calendar/base/interfaces/RepeatFrequency;->EVERY_MONTH:Lcom/alibaba/android/calendar/base/interfaces/RepeatFrequency;

    .line 10113
    iput-object v2, v1, Lcom/alibaba/android/ding/widget/select/SingleSelectedView$a;->f:Ljava/io/Serializable;

    .line 10122
    iput-boolean v4, v1, Lcom/alibaba/android/ding/widget/select/SingleSelectedView$a;->e:Z

    .line 11095
    iput-boolean v4, v1, Lcom/alibaba/android/ding/widget/select/SingleSelectedView$a;->c:Z

    .line 11104
    iput-boolean v5, v1, Lcom/alibaba/android/ding/widget/select/SingleSelectedView$a;->d:Z

    .line 1094
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1096
    iget-object v0, p0, Lbbb;->c:Ljava/util/List;

    new-instance v1, Lcom/alibaba/android/ding/widget/select/SingleSelectedView$a;

    invoke-direct {v1}, Lcom/alibaba/android/ding/widget/select/SingleSelectedView$a;-><init>()V

    sget-object v2, Lcom/alibaba/android/calendar/base/interfaces/RepeatFrequency;->EVERY_YEAR:Lcom/alibaba/android/calendar/base/interfaces/RepeatFrequency;

    invoke-virtual {v2}, Lcom/alibaba/android/calendar/base/interfaces/RepeatFrequency;->getTextResId()I

    move-result v2

    .line 12086
    iput v2, v1, Lcom/alibaba/android/ding/widget/select/SingleSelectedView$a;->b:I

    .line 1096
    sget-object v2, Lcom/alibaba/android/calendar/base/interfaces/RepeatFrequency;->EVERY_YEAR:Lcom/alibaba/android/calendar/base/interfaces/RepeatFrequency;

    .line 12113
    iput-object v2, v1, Lcom/alibaba/android/ding/widget/select/SingleSelectedView$a;->f:Ljava/io/Serializable;

    .line 12122
    iput-boolean v4, v1, Lcom/alibaba/android/ding/widget/select/SingleSelectedView$a;->e:Z

    .line 13095
    iput-boolean v4, v1, Lcom/alibaba/android/ding/widget/select/SingleSelectedView$a;->c:Z

    .line 13104
    iput-boolean v5, v1, Lcom/alibaba/android/ding/widget/select/SingleSelectedView$a;->d:Z

    .line 1096
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1075
    iget-object v0, p0, Lbbb;->a:Lbba$b;

    iget-object v1, p0, Lbbb;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Lbba$b;->a(Ljava/util/List;)V

    .line 1076
    iget-object v0, p0, Lbbb;->a:Lbba$b;

    iget-object v1, p0, Lbbb;->f:Ljava/lang/String;

    const-string/jumbo v2, "from_meeting"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    invoke-interface {v0, v1}, Lbba$b;->a(Z)V

    .line 1078
    iget-wide v0, p0, Lbbb;->h:J

    cmp-long v0, v0, v6

    if-lez v0, :cond_1

    .line 1079
    iget-wide v0, p0, Lbbb;->h:J

    iput-wide v0, p0, Lbbb;->g:J

    .line 1081
    :cond_1
    iget-object v0, p0, Lbbb;->a:Lbba$b;

    iget-wide v2, p0, Lbbb;->g:J

    invoke-static {v2, v3}, Lcog;->h(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lbba$b;->a(Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method public final a(Ljava/io/Serializable;)V
    .locals 6
    .param p1, "curSelected"    # Ljava/io/Serializable;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 55
    instance-of v0, p1, Lcom/alibaba/android/calendar/base/interfaces/RepeatFrequency;

    if-eqz v0, :cond_1

    .line 56
    check-cast p1, Lcom/alibaba/android/calendar/base/interfaces/RepeatFrequency;

    .line 14102
    .end local p1    # "curSelected":Ljava/io/Serializable;
    invoke-static {}, Lcom/alibaba/doraemon/performance/CalendarProxy;->getCalendar()Ljava/util/Calendar;

    move-result-object v0

    .line 14103
    iget-wide v2, p0, Lbbb;->e:J

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 14104
    const/16 v1, 0xb

    invoke-virtual {v0, v1, v5}, Ljava/util/Calendar;->set(II)V

    .line 14105
    const/16 v1, 0xc

    invoke-virtual {v0, v1, v5}, Ljava/util/Calendar;->set(II)V

    .line 14106
    const/16 v1, 0xd

    invoke-virtual {v0, v1, v5}, Ljava/util/Calendar;->set(II)V

    .line 14107
    const/16 v1, 0xe

    invoke-virtual {v0, v1, v5}, Ljava/util/Calendar;->set(II)V

    .line 14109
    sget-object v1, Lcom/alibaba/android/calendar/base/interfaces/RepeatFrequency;->EVERY_DAY:Lcom/alibaba/android/calendar/base/interfaces/RepeatFrequency;

    if-eq p1, v1, :cond_0

    sget-object v1, Lcom/alibaba/android/calendar/base/interfaces/RepeatFrequency;->EVERY_WEEK:Lcom/alibaba/android/calendar/base/interfaces/RepeatFrequency;

    if-eq p1, v1, :cond_0

    sget-object v1, Lcom/alibaba/android/calendar/base/interfaces/RepeatFrequency;->EVERY_TWO_WEEK:Lcom/alibaba/android/calendar/base/interfaces/RepeatFrequency;

    if-ne p1, v1, :cond_2

    .line 14111
    :cond_0
    invoke-virtual {v0, v4, v4}, Ljava/util/Calendar;->add(II)V

    .line 14121
    :goto_0
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 56
    iput-wide v0, p0, Lbbb;->g:J

    .line 57
    iget-object v0, p0, Lbbb;->a:Lbba$b;

    iget-wide v2, p0, Lbbb;->g:J

    invoke-static {v2, v3}, Lcog;->h(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lbba$b;->a(Ljava/lang/String;)V

    .line 59
    :cond_1
    return-void

    .line 14112
    :cond_2
    sget-object v1, Lcom/alibaba/android/calendar/base/interfaces/RepeatFrequency;->EVERY_MONTH:Lcom/alibaba/android/calendar/base/interfaces/RepeatFrequency;

    if-ne p1, v1, :cond_3

    .line 14113
    const/4 v1, 0x2

    invoke-virtual {v0, v4, v1}, Ljava/util/Calendar;->add(II)V

    goto :goto_0

    .line 14114
    :cond_3
    sget-object v1, Lcom/alibaba/android/calendar/base/interfaces/RepeatFrequency;->EVERY_YEAR:Lcom/alibaba/android/calendar/base/interfaces/RepeatFrequency;

    if-ne p1, v1, :cond_4

    .line 14115
    const/16 v1, 0xa

    invoke-virtual {v0, v4, v1}, Ljava/util/Calendar;->add(II)V

    goto :goto_0

    .line 14118
    :cond_4
    invoke-virtual {v0, v4, v4}, Ljava/util/Calendar;->add(II)V

    goto :goto_0
.end method

.method public final b()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 126
    iget-wide v0, p0, Lbbb;->g:J

    return-wide v0
.end method
