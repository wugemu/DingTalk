.class final Ldea$12$1;
.super Ljava/lang/Object;
.source "ChatSendPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldea$12;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ldea$12;


# direct methods
.method constructor <init>(Ldea$12;)V
    .locals 0
    .param p1, "this$1"    # Ldea$12;

    .prologue
    .line 485
    iput-object p1, p0, Ldea$12$1;->a:Ldea$12;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 488
    iget-object v0, p0, Ldea$12$1;->a:Ldea$12;

    iget-object v0, v0, Ldea$12;->b:Ldea;

    .line 1095
    iget-object v0, v0, Ldea;->b:Lddz$b;

    .line 488
    invoke-interface {v0}, Lddz$b;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 489
    iget-object v0, p0, Ldea$12$1;->a:Ldea$12;

    iget-object v0, v0, Ldea$12;->b:Ldea;

    .line 2095
    iget-object v0, v0, Ldea;->b:Lddz$b;

    .line 489
    invoke-interface {v0}, Lddz$b;->h()V

    .line 491
    :cond_0
    return-void
.end method
