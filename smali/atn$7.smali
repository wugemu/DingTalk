.class public final Latn$7;
.super Lcmi;
.source "CalendarDataSourceRemote.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Latn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmi",
        "<",
        "Ljava/util/List",
        "<",
        "Laqu;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcma;

.field final synthetic b:Latn;


# direct methods
.method public constructor <init>(Latn;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Latn;

    .prologue
    .line 327
    iput-object p1, p0, Latn$7;->b:Latn;

    iput-object p2, p0, Latn$7;->a:Lcma;

    invoke-direct {p0}, Lcmi;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 349
    iget-object v0, p0, Latn$7;->a:Lcma;

    if-eqz v0, :cond_0

    .line 350
    iget-object v0, p0, Latn$7;->a:Lcma;

    invoke-interface {v0, p1, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    :cond_0
    const-string/jumbo v0, "listShareFolders onException "

    invoke-static {v0, p1, p2}, Lawm;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    return-void
.end method

.method public final synthetic onLoadSuccess(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 327
    check-cast p1, Ljava/util/List;

    .line 1331
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1332
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1333
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laqu;

    .line 1334
    invoke-static {v0}, Lask;->a(Laqu;)Lask;

    move-result-object v0

    .line 1335
    if-eqz v0, :cond_0

    .line 1336
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1341
    :cond_1
    iget-object v0, p0, Latn$7;->a:Lcma;

    if-eqz v0, :cond_2

    .line 1342
    iget-object v0, p0, Latn$7;->a:Lcma;

    invoke-interface {v0, v1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 327
    :cond_2
    return-void
.end method
