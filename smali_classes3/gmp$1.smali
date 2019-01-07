.class final Lgmp$1;
.super Ljava/lang/Object;
.source "SpaceMenuEmailHandler.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgmp;->b(Landroid/content/Context;Lcom/alibaba/alimei/cspace/model/DentryModel;)V
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
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

.field final synthetic b:Lcom/alibaba/alimei/cspace/model/DentryModel;

.field final synthetic c:Landroid/content/Context;

.field final synthetic d:Lgmp;


# direct methods
.method constructor <init>(Lgmp;Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;Lcom/alibaba/alimei/cspace/model/DentryModel;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lgmp;

    .prologue
    .line 87
    iput-object p1, p0, Lgmp$1;->d:Lgmp;

    iput-object p2, p0, Lgmp$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    iput-object p3, p0, Lgmp$1;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    iput-object p4, p0, Lgmp$1;->c:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 87
    check-cast p1, Lgrh;

    .line 1090
    iget-object v0, p0, Lgmp$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->dismiss()V

    .line 1092
    if-nez p1, :cond_0

    .line 1093
    const-string/jumbo v0, "CSpace"

    const-string/jumbo v1, "SpaceMenuEmailHandler"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "infoMediaInfo spaceId: "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lgmp$1;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 1094
    invoke-virtual {v4}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSpaceId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, ", fileId: "

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, p0, Lgmp$1;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v4}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSpaceId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, ", result is null"

    aput-object v4, v2, v3

    .line 1093
    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1097
    iget-object v0, p0, Lgmp$1;->d:Lgmp;

    iget-object v0, p0, Lgmp$1;->c:Landroid/content/Context;

    iget-object v1, p0, Lgmp$1;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 2046
    invoke-static {v0, v1}, Lgmp;->a(Landroid/content/Context;Lcom/alibaba/alimei/cspace/model/DentryModel;)V

    .line 1098
    :goto_0
    return-void

    .line 1101
    :cond_0
    iget-object v0, p0, Lgmp$1;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    iget-wide v2, p1, Lgrh;->a:J

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setDuration(J)V

    .line 1102
    iget-object v0, p0, Lgmp$1;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    iget-object v1, p1, Lgrh;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setPicUrl(Ljava/lang/String;)V

    .line 1103
    iget-object v0, p0, Lgmp$1;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    iget v1, p1, Lgrh;->e:I

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setPicWidth(I)V

    .line 1104
    iget-object v0, p0, Lgmp$1;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    iget v1, p1, Lgrh;->f:I

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setPicHeight(I)V

    .line 1105
    iget-object v0, p0, Lgmp$1;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    iget-object v1, p1, Lgrh;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setAuthPicUrl(Ljava/lang/String;)V

    .line 1106
    iget-object v0, p0, Lgmp$1;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    iget-object v1, p1, Lgrh;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setAuthPicCode(Ljava/lang/String;)V

    .line 1107
    iget-object v0, p0, Lgmp$1;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    iget-wide v2, p1, Lgrh;->h:J

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setPicSize(J)V

    .line 1108
    iget-object v0, p0, Lgmp$1;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    iget v1, p1, Lgrh;->g:I

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setPicRotation(I)V

    .line 1110
    iget-object v0, p0, Lgmp$1;->d:Lgmp;

    iget-object v0, p0, Lgmp$1;->c:Landroid/content/Context;

    iget-object v1, p0, Lgmp$1;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 3046
    invoke-static {v0, v1}, Lgmp;->a(Landroid/content/Context;Lcom/alibaba/alimei/cspace/model/DentryModel;)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 119
    iget-object v0, p0, Lgmp$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->dismiss()V

    .line 120
    const-string/jumbo v0, "CSpace"

    const-string/jumbo v1, "SpaceMenuEmailHandler"

    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "infoMediaInfo spaceId: "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lgmp$1;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 121
    invoke-virtual {v4}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSpaceId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, ", fileId: "

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, p0, Lgmp$1;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v4}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSpaceId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, ", errorCode: "

    aput-object v4, v2, v3

    const/4 v3, 0x5

    aput-object p1, v2, v3

    const/4 v3, 0x6

    const-string/jumbo v4, ", errorMsg: "

    aput-object v4, v2, v3

    const/4 v3, 0x7

    aput-object p2, v2, v3

    .line 120
    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    iget-object v0, p0, Lgmp$1;->d:Lgmp;

    iget-object v0, p0, Lgmp$1;->c:Landroid/content/Context;

    iget-object v1, p0, Lgmp$1;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 1046
    invoke-static {v0, v1}, Lgmp;->a(Landroid/content/Context;Lcom/alibaba/alimei/cspace/model/DentryModel;)V

    .line 125
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 115
    return-void
.end method
