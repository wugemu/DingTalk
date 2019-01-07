.class final Lexm$12;
.super Ljava/lang/Object;
.source "VideoConfPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexm;->onPublishSuccess(Lcom/alivc/live/conf/AlivcVideoConf;Ljava/lang/String;)V
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
    .line 1356
    iput-object p1, p0, Lexm$12;->a:Lexm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 1360
    iget-object v0, p0, Lexm$12;->a:Lexm;

    invoke-static {v0}, Lexm;->d(Lexm;)Lcom/alivc/live/conf/AlivcVideoConfUserInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1361
    iget-object v0, p0, Lexm$12;->a:Lexm;

    invoke-static {v0}, Lexm;->d(Lexm;)Lcom/alivc/live/conf/AlivcVideoConfUserInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alivc/live/conf/AlivcVideoConfUserInfo;->getConferenceId()Ljava/lang/String;

    .line 1363
    :cond_0
    iget-object v0, p0, Lexm$12;->a:Lexm;

    invoke-static {v0}, Lexm;->b(Lexm;)Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$b;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$b;->g()V

    .line 1364
    return-void
.end method
