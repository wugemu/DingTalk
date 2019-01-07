.class public interface abstract Lcom/ut/mini/anti_cheat/ScreenshotDetector$ScreenshotListener;
.super Ljava/lang/Object;
.source "ScreenshotDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ut/mini/anti_cheat/ScreenshotDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ScreenshotListener"
.end annotation


# virtual methods
.method public abstract onScreenCaptured(Ljava/lang/String;)V
.end method

.method public abstract onScreenCapturedWithDeniedPermission()V
.end method
