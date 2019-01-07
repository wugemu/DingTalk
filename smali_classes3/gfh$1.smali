.class final Lgfh$1;
.super Ljava/lang/Object;
.source "GroupFilePresenter.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgfh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/wukong/Callback",
        "<",
        "Lcom/alibaba/wukong/im/Conversation;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lgfh;


# direct methods
.method constructor <init>(Lgfh;)V
    .locals 0
    .param p1, "this$0"    # Lgfh;

    .prologue
    .line 79
    iput-object p1, p0, Lgfh$1;->a:Lgfh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 99
    const-string/jumbo v0, "CSpace"

    const-string/jumbo v1, "GroupFilePresenter"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "loadConversation: errorCode: "

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

    .line 101
    iget-object v0, p0, Lgfh$1;->a:Lgfh;

    invoke-static {v0}, Lgfh;->c(Lgfh;)Lgfe$b;

    move-result-object v0

    invoke-interface {v0}, Lgfe$b;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 108
    :goto_0
    return-void

    .line 104
    :cond_0
    iget-object v0, p0, Lgfh$1;->a:Lgfh;

    invoke-static {v0}, Lgfh;->d(Lgfh;)Lgfe$b;

    move-result-object v0

    invoke-interface {v0}, Lgfe$b;->H_()V

    .line 106
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lgfh$1;->a:Lgfh;

    invoke-static {v0}, Lgfh;->e(Lgfh;)Lgfe$b;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lgfe$b;->a(Ljava/util/List;)V

    goto :goto_0
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 79
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 79
    check-cast p1, Lcom/alibaba/wukong/im/Conversation;

    .line 1082
    iget-object v0, p0, Lgfh$1;->a:Lgfh;

    invoke-static {v0}, Lgfh;->a(Lgfh;)Lgfe$b;

    move-result-object v0

    invoke-interface {v0}, Lgfe$b;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1086
    if-nez p1, :cond_1

    .line 1087
    const-string/jumbo v0, "CSpace"

    const-string/jumbo v1, "GroupFilePresenter"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "getConversation: can not find conversation by "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lgfh$1;->a:Lgfh;

    .line 2044
    iget-object v4, v4, Lgfh;->c:Ljava/lang/String;

    .line 1088
    aput-object v4, v2, v3

    .line 1087
    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1089
    const-string/jumbo v0, ""

    iget-object v1, p0, Lgfh$1;->a:Lgfh;

    invoke-static {v1}, Lgfh;->b(Lgfh;)Landroid/content/Context;

    move-result-object v1

    sget v2, Lfzs$h;->dt_cspace_invalid_result_tip:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1090
    :cond_0
    :goto_0
    return-void

    .line 1093
    :cond_1
    iget-object v0, p0, Lgfh$1;->a:Lgfh;

    .line 3044
    iput-object p1, v0, Lgfh;->e:Lcom/alibaba/wukong/im/Conversation;

    .line 1094
    iget-object v0, p0, Lgfh$1;->a:Lgfh;

    iget-object v1, p0, Lgfh$1;->a:Lgfh;

    .line 4044
    iget-object v1, v1, Lgfh;->d:Ljava/lang/String;

    .line 4109
    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v2

    .line 1094
    invoke-virtual {v0, v2, v3}, Lgfh;->a(J)V

    goto :goto_0
.end method
