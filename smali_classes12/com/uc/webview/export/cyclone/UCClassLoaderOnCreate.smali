.class public Lcom/uc/webview/export/cyclone/UCClassLoaderOnCreate;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final connectException:Ljava/lang/Class;

.field private static final exception:Ljava/lang/Class;

.field private static final iOException:Ljava/lang/Class;

.field private static final illegalMonitorStateException:Ljava/lang/Class;

.field private static final interruptedException:Ljava/lang/Class;

.field private static final noClassDefFoundError:Ljava/lang/Class;

.field private static final throwable:Ljava/lang/Class;

.field private static final timeoutException:Ljava/lang/Class;

.field private static final unknownHostException:Ljava/lang/Class;

.field private static final unsupportedEncodingException:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const-class v0, Ljava/io/UnsupportedEncodingException;

    sput-object v0, Lcom/uc/webview/export/cyclone/UCClassLoaderOnCreate;->unsupportedEncodingException:Ljava/lang/Class;

    .line 12
    const-class v0, Ljava/util/concurrent/TimeoutException;

    sput-object v0, Lcom/uc/webview/export/cyclone/UCClassLoaderOnCreate;->timeoutException:Ljava/lang/Class;

    .line 13
    const-class v0, Ljava/lang/IllegalMonitorStateException;

    sput-object v0, Lcom/uc/webview/export/cyclone/UCClassLoaderOnCreate;->illegalMonitorStateException:Ljava/lang/Class;

    .line 14
    const-class v0, Ljava/net/ConnectException;

    sput-object v0, Lcom/uc/webview/export/cyclone/UCClassLoaderOnCreate;->connectException:Ljava/lang/Class;

    .line 15
    const-class v0, Ljava/net/UnknownHostException;

    sput-object v0, Lcom/uc/webview/export/cyclone/UCClassLoaderOnCreate;->unknownHostException:Ljava/lang/Class;

    .line 16
    const-class v0, Ljava/io/IOException;

    sput-object v0, Lcom/uc/webview/export/cyclone/UCClassLoaderOnCreate;->iOException:Ljava/lang/Class;

    .line 17
    const-class v0, Ljava/lang/InterruptedException;

    sput-object v0, Lcom/uc/webview/export/cyclone/UCClassLoaderOnCreate;->interruptedException:Ljava/lang/Class;

    .line 18
    const-class v0, Ljava/lang/Exception;

    sput-object v0, Lcom/uc/webview/export/cyclone/UCClassLoaderOnCreate;->exception:Ljava/lang/Class;

    .line 19
    const-class v0, Ljava/lang/NoClassDefFoundError;

    sput-object v0, Lcom/uc/webview/export/cyclone/UCClassLoaderOnCreate;->noClassDefFoundError:Ljava/lang/Class;

    .line 20
    const-class v0, Ljava/lang/Throwable;

    sput-object v0, Lcom/uc/webview/export/cyclone/UCClassLoaderOnCreate;->throwable:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const-string/jumbo v0, "v"

    const-string/jumbo v1, "UCClassLoaderOnCreate"

    invoke-static {v0, v1}, Lcom/uc/webview/export/cyclone/UCLogger;->createToken(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 24
    const-string/jumbo v1, "UCClassLoaderOnCreate create success!!!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Throwable;

    invoke-static {v0, v1, v2}, Lcom/uc/webview/export/cyclone/UCLogger;->print(ILjava/lang/String;[Ljava/lang/Throwable;)Z

    .line 25
    return-void
.end method
