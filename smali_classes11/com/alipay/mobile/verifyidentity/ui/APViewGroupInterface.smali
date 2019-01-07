.class public interface abstract Lcom/alipay/mobile/verifyidentity/ui/APViewGroupInterface;
.super Ljava/lang/Object;
.source "APViewGroupInterface.java"

# interfaces
.implements Lcom/alipay/mobile/verifyidentity/ui/APViewInterface;


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
    sput-object v0, Lcom/alipay/mobile/verifyidentity/ui/APViewGroupInterface;->sInjector:Ljava/lang/Class;

    return-void

    :cond_0
    const-class v0, Lcom/alipay/android/hackbyte/ClassVerifier;

    goto :goto_0
.end method


# virtual methods
.method public abstract getView()Landroid/view/View;
.end method

.method public abstract getVisibility()I
.end method
