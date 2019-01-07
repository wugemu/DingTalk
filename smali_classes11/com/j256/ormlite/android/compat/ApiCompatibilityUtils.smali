.class public Lcom/j256/ormlite/android/compat/ApiCompatibilityUtils;
.super Ljava/lang/Object;
.source "ApiCompatibilityUtils.java"


# static fields
.field private static a:Lcom/j256/ormlite/android/compat/ApiCompatibility;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 39
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 40
    new-instance v0, Lcom/j256/ormlite/android/compat/JellyBeanApiCompatibility;

    invoke-direct {v0}, Lcom/j256/ormlite/android/compat/JellyBeanApiCompatibility;-><init>()V

    sput-object v0, Lcom/j256/ormlite/android/compat/ApiCompatibilityUtils;->a:Lcom/j256/ormlite/android/compat/ApiCompatibility;

    .line 44
    :goto_0
    return-void

    .line 42
    :cond_0
    new-instance v0, Lcom/j256/ormlite/android/compat/BasicApiCompatibility;

    invoke-direct {v0}, Lcom/j256/ormlite/android/compat/BasicApiCompatibility;-><init>()V

    sput-object v0, Lcom/j256/ormlite/android/compat/ApiCompatibilityUtils;->a:Lcom/j256/ormlite/android/compat/ApiCompatibility;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/j256/ormlite/android/compat/ApiCompatibility;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/j256/ormlite/android/compat/ApiCompatibilityUtils;->a:Lcom/j256/ormlite/android/compat/ApiCompatibility;

    return-object v0
.end method
