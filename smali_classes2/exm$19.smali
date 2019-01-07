.class final Lexm$19;
.super Ljava/lang/Object;
.source "VideoConfPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexm;->onLeave(Lcom/alivc/live/conf/AlivcVideoConf;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:J

.field final synthetic c:Lexm;


# direct methods
.method constructor <init>(Lexm;IJ)V
    .locals 1
    .param p1, "this$0"    # Lexm;

    .prologue
    .line 1742
    iput-object p1, p0, Lexm$19;->c:Lexm;

    iput p2, p0, Lexm$19;->a:I

    iput-wide p3, p0, Lexm$19;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 1745
    iget-object v0, p0, Lexm$19;->c:Lexm;

    invoke-static {v0}, Lexm;->b(Lexm;)Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1746
    iget-object v0, p0, Lexm$19;->c:Lexm;

    invoke-static {v0}, Lexm;->b(Lexm;)Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$b;

    move-result-object v0

    sget-object v1, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;->ACTION_LEAVE_CONF:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;

    iget v2, p0, Lexm$19;->a:I

    iget-wide v4, p0, Lexm$19;->b:J

    invoke-interface {v0, v1, v2, v4, v5}, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$b;->a(Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;IJ)V

    .line 1748
    :cond_0
    return-void
.end method
