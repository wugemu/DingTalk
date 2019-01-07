.class public final Lemp$3;
.super Ljava/lang/Object;
.source "ScanHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lemp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lemp;


# direct methods
.method public constructor <init>(Lemp;)V
    .locals 0
    .param p1, "this$0"    # Lemp;

    .prologue
    .line 59
    iput-object p1, p0, Lemp$3;->a:Lemp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 62
    iget-object v0, p0, Lemp$3;->a:Lemp;

    .line 1014
    iget-object v0, v0, Lemp;->e:Lcom/alipay/mobile/bqcscanservice/f;

    .line 62
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/bqcscanservice/f;->a(Z)V

    .line 63
    return-void
.end method
