.class public final Lgnm;
.super Lgly;
.source "SpaceMenuSaveToPhoneHandler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lgly;-><init>()V

    return-void
.end method

.method static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "fileType"    # Ljava/lang/String;

    .prologue
    .line 126
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 127
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    .line 130
    :cond_0
    const-string/jumbo v3, "image/jpeg"

    .line 131
    .local v3, "mimeType":Ljava/lang/String;
    const-string/jumbo v5, "gif"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 132
    const-string/jumbo v3, "image/gif"

    .line 137
    :cond_1
    :goto_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 138
    .local v1, "localContentValues":Landroid/content/ContentValues;
    const-string/jumbo v5, "_data"

    invoke-virtual {v1, v5, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    const-string/jumbo v5, "description"

    const-string/jumbo v6, "save image ---"

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    const-string/jumbo v5, "mime_type"

    invoke-virtual {v1, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    const-string/jumbo v5, "datetaken"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 143
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 144
    .local v0, "localContentResolver":Landroid/content/ContentResolver;
    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 145
    .local v2, "localUri":Landroid/net/Uri;
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 146
    const/4 v5, 0x1

    .line 150
    .end local v0    # "localContentResolver":Landroid/content/ContentResolver;
    .end local v1    # "localContentValues":Landroid/content/ContentValues;
    .end local v2    # "localUri":Landroid/net/Uri;
    .end local v3    # "mimeType":Ljava/lang/String;
    :goto_1
    return v5

    .line 133
    .restart local v3    # "mimeType":Ljava/lang/String;
    :cond_2
    const-string/jumbo v5, "png"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 134
    const-string/jumbo v3, "image/png"
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 147
    .end local v3    # "mimeType":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 148
    .local v4, "tr":Ljava/lang/Throwable;
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    .line 150
    const/4 v5, 0x0

    goto :goto_1
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lgmb;Ljava/lang/Object;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "paramModel"    # Lgmb;
    .param p3, "willChange"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 48
    const/4 v1, 0x0

    invoke-static {p1, p2, v1}, Lgnm;->a(Landroid/content/Context;Lgmb;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 122
    :goto_0
    return-void

    .line 52
    :cond_0
    iget-object v0, p2, Lgmb;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 54
    .local v0, "dentryModel":Lcom/alibaba/alimei/cspace/model/DentryModel;
    const-string/jumbo v1, "SpacePreviewActivity"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcms;->b(Ljava/lang/String;I)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v1

    new-instance v2, Lgnm$1;

    invoke-direct {v2, p0, p1, v0}, Lgnm$1;-><init>(Lgnm;Landroid/content/Context;Lcom/alibaba/alimei/cspace/model/DentryModel;)V

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
