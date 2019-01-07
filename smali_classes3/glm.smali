.class public final Lglm;
.super Ljava/lang/Object;
.source "SpaceSaveUrlManager.java"


# instance fields
.field public a:Landroid/content/Context;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Lcma;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcma;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "spaceId"    # Ljava/lang/String;
    .param p3, "rootPath"    # Ljava/lang/String;
    .param p4, "fileUrl"    # Ljava/lang/String;
    .param p5, "fileName"    # Ljava/lang/String;
    .param p6, "accountName"    # Ljava/lang/String;
    .param p7, "callback"    # Lcma;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lglm;->a:Landroid/content/Context;

    .line 37
    iput-object p2, p0, Lglm;->b:Ljava/lang/String;

    .line 38
    iput-object p5, p0, Lglm;->f:Ljava/lang/String;

    .line 39
    iput-object p4, p0, Lglm;->c:Ljava/lang/String;

    .line 40
    iput-object p6, p0, Lglm;->g:Ljava/lang/String;

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lglm;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lglm;->d:Ljava/lang/String;

    .line 42
    iput-object p7, p0, Lglm;->e:Lcma;

    .line 43
    return-void
.end method

.method static synthetic a(Lglm;Lcom/alibaba/alimei/cspace/model/DentryModel;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "x0"    # Lglm;
    .param p1, "x1"    # Lcom/alibaba/alimei/cspace/model/DentryModel;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 25
    .line 1046
    if-eqz p1, :cond_1

    .line 1047
    iget-object v0, p0, Lglm;->e:Lcma;

    if-eqz v0, :cond_0

    .line 1048
    invoke-static {p1}, Lgoc;->a(Lcom/alibaba/alimei/cspace/model/DentryModel;)Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    move-result-object v0

    .line 1049
    iget-object v1, p0, Lglm;->e:Lcma;

    invoke-interface {v1, v0}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 1058
    :cond_0
    :goto_0
    return-void

    .line 1052
    :cond_1
    iget-object v0, p0, Lglm;->e:Lcma;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lglm;->a:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 1053
    const/16 v0, 0xa

    invoke-static {v0, p2, p3}, Lggr;->a(ILjava/lang/String;Ljava/lang/String;)Lggs;

    move-result-object v0

    .line 1054
    const-string/jumbo v1, "13026000"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1055
    iget-object v0, p0, Lglm;->e:Lcma;

    iget-object v1, p0, Lglm;->a:Landroid/content/Context;

    sget v2, Lfzs$h;->cspace_capacity_limit:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1057
    :cond_2
    iget-object v1, v0, Lggs;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1058
    iget-object v1, p0, Lglm;->e:Lcma;

    const-string/jumbo v2, ""

    iget-object v0, v0, Lggs;->b:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1060
    :cond_3
    iget-object v0, p0, Lglm;->e:Lcma;

    const-string/jumbo v1, ""

    iget-object v2, p0, Lglm;->a:Landroid/content/Context;

    sget v3, Lfzs$h;->cspace_save_error:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
