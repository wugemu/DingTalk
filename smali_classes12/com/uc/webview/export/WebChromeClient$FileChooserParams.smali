.class public abstract Lcom/uc/webview/export/WebChromeClient$FileChooserParams;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation build Lcom/uc/webview/export/annotations/Api;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uc/webview/export/WebChromeClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "FileChooserParams"
.end annotation


# static fields
.field public static final MODE_OPEN:I = 0x0

.field public static final MODE_OPEN_FOLDER:I = 0x2

.field public static final MODE_OPEN_MULTIPLE:I = 0x1

.field public static final MODE_SAVE:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 350
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseResult(ILandroid/content/Intent;)[Landroid/net/Uri;
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 374
    if-nez p0, :cond_1

    .line 398
    :cond_0
    :goto_0
    return-object v1

    .line 378
    :cond_1
    const/4 v2, -0x1

    if-ne p0, v2, :cond_0

    .line 383
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 384
    if-nez v2, :cond_2

    .line 385
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x12

    if-lt v2, v3, :cond_4

    .line 386
    invoke-virtual {p1}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object v2

    .line 387
    if-eqz v2, :cond_4

    .line 388
    invoke-virtual {v2}, Landroid/content/ClipData;->getItemCount()I

    move-result v1

    new-array v1, v1, [Landroid/net/Uri;

    .line 389
    :goto_1
    invoke-virtual {v2}, Landroid/content/ClipData;->getItemCount()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 390
    invoke-virtual {v2, v0}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v3

    aput-object v3, v1, v0

    .line 389
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 395
    :cond_2
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/net/Uri;

    aput-object v2, v1, v0

    move-object v0, v1

    :goto_2
    move-object v1, v0

    .line 398
    goto :goto_0

    :cond_3
    move-object v0, v1

    goto :goto_2

    :cond_4
    move-object v0, v1

    goto :goto_2
.end method


# virtual methods
.method public abstract createIntent()Landroid/content/Intent;
.end method

.method public abstract getAcceptTypes()[Ljava/lang/String;
.end method

.method public abstract getFilenameHint()Ljava/lang/String;
.end method

.method public abstract getMode()I
.end method

.method public abstract getTitle()Ljava/lang/CharSequence;
.end method

.method public abstract isCaptureEnabled()Z
.end method
