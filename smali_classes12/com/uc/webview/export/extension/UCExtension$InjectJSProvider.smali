.class public interface abstract Lcom/uc/webview/export/extension/UCExtension$InjectJSProvider;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation build Lcom/uc/webview/export/annotations/Api;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uc/webview/export/extension/UCExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "InjectJSProvider"
.end annotation


# static fields
.field public static final TYPE_HEAD_START:I = 0x1

.field public static final TYPE_HEAD_START_NODES:I = 0x10


# virtual methods
.method public abstract getJS(I)Ljava/lang/String;
.end method
