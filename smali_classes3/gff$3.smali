.class final Lgff$3;
.super Ljava/lang/Object;
.source "SpaceMembersPresenter.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgff;
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
        "Lgoh;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/cspace/functions/members/Member;

.field final synthetic b:Lcma;

.field final synthetic c:Lgff;


# direct methods
.method constructor <init>(Lgff;Lcom/alibaba/dingtalk/cspace/functions/members/Member;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lgff;

    .prologue
    .line 264
    iput-object p1, p0, Lgff$3;->c:Lgff;

    iput-object p2, p0, Lgff$3;->a:Lcom/alibaba/dingtalk/cspace/functions/members/Member;

    iput-object p3, p0, Lgff$3;->b:Lcma;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 264
    check-cast p1, Lgoh;

    .line 2267
    iget-object v0, p0, Lgff$3;->c:Lgff;

    iget-object v0, v0, Lgff;->a:Lgfe$b;

    invoke-interface {v0}, Lgfe$b;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2270
    if-nez p1, :cond_1

    .line 2271
    iget-object v0, p0, Lgff$3;->a:Lcom/alibaba/dingtalk/cspace/functions/members/Member;

    iget-object v1, p0, Lgff$3;->c:Lgff;

    iget-object v1, v1, Lgff;->b:Landroid/content/Context;

    sget v2, Lfzs$h;->alimei_data_error:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 3155
    iput-object v1, v0, Lcom/alibaba/dingtalk/cspace/functions/members/Member;->d:Ljava/lang/String;

    .line 2272
    iget-object v0, p0, Lgff$3;->c:Lgff;

    iget-object v0, p0, Lgff$3;->a:Lcom/alibaba/dingtalk/cspace/functions/members/Member;

    iget-object v1, p0, Lgff$3;->b:Lcma;

    .line 4037
    invoke-static {v0, v1}, Lgff;->b(Lcom/alibaba/dingtalk/cspace/functions/members/Member;Lcma;)V

    .line 2273
    :cond_0
    :goto_0
    return-void

    .line 2275
    :cond_1
    iget-object v0, p0, Lgff$3;->a:Lcom/alibaba/dingtalk/cspace/functions/members/Member;

    invoke-virtual {p1}, Lgoh;->a()Ljava/lang/String;

    move-result-object v1

    .line 4155
    iput-object v1, v0, Lcom/alibaba/dingtalk/cspace/functions/members/Member;->d:Ljava/lang/String;

    .line 2276
    iget-object v0, p0, Lgff$3;->a:Lcom/alibaba/dingtalk/cspace/functions/members/Member;

    iget-object v1, p1, Lgoh;->e:Ljava/lang/String;

    .line 4163
    iput-object v1, v0, Lcom/alibaba/dingtalk/cspace/functions/members/Member;->e:Ljava/lang/String;

    .line 2277
    iget-object v0, p0, Lgff$3;->a:Lcom/alibaba/dingtalk/cspace/functions/members/Member;

    const/4 v1, 0x1

    .line 4179
    iput-boolean v1, v0, Lcom/alibaba/dingtalk/cspace/functions/members/Member;->g:Z

    .line 2278
    iget-object v0, p0, Lgff$3;->c:Lgff;

    iget-object v0, p0, Lgff$3;->a:Lcom/alibaba/dingtalk/cspace/functions/members/Member;

    iget-object v1, p0, Lgff$3;->b:Lcma;

    .line 5037
    invoke-static {v0, v1}, Lgff;->b(Lcom/alibaba/dingtalk/cspace/functions/members/Member;Lcma;)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "errCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 287
    iget-object v0, p0, Lgff$3;->c:Lgff;

    iget-object v0, v0, Lgff;->a:Lgfe$b;

    invoke-interface {v0}, Lgfe$b;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 294
    :goto_0
    return-void

    .line 290
    :cond_0
    iget-object v0, p0, Lgff$3;->a:Lcom/alibaba/dingtalk/cspace/functions/members/Member;

    iget-object v1, p0, Lgff$3;->c:Lgff;

    iget-object v1, v1, Lgff;->b:Landroid/content/Context;

    sget v2, Lfzs$h;->alimei_data_error:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1155
    iput-object v1, v0, Lcom/alibaba/dingtalk/cspace/functions/members/Member;->d:Ljava/lang/String;

    .line 291
    iget-object v0, p0, Lgff$3;->c:Lgff;

    iget-object v0, p0, Lgff$3;->a:Lcom/alibaba/dingtalk/cspace/functions/members/Member;

    iget-object v1, p0, Lgff$3;->b:Lcma;

    .line 2037
    invoke-static {v0, v1}, Lgff;->b(Lcom/alibaba/dingtalk/cspace/functions/members/Member;Lcma;)V

    .line 292
    const-string/jumbo v0, "CSpace"

    const-string/jumbo v1, "SpaceMemberPresenter"

    const-string/jumbo v2, "AclMemberViewHolder initUserInfo"

    const/4 v3, 0x0

    .line 293
    invoke-static {v2, p1, p2, v3}, Lgot;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    .line 292
    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 283
    return-void
.end method
