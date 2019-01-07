.class public final Levl;
.super Ljava/lang/Object;
.source "TeleConfUserGuideCenter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Z)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "beFirst"    # Z

    .prologue
    .line 235
    if-nez p0, :cond_0

    .line 240
    :goto_0
    return-void

    .line 238
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "conf_first_biz_calling_card_flag"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v2

    invoke-virtual {v2}, Lccr;->c()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 239
    .local v0, "key":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public static a()Z
    .locals 3

    .prologue
    .line 269
    const-string/jumbo v1, "conf_first_mini_window_warning"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcpk;->a(Ljava/lang/String;Z)Z

    move-result v0

    .line 270
    .local v0, "isFirstEnter":Z
    if-eqz v0, :cond_0

    .line 271
    const-string/jumbo v1, "conf_first_mini_window_warning"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcpk;->b(Ljava/lang/String;Z)V

    .line 273
    :cond_0
    return v0
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 114
    if-nez p0, :cond_1

    move v0, v2

    .line 123
    :cond_0
    :goto_0
    return v0

    .line 117
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "conf_member_select_add_member_flag"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v4

    invoke-virtual {v4}, Lccr;->c()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 118
    .local v1, "key":Ljava/lang/String;
    const/4 v3, 0x1

    invoke-static {p0, v1, v3}, Lcpk;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    .line 119
    .local v0, "isFirstEnter":Z
    if-eqz v0, :cond_0

    .line 120
    invoke-static {p0, v1, v2}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 140
    if-nez p0, :cond_1

    move v0, v2

    .line 149
    :cond_0
    :goto_0
    return v0

    .line 143
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "conf_first_use_system_call_flag"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v4

    invoke-virtual {v4}, Lccr;->c()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 144
    .local v1, "key":Ljava/lang/String;
    const/4 v3, 0x1

    invoke-static {p0, v1, v3}, Lcpk;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    .line 145
    .local v0, "isFirstEnter":Z
    if-eqz v0, :cond_0

    .line 146
    invoke-static {p0, v1, v2}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public static c(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 194
    if-nez p0, :cond_0

    .line 195
    const/4 v0, 0x0

    .line 198
    :goto_0
    return v0

    .line 197
    :cond_0
    const-string/jumbo v1, "conf_first_enter_main_record_setting"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcpk;->a(Ljava/lang/String;Z)Z

    move-result v0

    .line 198
    .local v0, "isFirstEnter":Z
    goto :goto_0
.end method

.method public static d(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 226
    if-nez p0, :cond_0

    .line 227
    const/4 v0, 0x0

    .line 231
    :goto_0
    return v0

    .line 229
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "conf_first_biz_calling_card_flag"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v3

    invoke-virtual {v3}, Lccr;->c()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 230
    .local v1, "key":Ljava/lang/String;
    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Lcpk;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    .line 231
    .local v0, "isFirstEnter":Z
    goto :goto_0
.end method

.method public static e(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 243
    if-nez p0, :cond_0

    .line 244
    const/4 v0, 0x0

    .line 248
    :goto_0
    return v0

    .line 246
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "conf_first_permission_grant_flag"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v3

    invoke-virtual {v3}, Lccr;->c()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 247
    .local v1, "key":Ljava/lang/String;
    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Lcpk;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    .line 248
    .local v0, "isFirstEnter":Z
    goto :goto_0
.end method
