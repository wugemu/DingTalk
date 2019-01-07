.class final Ljix$3;
.super Ljava/lang/Object;
.source "InAppConnection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljix;->a(IIZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Z

.field final synthetic c:I

.field final synthetic d:Ljix;


# direct methods
.method constructor <init>(Ljix;IZI)V
    .locals 0

    .prologue
    .line 290
    iput-object p1, p0, Ljix$3;->d:Ljix;

    iput p2, p0, Ljix$3;->a:I

    iput-boolean p3, p0, Ljix$3;->b:Z

    iput p4, p0, Ljix$3;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 293
    iget v1, p0, Ljix$3;->a:I

    if-lez v1, :cond_1

    .line 294
    iget-object v1, p0, Ljix$3;->d:Ljix;

    iget-object v1, v1, Ljix;->c:Ljip;

    iget v2, p0, Ljix$3;->a:I

    invoke-static {v2}, Lcom/taobao/accs/utl/UtilityImpl;->int2String(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljip;->a(Ljava/lang/String;)Lcom/taobao/accs/data/Message;

    move-result-object v0

    .line 295
    .local v0, "reqMsg":Lcom/taobao/accs/data/Message;
    if-eqz v0, :cond_1

    .line 296
    iget-boolean v1, p0, Ljix$3;->b:Z

    if-eqz v1, :cond_3

    .line 298
    iget-object v1, p0, Ljix$3;->d:Ljix;

    const/16 v2, 0x7d0

    invoke-virtual {v1, v0, v2}, Ljix;->a(Lcom/taobao/accs/data/Message;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 299
    iget-object v1, p0, Ljix$3;->d:Ljix;

    iget-object v1, v1, Ljix;->c:Ljip;

    iget v2, p0, Ljix$3;->c:I

    invoke-virtual {v1, v0, v2}, Ljip;->a(Lcom/taobao/accs/data/Message;I)V

    .line 301
    :cond_0
    invoke-virtual {v0}, Lcom/taobao/accs/data/Message;->getNetPermanceMonitor()Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 302
    const-string/jumbo v1, "accs"

    const-string/jumbo v2, "resend"

    const-string/jumbo v3, "total_tnet"

    const-wide/16 v4, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Ljjh;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    .line 310
    .end local v0    # "reqMsg":Lcom/taobao/accs/data/Message;
    :cond_1
    :goto_0
    iget v1, p0, Ljix$3;->a:I

    if-gez v1, :cond_2

    iget-boolean v1, p0, Ljix$3;->b:Z

    if-eqz v1, :cond_2

    .line 311
    iget-object v1, p0, Ljix$3;->d:Ljix;

    iget v2, p0, Ljix$3;->a:I

    invoke-virtual {v1, v2}, Ljix;->b(I)V

    .line 313
    :cond_2
    return-void

    .line 305
    .restart local v0    # "reqMsg":Lcom/taobao/accs/data/Message;
    :cond_3
    iget-object v1, p0, Ljix$3;->d:Ljix;

    iget-object v1, v1, Ljix;->c:Ljip;

    iget v2, p0, Ljix$3;->c:I

    invoke-virtual {v1, v0, v2}, Ljip;->a(Lcom/taobao/accs/data/Message;I)V

    goto :goto_0
.end method
