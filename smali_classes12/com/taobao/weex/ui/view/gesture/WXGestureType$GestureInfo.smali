.class public Lcom/taobao/weex/ui/view/gesture/WXGestureType$GestureInfo;
.super Ljava/lang/Object;
.source "WXGestureType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/ui/view/gesture/WXGestureType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GestureInfo"
.end annotation


# static fields
.field public static final DIRECTION:Ljava/lang/String; = "direction"

.field public static final HISTORICAL_XY:Ljava/lang/String; = "changedTouches"

.field public static final PAGE_X:Ljava/lang/String; = "pageX"

.field public static final PAGE_Y:Ljava/lang/String; = "pageY"

.field public static final POINTER_ID:Ljava/lang/String; = "identifier"

.field public static final SCREEN_X:Ljava/lang/String; = "screenX"

.field public static final SCREEN_Y:Ljava/lang/String; = "screenY"

.field public static final STATE:Ljava/lang/String; = "state"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
