.class final Lawe;
.super Ljava/lang/Object;
.source "PopupDisplayAsyncObjectUtil.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Ljava/lang/Object;)Lcrm;
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
    .line 471
    .local p0, "data":Ljava/lang/Object;, "TT;"
    new-instance v0, Lcrm;

    invoke-direct {v0}, Lcrm;-><init>()V

    .line 6024
    .local v0, "asyncLoadHolder":Lcrm;, "Lcrm<TT;>;"
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcrm;->a:Z

    .line 6032
    iput-object p0, v0, Lcrm;->b:Ljava/lang/Object;

    .line 474
    return-object v0
.end method

.method static a(Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject;IIIIZ)V
    .locals 3
    .param p0, "popupDisplayAsyncObject"    # Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject;
    .param p1, "iconResId"    # I
    .param p2, "iconColorResId"    # I
    .param p3, "titleResId"    # I
    .param p4, "titleColorResId"    # I
    .param p5, "showClose"    # Z

    .prologue
    .line 104
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$d;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$d;-><init>()V

    .line 105
    .local v0, "header":Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$d;
    invoke-static {v0}, Lawe;->a(Ljava/lang/Object;)Lcrm;

    move-result-object v1

    .line 1032
    iput-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject;->a:Lcrm;

    .line 106
    if-lez p1, :cond_0

    .line 1075
    iput p1, v0, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$d;->b:I

    .line 109
    :cond_0
    if-lez p2, :cond_1

    .line 110
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1, p2}, Ldp;->c(Landroid/content/Context;I)I

    move-result v1

    .line 1088
    iput v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$d;->c:I

    .line 112
    :cond_1
    if-lez p3, :cond_2

    .line 113
    new-instance v1, Landroid/text/SpannableString;

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2, p3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1096
    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$d;->d:Landroid/text/SpannableString;

    .line 115
    :cond_2
    if-lez p4, :cond_3

    .line 116
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1, p4}, Ldp;->c(Landroid/content/Context;I)I

    move-result v1

    .line 1104
    iput v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$d;->e:I

    .line 1112
    :cond_3
    iput-boolean p5, v0, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$d;->f:Z

    .line 119
    return-void
.end method

.method static a(Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject;Lcom/alibaba/android/calendar/data/object/CalendarAlertObject;)V
    .locals 7
    .param p0, "popupDisplayAsyncObject"    # Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject;
    .param p1, "calendarAlertObject"    # Lcom/alibaba/android/calendar/data/object/CalendarAlertObject;

    .prologue
    .line 233
    if-nez p1, :cond_0

    .line 266
    :goto_0
    return-void

    .line 236
    :cond_0
    new-instance v1, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$c;

    invoke-direct {v1}, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$c;-><init>()V

    .line 237
    .local v1, "footer":Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$c;
    invoke-static {v1}, Lawe;->a(Ljava/lang/Object;)Lcrm;

    move-result-object v5

    .line 2048
    iput-object v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject;->c:Lcrm;

    .line 238
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2173
    .local v0, "actionList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$a;>;"
    iput-object v0, v1, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$c;->a:Ljava/util/List;

    .line 241
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v5

    invoke-virtual {v5}, Lcid;->c()Landroid/app/Application;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 243
    .local v3, "resources":Landroid/content/res/Resources;
    new-instance v4, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$a;

    invoke-direct {v4}, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$a;-><init>()V

    .line 244
    .local v4, "viewDetailAction":Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$a;
    new-instance v5, Landroid/text/SpannableString;

    sget v6, Laow$f;->dt_calendar_alert_view_detail:I

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 2196
    iput-object v5, v4, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$a;->a:Landroid/text/SpannableString;

    .line 245
    sget-object v5, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$ActionStyle;->BLUE_BUTTON:Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$ActionStyle;

    .line 2212
    iput-object v5, v4, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$a;->c:Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$ActionStyle;

    .line 246
    new-instance v5, Lawe$7;

    invoke-direct {v5, p1}, Lawe$7;-><init>(Lcom/alibaba/android/calendar/data/object/CalendarAlertObject;)V

    .line 3204
    iput-object v5, v4, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$a;->b:Landroid/view/View$OnClickListener;

    .line 254
    new-instance v2, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$a;

    invoke-direct {v2}, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$a;-><init>()V

    .line 255
    .local v2, "knowAction":Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$a;
    new-instance v5, Landroid/text/SpannableString;

    sget v6, Laow$f;->ding_alert_text_i_known:I

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 4196
    iput-object v5, v2, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$a;->a:Landroid/text/SpannableString;

    .line 256
    sget-object v5, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$ActionStyle;->WHITE_BUTTON:Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$ActionStyle;

    .line 4212
    iput-object v5, v2, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$a;->c:Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$ActionStyle;

    .line 257
    new-instance v5, Lawe$8;

    invoke-direct {v5}, Lawe$8;-><init>()V

    .line 5204
    iput-object v5, v2, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$a;->b:Landroid/view/View$OnClickListener;

    .line 264
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 265
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
