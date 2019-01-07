.class final Lavr$4;
.super Ljava/lang/Object;
.source "CalendarNavUtil.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lavr;->a(Landroid/app/Activity;Lcom/alibaba/android/calendar/base/interfaces/ScheduleCreateModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/calendar/base/interfaces/ScheduleCreateModel;


# direct methods
.method constructor <init>(Lcom/alibaba/android/calendar/base/interfaces/ScheduleCreateModel;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lavr$4;->a:Lcom/alibaba/android/calendar/base/interfaces/ScheduleCreateModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onIntentRewrite(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 94
    iget-object v0, p0, Lavr$4;->a:Lcom/alibaba/android/calendar/base/interfaces/ScheduleCreateModel;

    if-eqz v0, :cond_0

    .line 95
    const-string/jumbo v0, "intent_key_schedule_create_model"

    iget-object v1, p0, Lavr$4;->a:Lcom/alibaba/android/calendar/base/interfaces/ScheduleCreateModel;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 97
    :cond_0
    return-object p1
.end method
