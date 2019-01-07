.class public final Lbhp$1;
.super Ljava/lang/Object;
.source "DingMembersEvent.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbhp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Lcom/alibaba/android/ding/base/objects/ObjectDing;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lbhp;


# direct methods
.method public constructor <init>(Lbhp;)V
    .locals 0
    .param p1, "this$0"    # Lbhp;

    .prologue
    .line 60
    iput-object p1, p0, Lbhp$1;->a:Lbhp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 60
    check-cast p1, Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 1063
    if-nez p1, :cond_0

    .line 1064
    iget-object v0, p0, Lbhp$1;->a:Lbhp;

    const-string/jumbo v1, "-1"

    const-string/jumbo v2, "[DingMembersEvent]result null"

    invoke-virtual {v0, v1, v2}, Lbhp;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 1068
    :goto_0
    return-void

    .line 1067
    :cond_0
    invoke-static {p1}, Lbkh;->c(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lbkh;->F(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1068
    iget-object v0, p0, Lbhp$1;->a:Lbhp;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Long;

    const/4 v2, 0x0

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v3

    invoke-virtual {v3}, Lccr;->c()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbhp;->a(Ljava/util/List;)V

    goto :goto_0

    .line 1070
    :cond_1
    invoke-static {}, Lbbp;->a()Lbbp;

    move-result-object v0

    iget-object v1, p0, Lbhp$1;->a:Lbhp;

    .line 2017
    iget-object v1, v1, Lbhp;->b:Ljava/lang/String;

    .line 1070
    iget-object v2, p0, Lbhp$1;->a:Lbhp;

    invoke-virtual {v0, v1, v2}, Lbbp;->a(Ljava/lang/String;Lcma;)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 80
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "[DingMembersEvent]getDing Failed. code:"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, " ,reason:"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object p2, v0, v1

    invoke-static {v0}, Lbkd;->a([Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lbhp$1;->a:Lbhp;

    invoke-virtual {v0, p1, p2}, Lbhp;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 76
    return-void
.end method
