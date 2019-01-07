.class final Lbsv$6$2;
.super Ljava/lang/Object;
.source "BleBindPresenter.java"

# interfaces
.implements Lbsy$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbsv$6;->onDeviceConnected(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbsy$b;

.field final synthetic b:Lbsv$6;


# direct methods
.method constructor <init>(Lbsv$6;Lbsy$b;)V
    .locals 0
    .param p1, "this$1"    # Lbsv$6;

    .prologue
    .line 1245
    iput-object p1, p0, Lbsv$6$2;->b:Lbsv$6;

    iput-object p2, p0, Lbsv$6$2;->a:Lbsy$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ZLjava/lang/String;)V
    .locals 4
    .param p1, "result"    # Z
    .param p2, "errMsg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v3, 0x1

    .line 1248
    if-eqz p1, :cond_2

    .line 1250
    iget-object v1, p0, Lbsv$6$2;->b:Lbsv$6;

    iget-object v1, v1, Lbsv$6;->c:Lbsv;

    invoke-static {v1}, Lbsv;->a(Lbsv;)I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_0

    .line 1251
    iget-object v1, p0, Lbsv$6$2;->b:Lbsv$6;

    iget-object v1, v1, Lbsv$6;->c:Lbsv;

    .line 2075
    invoke-static {}, Lbsv;->G()Lcom/alibaba/android/dingbox/btinterface/BleInterface$d;

    move-result-object v0

    .line 1252
    .local v0, "featureReqModel":Lcom/alibaba/android/dingbox/btinterface/BleInterface$d;
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingbox/btinterface/BleInterface$d;->b:Ljava/lang/Boolean;

    .line 1253
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingbox/btinterface/BleInterface$d;->d:Ljava/lang/Boolean;

    .line 1254
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingbox/btinterface/BleInterface$d;->e:Ljava/lang/Boolean;

    .line 1257
    iget-object v1, p0, Lbsv$6$2;->b:Lbsv$6;

    iget-object v1, v1, Lbsv$6;->c:Lbsv;

    new-instance v2, Lbsv$6$2$1;

    invoke-direct {v2, p0}, Lbsv$6$2$1;-><init>(Lbsv$6$2;)V

    invoke-static {v1, v0, v2}, Lbsv;->a(Lbsv;Lcom/alibaba/android/dingbox/btinterface/BleInterface$d;Lbsv$i;)V

    .line 1278
    .end local v0    # "featureReqModel":Lcom/alibaba/android/dingbox/btinterface/BleInterface$d;
    :goto_0
    return-void

    .line 1269
    :cond_0
    iget-object v1, p0, Lbsv$6$2;->b:Lbsv$6;

    iget-object v1, v1, Lbsv$6;->c:Lbsv;

    invoke-virtual {v1}, Lbsv;->z()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1270
    iget-object v1, p0, Lbsv$6$2;->b:Lbsv$6;

    iget-object v1, v1, Lbsv$6;->c:Lbsv;

    iget-object v2, p0, Lbsv$6$2;->a:Lbsy$b;

    invoke-virtual {v1, v2}, Lbsv;->j(Lbsy$b;)V

    goto :goto_0

    .line 1272
    :cond_1
    iget-object v1, p0, Lbsv$6$2;->b:Lbsv$6;

    iget-object v1, v1, Lbsv$6;->c:Lbsv;

    invoke-static {v1, p1, p2}, Lbsv;->a(Lbsv;ZLjava/lang/String;)V

    goto :goto_0

    .line 1276
    :cond_2
    iget-object v1, p0, Lbsv$6$2;->b:Lbsv$6;

    iget-object v1, v1, Lbsv$6;->c:Lbsv;

    invoke-static {v1, p1, p2}, Lbsv;->a(Lbsv;ZLjava/lang/String;)V

    goto :goto_0
.end method
