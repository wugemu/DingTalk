.class final Lejq$1$1;
.super Ljava/lang/Object;
.source "HomeBurnChatEnterManger.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lejq$1;->onClick(Landroid/view/View;)V
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
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lejq$1;


# direct methods
.method constructor <init>(Lejq$1;)V
    .locals 0
    .param p1, "this$1"    # Lejq$1;

    .prologue
    .line 68
    iput-object p1, p0, Lejq$1$1;->a:Lejq$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 109
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 68
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 68
    check-cast p1, Ljava/lang/String;

    .line 1071
    invoke-static {}, Lekw;->b()Lekw;

    move-result-object v0

    new-instance v1, Lejq$1$1$1;

    invoke-direct {v1, p0, p1}, Lejq$1$1$1;-><init>(Lejq$1$1;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lekw;->c(Lcom/alibaba/wukong/Callback;)V

    .line 68
    return-void
.end method
