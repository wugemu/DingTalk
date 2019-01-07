.class final Lexm$15;
.super Ljava/lang/Object;
.source "VideoConfPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexm;->onSubscribeSuccess(Lcom/alivc/live/conf/AlivcVideoConf;Ljava/lang/String;Ljava/lang/String;Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;

.field final synthetic b:I

.field final synthetic c:Z

.field final synthetic d:Lexm;


# direct methods
.method constructor <init>(Lexm;Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;IZ)V
    .locals 0
    .param p1, "this$0"    # Lexm;

    .prologue
    .line 1478
    iput-object p1, p0, Lexm$15;->d:Lexm;

    iput-object p2, p0, Lexm$15;->a:Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;

    iput p3, p0, Lexm$15;->b:I

    iput-boolean p4, p0, Lexm$15;->c:Z

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
    .line 1481
    iget-object v0, p0, Lexm$15;->d:Lexm;

    invoke-static {v0}, Lexm;->b(Lexm;)Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$b;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1482
    iget-object v0, p0, Lexm$15;->d:Lexm;

    invoke-static {v0}, Lexm;->b(Lexm;)Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$b;

    move-result-object v0

    iget-object v1, p0, Lexm$15;->a:Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;

    iget v2, p0, Lexm$15;->b:I

    invoke-interface {v0, v1, v2}, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$b;->a(Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;I)V

    .line 1483
    iget-boolean v0, p0, Lexm$15;->c:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lexm$15;->d:Lexm;

    invoke-static {v0}, Lexm;->j(Lexm;)I

    move-result v0

    if-nez v0, :cond_1

    .line 1484
    :cond_0
    iget-object v0, p0, Lexm$15;->d:Lexm;

    invoke-static {v0}, Lexm;->b(Lexm;)Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$b;

    move-result-object v0

    iget-object v1, p0, Lexm$15;->a:Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;

    iget v2, p0, Lexm$15;->b:I

    invoke-interface {v0, v1, v2}, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$b;->b(Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;I)V

    .line 1487
    :cond_1
    return-void
.end method
