.class public interface abstract Lcom/alibaba/doraemon/health/HealthWarner;
.super Ljava/lang/Object;
.source "HealthWarner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/doraemon/health/HealthWarner$PowerFreqInfo;
    }
.end annotation


# static fields
.field public static final DORAEMON_THREADS_ANR:I = 0x15

.field public static final DORAEMON_THREAD_ANR:I = 0x14

.field public static final IMAGE_LEAK_WARN_CODE:I = 0x28

.field public static final POWER_BG_WARN:I = 0xa

.field public static final POWER_DAY_WARN:I = 0xd

.field public static final POWER_FG_WARN:I = 0xc

.field public static final POWER_HOUR_WARN:I = 0xe

.field public static final POWER_WARN:I = 0xb

.field public static final ROBOT_ACTIVITY_LEAK:I = 0x2

.field public static final ROBOT_BLOCK_CLOSEGUARD:I = 0x3

.field public static final ROBOT_DORAEMON_THREAD:I = 0x1

.field public static final THREAD_NOT_IN_WHITE_LIST_WARN_CODE:I = 0x1e

.field public static final THREAD_U_TIME_15_MINUTES:I = 0x33

.field public static final THREAD_U_TIME_5_MINUTES:I = 0x32

.field public static final THREAD_U_TIME_HALF_HOUR:I = 0x34

.field public static final THREAD_U_TIME_ONE_HOUR:I = 0x35

.field public static final TRAFFIC_BG_WARN:I = 0x1

.field public static final TRAFFIC_REG_DAY_TOTAL_WARN_CODE:I = 0x12

.field public static final TRAFFIC_REG_WARN_CODE:I = 0x11

.field public static final TRAFFIC_TOTAL_WARN:I = 0x2


# virtual methods
.method public abstract robotAlarm(ILjava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public varargs abstract warn(I[Ljava/lang/Object;)V
.end method
