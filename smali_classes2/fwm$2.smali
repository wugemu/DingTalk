.class final Lfwm$2;
.super Ljava/lang/Object;
.source "NotificationStyleSettingPresenter.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfwm;->a(I)V
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
.field final synthetic a:I

.field final synthetic b:Z

.field final synthetic c:Lfwm;


# direct methods
.method constructor <init>(Lfwm;IZ)V
    .locals 0
    .param p1, "this$0"    # Lfwm;

    .prologue
    .line 124
    iput-object p1, p0, Lfwm$2;->c:Lfwm;

    iput p2, p0, Lfwm$2;->a:I

    iput-boolean p3, p0, Lfwm$2;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 132
    iget-object v0, p0, Lfwm$2;->c:Lfwm;

    new-instance v1, Lchj;

    iget v2, p0, Lfwm$2;->a:I

    iget-boolean v3, p0, Lfwm$2;->b:Z

    invoke-direct {v1, v2, v3}, Lchj;-><init>(IZ)V

    .line 1020
    iput-object v1, v0, Lfwm;->a:Lchj;

    .line 133
    iget-object v0, p0, Lfwm$2;->c:Lfwm;

    const/4 v1, 0x1

    .line 2020
    invoke-virtual {v0, v1}, Lfwm;->c(Z)V

    .line 134
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 124
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 124
    .line 2127
    iget-object v0, p0, Lfwm$2;->c:Lfwm;

    const/4 v1, 0x1

    .line 3020
    invoke-virtual {v0, v1}, Lfwm;->c(Z)V

    .line 124
    return-void
.end method
