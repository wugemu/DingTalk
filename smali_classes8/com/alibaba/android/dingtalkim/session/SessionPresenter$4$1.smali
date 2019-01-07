.class final Lcom/alibaba/android/dingtalkim/session/SessionPresenter$4$1;
.super Ljava/lang/Object;
.source "SessionPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/session/SessionPresenter$4;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Z

.field final synthetic c:Lcom/alibaba/android/dingtalkim/session/SessionPresenter$4;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/session/SessionPresenter$4;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/dingtalkim/session/SessionPresenter$4;

    .prologue
    .line 848
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$4$1;->c:Lcom/alibaba/android/dingtalkim/session/SessionPresenter$4;

    iput-object p2, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$4$1;->a:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$4$1;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 851
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$4$1;->c:Lcom/alibaba/android/dingtalkim/session/SessionPresenter$4;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$4;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .line 1116
    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->a:Ldyy$b;

    .line 851
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$4$1;->a:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$4$1;->b:Z

    invoke-interface {v0, v1, v2}, Ldyy$b;->a(Ljava/lang/String;Z)V

    .line 852
    return-void
.end method
