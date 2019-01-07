.class public final Lbhn;
.super Ljava/lang/Object;
.source "ConversationMemberUidsEvent.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbhn$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/wukong/Callback",
        "<",
        "Ljava/util/List",
        "<",
        "Ljava/lang/Long;",
        ">;>;"
    }
.end annotation


# instance fields
.field public a:Z

.field public b:Ljava/lang/String;

.field c:Z

.field private d:Lbhn$a;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLbhn$a;)V
    .locals 1
    .param p1, "cid"    # Ljava/lang/String;
    .param p2, "filterNpc"    # Z
    .param p3, "conversationMemberUidsEventCallback"    # Lbhn$a;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lbhn;->b:Ljava/lang/String;

    .line 32
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbhn;->c:Z

    .line 33
    iput-object p3, p0, Lbhn;->d:Lbhn$a;

    .line 34
    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 38
    .local p1, "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    iget-boolean v0, p0, Lbhn;->a:Z

    if-eqz v0, :cond_1

    .line 50
    :cond_0
    :goto_0
    return-void

    .line 41
    :cond_1
    if-eqz p1, :cond_2

    .line 42
    iget-object v0, p0, Lbhn;->d:Lbhn$a;

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lbhn;->d:Lbhn$a;

    invoke-interface {v0, p1}, Lbhn$a;->a(Ljava/util/List;)V

    goto :goto_0

    .line 46
    :cond_2
    iget-object v0, p0, Lbhn;->d:Lbhn$a;

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lbhn;->d:Lbhn$a;

    invoke-interface {v0}, Lbhn$a;->a()V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 54
    iget-boolean v0, p0, Lbhn;->a:Z

    if-eqz v0, :cond_1

    .line 60
    :cond_0
    :goto_0
    return-void

    .line 57
    :cond_1
    iget-object v0, p0, Lbhn;->d:Lbhn$a;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lbhn;->d:Lbhn$a;

    invoke-interface {v0}, Lbhn$a;->a()V

    goto :goto_0
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 21
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 21
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lbhn;->a(Ljava/util/List;)V

    return-void
.end method
