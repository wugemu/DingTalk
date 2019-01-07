.class final Lgfj$2;
.super Ljava/lang/Object;
.source "SpaceEditCollaboratorPresenter.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgfj;->a(ZLjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;JJLjava/lang/Runnable;)V
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
        "Lgjj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Ljava/lang/Runnable;

.field final synthetic c:Lgfj;


# direct methods
.method constructor <init>(Lgfj;ZLjava/lang/Runnable;)V
    .locals 0
    .param p1, "this$0"    # Lgfj;

    .prologue
    .line 189
    iput-object p1, p0, Lgfj$2;->c:Lgfj;

    iput-boolean p2, p0, Lgfj$2;->a:Z

    iput-object p3, p0, Lgfj$2;->b:Ljava/lang/Runnable;

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
    .line 189
    check-cast p1, Lgjj;

    .line 1192
    iget-object v0, p0, Lgfj$2;->c:Lgfj;

    invoke-static {v0}, Lgfj;->k(Lgfj;)Lgfe$b;

    move-result-object v0

    invoke-interface {v0}, Lgfe$b;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1195
    iget-object v0, p0, Lgfj$2;->c:Lgfj;

    invoke-static {v0}, Lgfj;->l(Lgfj;)Lgfe$b;

    move-result-object v0

    invoke-interface {v0}, Lgfe$b;->H_()V

    .line 1197
    if-nez p1, :cond_1

    .line 1198
    const-string/jumbo v0, "CSpace"

    const-string/jumbo v1, "SpaceEditCollaboratorPresenter"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "addOnlineEditor return null, spaceId: "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lgfj$2;->c:Lgfj;

    iget-object v4, v4, Lgfj;->f:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, ", fileId: "

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, p0, Lgfj$2;->c:Lgfj;

    iget-object v4, v4, Lgfj;->g:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1200
    sget v0, Lfzs$h;->dt_cspace_invalid_result_tip:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 1205
    :cond_0
    :goto_0
    return-void

    .line 1203
    :cond_1
    iget-object v0, p1, Lgjj;->a:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1204
    iget-object v0, p1, Lgjj;->b:Ljava/lang/Long;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lgjj;->c:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lgfj$2;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1208
    :cond_2
    iget-boolean v0, p0, Lgfj$2;->a:Z

    if-eqz v0, :cond_3

    sget v0, Lfzs$h;->dt_cspace_invite_success:I

    :goto_1
    invoke-static {v0}, Lcms;->a(I)V

    .line 1209
    iget-object v0, p0, Lgfj$2;->b:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 1210
    iget-object v0, p0, Lgfj$2;->b:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 1208
    :cond_3
    sget v0, Lfzs$h;->dt_common_delete_success:I

    goto :goto_1
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 220
    const-string/jumbo v0, "CSpace"

    const-string/jumbo v1, "SpaceEditCollaboratorPresenter"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "updateMemberList: errorCode: "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, ", errorMsg: "

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p2, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    iget-object v0, p0, Lgfj$2;->c:Lgfj;

    invoke-static {v0}, Lgfj;->m(Lgfj;)Lgfe$b;

    move-result-object v0

    invoke-interface {v0}, Lgfe$b;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 227
    :goto_0
    return-void

    .line 225
    :cond_0
    iget-object v0, p0, Lgfj$2;->c:Lgfj;

    invoke-static {v0}, Lgfj;->n(Lgfj;)Lgfe$b;

    move-result-object v0

    invoke-interface {v0}, Lgfe$b;->H_()V

    .line 226
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 216
    return-void
.end method
