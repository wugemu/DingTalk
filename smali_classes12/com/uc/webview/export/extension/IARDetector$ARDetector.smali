.class public Lcom/uc/webview/export/extension/IARDetector$ARDetector;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/uc/webview/export/extension/IARDetector;


# annotations
.annotation build Lcom/uc/webview/export/annotations/Api;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uc/webview/export/extension/IARDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ARDetector"
.end annotation


# instance fields
.field protected mListener:Lcom/uc/webview/export/extension/IARDetector$ResultListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/uc/webview/export/extension/IARDetector$ARDetector;->mListener:Lcom/uc/webview/export/extension/IARDetector$ResultListener;

    return-void
.end method


# virtual methods
.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 211
    const-string/jumbo v0, "-1"

    return-object v0
.end method

.method public init(IIIII)V
    .locals 0

    .prologue
    .line 174
    return-void
.end method

.method public final isDetector()Z
    .locals 1

    .prologue
    .line 164
    const/4 v0, 0x1

    return v0
.end method

.method public pause()V
    .locals 0

    .prologue
    .line 191
    return-void
.end method

.method public removeMarkers()V
    .locals 0

    .prologue
    .line 203
    return-void
.end method

.method public resume()V
    .locals 0

    .prologue
    .line 195
    return-void
.end method

.method public setARSessionFrame(Lcom/uc/webview/export/extension/IARDetector$ARSessionFrame;)V
    .locals 0

    .prologue
    .line 182
    return-void
.end method

.method public final setARSessionFrameFilter(Lcom/uc/webview/export/extension/IARDetector$ARSessionFrame;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 186
    const/4 v0, 0x0

    return-object v0
.end method

.method public setMarkers([Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 199
    return-void
.end method

.method public setOption(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 207
    return-void
.end method

.method public setResultListener(Lcom/uc/webview/export/extension/IARDetector$ResultListener;)V
    .locals 0

    .prologue
    .line 169
    iput-object p1, p0, Lcom/uc/webview/export/extension/IARDetector$ARDetector;->mListener:Lcom/uc/webview/export/extension/IARDetector$ResultListener;

    .line 170
    return-void
.end method

.method public stop()V
    .locals 0

    .prologue
    .line 178
    return-void
.end method
