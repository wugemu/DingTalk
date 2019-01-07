.class public final enum Lcom/uc/webview/export/internal/cd/d$a;
.super Ljava/lang/Enum;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uc/webview/export/internal/cd/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/uc/webview/export/internal/cd/d$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/uc/webview/export/internal/cd/d$a;

.field public static final enum b:Lcom/uc/webview/export/internal/cd/d$a;

.field public static final enum c:Lcom/uc/webview/export/internal/cd/d$a;

.field private static final synthetic d:[Lcom/uc/webview/export/internal/cd/d$a;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 65
    new-instance v0, Lcom/uc/webview/export/internal/cd/d$a;

    const-string/jumbo v1, "UNDEFINED"

    invoke-direct {v0, v1, v2}, Lcom/uc/webview/export/internal/cd/d$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/uc/webview/export/internal/cd/d$a;->a:Lcom/uc/webview/export/internal/cd/d$a;

    .line 66
    new-instance v0, Lcom/uc/webview/export/internal/cd/d$a;

    const-string/jumbo v1, "BOOLEAN"

    invoke-direct {v0, v1, v3}, Lcom/uc/webview/export/internal/cd/d$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/uc/webview/export/internal/cd/d$a;->b:Lcom/uc/webview/export/internal/cd/d$a;

    .line 67
    new-instance v0, Lcom/uc/webview/export/internal/cd/d$a;

    const-string/jumbo v1, "STRING"

    invoke-direct {v0, v1, v4}, Lcom/uc/webview/export/internal/cd/d$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/uc/webview/export/internal/cd/d$a;->c:Lcom/uc/webview/export/internal/cd/d$a;

    .line 64
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/uc/webview/export/internal/cd/d$a;

    sget-object v1, Lcom/uc/webview/export/internal/cd/d$a;->a:Lcom/uc/webview/export/internal/cd/d$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/uc/webview/export/internal/cd/d$a;->b:Lcom/uc/webview/export/internal/cd/d$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/uc/webview/export/internal/cd/d$a;->c:Lcom/uc/webview/export/internal/cd/d$a;

    aput-object v1, v0, v4

    sput-object v0, Lcom/uc/webview/export/internal/cd/d$a;->d:[Lcom/uc/webview/export/internal/cd/d$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lcom/uc/webview/export/internal/cd/d$a;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/uc/webview/export/internal/cd/d$a;->d:[Lcom/uc/webview/export/internal/cd/d$a;

    invoke-virtual {v0}, [Lcom/uc/webview/export/internal/cd/d$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/uc/webview/export/internal/cd/d$a;

    return-object v0
.end method
