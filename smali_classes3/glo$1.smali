.class public final Lglo$1;
.super Lgoi;
.source "SpaceUploadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lglo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alibaba/android/dingtalkim/base/model/CryptionDo;

.field final synthetic c:Lcma;

.field final synthetic d:Lglo;


# direct methods
.method public constructor <init>(Lglo;Ljava/lang/String;Lcom/alibaba/android/dingtalkim/base/model/CryptionDo;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lglo;

    .prologue
    .line 78
    iput-object p1, p0, Lglo$1;->d:Lglo;

    iput-object p2, p0, Lglo$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lglo$1;->b:Lcom/alibaba/android/dingtalkim/base/model/CryptionDo;

    iput-object p4, p0, Lglo$1;->c:Lcma;

    invoke-direct {p0}, Lgoi;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/cspace/model/DentryModel;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 81
    .local p1, "dentryModels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    invoke-super {p0, p1}, Lgoi;->a(Ljava/util/List;)V

    .line 82
    const-string/jumbo v2, "CSpace"

    const-string/jumbo v3, "SpaceUploadManager"

    const-string/jumbo v4, "uploadFile2Space savedb success"

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 85
    const/4 v2, 0x0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 86
    .local v0, "dentryModel":Lcom/alibaba/alimei/cspace/model/DentryModel;
    iget-object v2, p0, Lglo$1;->d:Lglo;

    iget-object v3, p0, Lglo$1;->a:Ljava/lang/String;

    iget-object v4, p0, Lglo$1;->b:Lcom/alibaba/android/dingtalkim/base/model/CryptionDo;

    iget-object v4, v4, Lcom/alibaba/android/dingtalkim/base/model/CryptionDo;->srcPath:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lglo;->a(Lglo;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 87
    .local v1, "key":Ljava/lang/String;
    iget-object v2, p0, Lglo$1;->d:Lglo;

    invoke-static {v2}, Lglo;->a(Lglo;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    iget-object v2, p0, Lglo$1;->d:Lglo;

    iget-object v3, p0, Lglo$1;->c:Lcma;

    invoke-static {v2, v0, v1, v3}, Lglo;->a(Lglo;Lcom/alibaba/alimei/cspace/model/DentryModel;Ljava/lang/String;Lcma;)V

    .line 94
    .end local v0    # "dentryModel":Lcom/alibaba/alimei/cspace/model/DentryModel;
    .end local v1    # "key":Ljava/lang/String;
    :goto_0
    return-void

    .line 90
    :cond_0
    const-string/jumbo v2, "CSpace"

    const-string/jumbo v3, "SpaceUploadManager"

    const-string/jumbo v4, "uploadFile2Space models is null, db error"

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    iget-object v2, p0, Lglo$1;->c:Lcma;

    const-string/jumbo v3, "10601"

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v4

    invoke-virtual {v4}, Lcid;->c()Landroid/app/Application;

    move-result-object v4

    sget v5, Lfzs$h;->msg_space_upload_failed:I

    invoke-virtual {v4, v5}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
