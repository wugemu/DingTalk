.class final Lglf$1;
.super Ljava/lang/Object;
.source "CryptFileManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lglf;->a(Ljava/lang/String;Ljava/lang/String;JLcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:J

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcma;

.field final synthetic e:Lglf;


# direct methods
.method constructor <init>(Lglf;Ljava/lang/String;JLjava/lang/String;Lcma;)V
    .locals 1
    .param p1, "this$0"    # Lglf;

    .prologue
    .line 57
    iput-object p1, p0, Lglf$1;->e:Lglf;

    iput-object p2, p0, Lglf$1;->a:Ljava/lang/String;

    iput-wide p3, p0, Lglf$1;->b:J

    iput-object p5, p0, Lglf$1;->c:Ljava/lang/String;

    iput-object p6, p0, Lglf$1;->d:Lcma;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 60
    iget-object v4, p0, Lglf$1;->e:Lglf;

    iget-object v4, p0, Lglf$1;->a:Ljava/lang/String;

    .line 1130
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v5

    invoke-virtual {v5}, Lcid;->c()Landroid/app/Application;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Application;->getFilesDir()Ljava/io/File;

    move-result-object v5

    .line 1131
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    .line 1132
    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 1134
    :cond_0
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1135
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_2

    move-object v1, v3

    .line 61
    .local v1, "destUrl":Ljava/lang/String;
    :goto_0
    new-instance v0, Lcom/alibaba/android/dingtalkim/base/model/CryptionDo;

    iget-wide v4, p0, Lglf$1;->b:J

    iget-object v6, p0, Lglf$1;->a:Ljava/lang/String;

    invoke-direct {v0, v4, v5, v6, v1}, Lcom/alibaba/android/dingtalkim/base/model/CryptionDo;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    .line 62
    .local v0, "cryptionDo":Lcom/alibaba/android/dingtalkim/base/model/CryptionDo;
    iget-object v4, p0, Lglf$1;->c:Ljava/lang/String;

    iput-object v4, v0, Lcom/alibaba/android/dingtalkim/base/model/CryptionDo;->spaceId:Ljava/lang/String;

    .line 63
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Lcom/alibaba/android/dingtalkim/base/model/CryptionDo;)Z

    move-result v2

    .line 64
    .local v2, "success":Z
    if-eqz v2, :cond_3

    iget v4, v0, Lcom/alibaba/android/dingtalkim/base/model/CryptionDo;->status:I

    if-nez v4, :cond_3

    .line 65
    iget-object v3, p0, Lglf$1;->a:Ljava/lang/String;

    iput-object v3, v0, Lcom/alibaba/android/dingtalkim/base/model/CryptionDo;->srcPath:Ljava/lang/String;

    .line 66
    iget-object v3, p0, Lglf$1;->d:Lcma;

    if-eqz v3, :cond_1

    .line 67
    iget-object v3, p0, Lglf$1;->d:Lcma;

    invoke-interface {v3, v0}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 76
    :cond_1
    :goto_1
    return-void

    .line 1138
    .end local v0    # "cryptionDo":Lcom/alibaba/android/dingtalkim/base/model/CryptionDo;
    .end local v1    # "destUrl":Ljava/lang/String;
    .end local v2    # "success":Z
    :cond_2
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    const/4 v5, 0x1

    const-string/jumbo v7, "/"

    aput-object v7, v4, v5

    const/4 v5, 0x2

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 70
    .restart local v0    # "cryptionDo":Lcom/alibaba/android/dingtalkim/base/model/CryptionDo;
    .restart local v1    # "destUrl":Ljava/lang/String;
    .restart local v2    # "success":Z
    :cond_3
    const-string/jumbo v4, "CSpace"

    const-string/jumbo v5, "CryptFileManager"

    const-string/jumbo v6, "encrypt"

    iget v7, v0, Lcom/alibaba/android/dingtalkim/base/model/CryptionDo;->status:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "file encrypt error"

    invoke-static {v6, v7, v8, v3}, Lgot;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v5, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    iget-object v3, p0, Lglf$1;->d:Lcma;

    if-eqz v3, :cond_1

    .line 72
    iget-object v3, p0, Lglf$1;->d:Lcma;

    iget v4, v0, Lcom/alibaba/android/dingtalkim/base/model/CryptionDo;->status:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v5

    invoke-virtual {v5}, Lcid;->c()Landroid/app/Application;

    move-result-object v5

    sget v6, Lfzs$h;->dt_file_encrypt_error_common:I

    invoke-virtual {v5, v6}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
