.class final Lexm$25;
.super Ljava/lang/Object;
.source "VideoConfPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexm;->onUnMute(Lcom/alivc/live/conf/AlivcVideoConf;Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfMediaMode;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;

.field final synthetic b:I

.field final synthetic c:Lexm;


# direct methods
.method constructor <init>(Lexm;Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;I)V
    .locals 0
    .param p1, "this$0"    # Lexm;

    .prologue
    .line 1972
    iput-object p1, p0, Lexm$25;->c:Lexm;

    iput-object p2, p0, Lexm$25;->a:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;

    iput p3, p0, Lexm$25;->b:I

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
    .line 1975
    iget-object v0, p0, Lexm$25;->c:Lexm;

    invoke-static {v0}, Lexm;->b(Lexm;)Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$b;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1979
    :goto_0
    return-void

    .line 1978
    :cond_0
    iget-object v0, p0, Lexm$25;->c:Lexm;

    invoke-static {v0}, Lexm;->b(Lexm;)Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$b;

    move-result-object v0

    iget-object v1, p0, Lexm$25;->a:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;

    iget v2, p0, Lexm$25;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$b;->a(Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;Ljava/lang/Object;)V

    goto :goto_0
.end method
