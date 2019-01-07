.class final Lewv$7;
.super Ljava/lang/Object;
.source "TeleFloatingVoipManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lewv;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lewv;


# direct methods
.method constructor <init>(Lewv;)V
    .locals 0
    .param p1, "this$0"    # Lewv;

    .prologue
    .line 508
    iput-object p1, p0, Lewv$7;->a:Lewv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 511
    iget-object v0, p0, Lewv$7;->a:Lewv;

    invoke-static {v0}, Lewv;->g(Lewv;)Lcom/alibaba/android/teleconf/widget/ConfVoipFloatView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 512
    iget-object v0, p0, Lewv$7;->a:Lewv;

    invoke-static {v0}, Lewv;->g(Lewv;)Lcom/alibaba/android/teleconf/widget/ConfVoipFloatView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/teleconf/widget/ConfVoipFloatView;->b()V

    .line 513
    iget-object v0, p0, Lewv$7;->a:Lewv;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lewv;->a(Lewv;Lcom/alibaba/android/teleconf/widget/ConfVoipFloatView;)Lcom/alibaba/android/teleconf/widget/ConfVoipFloatView;

    .line 515
    :cond_0
    return-void
.end method
