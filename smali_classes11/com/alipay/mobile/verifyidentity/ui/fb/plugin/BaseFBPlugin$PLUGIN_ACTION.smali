.class public Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin$PLUGIN_ACTION;
.super Ljava/lang/Object;
.source "BaseFBPlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PLUGIN_ACTION"
.end annotation


# static fields
.field public static final payStatus:Ljava/lang/String; = "payStatus"

.field public static final viClosePage:Ljava/lang/String; = "viClosePage"

.field public static final viPreStart:Ljava/lang/String; = "viPreStart"

.field public static final viResult:Ljava/lang/String; = "viResult"

.field public static final viRpcRequest:Ljava/lang/String; = "viRpcRequest"

.field public static final viRpcResponse:Ljava/lang/String; = "viRpcResponse"

.field public static final viStart:Ljava/lang/String; = "viStart"

.field public static final viStatus:Ljava/lang/String; = "viStatus"

.field public static final viToPWD:Ljava/lang/String; = "viToPWD"


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;)V
    .locals 1

    .prologue
    .line 180
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin$PLUGIN_ACTION;->this$0:Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;

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
