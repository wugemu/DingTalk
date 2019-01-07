.class Lcom/taobao/weex/adapter/DefaultWXHttpAdapter$NOPEventReportDelegate;
.super Ljava/lang/Object;
.source "DefaultWXHttpAdapter.java"

# interfaces
.implements Lcom/taobao/weex/adapter/DefaultWXHttpAdapter$IEventReporterDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/adapter/DefaultWXHttpAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NOPEventReportDelegate"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/taobao/weex/adapter/DefaultWXHttpAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/taobao/weex/adapter/DefaultWXHttpAdapter$1;

    .prologue
    .line 213
    invoke-direct {p0}, Lcom/taobao/weex/adapter/DefaultWXHttpAdapter$NOPEventReportDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public httpExchangeFailed(Ljava/io/IOException;)V
    .locals 0
    .param p1, "e"    # Ljava/io/IOException;

    .prologue
    .line 232
    return-void
.end method

.method public interpretResponseStream(Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 0
    .param p1, "inputStream"    # Ljava/io/InputStream;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 226
    return-object p1
.end method

.method public postConnect()V
    .locals 0

    .prologue
    .line 222
    return-void
.end method

.method public preConnect(Ljava/net/HttpURLConnection;Ljava/lang/String;)V
    .locals 0
    .param p1, "connection"    # Ljava/net/HttpURLConnection;
    .param p2, "body"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 217
    return-void
.end method
