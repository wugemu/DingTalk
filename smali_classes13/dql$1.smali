.class final Ldql$1;
.super Ljava/lang/Object;
.source "BurnChatEnterManager.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldql;
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
        "Lcom/alibaba/wukong/im/Conversation;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ldql;


# direct methods
.method constructor <init>(Ldql;)V
    .locals 0
    .param p1, "this$0"    # Ldql;

    .prologue
    .line 45
    iput-object p1, p0, Ldql$1;->a:Ldql;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s2"    # Ljava/lang/String;

    .prologue
    .line 57
    iget-object v0, p0, Ldql$1;->a:Ldql;

    invoke-static {v0}, Ldql;->a(Ldql;)V

    .line 58
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 45
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 45
    check-cast p1, Lcom/alibaba/wukong/im/Conversation;

    .line 1048
    if-eqz p1, :cond_0

    .line 1049
    iget-object v0, p0, Ldql$1;->a:Ldql;

    invoke-static {v0, p1}, Ldql;->a(Ldql;Lcom/alibaba/wukong/im/Conversation;)V

    :goto_0
    return-void

    .line 1051
    :cond_0
    iget-object v0, p0, Ldql$1;->a:Ldql;

    invoke-static {v0}, Ldql;->a(Ldql;)V

    goto :goto_0
.end method
