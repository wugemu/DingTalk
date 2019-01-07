.class final Lcom/uc/webview/export/internal/SDKFactory$a;
.super Ljava/lang/Enum;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uc/webview/export/internal/SDKFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/uc/webview/export/internal/SDKFactory$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:I

.field public static final enum b:I

.field public static final enum c:I

.field private static final synthetic d:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v0, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 73
    sput v3, Lcom/uc/webview/export/internal/SDKFactory$a;->a:I

    sput v4, Lcom/uc/webview/export/internal/SDKFactory$a;->b:I

    sput v0, Lcom/uc/webview/export/internal/SDKFactory$a;->c:I

    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Lcom/uc/webview/export/internal/SDKFactory$a;->a:I

    aput v2, v0, v1

    sget v1, Lcom/uc/webview/export/internal/SDKFactory$a;->b:I

    aput v1, v0, v3

    sget v1, Lcom/uc/webview/export/internal/SDKFactory$a;->c:I

    aput v1, v0, v4

    sput-object v0, Lcom/uc/webview/export/internal/SDKFactory$a;->d:[I

    return-void
.end method
