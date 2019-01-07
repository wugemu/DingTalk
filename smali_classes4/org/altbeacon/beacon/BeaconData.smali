.class public interface abstract Lorg/altbeacon/beacon/BeaconData;
.super Ljava/lang/Object;
.source "BeaconData.java"


# virtual methods
.method public abstract get(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getLatitude()Ljava/lang/Double;
.end method

.method public abstract getLongitude()Ljava/lang/Double;
.end method

.method public abstract isDirty()Z
.end method

.method public abstract set(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setLatitude(Ljava/lang/Double;)V
.end method

.method public abstract setLongitude(Ljava/lang/Double;)V
.end method

.method public abstract sync(Lorg/altbeacon/beacon/BeaconDataNotifier;)V
.end method
