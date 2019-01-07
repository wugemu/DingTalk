.class public interface abstract Lcom/alipay/mobile/verifyidentity/utils/task/pool/Pool$Poolable;
.super Ljava/lang/Object;
.source "Pool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/verifyidentity/utils/task/pool/Pool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Poolable"
.end annotation


# static fields
.field public static final e:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Ljava/lang/String;

    :goto_0
    sput-object v0, Lcom/alipay/mobile/verifyidentity/utils/task/pool/Pool$Poolable;->e:Ljava/lang/Class;

    return-void

    :cond_0
    const-class v0, Lcom/alipay/android/hackbyte/ClassVerifier;

    goto :goto_0
.end method


# virtual methods
.method public abstract a()V
.end method
