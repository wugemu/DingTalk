.class final Lflg;
.super Ljava/lang/Object;
.source "FileWorker.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a()Ljava/io/File;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 51
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Application;->getFilesDir()Ljava/io/File;

    move-result-object v0

    .line 52
    .local v0, "file":Ljava/io/File;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 53
    new-instance v1, Ljava/io/File;

    const-string/jumbo v3, "custom_entry_config"

    invoke-direct {v1, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 54
    .end local v0    # "file":Ljava/io/File;
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 61
    .end local v1    # "file":Ljava/io/File;
    :cond_0
    :goto_0
    return-object v1

    .line 57
    .restart local v1    # "file":Ljava/io/File;
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 58
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    move-object v1, v2

    goto :goto_0

    .end local v1    # "file":Ljava/io/File;
    .restart local v0    # "file":Ljava/io/File;
    :cond_2
    move-object v1, v2

    .line 61
    goto :goto_0
.end method

.method static a(J)Ljava/lang/String;
    .locals 4
    .param p0, "orgId"    # J

    .prologue
    .line 41
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    const-string/jumbo v1, "contact"

    const-string/jumbo v2, "org_big_customer_setting"

    invoke-virtual {v0, v1, v2, p0, p1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static a(Ljava/lang/String;)Z
    .locals 1
    .param p0, "mediaId"    # Ljava/lang/String;

    .prologue
    .line 66
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "pref_key_custom_entry_config"

    .line 67
    invoke-static {v0}, Lcpl;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
