.class public interface abstract Lcom/alipay/mobile/verifyidentity/ui/APViewInterface;
.super Ljava/lang/Object;
.source "APViewInterface.java"


# static fields
.field public static final VISUAL_STYLE_FLAT:I = 0x11

.field public static final VISUAL_STYLE_NORMAL:I = 0x10

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
    sput-object v0, Lcom/alipay/mobile/verifyidentity/ui/APViewInterface;->sInjector:Ljava/lang/Class;

    return-void

    :cond_0
    const-class v0, Lcom/alipay/android/hackbyte/ClassVerifier;

    goto :goto_0
.end method
