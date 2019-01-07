.class public Lcom/j256/ormlite/android/compat/JellyBeanApiCompatibility$JellyBeanCancellationHook;
.super Ljava/lang/Object;
.source "JellyBeanApiCompatibility.java"

# interfaces
.implements Lcom/j256/ormlite/android/compat/ApiCompatibility$CancellationHook;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/j256/ormlite/android/compat/JellyBeanApiCompatibility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "JellyBeanCancellationHook"
.end annotation


# instance fields
.field private final a:Landroid/os/CancellationSignal;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Landroid/os/CancellationSignal;

    invoke-direct {v0}, Landroid/os/CancellationSignal;-><init>()V

    iput-object v0, p0, Lcom/j256/ormlite/android/compat/JellyBeanApiCompatibility$JellyBeanCancellationHook;->a:Landroid/os/CancellationSignal;

    .line 41
    return-void
.end method

.method static synthetic a(Lcom/j256/ormlite/android/compat/JellyBeanApiCompatibility$JellyBeanCancellationHook;)Landroid/os/CancellationSignal;
    .locals 1
    .param p0, "x0"    # Lcom/j256/ormlite/android/compat/JellyBeanApiCompatibility$JellyBeanCancellationHook;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/j256/ormlite/android/compat/JellyBeanApiCompatibility$JellyBeanCancellationHook;->a:Landroid/os/CancellationSignal;

    return-object v0
.end method
