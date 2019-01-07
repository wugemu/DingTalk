.class final Lcom/alibaba/android/dingtalkim/session/SessionPresenter$12;
.super Ljava/lang/Object;
.source "SessionPresenter.java"

# interfaces
.implements Ldbt;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/session/SessionPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/session/SessionPresenter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .prologue
    .line 267
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$12;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 1
    .param p1, "hasNew"    # Z

    .prologue
    .line 270
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$12;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .line 1116
    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->a:Ldyy$b;

    .line 270
    invoke-interface {v0}, Ldyy$b;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$12;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .line 2116
    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->a:Ldyy$b;

    .line 271
    invoke-interface {v0, p1}, Ldyy$b;->c(Z)V

    .line 273
    :cond_0
    return-void
.end method
