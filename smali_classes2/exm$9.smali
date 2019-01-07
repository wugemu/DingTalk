.class final Lexm$9;
.super Ljava/lang/Object;
.source "VideoConfPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexm;->onLeaveChatSuccess(Lcom/alivc/live/conf/AlivcVideoConf;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lexm;


# direct methods
.method constructor <init>(Lexm;)V
    .locals 0
    .param p1, "this$0"    # Lexm;

    .prologue
    .line 1310
    iput-object p1, p0, Lexm$9;->a:Lexm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 1313
    iget-object v0, p0, Lexm$9;->a:Lexm;

    invoke-static {v0}, Lexm;->d(Lexm;)Lcom/alivc/live/conf/AlivcVideoConfUserInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lexm$9;->a:Lexm;

    invoke-static {v0}, Lexm;->d(Lexm;)Lcom/alivc/live/conf/AlivcVideoConfUserInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alivc/live/conf/AlivcVideoConfUserInfo;->getConferenceId()Ljava/lang/String;

    .line 1314
    :cond_0
    iget-object v0, p0, Lexm$9;->a:Lexm;

    invoke-static {v0}, Lexm;->b(Lexm;)Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$b;

    move-result-object v0

    iget-object v1, p0, Lexm$9;->a:Lexm;

    invoke-static {v1}, Lexm;->i(Lexm;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$b;->a(Ljava/lang/String;Z)V

    .line 1315
    return-void
.end method
