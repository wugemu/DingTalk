.class final Lexm$14;
.super Ljava/lang/Object;
.source "VideoConfPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexm;->onFirstFramereceived(Lcom/alivc/live/conf/AlivcVideoConf;Ljava/lang/String;Ljava/lang/String;Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;

.field final synthetic b:I

.field final synthetic c:Lexm;


# direct methods
.method constructor <init>(Lexm;Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;I)V
    .locals 0
    .param p1, "this$0"    # Lexm;

    .prologue
    .line 1437
    iput-object p1, p0, Lexm$14;->c:Lexm;

    iput-object p2, p0, Lexm$14;->a:Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;

    iput p3, p0, Lexm$14;->b:I

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
    .line 1440
    iget-object v0, p0, Lexm$14;->c:Lexm;

    invoke-static {v0}, Lexm;->b(Lexm;)Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1441
    iget-object v0, p0, Lexm$14;->c:Lexm;

    invoke-static {v0}, Lexm;->b(Lexm;)Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$b;

    move-result-object v0

    iget-object v1, p0, Lexm$14;->a:Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;

    iget v2, p0, Lexm$14;->b:I

    invoke-interface {v0, v1, v2}, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$b;->b(Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;I)V

    .line 1443
    :cond_0
    return-void
.end method
