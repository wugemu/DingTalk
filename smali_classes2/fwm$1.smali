.class final Lfwm$1;
.super Ljava/lang/Object;
.source "NotificationStyleSettingPresenter.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfwm;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/wukong/Callback",
        "<",
        "Lcom/alibaba/wukong/settings/CloudSetting;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lfwm;


# direct methods
.method constructor <init>(Lfwm;Z)V
    .locals 0
    .param p1, "this$0"    # Lfwm;

    .prologue
    .line 96
    iput-object p1, p0, Lfwm$1;->b:Lfwm;

    iput-boolean p2, p0, Lfwm$1;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 104
    iget-object v1, p0, Lfwm$1;->b:Lfwm;

    iget-boolean v0, p0, Lfwm$1;->a:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 1020
    :goto_0
    invoke-virtual {v1, v0}, Lfwm;->c(Z)V

    .line 105
    return-void

    .line 104
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 96
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 96
    .line 1099
    iget-object v0, p0, Lfwm$1;->b:Lfwm;

    iget-boolean v1, p0, Lfwm$1;->a:Z

    .line 2020
    invoke-virtual {v0, v1}, Lfwm;->c(Z)V

    .line 96
    return-void
.end method
