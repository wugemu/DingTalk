.class public Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin$VERIFY_STATUS;
.super Ljava/lang/Object;
.source "BaseFBPlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VERIFY_STATUS"
.end annotation


# static fields
.field public static final abort:Ljava/lang/String; = "abort"

.field public static final awaitUser:Ljava/lang/String; = "awaitUser"

.field public static final end:Ljava/lang/String; = "end"

.field public static final start:Ljava/lang/String; = "start"


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;)V
    .locals 1

    .prologue
    .line 173
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin$VERIFY_STATUS;->this$0:Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;

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
