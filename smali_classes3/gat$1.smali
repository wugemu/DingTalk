.class final Lgat$1;
.super Lgqq;
.source "FavoriteSpaceInfoManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/cspace/model/DentryModel;

.field final synthetic b:Lgat;


# direct methods
.method constructor <init>(Lgat;Lcom/alibaba/alimei/cspace/model/DentryModel;)V
    .locals 0
    .param p1, "this$0"    # Lgat;

    .prologue
    .line 50
    iput-object p1, p0, Lgat$1;->b:Lgat;

    iput-object p2, p0, Lgat$1;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-direct {p0}, Lgqq;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Void;)V
    .locals 4
    .param p1, "data"    # Ljava/lang/Void;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 53
    invoke-super {p0, p1}, Lgqq;->a(Ljava/lang/Void;)V

    .line 54
    const-wide/16 v0, 0x0

    sput-wide v0, Lfzu;->a:J

    .line 55
    invoke-static {}, Lgon;->a()Lgon;

    move-result-object v1

    iget-object v0, p0, Lgat$1;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSpaceId()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lgat$1;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 56
    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getServerId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lgat$1;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 57
    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getServerId()Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v3, Lgat$1$1;

    invoke-direct {v3, p0}, Lgat$1$1;-><init>(Lgat$1;)V

    .line 55
    invoke-virtual {v1, v2, v0, v3}, Lgon;->a(Ljava/lang/String;Ljava/lang/String;Lcma;)V

    .line 82
    return-void

    .line 57
    :cond_0
    iget-object v0, p0, Lgat$1;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 50
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lgat$1;->a(Ljava/lang/Void;)V

    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 91
    invoke-super {p0, p1, p2}, Lgqq;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lgat$1;->b:Lgat;

    invoke-static {v0, p1, p2}, Lgat;->a(Lgat;Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 86
    invoke-super {p0, p1, p2}, Lgqq;->onProgress(Ljava/lang/Object;I)V

    .line 87
    return-void
.end method
