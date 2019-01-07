.class public interface abstract Lorg/altbeacon/beacon/MonitorNotifier;
.super Ljava/lang/Object;
.source "MonitorNotifier.java"


# static fields
.field public static final INSIDE:I = 0x1

.field public static final OUTSIDE:I


# virtual methods
.method public abstract didDetermineStateForRegion(ILorg/altbeacon/beacon/Region;)V
.end method

.method public abstract didEnterRegion(Lorg/altbeacon/beacon/Region;)V
.end method

.method public abstract didExitRegion(Lorg/altbeacon/beacon/Region;)V
.end method
