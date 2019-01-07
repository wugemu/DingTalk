.class public abstract Lcom/uc/webview/export/internal/a;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field public static a:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet",
            "<",
            "Lcom/uc/webview/export/internal/interfaces/IWebView;",
            ">;"
        }
    .end annotation
.end field

.field public static b:I

.field public static c:I

.field public static d:I

.field public static e:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 17
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    sput-object v0, Lcom/uc/webview/export/internal/a;->a:Ljava/util/LinkedHashSet;

    .line 18
    sput v1, Lcom/uc/webview/export/internal/a;->b:I

    .line 19
    sput v1, Lcom/uc/webview/export/internal/a;->c:I

    .line 20
    sput v1, Lcom/uc/webview/export/internal/a;->d:I

    .line 22
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/uc/webview/export/internal/a;->e:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/uc/webview/export/internal/interfaces/IWebView;)V
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/uc/webview/export/internal/a;->a:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 26
    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 0

    .prologue
    .line 30
    return-void
.end method

.method public abstract a(Lcom/uc/webview/export/internal/interfaces/IWebView;I)V
.end method

.method public abstract b(Lcom/uc/webview/export/internal/interfaces/IWebView;)V
.end method
