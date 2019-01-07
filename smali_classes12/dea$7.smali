.class final Ldea$7;
.super Ljava/lang/Object;
.source "ChatSendPresenter.java"

# interfaces
.implements Ldbw$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldea;->a(Ljava/lang/String;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;Ljava/util/HashMap;ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ldea;


# direct methods
.method constructor <init>(Ldea;)V
    .locals 0
    .param p1, "this$0"    # Ldea;

    .prologue
    .line 286
    iput-object p1, p0, Ldea$7;->a:Ldea;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 296
    iget-object v0, p0, Ldea$7;->a:Ldea;

    .line 3095
    iget-object v0, v0, Ldea;->b:Lddz$b;

    .line 296
    invoke-interface {v0}, Lddz$b;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 297
    iget-object v0, p0, Ldea$7;->a:Ldea;

    .line 4095
    iget-object v0, v0, Ldea;->b:Lddz$b;

    .line 297
    invoke-interface {v0, p1, p2}, Lddz$b;->a_(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    :cond_0
    return-void
.end method

.method public final onSuccess()V
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Ldea$7;->a:Ldea;

    .line 1095
    iget-object v0, v0, Ldea;->b:Lddz$b;

    .line 289
    invoke-interface {v0}, Lddz$b;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Ldea$7;->a:Ldea;

    .line 2095
    iget-object v0, v0, Ldea;->b:Lddz$b;

    .line 290
    invoke-interface {v0}, Lddz$b;->e()V

    .line 292
    :cond_0
    return-void
.end method
