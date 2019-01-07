.class final Lqh$1;
.super Ljava/lang/Object;
.source "CommonAccountPushDispatcher.java"

# interfaces
.implements Lyb;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lqh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lqh;


# direct methods
.method constructor <init>(Lqh;)V
    .locals 0
    .param p1, "this$0"    # Lqh;

    .prologue
    .line 83
    iput-object p1, p0, Lqh$1;->a:Lqh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onEvent(Lyc;)V
    .locals 4
    .param p1, "eventMessage"    # Lyc;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 86
    iget-object v0, p1, Lyc;->b:Ljava/lang/String;

    .line 87
    .local v0, "accountName":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 100
    :cond_0
    :goto_0
    return-void

    .line 91
    :cond_1
    invoke-static {}, Lpp;->a()Lpq;

    move-result-object v2

    invoke-interface {v2, v0}, Lpq;->isCommonAccount(Ljava/lang/String;)Z

    move-result v1

    .line 92
    .local v1, "isCommonAccont":Z
    if-eqz v1, :cond_0

    .line 96
    iget v2, p1, Lyc;->c:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    iget v2, p1, Lyc;->c:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 98
    :cond_2
    iget-object v2, p0, Lqh$1;->a:Lqh;

    invoke-static {v2}, Lqh;->a(Lqh;)V

    goto :goto_0
.end method
