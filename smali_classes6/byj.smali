.class public final Lbyj;
.super Ljava/lang/Object;
.source "LiveGrayUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 105
    invoke-static {}, Lbyj;->e()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 113
    .local v0, "context":Landroid/content/Context;
    :cond_0
    :goto_0
    return v1

    .line 111
    .end local v0    # "context":Landroid/content/Context;
    :cond_1
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    .line 112
    .restart local v0    # "context":Landroid/content/Context;
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v3

    .line 113
    invoke-virtual {v3, v0, v2, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Landroid/content/Context;ZZ)Z

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public static a(Lcom/alibaba/wukong/im/Conversation;)Z
    .locals 5
    .param p0, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 38
    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/alibaba/wukong/im/Conversation;->type()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    .line 74
    :cond_0
    :goto_0
    return v1

    .line 1145
    :cond_1
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v3

    const-string/jumbo v4, "f_live_anchor_enabled"

    .line 2083
    invoke-virtual {v3, v4, v2}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v3

    .line 42
    if-eqz v3, :cond_0

    .line 2153
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x14

    if-gt v3, v4, :cond_2

    .line 2154
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v3

    const-string/jumbo v4, "f_live_anchor_disable_low_version"

    .line 3083
    invoke-virtual {v3, v4, v2}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v3

    .line 2154
    if-eqz v3, :cond_2

    move v3, v2

    .line 46
    :goto_1
    if-nez v3, :cond_0

    .line 50
    invoke-static {}, Lbyj;->e()Z

    move-result v3

    if-eqz v3, :cond_3

    move v1, v2

    .line 52
    goto :goto_0

    :cond_2
    move v3, v1

    .line 2154
    goto :goto_1

    .line 3256
    :cond_3
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v3

    const-string/jumbo v4, "lv_entry_disabled"

    .line 3257
    invoke-virtual {v3, v4, v1, v2}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/lang/String;ZZ)Z

    move-result v3

    .line 54
    if-nez v3, :cond_0

    .line 59
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v3

    const-string/jumbo v4, "f_live_disable_live_oversea"

    .line 4083
    invoke-virtual {v3, v4, v2}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v3

    .line 60
    if-eqz v3, :cond_4

    .line 61
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    .line 62
    .local v0, "context":Landroid/content/Context;
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v3

    .line 63
    invoke-virtual {v3, v0, v1, v2}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Landroid/content/Context;ZZ)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 4264
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v3

    const-string/jumbo v4, "im_foreign_live_enable"

    .line 4265
    invoke-virtual {v3, v4, v1, v2}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/lang/String;ZZ)Z

    move-result v1

    goto :goto_0

    .line 5240
    .end local v0    # "context":Landroid/content/Context;
    :cond_4
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v3

    const-string/jumbo v4, "lv_entry_full_enable"

    .line 5241
    invoke-virtual {v3, v4, v2, v2}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/lang/String;ZZ)Z

    move-result v3

    .line 68
    if-eqz v3, :cond_5

    move v1, v2

    .line 70
    goto :goto_0

    .line 5248
    :cond_5
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v3

    const-string/jumbo v4, "live_enabled"

    .line 5249
    invoke-virtual {v3, v4, v1, v2}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/lang/String;ZZ)Z

    move-result v1

    goto/16 :goto_0
.end method

.method public static b()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 169
    invoke-static {}, Lcmt;->a()Lcmt;

    move-result-object v3

    const-string/jumbo v4, "dt_live"

    const-string/jumbo v5, "hd_min_sdk"

    invoke-virtual {v3, v4, v5}, Lcmt;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 173
    .local v0, "value":Ljava/lang/String;
    const/16 v1, 0x17

    .line 174
    .local v1, "version":I
    :try_start_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 175
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 177
    :cond_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-lt v3, v1, :cond_1

    .line 180
    :goto_0
    return v2

    .line 177
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 180
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public static b(Lcom/alibaba/wukong/im/Conversation;)Z
    .locals 3
    .param p0, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    const/4 v1, 0x0

    .line 89
    invoke-static {p0}, Lbyj;->a(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 98
    :cond_0
    :goto_0
    return v1

    .line 96
    :cond_1
    const-string/jumbo v2, "groupLiveAuthority"

    invoke-interface {p0, v2}, Lcom/alibaba/wukong/im/Conversation;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 98
    .local v0, "value":Ljava/lang/String;
    const-string/jumbo v2, "1"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static c()Z
    .locals 3

    .prologue
    .line 187
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v0

    const-string/jumbo v1, "f_live_face_beauty"

    .line 6083
    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v0

    .line 187
    return v0
.end method

.method public static d()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 194
    invoke-static {}, Lcmt;->a()Lcmt;

    move-result-object v3

    const-string/jumbo v4, "dt_live"

    const-string/jumbo v5, "hd_beauty_min_sdk"

    invoke-virtual {v3, v4, v5}, Lcmt;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 198
    .local v0, "value":Ljava/lang/String;
    const/16 v1, 0x18

    .line 199
    .local v1, "version":I
    :try_start_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 200
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 202
    :cond_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-lt v3, v1, :cond_1

    .line 205
    :goto_0
    return v2

    .line 202
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 205
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public static e()Z
    .locals 4

    .prologue
    .line 231
    invoke-static {}, Lcmt;->a()Lcmt;

    move-result-object v1

    const-string/jumbo v2, "dt_live"

    const-string/jumbo v3, "gray_anchor"

    invoke-virtual {v1, v2, v3}, Lcmt;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 233
    .local v0, "value":Ljava/lang/String;
    const-string/jumbo v1, "1"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    return v1
.end method
