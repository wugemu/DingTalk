.class public Lcom/alipay/mobile/verifyidentity/engine/TaskManager$SlientModule;
.super Ljava/lang/Object;
.source "TaskManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/verifyidentity/engine/TaskManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SlientModule"
.end annotation


# instance fields
.field public nextModuleData:Ljava/lang/String;

.field public nextVerifyId:Ljava/lang/String;

.field final synthetic this$0:Lcom/alipay/mobile/verifyidentity/engine/TaskManager;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/verifyidentity/engine/TaskManager;)V
    .locals 1

    .prologue
    .line 331
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/engine/TaskManager$SlientModule;->this$0:Lcom/alipay/mobile/verifyidentity/engine/TaskManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/alipay/android/hackbyte/ClassVerifier;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    :cond_0
    return-void
.end method
