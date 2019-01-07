.class final Lcom/alipay/mobile/nebulacore/Nebula$4;
.super Ljava/lang/Object;
.source "Nebula.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/Nebula;->initInfo(Ljava/lang/String;Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$appId:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 692
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/Nebula$4;->val$appId:Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/Nebula$4;->val$activity:Landroid/app/Activity;

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
    .line 695
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/Nebula$4;->val$appId:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/Nebula$4;->val$activity:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulacore/Nebula;->access$000(Ljava/lang/String;Landroid/app/Activity;)V

    .line 697
    return-void
.end method
