.class final Lglh$3;
.super Ljava/lang/Object;
.source "SpaceCommonTransfer.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lglh;->b(Lcom/alibaba/alimei/cspace/model/DentryModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Lgrh;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/cspace/model/DentryModel;

.field final synthetic b:Lglh;


# direct methods
.method constructor <init>(Lglh;Lcom/alibaba/alimei/cspace/model/DentryModel;)V
    .locals 0
    .param p1, "this$0"    # Lglh;

    .prologue
    .line 195
    iput-object p1, p0, Lglh$3;->b:Lglh;

    iput-object p2, p0, Lglh$3;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 195
    check-cast p1, Lgrh;

    .line 1198
    if-nez p1, :cond_0

    .line 1199
    iget-object v0, p0, Lglh$3;->b:Lglh;

    .line 2031
    invoke-virtual {v0}, Lglh;->a()V

    .line 1200
    :goto_0
    return-void

    .line 1203
    :cond_0
    iget-object v0, p0, Lglh$3;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    iget-wide v2, p1, Lgrh;->a:J

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setDuration(J)V

    .line 1204
    iget-object v0, p0, Lglh$3;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    iget-object v1, p1, Lgrh;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setPicUrl(Ljava/lang/String;)V

    .line 1205
    iget-object v0, p0, Lglh$3;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    iget v1, p1, Lgrh;->e:I

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setPicWidth(I)V

    .line 1206
    iget-object v0, p0, Lglh$3;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    iget v1, p1, Lgrh;->f:I

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setPicHeight(I)V

    .line 1207
    iget-object v0, p0, Lglh$3;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    iget-object v1, p1, Lgrh;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setAuthPicUrl(Ljava/lang/String;)V

    .line 1208
    iget-object v0, p0, Lglh$3;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    iget-object v1, p1, Lgrh;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setAuthPicCode(Ljava/lang/String;)V

    .line 1209
    iget-object v0, p0, Lglh$3;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    iget-wide v2, p1, Lgrh;->h:J

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setPicSize(J)V

    .line 1210
    iget-object v0, p0, Lglh$3;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    iget v1, p1, Lgrh;->g:I

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setPicRotation(I)V

    .line 1212
    iget-object v0, p0, Lglh$3;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-static {v0}, Lgoc;->a(Lcom/alibaba/alimei/cspace/model/DentryModel;)Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    move-result-object v0

    .line 1213
    iget-object v1, p0, Lglh$3;->b:Lglh;

    .line 3031
    iget-object v1, v1, Lglh;->b:Ljava/util/List;

    .line 1213
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1215
    iget-object v0, p0, Lglh$3;->b:Lglh;

    .line 4031
    invoke-virtual {v0}, Lglh;->a()V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 225
    const-string/jumbo v0, "CSpace"

    const-string/jumbo v1, "SpaceCommonTransfer"

    const-string/jumbo v2, "SpaceCommonTransfer getFileThumbnail"

    const/4 v3, 0x0

    .line 226
    invoke-static {v2, p1, p2, v3}, Lgot;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    .line 225
    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    iget-object v0, p0, Lglh$3;->b:Lglh;

    .line 1031
    invoke-virtual {v0}, Lglh;->a()V

    .line 229
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 221
    return-void
.end method
