.class public final Lemp$1;
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
.field final synthetic a:Lcom/alipay/mobile/bqcscanservice/f;

.field final synthetic b:Lemp;


# direct methods
.method public constructor <init>(Lemp;Lcom/alipay/mobile/bqcscanservice/f;)V
    .locals 0
    .param p1, "this$0"    # Lemp;

    .prologue
    .line 33
    iput-object p1, p0, Lemp$1;->b:Lemp;

    iput-object p2, p0, Lemp$1;->a:Lcom/alipay/mobile/bqcscanservice/f;

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
    .line 36
    iget-object v0, p0, Lemp$1;->b:Lemp;

    iget-object v1, p0, Lemp$1;->a:Lcom/alipay/mobile/bqcscanservice/f;

    .line 1014
    iput-object v1, v0, Lemp;->e:Lcom/alipay/mobile/bqcscanservice/f;

    .line 37
    return-void
.end method
