.class Lcom/alibaba/wukong/auth/b$3$1;
.super Ljava/lang/Object;
.source "AppStatusTracker.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/wukong/auth/b$3;->run()V
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic m:Lcom/alibaba/wukong/auth/b$3;


# direct methods
.method constructor <init>(Lcom/alibaba/wukong/auth/b$3;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/wukong/auth/b$3;

    .prologue
    .line 136
    iput-object p1, p0, Lcom/alibaba/wukong/auth/b$3$1;->m:Lcom/alibaba/wukong/auth/b$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Void;)V
    .locals 2
    .param p1, "data"    # Ljava/lang/Void;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 139
    iget-object v0, p0, Lcom/alibaba/wukong/auth/b$3$1;->m:Lcom/alibaba/wukong/auth/b$3;

    iget-object v0, v0, Lcom/alibaba/wukong/auth/b$3;->l:Lcom/alibaba/wukong/auth/b;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/alibaba/wukong/auth/b;->d(Lcom/alibaba/wukong/auth/b;Z)Z

    .line 140
    return-void
.end method

.method public a(Ljava/lang/Void;I)V
    .locals 0
    .param p1, "data"    # Ljava/lang/Void;
    .param p2, "progress"    # I

    .prologue
    .line 149
    return-void
.end method

.method public onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 144
    iget-object v0, p0, Lcom/alibaba/wukong/auth/b$3$1;->m:Lcom/alibaba/wukong/auth/b$3;

    iget-object v0, v0, Lcom/alibaba/wukong/auth/b$3;->l:Lcom/alibaba/wukong/auth/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/wukong/auth/b;->d(Lcom/alibaba/wukong/auth/b;Z)Z

    .line 145
    return-void
.end method

.method public synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 136
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/wukong/auth/b$3$1;->a(Ljava/lang/Void;I)V

    return-void
.end method

.method public synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 136
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/alibaba/wukong/auth/b$3$1;->a(Ljava/lang/Void;)V

    return-void
.end method