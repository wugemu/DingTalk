.class public interface abstract Lcom/taobao/artc/api/AConstants$Permission;
.super Ljava/lang/Object;
.source "AConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/artc/api/AConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Permission"
.end annotation


# static fields
.field public static final MANDATORY:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 43
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "android.permission.RECORD_AUDIO"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "android.permission.CAMERA"

    aput-object v2, v0, v1

    sput-object v0, Lcom/taobao/artc/api/AConstants$Permission;->MANDATORY:[Ljava/lang/String;

    return-void
.end method
