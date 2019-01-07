.class final Lgfj$1;
.super Ljava/lang/Object;
.source "SpaceEditCollaboratorPresenter.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgfj;->a(J)V
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
        "Lgjp;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lgfj;


# direct methods
.method constructor <init>(Lgfj;)V
    .locals 0
    .param p1, "this$0"    # Lgfj;

    .prologue
    .line 98
    iput-object p1, p0, Lgfj$1;->a:Lgfj;

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
    const/4 v4, 0x0

    .line 98
    check-cast p1, Lgjp;

    .line 1101
    iget-object v0, p0, Lgfj$1;->a:Lgfj;

    invoke-static {v0}, Lgfj;->a(Lgfj;)Lgfe$b;

    move-result-object v0

    invoke-interface {v0}, Lgfe$b;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1104
    iget-object v0, p0, Lgfj$1;->a:Lgfj;

    invoke-static {v0}, Lgfj;->b(Lgfj;)Lgfe$b;

    move-result-object v0

    invoke-interface {v0}, Lgfe$b;->H_()V

    .line 1106
    if-nez p1, :cond_1

    .line 1107
    const-string/jumbo v0, "CSpace"

    const-string/jumbo v1, "SpaceEditCollaboratorPresenter"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "getOnlineEditMemberList return null, spaceId: "

    aput-object v3, v2, v4

    const/4 v3, 0x1

    iget-object v4, p0, Lgfj$1;->a:Lgfj;

    iget-object v4, v4, Lgfj;->f:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, ", fileId: "

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, p0, Lgfj$1;->a:Lgfj;

    iget-object v4, v4, Lgfj;->g:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1109
    const-string/jumbo v0, ""

    iget-object v1, p0, Lgfj$1;->a:Lgfj;

    invoke-static {v1}, Lgfj;->c(Lgfj;)Landroid/content/Context;

    move-result-object v1

    sget v2, Lfzs$h;->dt_cspace_invalid_result_tip:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1120
    :cond_0
    :goto_0
    return-void

    .line 1112
    :cond_1
    iget-object v0, p1, Lgjp;->a:Ljava/lang/Boolean;

    .line 2022
    invoke-static {v0, v4}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v0

    .line 1112
    if-nez v0, :cond_2

    .line 1113
    iget-object v0, p1, Lgjp;->b:Ljava/lang/Long;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lgjp;->c:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lgfj$1;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1117
    :cond_2
    iget-object v0, p1, Lgjp;->g:Ljava/lang/Boolean;

    .line 3022
    invoke-static {v0, v4}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v0

    .line 1118
    iget-object v1, p0, Lgfj$1;->a:Lgfj;

    invoke-static {v1}, Lgfj;->d(Lgfj;)Lgfe$b;

    move-result-object v1

    invoke-interface {v1, v0}, Lgfe$b;->b(Z)V

    .line 1119
    if-eqz v0, :cond_3

    iget-object v0, p0, Lgfj$1;->a:Lgfj;

    invoke-virtual {v0}, Lgfj;->j()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1120
    iget-object v0, p0, Lgfj$1;->a:Lgfj;

    invoke-static {v0}, Lgfj;->e(Lgfj;)Lgfe$b;

    move-result-object v0

    const/16 v1, 0x8

    invoke-interface {v0, v1}, Lgfe$b;->a(I)V

    goto :goto_0

    .line 1122
    :cond_3
    iget-object v0, p0, Lgfj$1;->a:Lgfj;

    invoke-static {v0}, Lgfj;->f(Lgfj;)Lgfe$b;

    move-result-object v0

    invoke-interface {v0, v4}, Lgfe$b;->a(I)V

    .line 1124
    iget-object v0, p0, Lgfj$1;->a:Lgfj;

    invoke-virtual {v0, p1}, Lgfj;->a(Lgjp;)V

    .line 1125
    iget-object v0, p0, Lgfj$1;->a:Lgfj;

    invoke-static {v0}, Lgfj;->g(Lgfj;)Lgfe$b;

    move-result-object v0

    iget-object v1, p0, Lgfj$1;->a:Lgfj;

    iget-object v1, v1, Lgfj;->i:Ljava/util/List;

    invoke-interface {v0, v1}, Lgfe$b;->a(Ljava/util/List;)V

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
    .line 135
    const-string/jumbo v0, "CSpace"

    const-string/jumbo v1, "SpaceEditCollaboratorActivity"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "loadMemberList: errorCode: "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, ", errorMsg: "

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p2, v2, v3

    .line 136
    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 135
    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    iget-object v0, p0, Lgfj$1;->a:Lgfj;

    invoke-static {v0}, Lgfj;->h(Lgfj;)Lgfe$b;

    move-result-object v0

    invoke-interface {v0}, Lgfe$b;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 144
    :goto_0
    return-void

    .line 140
    :cond_0
    iget-object v0, p0, Lgfj$1;->a:Lgfj;

    invoke-static {v0}, Lgfj;->i(Lgfj;)Lgfe$b;

    move-result-object v0

    invoke-interface {v0}, Lgfe$b;->H_()V

    .line 142
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Lgfj$1;->a:Lgfj;

    invoke-static {v0}, Lgfj;->j(Lgfj;)Lgfe$b;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lgfe$b;->a(Ljava/util/List;)V

    goto :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 131
    return-void
.end method
