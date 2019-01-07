.class public final Lbhr;
.super Ljava/lang/Object;
.source "DingReceiversEventV2.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbhr$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Lbfw;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Z

.field private b:J

.field private c:I

.field private d:I

.field private e:Lbhr$a;


# direct methods
.method public constructor <init>(JIILbhr$a;)V
    .locals 1
    .param p1, "dingId"    # J
    .param p3, "bizType"    # I
    .param p4, "bizStatus"    # I
    .param p5, "dingReceiversEventCallback"    # Lbhr$a;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-wide p1, p0, Lbhr;->b:J

    .line 26
    iput p3, p0, Lbhr;->c:I

    .line 27
    iput p4, p0, Lbhr;->d:I

    .line 28
    iput-object p5, p0, Lbhr;->e:Lbhr$a;

    .line 29
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 10
    .param p1, "cursor"    # I

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lbhr;->a:Z

    .line 57
    iget-wide v0, p0, Lbhr;->b:J

    invoke-static {v0, v1}, Lbkh;->a(J)Z

    move-result v0

    if-nez v0, :cond_1

    .line 58
    iget-object v0, p0, Lbhr;->e:Lbhr$a;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lbhr;->e:Lbhr$a;

    invoke-interface {v0}, Lbhr$a;->a()V

    .line 69
    :cond_0
    :goto_0
    return-void

    .line 63
    :cond_1
    invoke-static {}, Lbbp;->a()Lbbp;

    move-result-object v1

    iget-wide v2, p0, Lbhr;->b:J

    iget v4, p0, Lbhr;->c:I

    iget v5, p0, Lbhr;->d:I

    .line 1904
    iget-object v9, v1, Lbbp;->b:Lbbp$a;

    new-instance v0, Lbbp$96;

    const/16 v7, 0x32

    move v6, p1

    move-object v8, p0

    invoke-direct/range {v0 .. v8}, Lbbp$96;-><init>(Lbbp;JIIIILcma;)V

    invoke-virtual {v9, v0}, Lbbp$a;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 11
    check-cast p1, Lbfw;

    .line 2033
    iget-boolean v0, p0, Lbhr;->a:Z

    if-nez v0, :cond_0

    .line 2036
    iget-object v0, p0, Lbhr;->e:Lbhr$a;

    if-eqz v0, :cond_0

    .line 2037
    iget-object v0, p0, Lbhr;->e:Lbhr$a;

    invoke-interface {v0, p1}, Lbhr$a;->a(Lbfw;)V

    .line 11
    :cond_0
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 47
    iget-boolean v0, p0, Lbhr;->a:Z

    if-eqz v0, :cond_1

    .line 53
    :cond_0
    :goto_0
    return-void

    .line 50
    :cond_1
    iget-object v0, p0, Lbhr;->e:Lbhr$a;

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lbhr;->e:Lbhr$a;

    invoke-interface {v0}, Lbhr$a;->a()V

    goto :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 43
    return-void
.end method
