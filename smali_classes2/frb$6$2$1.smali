.class final Lfrb$6$2$1;
.super Ljava/lang/Object;
.source "LoginUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfrb$6$2;->onSuccess(Ljava/lang/String;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lfrb$6$2;


# direct methods
.method constructor <init>(Lfrb$6$2;)V
    .locals 0
    .param p1, "this$1"    # Lfrb$6$2;

    .prologue
    .line 564
    iput-object p1, p0, Lfrb$6$2$1;->a:Lfrb$6$2;

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
    .line 567
    iget-object v0, p0, Lfrb$6$2$1;->a:Lfrb$6$2;

    iget-object v0, v0, Lfrb$6$2;->a:Lfrb$6;

    iget-object v0, v0, Lfrb$6;->c:Lcma;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 568
    return-void
.end method
