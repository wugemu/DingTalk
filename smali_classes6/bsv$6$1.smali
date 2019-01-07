.class final Lbsv$6$1;
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
.field final synthetic a:Lbsv$6;


# direct methods
.method constructor <init>(Lbsv$6;)V
    .locals 0
    .param p1, "this$1"    # Lbsv$6;

    .prologue
    .line 1238
    iput-object p1, p0, Lbsv$6$1;->a:Lbsv$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ZLjava/lang/String;)V
    .locals 3
    .param p1, "result"    # Z
    .param p2, "errMsg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 1241
    iget-object v0, p0, Lbsv$6$1;->a:Lbsv$6;

    iget-object v0, v0, Lbsv$6;->c:Lbsv;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lbsv;->a(Lbsv;ZLjava/lang/String;)V

    .line 1242
    return-void
.end method
