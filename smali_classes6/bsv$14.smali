.class final Lbsv$14;
.super Ljava/lang/Object;
.source "BleBindPresenter.java"

# interfaces
.implements Lbsy$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbsv;->C()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbsv;


# direct methods
.method constructor <init>(Lbsv;)V
    .locals 0
    .param p1, "this$0"    # Lbsv;

    .prologue
    .line 770
    iput-object p1, p0, Lbsv$14;->a:Lbsv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ZLjava/lang/String;)V
    .locals 2
    .param p1, "result"    # Z
    .param p2, "errMsg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 773
    iget-object v0, p0, Lbsv$14;->a:Lbsv;

    invoke-virtual {v0}, Lbsv;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 787
    :cond_0
    :goto_0
    return-void

    .line 777
    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p0, Lbsv$14;->a:Lbsv;

    .line 1075
    iget-boolean v0, v0, Lbsv;->g:Z

    .line 777
    if-eqz v0, :cond_2

    .line 779
    iget-object v0, p0, Lbsv$14;->a:Lbsv;

    invoke-virtual {v0}, Lbsv;->m()V

    goto :goto_0

    .line 782
    :cond_2
    if-eqz p1, :cond_3

    .line 783
    const-string/jumbo v0, "2"

    invoke-static {v0}, Lbsn;->b(Ljava/lang/String;)V

    .line 784
    const-string/jumbo v0, "3"

    invoke-static {v0}, Lbsn;->a(Ljava/lang/String;)V

    .line 786
    :cond_3
    iget-object v0, p0, Lbsv$14;->a:Lbsv;

    .line 2416
    iget-object v0, v0, Lbsv;->e:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbsy$b;

    .line 2417
    invoke-interface {v0, p1, p2}, Lbsy$b;->a(ZLjava/lang/String;)V

    goto :goto_1
.end method
