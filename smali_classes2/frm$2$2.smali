.class final Lfrm$2$2;
.super Ljava/lang/Object;
.source "NotReceiveSmsCodePresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfrm$2;->onTokenFailed(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lfrm$2;


# direct methods
.method constructor <init>(Lfrm$2;)V
    .locals 0
    .param p1, "this$1"    # Lfrm$2;

    .prologue
    .line 147
    iput-object p1, p0, Lfrm$2$2;->a:Lfrm$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lfrm$2$2;->a:Lfrm$2;

    iget-object v0, v0, Lfrm$2;->a:Lfrm;

    .line 1032
    invoke-virtual {v0}, Lfrm;->a()Z

    move-result v0

    .line 150
    if-eqz v0, :cond_0

    .line 155
    :goto_0
    return-void

    .line 153
    :cond_0
    iget-object v0, p0, Lfrm$2$2;->a:Lfrm$2;

    iget-object v0, v0, Lfrm$2;->a:Lfrm;

    .line 2032
    iget-object v0, v0, Lfrm;->b:Lfrl$b;

    .line 153
    invoke-interface {v0}, Lfrl$b;->h()V

    goto :goto_0
.end method
