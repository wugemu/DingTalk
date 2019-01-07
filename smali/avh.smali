.class public final Lavh;
.super Ljava/lang/Object;
.source "CalendarBroadcastUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()V
    .locals 2

    .prologue
    .line 29
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.workapp.calendar.reload.instances"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 30
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldq;->a(Landroid/content/Intent;)Z

    .line 31
    return-void
.end method

.method public static a(Landroid/app/Activity;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 20
    if-nez p0, :cond_0

    .line 26
    :goto_0
    return-void

    .line 24
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "action_reload_mail_event"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 25
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldq;->a(Landroid/content/Intent;)Z

    goto :goto_0
.end method

.method public static a(Landroid/app/Activity;Z)V
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "success"    # Z

    .prologue
    .line 39
    if-nez p0, :cond_0

    .line 49
    :goto_0
    return-void

    .line 42
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "action_schedule_create_result"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 43
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "key_schedule_create_result"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 44
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v2

    invoke-virtual {v2, v0}, Ldq;->a(Landroid/content/Intent;)Z

    .line 46
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "action_set_current_filter"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 47
    .local v1, "setCurFilterIntent":Landroid/content/Intent;
    const-string/jumbo v2, "key_set_current_filter"

    const/16 v3, 0x9

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 48
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v2

    invoke-virtual {v2, v1}, Ldq;->a(Landroid/content/Intent;)Z

    goto :goto_0
.end method

.method public static b()V
    .locals 2

    .prologue
    .line 34
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.workapp.ding.reload.system.events"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 35
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldq;->a(Landroid/content/Intent;)Z

    .line 36
    return-void
.end method

.method public static c()V
    .locals 2

    .prologue
    .line 57
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.workapp.ding.new.tab.focus.and.recycle.hide.tips"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 58
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldq;->a(Landroid/content/Intent;)Z

    .line 59
    return-void
.end method
