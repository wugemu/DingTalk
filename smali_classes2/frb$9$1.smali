.class final Lfrb$9$1;
.super Ljava/lang/Object;
.source "LoginUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfrb$9;->response(Lcom/alipay/mobile/security/zim/api/ZIMResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lfrb$9;


# direct methods
.method constructor <init>(Lfrb$9;)V
    .locals 0
    .param p1, "this$0"    # Lfrb$9;

    .prologue
    .line 648
    iput-object p1, p0, Lfrb$9$1;->a:Lfrb$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 651
    iget-object v0, p0, Lfrb$9$1;->a:Lfrb$9;

    iget-object v0, v0, Lfrb$9;->b:Lcma;

    iget-object v1, p0, Lfrb$9$1;->a:Lfrb$9;

    iget-object v1, v1, Lfrb$9;->c:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 652
    return-void
.end method