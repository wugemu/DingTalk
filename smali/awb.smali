.class public final Lawb;
.super Ljava/lang/Object;
.source "FloatDisplayAsyncObjectUtil.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Landroid/content/Context;
    .locals 2

    .prologue
    .line 477
    const-string/jumbo v1, "LIFECYCLE"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;

    invoke-interface {v1}, Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;->getForegroundTopActivity()Landroid/app/Activity;

    move-result-object v0

    .line 478
    .local v0, "currentActivity":Landroid/content/Context;
    if-nez v0, :cond_0

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    .end local v0    # "currentActivity":Landroid/content/Context;
    :cond_0
    return-object v0
.end method

.method public static a(Ljava/lang/Object;)Lcrm;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcrm",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 470
    .local p0, "data":Ljava/lang/Object;, "TT;"
    new-instance v0, Lcrm;

    invoke-direct {v0}, Lcrm;-><init>()V

    .line 6024
    .local v0, "asyncLoadHolder":Lcrm;, "Lcrm<TT;>;"
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcrm;->a:Z

    .line 6032
    iput-object p0, v0, Lcrm;->b:Ljava/lang/Object;

    .line 473
    return-object v0
.end method

.method public static a(Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject;IIIIZ)V
    .locals 3
    .param p0, "floatDisplayAsyncObject"    # Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject;
    .param p1, "iconResId"    # I
    .param p2, "iconColorResId"    # I
    .param p3, "titleResId"    # I
    .param p4, "titleColorResId"    # I
    .param p5, "showClose"    # Z

    .prologue
    .line 106
    new-instance v0, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$d;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$d;-><init>()V

    .line 107
    .local v0, "header":Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$d;
    invoke-static {v0}, Lawb;->a(Ljava/lang/Object;)Lcrm;

    move-result-object v1

    .line 1035
    iput-object v1, p0, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject;->a:Lcrm;

    .line 108
    if-lez p1, :cond_0

    .line 1075
    iput p1, v0, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$d;->b:I

    .line 111
    :cond_0
    if-lez p2, :cond_1

    .line 112
    invoke-static {}, Lawb;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p2}, Ldp;->c(Landroid/content/Context;I)I

    move-result v1

    .line 1083
    iput v1, v0, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$d;->c:I

    .line 114
    :cond_1
    if-lez p3, :cond_2

    .line 115
    new-instance v1, Landroid/text/SpannableString;

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2, p3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1091
    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$d;->d:Landroid/text/SpannableString;

    .line 117
    :cond_2
    if-lez p4, :cond_3

    .line 118
    invoke-static {}, Lawb;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p4}, Ldp;->c(Landroid/content/Context;I)I

    move-result v1

    .line 1099
    iput v1, v0, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$d;->e:I

    .line 1107
    :cond_3
    iput-boolean p5, v0, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$d;->f:Z

    .line 121
    return-void
.end method

.method public static a(Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject;Lcom/alibaba/android/calendar/data/object/CalendarAlertObject;)V
    .locals 7
    .param p0, "floatDisplayAsyncObject"    # Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject;
    .param p1, "calendarAlertObject"    # Lcom/alibaba/android/calendar/data/object/CalendarAlertObject;

    .prologue
    .line 234
    if-nez p1, :cond_0

    .line 267
    :goto_0
    return-void

    .line 237
    :cond_0
    new-instance v1, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$c;

    invoke-direct {v1}, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$c;-><init>()V

    .line 238
    .local v1, "footer":Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$c;
    invoke-static {v1}, Lawb;->a(Ljava/lang/Object;)Lcrm;

    move-result-object v5

    .line 2051
    iput-object v5, p0, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject;->c:Lcrm;

    .line 239
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2168
    .local v0, "actionList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$a;>;"
    iput-object v0, v1, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$c;->a:Ljava/util/List;

    .line 242
    invoke-static {}, Lawb;->a()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 244
    .local v3, "resources":Landroid/content/res/Resources;
    new-instance v4, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$a;

    invoke-direct {v4}, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$a;-><init>()V

    .line 245
    .local v4, "viewDetailAction":Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$a;
    new-instance v5, Landroid/text/SpannableString;

    sget v6, Laow$f;->dt_calendar_alert_view_detail:I

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 2191
    iput-object v5, v4, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$a;->a:Landroid/text/SpannableString;

    .line 246
    sget-object v5, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$ActionStyle;->BLUE_BUTTON:Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$ActionStyle;

    .line 2207
    iput-object v5, v4, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$a;->c:Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$ActionStyle;

    .line 247
    new-instance v5, Lawb$7;

    invoke-direct {v5, p1}, Lawb$7;-><init>(Lcom/alibaba/android/calendar/data/object/CalendarAlertObject;)V

    .line 3199
    iput-object v5, v4, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$a;->b:Landroid/view/View$OnClickListener;

    .line 255
    new-instance v2, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$a;

    invoke-direct {v2}, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$a;-><init>()V

    .line 256
    .local v2, "knowAction":Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$a;
    new-instance v5, Landroid/text/SpannableString;

    sget v6, Laow$f;->ding_alert_text_i_known:I

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 4191
    iput-object v5, v2, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$a;->a:Landroid/text/SpannableString;

    .line 257
    sget-object v5, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$ActionStyle;->WHITE_BUTTON:Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$ActionStyle;

    .line 4207
    iput-object v5, v2, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$a;->c:Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$ActionStyle;

    .line 258
    new-instance v5, Lawb$8;

    invoke-direct {v5}, Lawb$8;-><init>()V

    .line 5199
    iput-object v5, v2, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$a;->b:Landroid/view/View$OnClickListener;

    .line 265
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 266
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
