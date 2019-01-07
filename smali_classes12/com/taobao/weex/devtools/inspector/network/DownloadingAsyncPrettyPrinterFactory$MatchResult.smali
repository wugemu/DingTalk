.class public Lcom/taobao/weex/devtools/inspector/network/DownloadingAsyncPrettyPrinterFactory$MatchResult;
.super Ljava/lang/Object;
.source "DownloadingAsyncPrettyPrinterFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/devtools/inspector/network/DownloadingAsyncPrettyPrinterFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MatchResult"
.end annotation


# instance fields
.field private final mDisplayType:Lcom/taobao/weex/devtools/inspector/network/PrettyPrinterDisplayType;

.field private final mSchemaUri:Ljava/lang/String;

.field final synthetic this$0:Lcom/taobao/weex/devtools/inspector/network/DownloadingAsyncPrettyPrinterFactory;


# direct methods
.method public constructor <init>(Lcom/taobao/weex/devtools/inspector/network/DownloadingAsyncPrettyPrinterFactory;Ljava/lang/String;Lcom/taobao/weex/devtools/inspector/network/PrettyPrinterDisplayType;)V
    .locals 0
    .param p1, "this$0"    # Lcom/taobao/weex/devtools/inspector/network/DownloadingAsyncPrettyPrinterFactory;
    .param p2, "schemaUri"    # Ljava/lang/String;
    .param p3, "displayType"    # Lcom/taobao/weex/devtools/inspector/network/PrettyPrinterDisplayType;

    .prologue
    .line 138
    iput-object p1, p0, Lcom/taobao/weex/devtools/inspector/network/DownloadingAsyncPrettyPrinterFactory$MatchResult;->this$0:Lcom/taobao/weex/devtools/inspector/network/DownloadingAsyncPrettyPrinterFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    iput-object p2, p0, Lcom/taobao/weex/devtools/inspector/network/DownloadingAsyncPrettyPrinterFactory$MatchResult;->mSchemaUri:Ljava/lang/String;

    .line 140
    iput-object p3, p0, Lcom/taobao/weex/devtools/inspector/network/DownloadingAsyncPrettyPrinterFactory$MatchResult;->mDisplayType:Lcom/taobao/weex/devtools/inspector/network/PrettyPrinterDisplayType;

    .line 141
    return-void
.end method


# virtual methods
.method public getDisplayType()Lcom/taobao/weex/devtools/inspector/network/PrettyPrinterDisplayType;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/network/DownloadingAsyncPrettyPrinterFactory$MatchResult;->mDisplayType:Lcom/taobao/weex/devtools/inspector/network/PrettyPrinterDisplayType;

    return-object v0
.end method

.method public getSchemaUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/network/DownloadingAsyncPrettyPrinterFactory$MatchResult;->mSchemaUri:Ljava/lang/String;

    return-object v0
.end method
