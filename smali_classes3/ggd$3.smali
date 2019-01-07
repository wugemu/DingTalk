.class final Lggd$3;
.super Ljava/lang/Object;
.source "RecentConfigPresenter.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lggd;->a(Lcom/alibaba/wukong/im/Conversation;Z)V
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
        "Ljava/lang/Void;",
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
    .line 113
    iput-object p1, p0, Lggd$3;->b:Lggd;

    iput-boolean p2, p0, Lggd$3;->a:Z

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
    .line 121
    iget-object v0, p0, Lggd$3;->b:Lggd;

    .line 1023
    iget-object v1, v0, Lggd;->b:Lgge$b;

    .line 121
    iget-boolean v0, p0, Lggd$3;->a:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Lgge$b;->a(Z)V

    .line 122
    iget-object v0, p0, Lggd$3;->b:Lggd;

    .line 2023
    iget-object v0, v0, Lggd;->b:Lgge$b;

    .line 122
    invoke-interface {v0, p1, p2}, Lgge$b;->a_(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    const-string/jumbo v0, "CSpace"

    const-string/jumbo v1, "RecentConfigPresenter"

    const-string/jumbo v2, "updateNotifySetting updateNotification"

    const/4 v3, 0x0

    invoke-static {v2, p1, p2, v3}, Lgot;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    return-void

    .line 121
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 113
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 2116
    sget v0, Lfzs$h;->dt_space_file_feed_setting_update_success:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 113
    return-void
.end method
