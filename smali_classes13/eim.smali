.class public final Leim;
.super Ljava/lang/Object;
.source "CustomThemeLoadManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Leim$a;
    }
.end annotation


# static fields
.field private static a:Leim;


# instance fields
.field private final b:Ljava/lang/String;

.field private c:Leim$a;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const-string/jumbo v0, "CustomThemeLoadManager"

    iput-object v0, p0, Leim;->b:Ljava/lang/String;

    .line 282
    new-instance v0, Leim$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Leim$a;-><init>(Leim;B)V

    iput-object v0, p0, Leim;->c:Leim$a;

    .line 42
    return-void
.end method

.method public static declared-synchronized a()Leim;
    .locals 2

    .prologue
    .line 35
    const-class v1, Leim;

    monitor-enter v1

    :try_start_0
    sget-object v0, Leim;->a:Leim;

    if-nez v0, :cond_0

    .line 36
    new-instance v0, Leim;

    invoke-direct {v0}, Leim;-><init>()V

    sput-object v0, Leim;->a:Leim;

    .line 38
    :cond_0
    sget-object v0, Leim;->a:Leim;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 35
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static b()J
    .locals 18

    .prologue
    .line 114
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v7

    invoke-virtual {v7}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->N()Ljava/util/List;

    move-result-object v6

    .line 115
    .local v6, "orgIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    if-eqz v6, :cond_0

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_1

    .line 116
    :cond_0
    const-wide/16 v10, 0x0

    .line 156
    :goto_0
    return-wide v10

    .line 118
    :cond_1
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    .line 119
    .local v1, "l":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_3

    .line 120
    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_2

    .line 121
    const-wide/16 v14, 0x0

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v6, v0, v7}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 119
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 129
    :cond_3
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v7

    const-string/jumbo v14, "contact_theme_enabled"

    const/4 v15, 0x0

    invoke-virtual {v7, v14, v15}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 130
    const-wide/16 v14, 0x1

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    :cond_4
    invoke-static {v6}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 133
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v7

    invoke-virtual {v7}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->A()Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    move-result-object v2

    .line 134
    .local v2, "mainOrg":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    if-nez v2, :cond_5

    .line 135
    const-wide/16 v10, 0x0

    goto :goto_0

    .line 137
    :cond_5
    iget-wide v4, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    .line 138
    .local v4, "mainOrgId":J
    const-wide/16 v10, 0x0

    .line 139
    .local v10, "selectedOrgId":J
    const-wide/16 v12, 0x0

    .line 140
    .local v12, "selectedPriority":J
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_6
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_8

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 141
    .local v3, "orgId":Ljava/lang/Long;
    if-eqz v3, :cond_6

    .line 144
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v14

    invoke-virtual {v14}, Lcid;->c()Landroid/app/Application;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    const-string/jumbo v16, "custom_theme_priority_"

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const-wide/16 v16, 0x0

    invoke-static/range {v14 .. v17}, Lcpk;->b(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v8

    .line 145
    .local v8, "priority":J
    cmp-long v14, v8, v12

    if-lez v14, :cond_7

    .line 146
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    .line 147
    move-wide v12, v8

    goto :goto_2

    .line 148
    :cond_7
    cmp-long v14, v8, v12

    if-nez v14, :cond_6

    .line 149
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    cmp-long v14, v14, v4

    if-nez v14, :cond_6

    .line 150
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    goto :goto_2

    .line 155
    .end local v3    # "orgId":Ljava/lang/Long;
    .end local v8    # "priority":J
    :cond_8
    const-string/jumbo v7, "theme"

    const-string/jumbo v14, "CustomThemeLoadManager"

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/String;

    const/16 v16, 0x0

    const-string/jumbo v17, "getCurrentThemeOrgId selectedOrgId : "

    aput-object v17, v15, v16

    const/16 v16, 0x1

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v15}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v7, v14, v15}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private declared-synchronized b(JLjava/lang/String;Ljava/lang/String;J)V
    .locals 3
    .param p1, "orgId"    # J
    .param p3, "mediaId"    # Ljava/lang/String;
    .param p4, "md5"    # Ljava/lang/String;
    .param p5, "priority"    # J

    .prologue
    .line 169
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "custom_theme_media_id_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-nez p3, :cond_0

    const-string/jumbo p3, ""

    .end local p3    # "mediaId":Ljava/lang/String;
    :cond_0
    invoke-static {v0, v1, p3}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "custom_theme_md5_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-nez p4, :cond_1

    const-string/jumbo p4, ""

    .end local p4    # "md5":Ljava/lang/String;
    :cond_1
    invoke-static {v0, v1, p4}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "custom_theme_priority_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p5, p6}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;J)V

    .line 172
    const-string/jumbo v0, "dingtalkbase"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "addThemeConfig orgId "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcpv;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    monitor-exit p0

    return-void

    .line 169
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static c()Z
    .locals 2

    .prologue
    .line 160
    const-string/jumbo v0, "pref_key_use_default_theme"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcpk;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private declared-synchronized d(J)V
    .locals 3
    .param p1, "orgId"    # J

    .prologue
    .line 189
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "custom_theme_media_id_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcpk;->e(Landroid/content/Context;Ljava/lang/String;)V

    .line 190
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "custom_theme_md5_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcpk;->e(Landroid/content/Context;Ljava/lang/String;)V

    .line 191
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "custom_theme_priority_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcpk;->e(Landroid/content/Context;Ljava/lang/String;)V

    .line 192
    const-string/jumbo v0, "dingtalkbase"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "removeThemeConfig orgId "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcpv;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 193
    monitor-exit p0

    return-void

    .line 189
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static e(J)Ljava/lang/String;
    .locals 4
    .param p0, "orgId"    # J

    .prologue
    .line 296
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "custom_theme_media_id_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static f(J)Ljava/lang/String;
    .locals 4
    .param p0, "orgId"    # J

    .prologue
    .line 300
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "custom_theme_md5_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(J)V
    .locals 5
    .param p1, "orgId"    # J

    .prologue
    .line 178
    invoke-direct {p0, p1, p2}, Leim;->d(J)V

    .line 180
    invoke-static {}, Lcmq;->a()Lcmq;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcmq;->c(J)V

    .line 181
    invoke-static {}, Lcmq;->a()Lcmq;

    move-result-object v1

    .line 1383
    iget-object v0, v1, Lcmq;->a:Lcom/alibaba/android/dingtalkbase/themes/CustomThemeObject;

    .line 183
    .local v0, "customThemeObject":Lcom/alibaba/android/dingtalkbase/themes/CustomThemeObject;
    if-eqz v0, :cond_0

    iget-wide v2, v0, Lcom/alibaba/android/dingtalkbase/themes/CustomThemeObject;->orgId:J

    cmp-long v1, v2, p1

    if-nez v1, :cond_0

    .line 184
    invoke-static {}, Lcmq;->a()Lcmq;

    move-result-object v1

    invoke-virtual {v1}, Lcmq;->b()V

    .line 186
    :cond_0
    return-void
