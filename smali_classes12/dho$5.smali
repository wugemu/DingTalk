.class public final Ldho$5;
.super Ljava/lang/Object;
.source "EncryptManager.java"

# interfaces
.implements Lbzl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldho;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/dbappsecurity/et/EncryptManage;

.field final synthetic c:Ldho;


# direct methods
.method public constructor <init>(Ldho;Landroid/content/Context;Lcom/dbappsecurity/et/EncryptManage;)V
    .locals 0
    .param p1, "this$0"    # Ldho;

    .prologue
    .line 281
    iput-object p1, p0, Ldho$5;->c:Ldho;

    iput-object p2, p0, Ldho$5;->a:Landroid/content/Context;

    iput-object p3, p0, Ldho$5;->b:Lcom/dbappsecurity/et/EncryptManage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 284
    const-string/jumbo v2, "crypto"

    sget-object v3, Ldho;->a:Ljava/lang/String;

    const-string/jumbo v4, "permission onGrant retry init crypto sdk"

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    iget-object v2, p0, Ldho$5;->a:Landroid/content/Context;

    invoke-static {v2}, Lbzm;->a(Landroid/content/Context;)Lbzm;

    move-result-object v2

    .line 1089
    iget-object v3, v2, Lbzm;->a:Ljava/util/HashSet;

    monitor-enter v3

    .line 1090
    :try_start_0
    iget-object v2, v2, Lbzm;->a:Ljava/util/HashSet;

    invoke-virtual {v2, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1091
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 287
    :try_start_1
    iget-object v2, p0, Ldho$5;->b:Lcom/dbappsecurity/et/EncryptManage;

    iget-object v3, p0, Ldho$5;->a:Landroid/content/Context;

    iget-object v4, p0, Ldho$5;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/dbappsecurity/et/EncryptManage;->init(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/alibaba/android/dtencrypt/DTEncryptException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 295
    :goto_0
    return-void

    .line 1091
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 288
    :catch_0
    move-exception v0

    .line 289
    .local v0, "e":Lcom/alibaba/android/dtencrypt/DTEncryptException;
    const-string/jumbo v2, "crypto"

    sget-object v3, Ldho;->a:Ljava/lang/String;

    new-array v4, v5, [Ljava/lang/String;

    const-string/jumbo v5, "init dt err"

    aput-object v5, v4, v6

    invoke-virtual {v0}, Lcom/alibaba/android/dtencrypt/DTEncryptException;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    invoke-virtual {v0}, Lcom/alibaba/android/dtencrypt/DTEncryptException;->printStackTrace()V

    goto :goto_0

    .line 291
    .end local v0    # "e":Lcom/alibaba/android/dtencrypt/DTEncryptException;
    :catch_1
    move-exception v1

    .line 292
    .local v1, "t":Ljava/lang/Throwable;
    const-string/jumbo v2, "crypto"

    sget-object v3, Ldho;->a:Ljava/lang/String;

    new-array v4, v5, [Ljava/lang/String;

    const-string/jumbo v5, "init other err"

    aput-object v5, v4, v6

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
