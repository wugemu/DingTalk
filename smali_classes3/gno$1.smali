.class final Lgno$1;
.super Ljava/lang/Object;
.source "SpaceMenuSendHandler.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgno;->b(Landroid/content/Context;Lcom/alibaba/alimei/cspace/model/DentryModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
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

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Ljava/lang/String;

.field final synthetic g:Lgno;


# direct methods
.method constructor <init>(Lgno;Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;Lcom/alibaba/alimei/cspace/model/DentryModel;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lgno;

    .prologue
    .line 118
    iput-object p1, p0, Lgno$1;->g:Lgno;

    iput-object p2, p0, Lgno$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    iput-object p3, p0, Lgno$1;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    iput-object p4, p0, Lgno$1;->c:Landroid/content/Context;

    iput-object p5, p0, Lgno$1;->d:Ljava/lang/String;

    iput-object p6, p0, Lgno$1;->e:Ljava/lang/String;

    iput-object p7, p0, Lgno$1;->f:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 118
    check-cast p1, Lgrh;

    .line 1121
    iget-object v0, p0, Lgno$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->dismiss()V

    .line 1123
    if-nez p1, :cond_0

    .line 1124
    const-string/jumbo v0, "CSpace"

    const-string/jumbo v1, "SpaceMenuSendHandler"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "infoMediaInfo spaceId: "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lgno$1;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 1125
    invoke-virtual {v4}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSpaceId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, ", fileId: "

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, p0, Lgno$1;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v4}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSpaceId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, ", result is null"

    aput-object v4, v2, v3

    .line 1124
    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1128
    iget-object v0, p0, Lgno$1;->g:Lgno;

    iget-object v1, p0, Lgno$1;->c:Landroid/content/Context;

    iget-object v2, p0, Lgno$1;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    iget-object v3, p0, Lgno$1;->d:Ljava/lang/String;

    iget-object v4, p0, Lgno$1;->e:Ljava/lang/String;

    iget-object v5, p0, Lgno$1;->f:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lgno;->a(Lgno;Landroid/content/Context;Lcom/alibaba/alimei/cspace/model/DentryModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1129
    :goto_0
    return-void

    .line 1132
    :cond_0
    iget-object v0, p0, Lgno$1;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    iget-wide v2, p1, Lgrh;->a:J

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setDuration(J)V

    .line 1133
    iget-object v0, p0, Lgno$1;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    iget-object v1, p1, Lgrh;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setPicUrl(Ljava/lang/String;)V

    .line 1134
    iget-object v0, p0, Lgno$1;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    iget v1, p1, Lgrh;->e:I

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setPicWidth(I)V

    .line 1135
    iget-object v0, p0, Lgno$1;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    iget v1, p1, Lgrh;->f:I

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setPicHeight(I)V

    .line 1136
    iget-object v0, p0, Lgno$1;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    iget-object v1, p1, Lgrh;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setAuthPicUrl(Ljava/lang/String;)V

    .line 1137
    iget-object v0, p0, Lgno$1;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    iget-object v1, p1, Lgrh;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setAuthPicCode(Ljava/lang/String;)V

    .line 1138
    iget-object v0, p0, Lgno$1;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    iget-wide v2, p1, Lgrh;->h:J

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setPicSize(J)V

    .line 1139
    iget-object v0, p0, Lgno$1;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    iget v1, p1, Lgrh;->g:I

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setPicRotation(I)V

    .line 1141
    iget-object v0, p0, Lgno$1;->g:Lgno;

    iget-object v1, p0, Lgno$1;->c:Landroid/content/Context;

    iget-object v2, p0, Lgno$1;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    iget-object v3, p0, Lgno$1;->d:Ljava/lang/String;

    iget-object v4, p0, Lgno$1;->e:Ljava/lang/String;

    iget-object v5, p0, Lgno$1;->f:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lgno;->a(Lgno;Landroid/content/Context;Lcom/alibaba/alimei/cspace/model/DentryModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 150
    iget-object v0, p0, Lgno$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->dismiss()V

    .line 151
    const-string/jumbo v0, "CSpace"

    const-string/jumbo v1, "SpaceMenuSendHandler"

    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "infoMediaInfo spaceId: "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lgno$1;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 152
    invoke-virtual {v4}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSpaceId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, ", fileId: "

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, p0, Lgno$1;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

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

    .line 151
    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    iget-object v0, p0, Lgno$1;->g:Lgno;

    iget-object v1, p0, Lgno$1;->c:Landroid/content/Context;

    iget-object v2, p0, Lgno$1;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    iget-object v3, p0, Lgno$1;->d:Ljava/lang/String;

    iget-object v4, p0, Lgno$1;->e:Ljava/lang/String;

    iget-object v5, p0, Lgno$1;->f:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lgno;->a(Lgno;Landroid/content/Context;Lcom/alibaba/alimei/cspace/model/DentryModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 146
    return-void
.end method
