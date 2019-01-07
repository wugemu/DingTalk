.class public final Ldwa;
.super Ljava/lang/Object;
.source "FloatWindowManager.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/util/List;
    .locals 11
    .param p0, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkim/base/model/FloatWindowObject;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 98
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v3

    .line 116
    :goto_0
    return-object v2

    .line 102
    :cond_0
    :try_start_0
    const-class v2, Lcom/alibaba/android/dingtalkim/onebox/floatwindow/FloatWindows;

    invoke-static {p0, v2}, Lcor;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkim/onebox/floatwindow/FloatWindows;

    .line 103
    .local v1, "windows":Lcom/alibaba/android/dingtalkim/onebox/floatwindow/FloatWindows;
    if-eqz v1, :cond_1

    invoke-static {}, Lcom/alibaba/android/dingtalk/livebase/LiveInterface;->q()Lcom/alibaba/android/dingtalk/livebase/LiveInterface;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalk/livebase/LiveInterface;->o()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1123
    if-eqz v1, :cond_1

    iget-object v2, v1, Lcom/alibaba/android/dingtalkim/onebox/floatwindow/FloatWindows;->windows:Ljava/util/List;

    if-nez v2, :cond_2

    .line 107
    :cond_1
    if-eqz v1, :cond_4

    .line 108
    iget-object v2, v1, Lcom/alibaba/android/dingtalkim/onebox/floatwindow/FloatWindows;->windows:Ljava/util/List;

    goto :goto_0

    .line 1126
    :cond_2
    iget-object v2, v1, Lcom/alibaba/android/dingtalkim/onebox/floatwindow/FloatWindows;->windows:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 1127
    :cond_3
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1128
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalkim/base/model/FloatWindowObject;

    .line 1129
    if-eqz v2, :cond_3

    iget v2, v2, Lcom/alibaba/android/dingtalkim/base/model/FloatWindowObject;->type:I

    sget-object v5, Lcom/alibaba/android/dingtalkim/base/model/FloatWindowObject$FloatWindowType;->LIVING:Lcom/alibaba/android/dingtalkim/base/model/FloatWindowObject$FloatWindowType;

    iget v5, v5, Lcom/alibaba/android/dingtalkim/base/model/FloatWindowObject$FloatWindowType;->type:I

    if-ne v2, v5, :cond_3

    .line 1130
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 112
    .end local v1    # "windows":Lcom/alibaba/android/dingtalkim/onebox/floatwindow/FloatWindows;
    :catch_0
    move-exception v0

    .line 113
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "im"

    const-string/jumbo v4, "FloatWindowManager"

    new-array v5, v10, [Ljava/lang/String;

    const-string/jumbo v6, "parse float window str err "

    aput-object v6, v5, v8

    aput-object p0, v5, v9

    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v4, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    move-object v2, v3

    .line 116
    goto :goto_0

    .line 110
    .restart local v1    # "windows":Lcom/alibaba/android/dingtalkim/onebox/floatwindow/FloatWindows;
    :cond_4
    :try_start_1
    const-string/jumbo v2, "im"

    const-string/jumbo v4, "FloatWindowManager"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "parse float window str err ret null "

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object p0, v5, v6

    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v4, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method public static a(Lcom/alibaba/wukong/im/Conversation;Z)V
    .locals 2
    .param p0, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .param p1, "open"    # Z

    .prologue
    .line 177
    if-nez p0, :cond_0

    .line 181
    :goto_0
    return-void

    .line 180
    :cond_0
    const-string/jumbo v1, "KEY_FLOAT_WIN_STATE"

    if-eqz p1, :cond_1

    const-string/jumbo v0, "0"

    :goto_1
    invoke-interface {p0, v1, v0}, Lcom/alibaba/wukong/im/Conversation;->updateLocalExtras(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "1"

    goto :goto_1
.end method

.method public static a(Lcom/alibaba/wukong/im/Conversation;)Z
    .locals 3
    .param p0, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    const/4 v1, 0x0

    .line 38
    if-nez p0, :cond_1

    .line 42
    :cond_0
    :goto_0
    return v1

    .line 41
    :cond_1
    invoke-static {p0}, Ldwa;->c(Lcom/alibaba/wukong/im/Conversation;)Ljava/util/List;

    move-result-object v0

    .line 42
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkim/base/model/FloatWindowObject;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static b(Lcom/alibaba/wukong/im/Conversation;)Z
    .locals 6
    .param p0, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    const/4 v2, 0x0

    .line 46
    if-nez p0, :cond_1

    .line 60
    :cond_0
    :goto_0
    return v2

    .line 49
    :cond_1
    invoke-static {p0}, Ldwa;->c(Lcom/alibaba/wukong/im/Conversation;)Ljava/util/List;

    move-result-object v0

    .line 50
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkim/base/model/FloatWindowObject;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 51
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkim/base/model/FloatWindowObject;

    .line 52
    .local v1, "object":Lcom/alibaba/android/dingtalkim/base/model/FloatWindowObject;
    if-eqz v1, :cond_2

    .line 55
    sget-object v4, Lcom/alibaba/android/dingtalkim/base/model/FloatWindowObject$FloatWindowType;->LIVING:Lcom/alibaba/android/dingtalkim/base/model/FloatWindowObject$FloatWindowType;

    iget v4, v4, Lcom/alibaba/android/dingtalkim/base/model/FloatWindowObject$FloatWindowType;->type:I

    iget v5, v1, Lcom/alibaba/android/dingtalkim/base/model/FloatWindowObject;->type:I

    if-ne v4, v5, :cond_2

    .line 56
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static c(Lcom/alibaba/wukong/im/Conversation;)Ljava/util/List;
    .locals 2
    .param p0, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/im/Conversation;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkim/base/model/FloatWindowObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 64
    if-nez p0, :cond_0

    .line 65
    const/4 v1, 0x0

    .line 68
    :goto_0
    return-object v1

    .line 67
    :cond_0
    const-string/jumbo v1, "floatingWindow"

    invoke-interface {p0, v1}, Lcom/alibaba/wukong/im/Conversation;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Ldwa;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    goto :goto_0
.end method
