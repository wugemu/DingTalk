.class public Lcom/alibaba/alimei/sdk/MailContentDownloadService;
.super Landroid/app/Service;
.source "MailContentDownloadService.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailSnippetModel;",
            ">;"
        }
    .end annotation
.end field

.field b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/alimei/sdk/model/MailSnippetModel;",
            ">;"
        }
    .end annotation
.end field

.field protected c:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailSnippetModel;",
            ">;"
        }
    .end annotation
.end field

.field d:Laiz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Laiz",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field e:Lcom/alibaba/alimei/framework/model/AccountSettingModel;

.field private final f:Ljava/lang/Object;

.field private volatile g:Z

.field private h:Z

.field private i:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 34
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 47
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alimei/sdk/MailContentDownloadService;->f:Ljava/lang/Object;

    .line 49
    iput-boolean v3, p0, Lcom/alibaba/alimei/sdk/MailContentDownloadService;->g:Z

    .line 51
    iput-boolean v3, p0, Lcom/alibaba/alimei/sdk/MailContentDownloadService;->h:Z

    .line 53
    iput-boolean v3, p0, Lcom/alibaba/alimei/sdk/MailContentDownloadService;->i:Z

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alimei/sdk/MailContentDownloadService;->a:Ljava/util/ArrayList;

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alimei/sdk/MailContentDownloadService;->b:Ljava/util/HashMap;

    .line 62
    new-instance v0, Lcom/alibaba/alimei/sdk/MailContentDownloadService$1;

    invoke-direct {v0, p0}, Lcom/alibaba/alimei/sdk/MailContentDownloadService$1;-><init>(Lcom/alibaba/alimei/sdk/MailContentDownloadService;)V

    iput-object v0, p0, Lcom/alibaba/alimei/sdk/MailContentDownloadService;->c:Ljava/util/Comparator;

    .line 77
    new-instance v0, Laiz;

    const/16 v1, 0x64

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v3}, Laiz;-><init>(IIZ)V

    iput-object v0, p0, Lcom/alibaba/alimei/sdk/MailContentDownloadService;->d:Laiz;

    return-void
.end method

