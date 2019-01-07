.class final Lexm$28;
.super Ljava/lang/Object;
.source "VideoConfPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexm;->onKickOut(Lcom/alivc/live/conf/AlivcVideoConf;)V
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
    .line 2046
    iput-object p1, p0, Lexm$28;->a:Lexm;

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
    .line 2049
    iget-object v1, p0, Lexm$28;->a:Lexm;

    invoke-static {v1}, Lexm;->d(Lexm;)Lcom/alivc/live/conf/AlivcVideoConfUserInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lexm$28;->a:Lexm;

    invoke-static {v1}, Lexm;->d(Lexm;)Lcom/alivc/live/conf/AlivcVideoConfUserInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alivc/live/conf/AlivcVideoConfUserInfo;->getConferenceId()Ljava/lang/String;

    .line 2050
    :cond_0
    iget-object v1, p0, Lexm$28;->a:Lexm;

    invoke-static {v1}, Lexm;->k(Lexm;)Landroid/app/Activity;

    move-result-object v1

    sget v2, Leuj$l;->dt_conf_video_kickout_by_host:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2051
    .local v0, "toast":Ljava/lang/String;
    iget-object v1, p0, Lexm$28;->a:Lexm;

    invoke-static {v1}, Lexm;->b(Lexm;)Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$b;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v0, v2}, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$b;->a(Ljava/lang/String;Z)V

    .line 2052
    return-void
.end method
