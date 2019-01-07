.class public final Lorg/altbeacon/beacon/logging/Loggers;
.super Ljava/lang/Object;
.source "Loggers.java"


# static fields
.field private static final EMPTY_LOGGER:Lorg/altbeacon/beacon/logging/Logger;

.field private static final VERBOSE_ANDROID_LOGGER:Lorg/altbeacon/beacon/logging/Logger;

.field private static final WARNING_ANDROID_LOGGER:Lorg/altbeacon/beacon/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    new-instance v0, Lorg/altbeacon/beacon/logging/EmptyLogger;

    invoke-direct {v0}, Lorg/altbeacon/beacon/logging/EmptyLogger;-><init>()V

    sput-object v0, Lorg/altbeacon/beacon/logging/Loggers;->EMPTY_LOGGER:Lorg/altbeacon/beacon/logging/Logger;

    .line 31
    new-instance v0, Lorg/altbeacon/beacon/logging/VerboseAndroidLogger;

    invoke-direct {v0}, Lorg/altbeacon/beacon/logging/VerboseAndroidLogger;-><init>()V

    sput-object v0, Lorg/altbeacon/beacon/logging/Loggers;->VERBOSE_ANDROID_LOGGER:Lorg/altbeacon/beacon/logging/Logger;

    .line 34
    new-instance v0, Lorg/altbeacon/beacon/logging/WarningAndroidLogger;

    invoke-direct {v0}, Lorg/altbeacon/beacon/logging/WarningAndroidLogger;-><init>()V

    sput-object v0, Lorg/altbeacon/beacon/logging/Loggers;->WARNING_ANDROID_LOGGER:Lorg/altbeacon/beacon/logging/Logger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    return-void
.end method

.method public static empty()Lorg/altbeacon/beacon/logging/Logger;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lorg/altbeacon/beacon/logging/Loggers;->EMPTY_LOGGER:Lorg/altbeacon/beacon/logging/Logger;

    return-object v0
.end method

.method public static verboseLogger()Lorg/altbeacon/beacon/logging/Logger;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lorg/altbeacon/beacon/logging/Loggers;->VERBOSE_ANDROID_LOGGER:Lorg/altbeacon/beacon/logging/Logger;

    return-object v0
.end method

.method public static warningLogger()Lorg/altbeacon/beacon/logging/Logger;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lorg/altbeacon/beacon/logging/Loggers;->WARNING_ANDROID_LOGGER:Lorg/altbeacon/beacon/logging/Logger;

    return-object v0
.end method
