.class public final Lbaz;
.super Ljava/lang/Object;
.source "EventSelectRemindActivityPresenter.java"

# interfaces
.implements Lbay$a;


# instance fields
.field a:Lbay$b;

.field private b:I

.field private c:I

.field private d:Z

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/lang/String;

.field private g:J


# direct methods
.method public constructor <init>(Lbay$b;)V
    .locals 0
    .param p1, "view"    # Lbay$b;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lbaz;->a:Lbay$b;

    .line 40
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 50
    iget-object v0, p0, Lbaz;->a:Lbay$b;

    iget-wide v2, p0, Lbaz;->g:J

    invoke-interface {v0, v2, v3}, Lbay$b;->a(J)V

    .line 51
    return-void
.end method

.method public final a(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 44
    .line 1054
    if-eqz p1, :cond_3

    .line 1058
    const-string/jumbo v0, "intent_key_remind_mode_index"

    sget-object v1, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$EVENT_REMIND_MODE;->NOT_ALL_DAY_VALUES:Ljava/util/ArrayList;

    sget-object v2, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$EVENT_REMIND_MODE;->NONE:Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$EVENT_REMIND_MODE;

    .line 1059
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 1058
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lbaz;->b:I

    .line 1060
    const-string/jumbo v0, "intent_key_remind_type_value"

    sget-object v1, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;->APP:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;

    .line 1061
    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;->getValue()I

    move-result v1

    .line 1060
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lbaz;->c:I

    .line 1063
    const-string/jumbo v0, "intent_key_show_remind_type"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lbaz;->d:Z

    .line 1064
    const-string/jumbo v0, "intent_key_remind_type_resource_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getIntegerArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lbaz;->e:Ljava/util/List;

    .line 1065
    iget-object v0, p0, Lbaz;->e:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbaz;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1066
    :cond_0
    sget-object v0, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$EVENT_REMIND_MODE;->NOT_ALL_DAY_DES_RES_IDS:Ljava/util/ArrayList;

    iput-object v0, p0, Lbaz;->e:Ljava/util/List;

    .line 1069
    :cond_1
    const-string/jumbo v0, "intent_key_page_title"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbaz;->f:Ljava/lang/String;

    .line 1070
    iget-object v0, p0, Lbaz;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1071
    iget-object v0, p0, Lbaz;->a:Lbay$b;

    invoke-interface {v0}, Lbay$b;->a()Landroid/app/Activity;

    move-result-object v0

    sget v1, Laxp$i;->dt_event_remind_type:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbaz;->f:Ljava/lang/String;

    .line 1073
    :cond_2
    const-string/jumbo v0, "intent_key_menu_seed"

    const-wide/16 v2, 0x0

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lbaz;->g:J

    .line 1075
    iget-object v0, p0, Lbaz;->a:Lbay$b;

    iget-object v1, p0, Lbaz;->f:Ljava/lang/String;

    invoke-interface {v0, v1}, Lbay$b;->a(Ljava/lang/String;)V

    .line 1079
    :cond_3
    iget-object v0, p0, Lbaz;->a:Lbay$b;

    iget v1, p0, Lbaz;->b:I

    iget-object v2, p0, Lbaz;->e:Ljava/util/List;

    invoke-interface {v0, v1, v2}, Lbay$b;->a(ILjava/util/List;)V

    .line 1080
    iget-object v0, p0, Lbaz;->a:Lbay$b;

    iget v1, p0, Lbaz;->c:I

    iget-boolean v2, p0, Lbaz;->d:Z

    invoke-interface {v0, v1, v2}, Lbay$b;->a(IZ)V

    .line 1085
    new-instance v0, Lbaz$1;

    invoke-direct {v0, p0}, Lbaz$1;-><init>(Lbaz;)V

    const-class v1, Lcma;

    iget-object v2, p0, Lbaz;->a:Lbay$b;

    .line 1109
    invoke-interface {v2}, Lbay$b;->a()Landroid/app/Activity;

    move-result-object v2

    .line 1085
    invoke-static {v0, v1, v2}, Lcon;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 1110
    invoke-static {}, Lcom/alibaba/android/ding/base/interfaces/DingInterface;->a()Lcom/alibaba/android/ding/base/interfaces/DingInterface;

    move-result-object v1

    iget-object v2, p0, Lbaz;->a:Lbay$b;

    invoke-interface {v2}, Lbay$b;->a()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/alibaba/android/ding/base/interfaces/DingInterface;->a(Landroid/app/Activity;Lcma;)V

    .line 46
    return-void
.end method
