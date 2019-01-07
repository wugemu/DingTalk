.class final Lcom/taobao/updatecenter/hotpatch/HotpatchReceiver$1;
.super Ljava/lang/Object;
.source "HotpatchReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/updatecenter/hotpatch/HotpatchReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/taobao/updatecenter/hotpatch/HotpatchReceiver;


# direct methods
.method constructor <init>(Lcom/taobao/updatecenter/hotpatch/HotpatchReceiver;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/taobao/updatecenter/hotpatch/HotpatchReceiver$1;->a:Lcom/taobao/updatecenter/hotpatch/HotpatchReceiver;

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
    .line 52
    invoke-static {}, Ljoz;->a()Ljoz;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljoz;->a(Z)V

    .line 53
    return-void
.end method
