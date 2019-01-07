.class final Lexm$5;
.super Ljava/lang/Object;
.source "VideoConfPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexm;->onJoinChatSuccess(Lcom/alivc/live/conf/AlivcVideoConf;)V
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
    .line 1233
    iput-object p1, p0, Lexm$5;->a:Lexm;

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
    .line 1236
    iget-object v0, p0, Lexm$5;->a:Lexm;

    invoke-static {v0}, Lexm;->g(Lexm;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lexm$5;->a:Lexm;

    invoke-static {v0}, Lexm;->h(Lexm;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1237
    :cond_0
    iget-object v0, p0, Lexm$5;->a:Lexm;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lexm;->c(Lexm;Z)V

    .line 1239
    :cond_1
    return-void
.end method
