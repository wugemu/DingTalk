.class final Lbsv$6$2$1;
.super Ljava/lang/Object;
.source "BleBindPresenter.java"

# interfaces
.implements Lbsv$i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbsv$6$2;->a(ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbsv$6$2;


# direct methods
.method constructor <init>(Lbsv$6$2;)V
    .locals 0
    .param p1, "this$2"    # Lbsv$6$2;

    .prologue
    .line 1257
    iput-object p1, p0, Lbsv$6$2$1;->a:Lbsv$6$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/alibaba/android/dingbox/btinterface/BleInterface$e;)V
    .locals 3
    .param p1, "result"    # Lcom/alibaba/android/dingbox/btinterface/BleInterface$e;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 1260
    iget-object v0, p0, Lbsv$6$2$1;->a:Lbsv$6$2;

    iget-object v0, v0, Lbsv$6$2;->b:Lbsv$6;

    iget-object v0, v0, Lbsv$6;->c:Lbsv;

    invoke-static {v0, p1}, Lbsv;->a(Lbsv;Lcom/alibaba/android/dingbox/btinterface/BleInterface$e;)V

    .line 1261
    iget-object v0, p0, Lbsv$6$2$1;->a:Lbsv$6$2;

    iget-object v0, v0, Lbsv$6$2;->b:Lbsv$6;

    iget-object v0, v0, Lbsv$6;->c:Lbsv;

    invoke-virtual {v0}, Lbsv;->z()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1262
    iget-object v0, p0, Lbsv$6$2$1;->a:Lbsv$6$2;

    iget-object v0, v0, Lbsv$6$2;->b:Lbsv$6;

    iget-object v0, v0, Lbsv$6;->c:Lbsv;

    iget-object v1, p0, Lbsv$6$2$1;->a:Lbsv$6$2;

    iget-object v1, v1, Lbsv$6$2;->a:Lbsy$b;

    invoke-virtual {v0, v1}, Lbsv;->j(Lbsy$b;)V

    .line 1266
    :goto_0
    return-void

    .line 1264
    :cond_0
    iget-object v0, p0, Lbsv$6$2$1;->a:Lbsv$6$2;

    iget-object v0, v0, Lbsv$6$2;->b:Lbsv$6;

    iget-object v0, v0, Lbsv$6;->c:Lbsv;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lbsv;->a(Lbsv;ZLjava/lang/String;)V

    goto :goto_0
.end method
