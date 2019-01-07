.class public final Lbhp;
.super Ljava/lang/Object;
.source "DingMembersEvent.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbhp$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
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

.field public c:Lbhp$a;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lbhp$a;)V
    .locals 0
    .param p1, "dingId"    # Ljava/lang/String;
    .param p2, "dingMemberEventCallback"    # Lbhp$a;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lbhp;->b:Ljava/lang/String;

    .line 25
    iput-object p2, p0, Lbhp;->c:Lbhp$a;

    .line 26
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
    .line 30
    .local p1, "members":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    iget-boolean v0, p0, Lbhp;->a:Z

    if-eqz v0, :cond_1

    .line 36
    :cond_0
    :goto_0
    return-void

    .line 33
    :cond_1
    iget-object v0, p0, Lbhp;->c:Lbhp$a;

    if-eqz v0, :cond_0

    .line 34
    iget-object v0, p0, Lbhp;->c:Lbhp$a;

    invoke-interface {v0, p1}, Lbhp$a;->a(Ljava/util/List;)V

    goto :goto_0
.end method

.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 17
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lbhp;->a(Ljava/util/List;)V

    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 40
    iget-boolean v0, p0, Lbhp;->a:Z

    if-eqz v0, :cond_1

    .line 46
    :cond_0
    :goto_0
    return-void

    .line 43
    :cond_1
    iget-object v0, p0, Lbhp;->c:Lbhp$a;

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lbhp;->c:Lbhp$a;

    invoke-interface {v0}, Lbhp$a;->a()V

    goto :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 50
    return-void
.end method
