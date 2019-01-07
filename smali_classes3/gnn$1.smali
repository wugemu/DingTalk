.class public final Lgnn$1;
.super Ljava/lang/Object;
.source "SpaceMenuSendFileLinkHandler.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgnn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Lcom/alibaba/dingtalk/cspace/model/CsDentry;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcma;

.field final synthetic d:Lgnn;


# direct methods
.method public constructor <init>(Lgnn;Ljava/lang/String;Landroid/content/Context;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lgnn;

    .prologue
    .line 96
    iput-object p1, p0, Lgnn$1;->d:Lgnn;

    iput-object p2, p0, Lgnn$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lgnn$1;->b:Landroid/content/Context;

    iput-object p4, p0, Lgnn$1;->c:Lcma;

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
    .line 96
    check-cast p1, Lcom/alibaba/dingtalk/cspace/model/CsDentry;

    .line 1099
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/alibaba/dingtalk/cspace/model/CsDentry;->getDentryModel()Lcom/alibaba/alimei/cspace/model/DentryModel;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1100
    :cond_0
    const-string/jumbo v0, "null result"

    sget v1, Lfzs$h;->dt_cspace_invalid_result_tip:I

    invoke-static {v1}, Lgpr;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lgnn$1;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 1101
    :goto_0
    return-void

    .line 1103
    :cond_1
    invoke-static {}, Lfzv;->a()Lfzv;

    move-result-object v0

    iget-object v1, p0, Lgnn$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lfzv;->f(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/alibaba/dingtalk/cspace/model/CsDentry;->checkAdmin(Z)Z

    .line 1104
    invoke-virtual {p1}, Lcom/alibaba/dingtalk/cspace/model/CsDentry;->getDentryModel()Lcom/alibaba/alimei/cspace/model/DentryModel;

    move-result-object v0

    .line 1105
    iget-object v1, p0, Lgnn$1;->d:Lgnn;

    iget-object v1, p0, Lgnn$1;->b:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getOrgId()J

    move-result-wide v2

    iget-object v4, p0, Lgnn$1;->c:Lcma;

    .line 2032
    invoke-static {v1, v0, v2, v3, v4}, Lgnn;->a(Landroid/content/Context;Lcom/alibaba/alimei/cspace/model/DentryModel;JLcma;)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 114
    iget-object v0, p0, Lgnn$1;->c:Lcma;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lgnn$1;->c:Lcma;

    invoke-static {p1, p2, v0}, Lgpr;->a(Ljava/lang/String;Ljava/lang/String;Lcma;)V

    .line 119
    :goto_0
    return-void

    .line 117
    :cond_0
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 110
    return-void
.end method
