.class final Lfxa$3;
.super Ljava/lang/Object;
.source "NameManager.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfxa;->d(Ljava/lang/String;JJLfxa$a;)V
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
        "Lcom/alibaba/wukong/im/GroupNickObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lckl;

.field final synthetic b:Lfxa$a;

.field final synthetic c:Lfxa;


# direct methods
.method constructor <init>(Lfxa;Lckl;Lfxa$a;)V
    .locals 0
    .param p1, "this$0"    # Lfxa;

    .prologue
    .line 728
    iput-object p1, p0, Lfxa$3;->c:Lfxa;

    iput-object p2, p0, Lfxa$3;->a:Lckl;

    iput-object p3, p0, Lfxa$3;->b:Lfxa$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 742
    iget-object v0, p0, Lfxa$3;->c:Lfxa;

    iget-object v1, p0, Lfxa$3;->b:Lfxa$a;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lfxa;->a(Lfxa;Lfxa$a;Lckl;)V

    .line 743
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 728
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 728
    check-cast p1, Lcom/alibaba/wukong/im/GroupNickObject;

    .line 1731
    if-eqz p1, :cond_0

    .line 1732
    iget-object v0, p0, Lfxa$3;->a:Lckl;

    invoke-virtual {p1}, Lcom/alibaba/wukong/im/GroupNickObject;->getGroupNick()Ljava/lang/String;

    move-result-object v1

    .line 2043
    iput-object v1, v0, Lckl;->d:Ljava/lang/String;

    .line 1733
    iget-object v0, p0, Lfxa$3;->a:Lckl;

    invoke-virtual {p1}, Lcom/alibaba/wukong/im/GroupNickObject;->getGroupNickPinyin()Ljava/lang/String;

    move-result-object v1

    .line 2051
    iput-object v1, v0, Lckl;->e:Ljava/lang/String;

    .line 1734
    iget-object v0, p0, Lfxa$3;->c:Lfxa;

    iget-object v1, p0, Lfxa$3;->b:Lfxa$a;

    iget-object v2, p0, Lfxa$3;->a:Lckl;

    invoke-static {v0, v1, v2}, Lfxa;->a(Lfxa;Lfxa$a;Lckl;)V

    :goto_0
    return-void

    .line 1736
    :cond_0
    iget-object v0, p0, Lfxa$3;->c:Lfxa;

    iget-object v1, p0, Lfxa$3;->b:Lfxa$a;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lfxa;->a(Lfxa;Lfxa$a;Lckl;)V

    goto :goto_0
.end method
