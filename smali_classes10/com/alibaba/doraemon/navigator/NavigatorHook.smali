.class public interface abstract Lcom/alibaba/doraemon/navigator/NavigatorHook;
.super Ljava/lang/Object;
.source "NavigatorHook.java"


# static fields
.field public static final NAVHOOKER_HIGH_PRIORITY:I = 0x3

.field public static final NAVHOOKER_LOW_PRIORITY:I = 0x1

.field public static final NAVHOOKER_NORMAL_PRIORITY:I = 0x2

.field public static final NAVHOOKER_STICKMAX_PRIORITY:I = 0x4


# virtual methods
.method public abstract hook(Landroid/content/Context;Landroid/content/Intent;)Z
.end method