.method static synthetic a(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    .prologue
    .line 34
    invoke-static {p0}, Lcom/alibaba/alimei/sdk/MailContentDownloadService;->d(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mail"    # Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    .prologue
    .line 397
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "MailContentDownloadService download : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/alibaba/alimei/sdk/MailContentDownloadService;->d(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lzb;->d(Ljava/lang/String;)I

    .line 398
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/alibaba/alimei/sdk/MailContentDownloadService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 399
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.alibaba.alimei.ACTION_DOENLOAD_SING_MAIL_CONTENT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 400
    const-string/jumbo v1, "mail"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 401
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 405
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 403
    :catch_0
    move-exception v1

    const-string/jumbo v1, "MailContentDownloadService can not find service "

    invoke-static {v1}, Lzb;->d(Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/alimei/sdk/MailContentDownloadService;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/sdk/MailContentDownloadService;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/alibaba/alimei/sdk/MailContentDownloadService;->e()V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/alimei/sdk/MailContentDownloadService;Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/sdk/MailContentDownloadService;
    .param p1, "x1"    # Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/sdk/MailContentDownloadService;->c(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/alimei/sdk/MailContentDownloadService;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/sdk/MailContentDownloadService;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/sdk/MailContentDownloadService;->a(Ljava/util/List;)V

    return-void
.end method

.method private declared-synchronized a(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailDetailModel;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 134
    .local p1, "mails":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailDetailModel;>;"
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/MailContentDownloadService;->a:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 135
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/alibaba/alimei/sdk/MailContentDownloadService;->a:Ljava/util/ArrayList;

    .line 137
    :cond_0
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/MailContentDownloadService;->b:Ljava/util/HashMap;

    if-nez v1, :cond_1

    .line 138
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/alibaba/alimei/sdk/MailContentDownloadService;->b:Ljava/util/HashMap;

    .line 140
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    .line 141
    .local v0, "mailDetailModel":Lcom/alibaba/alimei/sdk/model/MailDetailModel;
    if-eqz v0, :cond_2

    iget-boolean v2, v0, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->hasMailHtmlBodyLoaded:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/alibaba/alimei/sdk/MailContentDownloadService;->b:Ljava/util/HashMap;

    iget-object v3, v0, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->serverId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 142
    iget-object v2, p0, Lcom/alibaba/alimei/sdk/MailContentDownloadService;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    iget-object v2, p0, Lcom/alibaba/alimei/sdk/MailContentDownloadService;->b:Ljava/util/HashMap;

    iget-object v3, v0, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->serverId:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 134
    .end local v0    # "mailDetailModel":Lcom/alibaba/alimei/sdk/model/MailDetailModel;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 146
    :cond_3
    :try_start_1
    invoke-direct {p0}, Lcom/alibaba/alimei/sdk/MailContentDownloadService;->b()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 147
    monitor-exit p0

    return-void
.end method

.method private a()Z
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 185
    iget-object v2, p0, Lcom/alibaba/alimei/sdk/MailContentDownloadService;->e:Lcom/alibaba/alimei/framework/model/AccountSettingModel;

    if-eqz v2, :cond_4

    .line 192
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "MailContentDownloadService isAllow Run : type = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alibaba/alimei/sdk/MailContentDownloadService;->e:Lcom/alibaba/alimei/framework/model/AccountSettingModel;

    iget v3, v3, Lcom/alibaba/alimei/framework/model/AccountSettingModel;->downloadContentType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " wifi: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 193
    invoke-static {}, Lafv;->b()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Laix;->a(Landroid/content/Context;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " network : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 194
    invoke-static {}, Lafv;->b()Landroid/content/Context;

    move-result-object v3

    .line 193
    invoke-static {v3}, Laix;->b(Landroid/content/Context;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 192
    invoke-static {v2}, Lzb;->d(Ljava/lang/String;)I

    .line 195
    iget-object v2, p0, Lcom/alibaba/alimei/sdk/MailContentDownloadService;->e:Lcom/alibaba/alimei/framework/model/AccountSettingModel;

    iget v2, v2, Lcom/alibaba/alimei/framework/model/AccountSettingModel;->downloadContentType:I

    if-nez v2, :cond_0

    .line 196
    invoke-static {}, Lafv;->b()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Laix;->a(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    iget-object v2, p0, Lcom/alibaba/alimei/sdk/MailContentDownloadService;->e:Lcom/alibaba/alimei/framework/model/AccountSettingModel;

    iget v2, v2, Lcom/alibaba/alimei/framework/model/AccountSettingModel;->downloadContentType:I

    if-ne v2, v0, :cond_1

    .line 198
    invoke-static {}, Lafv;->b()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Laix;->b(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    iget-object v2, p0, Lcom/alibaba/alimei/sdk/MailContentDownloadService;->e:Lcom/alibaba/alimei/framework/model/AccountSettingModel;

    iget v2, v2, Lcom/alibaba/alimei/framework/model/AccountSettingModel;->downloadContentType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 200
    :cond_2
    const-string/jumbo v0, "MailContentDownloadService download enable = false"

    invoke-static {v0}, Lzb;->d(Ljava/lang/String;)I

    move v0, v1

    .line 208
    :goto_0
    return v0

    .line 203
    :cond_3
    const-string/jumbo v1, "MailContentDownloadService download enable = true"

    invoke-static {v1}, Lzb;->d(Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    move v0, v1

    .line 208
    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/alimei/sdk/MailContentDownloadService;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/sdk/MailContentDownloadService;
    .param p1, "x1"    # Z

    .prologue
    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/alimei/sdk/MailContentDownloadService;->i:Z

    return v0
.end method

.method private b()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 259
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/MailContentDownloadService;->a:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/alibaba/alimei/sdk/MailContentDownloadService;->c:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 260
    return-void
.end method

.method static synthetic b(Lcom/alibaba/alimei/sdk/MailContentDownloadService;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/sdk/MailContentDownloadService;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/alibaba/alimei/sdk/MailContentDownloadService;->f()V

    return-void
.end method

.method private declared-synchronized b(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)V
    .locals 2
    .param p1, "mail"    # Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 120
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/MailContentDownloadService;->a:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 121
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alimei/sdk/MailContentDownloadService;->a:Ljava/util/ArrayList;

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/MailContentDownloadService;->b:Ljava/util/HashMap;

    if-nez v0, :cond_1

    .line 124
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alimei/sdk/MailContentDownloadService;->b:Ljava/util/HashMap;

    .line 126
    :cond_1
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/MailContentDownloadService;->b:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->serverId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 127
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/MailContentDownloadService;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/MailContentDownloadService;->b:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->serverId:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    invoke-direct {p0}, Lcom/alibaba/alimei/sdk/MailContentDownloadService;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    :cond_2
    monitor-exit p0

    return-void

    .line 120
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic b(Lcom/alibaba/alimei/sdk/MailContentDownloadService;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/sdk/MailContentDownloadService;
    .param p1, "x1"    # Z

    .prologue
    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/alimei/sdk/MailContentDownloadService;->h:Z

    return v0
.end method

.method private declared-synchronized c()Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 263
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "MailContentDownloadService size : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alibaba/alimei/sdk/MailContentDownloadService;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lzb;->d(Ljava/lang/String;)I

    .line 264
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/MailContentDownloadService;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/alimei/sdk/MailContentDownloadService;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/MailContentDownloadService;->a:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 267
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 263
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized c(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)V
    .locals 2
    .param p1, "mail"    # Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 150
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/MailContentDownloadService;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/alimei/sdk/MailContentDownloadService;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/MailContentDownloadService;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 152
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/MailContentDownloadService;->b:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->serverId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    :cond_0
    monitor-exit p0

    return-void

    .line 150
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic c(Lcom/alibaba/alimei/sdk/MailContentDownloadService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/sdk/MailContentDownloadService;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/alibaba/alimei/sdk/MailContentDownloadService;->a()Z

    move-result v0

    return v0
.end method

.method private static d(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)Ljava/lang/String;
    .locals 4
    .param p0, "mail"    # Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    .prologue
    .line 387
    if-nez p0, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, " "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->serverId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->timeStamp:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->subject:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private declared-synchronized d()V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 304
    monitor-enter p0

    :try_start_0
    iget-object v5, p0, Lcom/alibaba/alimei/sdk/MailContentDownloadService;->e:Lcom/alibaba/alimei/framework/model/AccountSettingModel;

    if-nez v5, :cond_0

    .line 2160
    invoke-static {}, Lafv;->e()Lcom/alibaba/alimei/framework/account/AccountApi;

    move-result-object v5

    invoke-interface {v5}, Lcom/alibaba/alimei/framework/account/AccountApi;->getDefaultAccountName()Ljava/lang/String;

    move-result-object v5

    .line 2161
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/alibaba/alimei/sdk/MailContentDownloadService;->i:Z

    .line 2162
    invoke-static {}, Lafv;->e()Lcom/alibaba/alimei/framework/account/AccountApi;

    move-result-object v6

    new-instance v7, Lcom/alibaba/alimei/sdk/MailContentDownloadService$2;

    invoke-direct {v7, p0}, Lcom/alibaba/alimei/sdk/MailContentDownloadService$2;-><init>(Lcom/alibaba/alimei/sdk/MailContentDownloadService;)V

    invoke-interface {v6, v5, v7}, Lcom/alibaba/alimei/framework/account/AccountApi;->queryAccountSetting(Ljava/lang/String;Lxv;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 363
    :goto_0
    monitor-exit p0

    return-void

    .line 309
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/alibaba/alimei/sdk/MailContentDownloadService;->a()Z

    move-result v5

    if-nez v5, :cond_1

    .line 310
    const-string/jumbo v5, "MailContentDownloadService kick download enable = false ,clear download list,stop self"

    invoke-static {v5}, Lzb;->d(Ljava/lang/String;)I

    .line 311
    invoke-direct {p0}, Lcom/alibaba/alimei/sdk/MailContentDownloadService;->f()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 304
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 315
    :cond_1
    :try_start_2
    invoke-direct {p0}, Lcom/alibaba/alimei/sdk/MailContentDownloadService;->c()Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    move-result-object v3

    .line 316
    .local v3, "mail":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    if-nez v3, :cond_2

    .line 318
    const-string/jumbo v5, "MailContentDownloadService all download compelete,stop service "

    invoke-static {v5}, Lzb;->d(Ljava/lang/String;)I

    .line 319
    invoke-direct {p0}, Lcom/alibaba/alimei/sdk/MailContentDownloadService;->f()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 323
    :cond_2
    :try_start_3
    invoke-static {}, Lafv;->e()Lcom/alibaba/alimei/framework/account/AccountApi;

    move-result-object v5

    invoke-interface {v5}, Lcom/alibaba/alimei/framework/account/AccountApi;->getDefaultAccountName()Ljava/lang/String;

    move-result-object v0

    .line 324
    .local v0, "defaultAccount":Ljava/lang/String;
    invoke-static {v0}, Lafv;->b(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/displayer/AbsMailDisplayer;

    move-result-object v4

    .line 325
    .local v4, "mailDisplayer":Lcom/alibaba/alimei/sdk/displayer/AbsMailDisplayer;
    new-instance v2, Lcom/alibaba/alimei/sdk/MailContentDownloadService$4;

    invoke-direct {v2, p0, v3}, Lcom/alibaba/alimei/sdk/MailContentDownloadService$4;-><init>(Lcom/alibaba/alimei/sdk/MailContentDownloadService;Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)V

    .line 344
    .local v2, "listener":Lxv;, "Lxv<Ljava/lang/String;>;"
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/alibaba/alimei/sdk/MailContentDownloadService;->h:Z

    .line 345
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "MailContentDownloadService start download : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/alibaba/alimei/sdk/MailContentDownloadService;->d(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lzb;->d(Ljava/lang/String;)I

    .line 346
    iget-object v5, v3, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->serverId:Ljava/lang/String;

    invoke-virtual {v4, v5, v2}, Lcom/alibaba/alimei/sdk/displayer/AbsMailDisplayer;->queryMailHtmlBodyFromServer(Ljava/lang/String;Lxv;)V

    .line 2271
    iget-object v5, p0, Lcom/alibaba/alimei/sdk/MailContentDownloadService;->d:Laiz;

    if-nez v5, :cond_3

    .line 2272
    new-instance v5, Laiz;

    const/16 v6, 0x64

    const/4 v7, 0x3

    const/4 v8, 0x0

    invoke-direct {v5, v6, v7, v8}, Laiz;-><init>(IIZ)V

    iput-object v5, p0, Lcom/alibaba/alimei/sdk/MailContentDownloadService;->d:Laiz;

    .line 2274
    :cond_3
    iget-object v5, p0, Lcom/alibaba/alimei/sdk/MailContentDownloadService;->d:Laiz;

    .line 349
    iget-object v6, v3, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->serverId:Ljava/lang/String;

    new-instance v7, Lcom/alibaba/alimei/sdk/MailContentDownloadService$5;

    invoke-direct {v7, p0, v3}, Lcom/alibaba/alimei/sdk/MailContentDownloadService$5;-><init>(Lcom/alibaba/alimei/sdk/MailContentDownloadService;Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)V

    invoke-virtual {v5, v6, v7}, Laiz;->a(Ljava/lang/Object;Ljava/lang/Runnable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 357
    .end local v0    # "defaultAccount":Ljava/lang/String;
    .end local v2    # "listener":Lxv;, "Lxv<Ljava/lang/String;>;"
    .end local v4    # "mailDisplayer":Lcom/alibaba/alimei/sdk/displayer/AbsMailDisplayer;
    :catch_0
    move-exception v1

    .line 358
    .local v1, "e":Ljava/lang/Exception;
    :try_start_4
    const-string/jumbo v5, "MailContentDownloadServiceexit with exception:"

    invoke-static {v5, v1}, Lzb;->c(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 359
    invoke-direct {p0}, Lcom/alibaba/alimei/sdk/MailContentDownloadService;->f()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0
.end method

.method private declared-synchronized e()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 369
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/alibaba/alimei/sdk/MailContentDownloadService;->g:Z

    .line 370
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/MailContentDownloadService;->f:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 371
    :try_start_1
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/MailContentDownloadService;->f:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 372
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 369
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private f()V
    .locals 1

    .prologue
    .line 379
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/alimei/sdk/MailContentDownloadService;->g:Z

    .line 380
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/MailContentDownloadService;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 381
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/MailContentDownloadService;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 383
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/MailContentDownloadService;->stopSelf()V

    .line 384
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 95
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 83
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 85
    new-instance v0, Ljava/lang/Thread;

    const-string/jumbo v1, "MailContentDownloadService"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 86
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 90
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 91
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 100
    if-eqz p1, :cond_0

    .line 1107
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1108
    const-string/jumbo v1, "com.alibaba.alimei.ACTION_DOENLOAD_MAIL_CONTENT_CHECK"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1212
    invoke-static {}, Lafv;->e()Lcom/alibaba/alimei/framework/account/AccountApi;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/alimei/framework/account/AccountApi;->getDefaultAccountName()Ljava/lang/String;

    move-result-object v0

    .line 1213
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/alibaba/alimei/sdk/MailContentDownloadService;->i:Z

    .line 1214
    invoke-static {}, Lafv;->e()Lcom/alibaba/alimei/framework/account/AccountApi;

    move-result-object v1

    new-instance v2, Lcom/alibaba/alimei/sdk/MailContentDownloadService$3;

    invoke-direct {v2, p0}, Lcom/alibaba/alimei/sdk/MailContentDownloadService$3;-><init>(Lcom/alibaba/alimei/sdk/MailContentDownloadService;)V

    invoke-interface {v1, v0, v2}, Lcom/alibaba/alimei/framework/account/AccountApi;->queryAccountSetting(Ljava/lang/String;Lxv;)V

    .line 103
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0

    .line 1110
    :cond_1
    const-string/jumbo v1, "com.alibaba.alimei.ACTION_DOENLOAD_SING_MAIL_CONTENT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1111
    if-eqz p1, :cond_0

    const-string/jumbo v0, "mail"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "mail"

    .line 1112
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    instance-of v0, v0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    if-eqz v0, :cond_0

    .line 1113
    const-string/jumbo v0, "mail"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    invoke-direct {p0, v0}, Lcom/alibaba/alimei/sdk/MailContentDownloadService;->b(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)V

    .line 1114
    invoke-direct {p0}, Lcom/alibaba/alimei/sdk/MailContentDownloadService;->e()V

    goto :goto_0
.end method

.method public run()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 281
    :goto_0
    iget-boolean v1, p0, Lcom/alibaba/alimei/sdk/MailContentDownloadService;->g:Z

    if-nez v1, :cond_1

    .line 282
    iget-boolean v1, p0, Lcom/alibaba/alimei/sdk/MailContentDownloadService;->h:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/alibaba/alimei/sdk/MailContentDownloadService;->i:Z

    if-nez v1, :cond_0

    .line 283
    const-string/jumbo v1, "MailContentDownloadService processQueue "

    invoke-static {v1}, Lzb;->d(Ljava/lang/String;)I

    .line 284
    invoke-direct {p0}, Lcom/alibaba/alimei/sdk/MailContentDownloadService;->d()V

    .line 289
    :goto_1
    iget-object v2, p0, Lcom/alibaba/alimei/sdk/MailContentDownloadService;->f:Ljava/lang/Object;

    monitor-enter v2

    .line 292
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/MailContentDownloadService;->f:Ljava/lang/Object;

    const-wide/32 v4, 0x927c0

    invoke-virtual {v1, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 299
    :goto_2
    :try_start_1
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 286
    :cond_0
    const-string/jumbo v1, "MailContentDownloadService is in downloading waite for call back "

    invoke-static {v1}, Lzb;->d(Ljava/lang/String;)I

    goto :goto_1

    .line 293
    :catch_0
    move-exception v0

    .line 295
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    const-string/jumbo v1, "MailContentDownloadService"

    invoke-static {v1, v0}, Lzb;->c(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 296
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v0

    .line 297
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "MailContentDownloadService"

    invoke-static {v1, v0}, Lzb;->c(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 301
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    return-void
.end method
