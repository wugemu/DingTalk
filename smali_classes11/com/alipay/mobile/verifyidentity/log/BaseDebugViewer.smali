.class public interface abstract Lcom/alipay/mobile/verifyidentity/log/BaseDebugViewer;
.super Ljava/lang/Object;
.source "BaseDebugViewer.java"


# static fields
.field public static final sInjector:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Ljava/lang/String;

    :goto_0
    sput-object v0, Lcom/alipay/mobile/verifyidentity/log/BaseDebugViewer;->sInjector:Ljava/lang/Class;

    return-void

    :cond_0
    const-class v0, Lcom/alipay/android/hackbyte/ClassVerifier;

    goto :goto_0
.end method


# virtual methods
.method public abstract add(Ljava/lang/String;)V
.end method

.method public abstract gotRpcResult(Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;)V
.end method

.method public abstract init(Landroid/content/Context;)V
.end method

.method public abstract sendRpc(Ljava/lang/Object;)V
.end method

.method public abstract start()V
.end method

.method public abstract unregisterSensorListener()V
.end method
