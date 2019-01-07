.class final Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask$2;
.super Ljava/lang/Object;
.source "AlipayDetectTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;->action(Lcom/alipay/mobile/security/bio/task/ActionFrame;)Lcom/alipay/mobile/security/bio/task/ActionType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;

    .prologue
    .line 236
    iput-object p1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask$2;->a:Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;

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
    .line 239
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask$2;->a:Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;->a(Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;Z)Z

    .line 240
    return-void
.end method
