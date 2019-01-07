.class final Lbsv$7$1$1;
.super Ljava/lang/Object;
.source "BleBindPresenter.java"

# interfaces
.implements Lbsy$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbsv$7$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbsv$7$1;


# direct methods
.method constructor <init>(Lbsv$7$1;)V
    .locals 0
    .param p1, "this$2"    # Lbsv$7$1;

    .prologue
    .line 1363
    iput-object p1, p0, Lbsv$7$1$1;->a:Lbsv$7$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ZLjava/lang/String;)V
    .locals 1
    .param p1, "result"    # Z
    .param p2, "errMsg"    # Ljava/lang/String;

    .prologue
    .line 1366
    iget-object v0, p0, Lbsv$7$1$1;->a:Lbsv$7$1;

    iget-object v0, v0, Lbsv$7$1;->a:Lbsv$7;

    iget-object v0, v0, Lbsv$7;->b:Lbsv;

    invoke-virtual {v0}, Lbsv;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1370
    :goto_0
    return-void

    .line 1369
    :cond_0
    iget-object v0, p0, Lbsv$7$1$1;->a:Lbsv$7$1;

    iget-object v0, v0, Lbsv$7$1;->a:Lbsv$7;

    iget-object v0, v0, Lbsv$7;->b:Lbsv;

    invoke-static {v0, p1, p2}, Lbsv;->b(Lbsv;ZLjava/lang/String;)V

    goto :goto_0
.end method
