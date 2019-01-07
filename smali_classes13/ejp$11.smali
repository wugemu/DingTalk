.class final Lejp$11;
.super Ljava/lang/Object;
.source "HomeAttendanceManger.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lejp;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Ljava/util/Set",
        "<",
        "Lcom/alibaba/dingtalk/runtimebase/object/CheckInRemindCorpObject;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lejp;


# direct methods
.method constructor <init>(Lejp;)V
    .locals 0
    .param p1, "this$0"    # Lejp;

    .prologue
    .line 272
    iput-object p1, p0, Lejp$11;->a:Lejp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 272
    check-cast p1, Ljava/util/Set;

    .line 1276
    const-string/jumbo v2, "fast_checkin"

    const-string/jumbo v3, ""

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const-string/jumbo v0, "receive checkin "

    aput-object v0, v4, v5

    if-nez p1, :cond_1

    move-object v0, v1

    :goto_0
    aput-object v0, v4, v6

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1277
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1278
    :cond_0
    iget-object v0, p0, Lejp$11;->a:Lejp;

    .line 2048
    iput-object v1, v0, Lejp;->g:Ljava/util/List;

    .line 1279
    iget-object v0, p0, Lejp$11;->a:Lejp;

    .line 3048
    invoke-virtual {v0, v5}, Lejp;->a(Z)V

    .line 1279
    :goto_1
    return-void

    .line 1276
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1281
    :cond_2
    iget-object v0, p0, Lejp$11;->a:Lejp;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 4048
    iput-object v1, v0, Lejp;->g:Ljava/util/List;

    .line 1282
    iget-object v0, p0, Lejp$11;->a:Lejp;

    .line 5048
    invoke-virtual {v0, v6}, Lejp;->a(Z)V

    goto :goto_1
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 292
    const-string/jumbo v0, "fast_checkin"

    const-string/jumbo v1, ""

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "receive checkin plan err "

    aput-object v3, v2, v5

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, " "

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p2, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    iget-object v0, p0, Lejp$11;->a:Lejp;

    .line 1048
    invoke-virtual {v0, v5}, Lejp;->a(Z)V

    .line 294
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 288
    return-void
.end method
