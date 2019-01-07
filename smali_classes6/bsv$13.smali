.class final Lbsv$13;
.super Ljava/lang/Object;
.source "BleBindPresenter.java"

# interfaces
.implements Lbsy$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbsv;->a(Ljava/lang/String;Ljava/lang/String;)V
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
    .line 728
    iput-object p1, p0, Lbsv$13;->a:Lbsv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "result"    # Z
    .param p2, "code"    # Ljava/lang/String;
    .param p3, "errMsg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 732
    iget-object v0, p0, Lbsv$13;->a:Lbsv;

    invoke-virtual {v0}, Lbsv;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 747
    :cond_0
    return-void

    .line 735
    :cond_1
    if-nez p1, :cond_4

    .line 736
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 737
    iget-object v0, p0, Lbsv$13;->a:Lbsv;

    sget v1, Lbrx$g;->dt_door_guard_connect_wifi_fail:I

    invoke-virtual {v0, v1}, Lbsv;->a(I)Ljava/lang/String;

    move-result-object p3

    .line 746
    :cond_2
    :goto_0
    iget-object v0, p0, Lbsv$13;->a:Lbsv;

    .line 2390
    iget-object v0, v0, Lbsv;->d:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbsy$a;

    .line 2391
    instance-of v2, v0, Lbsy$c;

    if-eqz v2, :cond_6

    .line 2392
    check-cast v0, Lbsy$c;

    invoke-interface {v0, p1, p2, p3}, Lbsy$c;->a(ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 740
    :cond_4
    iget-object v0, p0, Lbsv$13;->a:Lbsv;

    .line 1075
    iget-boolean v0, v0, Lbsv;->g:Z

    .line 740
    if-nez v0, :cond_5

    .line 741
    const-string/jumbo v0, "2"

    invoke-static {v0}, Lbsn;->b(Ljava/lang/String;)V

    .line 742
    const-string/jumbo v0, "3"

    invoke-static {v0}, Lbsn;->a(Ljava/lang/String;)V

    .line 744
    :cond_5
    iget-object v0, p0, Lbsv$13;->a:Lbsv;

    invoke-virtual {v0}, Lbsv;->B()V

    goto :goto_0

    .line 2393
    :cond_6
    instance-of v2, v0, Lbsy$b;

    if-eqz v2, :cond_3

    .line 2394
    check-cast v0, Lbsy$b;

    invoke-interface {v0, p1, p3}, Lbsy$b;->a(ZLjava/lang/String;)V

    goto :goto_1
.end method