.end method

.method public final a(JLjava/lang/String;Ljava/lang/String;J)V
    .locals 1
    .param p1, "orgId"    # J
    .param p3, "mediaId"    # Ljava/lang/String;
    .param p4, "md5"    # Ljava/lang/String;
    .param p5, "priority"    # J

    .prologue
    .line 165
    invoke-direct/range {p0 .. p6}, Leim;->b(JLjava/lang/String;Ljava/lang/String;J)V

    .line 166
    return-void
.end method

.method public final b(J)V
    .locals 9
    .param p1, "delayDownloadTime"    # J

    .prologue
    .line 226
    invoke-static {}, Leim;->b()J

    move-result-wide v0

    .line 227
    .local v0, "currentOrgId":J
    const-wide/16 v6, 0x0

    cmp-long v5, v0, v6

    if-lez v5, :cond_5

    .line 231
    invoke-virtual {p0, v0, v1}, Leim;->c(J)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 232
    invoke-static {v0, v1}, Leim;->e(J)Ljava/lang/String;

    move-result-object v4

    .line 233
    .local v4, "mediaId":Ljava/lang/String;
    invoke-static {v0, v1}, Leim;->f(J)Ljava/lang/String;

    move-result-object v3

    .line 2160
    .local v3, "md5":Ljava/lang/String;
    const-string/jumbo v5, "pref_key_use_default_theme"

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcpk;->a(Ljava/lang/String;Z)Z

    move-result v5

    .line 234
    if-eqz v5, :cond_1

    .line 236
    invoke-static {}, Lcmq;->a()Lcmq;

    move-result-object v5

    invoke-virtual {v5}, Lcmq;->b()V

    .line 267
    .end local v3    # "md5":Ljava/lang/String;
    .end local v4    # "mediaId":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 238
    .restart local v3    # "md5":Ljava/lang/String;
    .restart local v4    # "mediaId":Ljava/lang/String;
    :cond_1
    invoke-static {}, Lcmq;->a()Lcmq;

    move-result-object v5

    .line 2383
    iget-object v2, v5, Lcmq;->a:Lcom/alibaba/android/dingtalkbase/themes/CustomThemeObject;

    .line 240
    .local v2, "customThemeObject":Lcom/alibaba/android/dingtalkbase/themes/CustomThemeObject;
    if-eqz v2, :cond_2

    iget-wide v6, v2, Lcom/alibaba/android/dingtalkbase/themes/CustomThemeObject;->orgId:J

    cmp-long v5, v6, v0

    if-nez v5, :cond_2

    iget-object v5, v2, Lcom/alibaba/android/dingtalkbase/themes/CustomThemeObject;->mediaId:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 244
    :cond_2
    invoke-static {}, Lcmq;->a()Lcmq;

    move-result-object v5

    invoke-virtual {v5, v0, v1, v4}, Lcmq;->b(JLjava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 245
    invoke-static {}, Lcmq;->a()Lcmq;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Lcmq;->e(J)V

    goto :goto_0

    .line 248
    :cond_3
    iget-object v5, p0, Leim;->c:Leim$a;

    iget-boolean v5, v5, Leim$a;->d:Z

    if-eqz v5, :cond_4

    iget-object v5, p0, Leim;->c:Leim$a;

    iget-object v5, v5, Leim$a;->b:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 251
    :cond_4
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v5

    iget-object v6, p0, Leim;->c:Leim$a;

    invoke-virtual {v5, v6}, Lhcv;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 252
    iget-object v5, p0, Leim;->c:Leim$a;

    iput-wide v0, v5, Leim$a;->a:J

    .line 253
    iget-object v5, p0, Leim;->c:Leim$a;

    iput-object v4, v5, Leim$a;->b:Ljava/lang/String;

    .line 254
    iget-object v5, p0, Leim;->c:Leim$a;

    iput-object v3, v5, Leim$a;->c:Ljava/lang/String;

    .line 255
    iget-object v5, p0, Leim;->c:Leim$a;

    const/4 v6, 0x1

    iput-boolean v6, v5, Leim$a;->d:Z

    .line 256
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v5

    iget-object v6, p0, Leim;->c:Leim$a;

    invoke-virtual {v5, v6, p1, p2}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 264
    .end local v2    # "customThemeObject":Lcom/alibaba/android/dingtalkbase/themes/CustomThemeObject;
    .end local v3    # "md5":Ljava/lang/String;
    .end local v4    # "mediaId":Ljava/lang/String;
    :cond_5
    invoke-static {}, Lcmq;->a()Lcmq;

    move-result-object v5

    invoke-virtual {v5}, Lcmq;->b()V

    goto :goto_0
.end method

.method public final c(J)Z
    .locals 1
    .param p1, "orgId"    # J

    .prologue
    .line 292
    invoke-static {p1, p2}, Leim;->e(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1, p2}, Leim;->f(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
