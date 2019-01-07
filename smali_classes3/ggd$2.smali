.class final Lggd$2;
.super Ljava/lang/Object;
.source "RecentConfigPresenter.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lggd;->a(Z)V
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
.field final synthetic a:Z

.field final synthetic b:Lggd;


# direct methods
.method constructor <init>(Lggd;Z)V
    .locals 0
    .param p1, "this$0"    # Lggd;

    .prologue
    .line 78
    iput-object p1, p0, Lggd$2;->b:Lggd;

    iput-boolean p2, p0, Lggd$2;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 92
    iget-object v0, p0, Lggd$2;->b:Lggd;

    .line 1023
    iget-object v0, v0, Lggd;->b:Lgge$b;

    .line 92
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    sget v2, Lfzs$h;->dt_sapce_file_feed_setting_update_failed:I

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lgge$b;->a_(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    const-string/jumbo v0, "CSpace"

    const-string/jumbo v1, "RecentConfigPresenter"

    const-string/jumbo v2, "updateNotifySetting getConversation"

    const/4 v3, 0x0

    invoke-static {v2, p1, p2, v3}, Lgot;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 78
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 78
    check-cast p1, Lcom/alibaba/wukong/im/Conversation;

    .line 1081
    if-nez p1, :cond_0

    .line 1082
    iget-object v0, p0, Lggd$2;->b:Lggd;

    .line 2023
    iget-object v0, v0, Lggd;->b:Lgge$b;

    .line 1082
    const/4 v1, 0x0

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    sget v3, Lfzs$h;->dt_sapce_file_feed_setting_update_failed:I

    invoke-virtual {v2, v3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lgge$b;->a_(Ljava/lang/String;Ljava/lang/String;)V

    .line 1083
    :goto_0
    return-void

    .line 1086
    :cond_0
    iget-object v0, p0, Lggd$2;->b:Lggd;

    .line 3023
    iput-object p1, v0, Lggd;->a:Lcom/alibaba/wukong/im/Conversation;

    .line 1087
    iget-object v0, p0, Lggd$2;->b:Lggd;

    iget-boolean v1, p0, Lggd$2;->a:Z

    .line 4023
    invoke-virtual {v0, p1, v1}, Lggd;->a(Lcom/alibaba/wukong/im/Conversation;Z)V

    goto :goto_0
.end method
