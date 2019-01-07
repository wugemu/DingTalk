.class final Lcom/alipay/mobile/security/faceauth/circle/workspace/TaskManager$1;
.super Ljava/lang/Object;
.source "TaskManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/security/faceauth/circle/workspace/TaskManager;->doAction(Lcom/alipay/mobile/security/bio/task/ActionFrame;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/security/faceauth/circle/workspace/TaskManager;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/faceauth/circle/workspace/TaskManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/security/faceauth/circle/workspace/TaskManager;

    .prologue
    .line 201
    iput-object p1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/TaskManager$1;->a:Lcom/alipay/mobile/security/faceauth/circle/workspace/TaskManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/TaskManager$1;->a:Lcom/alipay/mobile/security/faceauth/circle/workspace/TaskManager;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/faceauth/circle/workspace/TaskManager;->uploadFaceInfo()V

    .line 205
    return-void
.end method
