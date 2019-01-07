.class final Lgmn$4;
.super Ljava/lang/Object;
.source "SpaceMenuDownloadHandler.java"

# interfaces
.implements Lgqr;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgmn;->b(Landroid/content/Context;Lgmb;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lgmb;

.field final synthetic b:Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;

.field final synthetic c:Lcom/alibaba/alimei/cspace/model/DentryModel;

.field final synthetic d:Lgmn;


# direct methods
.method constructor <init>(Lgmn;Lgmb;Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;Lcom/alibaba/alimei/cspace/model/DentryModel;)V
    .locals 0
    .param p1, "this$0"    # Lgmn;

    .prologue
    .line 124
    iput-object p1, p0, Lgmn$4;->d:Lgmn;

    iput-object p2, p0, Lgmn$4;->a:Lgmb;

    iput-object p3, p0, Lgmn$4;->b:Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;

    iput-object p4, p0, Lgmn$4;->c:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 156
    iget-object v0, p0, Lgmn$4;->a:Lgmb;

    iget-object v0, v0, Lgmb;->q:Lgmb$b;

    invoke-interface {v0, p1, p2}, Lgmb$b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    iget-object v0, p0, Lgmn$4;->b:Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lgmn$4;->b:Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->b()V

    .line 161
    :cond_0
    return-void
.end method

.method public final onProgress(IJJ)V
    .locals 2
    .param p1, "status"    # I
    .param p2, "total"    # J
    .param p4, "completed"    # J

    .prologue
    .line 127
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 128
    iget-object v0, p0, Lgmn$4;->a:Lgmb;

    iget-object v0, v0, Lgmb;->q:Lgmb$b;

    invoke-interface {v0, p4, p5}, Lgmb$b;->a(J)V

    .line 135
    :cond_0
    :goto_0
    return-void

    .line 129
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 130
    iget-object v0, p0, Lgmn$4;->b:Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;

    if-eqz v0, :cond_2

    .line 131
    iget-object v0, p0, Lgmn$4;->b:Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->b()V

    .line 133
    :cond_2
    iget-object v0, p0, Lgmn$4;->a:Lgmb;

    iget-object v0, v0, Lgmb;->q:Lgmb$b;

    invoke-interface {v0}, Lgmb$b;->a()V

    goto :goto_0
.end method

.method public final onSuccess(Ljava/lang/String;)V
    .locals 1
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 139
    iget-object v0, p0, Lgmn$4;->c:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->isCrypt()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lgmn$4;->c:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v0, p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setCryptLocalUrl(Ljava/lang/String;)V

    .line 145
    :goto_0
    iget-object v0, p0, Lgmn$4;->a:Lgmb;

    iget-object v0, v0, Lgmb;->q:Lgmb$b;

    invoke-interface {v0}, Lgmb$b;->b()V

    .line 147
    iget-object v0, p0, Lgmn$4;->b:Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;

    if-nez v0, :cond_1

    .line 152
    :goto_1
    return-void

    .line 142
    :cond_0
    iget-object v0, p0, Lgmn$4;->c:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v0, p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setLocalUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 151
    :cond_1
    iget-object v0, p0, Lgmn$4;->b:Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->b()V

    goto :goto_1
.end method
