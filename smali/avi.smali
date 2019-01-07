.class public final Lavi;
.super Ljava/lang/Object;
.source "CalendarCloudSettingUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 23
    invoke-static {}, Lcmt;->a()Lcmt;

    move-result-object v2

    const-string/jumbo v3, "calendar_function"

    const-string/jumbo v4, "c_setting_alimei"

    invoke-virtual {v2, v3, v4}, Lcmt;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 26
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 29
    :cond_0
    :goto_0
    return v1

    :cond_1
    const-string/jumbo v2, "0"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static b()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 33
    invoke-static {}, Lcmt;->a()Lcmt;

    move-result-object v2

    const-string/jumbo v3, "calendar_function"

    const-string/jumbo v4, "c_setting_alimei_share"

    invoke-virtual {v2, v3, v4}, Lcmt;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 36
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 39
    :cond_0
    :goto_0
    return v1

    :cond_1
    const-string/jumbo v2, "0"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static c()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 53
    invoke-static {}, Lcmt;->a()Lcmt;

    move-result-object v2

    const-string/jumbo v3, "calendar_function"

    const-string/jumbo v4, "c_setting_system"

    invoke-virtual {v2, v3, v4}, Lcmt;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 56
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 59
    :cond_0
    :goto_0
    return v1

    :cond_1
    const-string/jumbo v2, "0"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static d()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 63
    invoke-static {}, Lcmt;->a()Lcmt;

    move-result-object v2

    const-string/jumbo v3, "calendar_function"

    const-string/jumbo v4, "c_setting_system_notice"

    invoke-virtual {v2, v3, v4}, Lcmt;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 69
    :cond_0
    :goto_0
    return v1

    :cond_1
    const-string/jumbo v2, "0"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static e()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 73
    invoke-static {}, Lcmt;->a()Lcmt;

    move-result-object v2

    const-string/jumbo v3, "calendar_function"

    const-string/jumbo v4, "c_setting_attendance"

    invoke-virtual {v2, v3, v4}, Lcmt;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 79
    :cond_0
    :goto_0
    return v1

    :cond_1
    const-string/jumbo v2, "0"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static f()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 93
    invoke-static {}, Lcmt;->a()Lcmt;

    move-result-object v2

    const-string/jumbo v3, "calendar_function"

    const-string/jumbo v4, "c_setting_journal"

    invoke-virtual {v2, v3, v4}, Lcmt;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 96
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 99
    :cond_0
    :goto_0
    return v1

    :cond_1
    const-string/jumbo v2, "0"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static g()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 224
    invoke-static {}, Lcmt;->a()Lcmt;

    move-result-object v2

    const-string/jumbo v3, "calendar_function"

    const-string/jumbo v4, "ding_calendar_show_calendar_ui_data_android"

    invoke-virtual {v2, v3, v4}, Lcmt;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 227
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0, v1}, Lcoc;->a(Ljava/lang/String;I)I

    move-result v2

    if-lez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method
