.class public Ldfr;
.super Ljava/lang/Object;
.source "ChatThemeManager.java"


# static fields
.field private static volatile b:Ldfr;


# instance fields
.field public a:Lfp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfp",
            "<",
            "Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Lfp;

    invoke-direct {v0}, Lfp;-><init>()V

    iput-object v0, p0, Ldfr;->a:Lfp;

    .line 46
    return-void
.end method

.method public static a()Ldfr;
    .locals 2

    .prologue
    .line 49
    sget-object v0, Ldfr;->b:Ldfr;

    if-nez v0, :cond_1

    .line 50
    const-class v1, Ldfr;

    monitor-enter v1

    .line 51
    :try_start_0
    sget-object v0, Ldfr;->b:Ldfr;

    if-nez v0, :cond_0

    .line 52
    new-instance v0, Ldfr;

    invoke-direct {v0}, Ldfr;-><init>()V

    sput-object v0, Ldfr;->b:Ldfr;

    .line 54
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    :cond_1
    sget-object v0, Ldfr;->b:Ldfr;

    return-object v0

    .line 54
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static a(J)Ljava/io/File;
    .locals 6
    .param p0, "themeId"    # J

    .prologue
    .line 179
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    .line 180
    .local v0, "context":Landroid/content/Context;
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "chat_background_theme_"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string/jumbo v5, ".json"

    aput-object v5, v3, v4

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 182
    .local v2, "fileName":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/io/File;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    const-string/jumbo v5, "im"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string/jumbo v4, "json"

    invoke-direct {v1, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 183
    .local v1, "dir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 184
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 186
    :cond_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v3
.end method

.method public static a(Lcom/alibaba/wukong/im/Conversation;)Z
    .locals 4
    .param p0, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 60
    if-eqz p0, :cond_1

    invoke-static {p0}, Ldeo;->a(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 73
    :cond_0
    :goto_0
    return v0

    .line 64
    :cond_1
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v2

    const-string/jumbo v3, "im_chat_theme_setting_enabled"

    invoke-virtual {v2, v3, v1, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/lang/String;ZZ)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 69
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v2

    const-string/jumbo v3, "f_im_chat_theme_setting_enabled"

    .line 1083
    invoke-virtual {v2, v3, v1}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v2

    .line 69
    if-eqz v2, :cond_0

    move v0, v1

    .line 73
    goto :goto_0
.end method

.method public static b(Lcom/alibaba/wukong/im/Conversation;)Z
    .locals 4
    .param p0, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 78
    if-eqz p0, :cond_1

    invoke-static {p0}, Ldeo;->a(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 91
    :cond_0
    :goto_0
    return v0

    .line 82
    :cond_1
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v2

    const-string/jumbo v3, "im_chat_theme_supported"

    invoke-virtual {v2, v3, v1, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/lang/String;ZZ)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 87
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v2

    const-string/jumbo v3, "f_im_chat_theme_supported"

    .line 2083
    invoke-virtual {v2, v3, v1}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v2

    .line 87
    if-eqz v2, :cond_0

    move v0, v1

    .line 91
    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;)V
    .locals 9
    .param p1, "object"    # Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 154
    if-nez p1, :cond_0

    .line 175
    :goto_0
    return-void

    .line 159
    :cond_0
    iget-object v4, p0, Ldfr;->a:Lfp;

    iget-wide v6, p1, Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;->themeId:J

    invoke-virtual {v4, v6, v7, p1}, Lfp;->b(JLjava/lang/Object;)V

    .line 162
    iget-wide v4, p1, Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;->themeId:J

    invoke-static {v4, v5}, Ldfr;->a(J)Ljava/io/File;

    move-result-object v1

    .line 163
    .local v1, "file":Ljava/io/File;
    const/4 v2, 0x0

    .line 165
    .local v2, "writer":Lgxo;
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 166
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 168
    :cond_1
    new-instance v3, Lgxo;

    new-instance v4, Ljava/io/FileWriter;

    invoke-direct {v4, v1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Lgxo;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3061
    .end local v2    # "writer":Lgxo;
    .local v3, "writer":Lgxo;
    :try_start_1
    iget-object v4, v3, Lgxo;->a:Lgyq;

    invoke-virtual {v4, p1}, Lgyq;->b(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 174
    invoke-static {v3}, Lcom/alibaba/doraemon/utils/IOUtils;->close(Ljava/io/Closeable;)V

    goto :goto_0

    .line 170
    .end local v3    # "writer":Lgxo;
    .restart local v2    # "writer":Lgxo;
    :catch_0
    move-exception v0

    .line 171
    .local v0, "e":Ljava/lang/Throwable;
    :goto_1
    :try_start_2
    const-string/jumbo v4, "im"

    const/4 v5, 0x0

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string/jumbo v8, "saveTheme failed, error="

    aput-object v8, v6, v7

    const/4 v7, 0x1

    .line 172
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    .line 171
    invoke-static {v6}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 174
    invoke-static {v2}, Lcom/alibaba/doraemon/utils/IOUtils;->close(Ljava/io/Closeable;)V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v4

    :goto_2
    invoke-static {v2}, Lcom/alibaba/doraemon/utils/IOUtils;->close(Ljava/io/Closeable;)V

    throw v4

    .end local v2    # "writer":Lgxo;
    .restart local v3    # "writer":Lgxo;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3    # "writer":Lgxo;
    .restart local v2    # "writer":Lgxo;
    goto :goto_2

    .line 170
    .end local v2    # "writer":Lgxo;
    .restart local v3    # "writer":Lgxo;
    :catch_1
    move-exception v0

    move-object v2, v3

    .end local v3    # "writer":Lgxo;
    .restart local v2    # "writer":Lgxo;
    goto :goto_1
.end method
