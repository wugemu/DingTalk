.class public interface abstract Lcom/alibaba/wukong/im/DeviceStatus;
.super Ljava/lang/Object;
.source "DeviceStatus.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/wukong/im/DeviceStatus$DeviceType;,
        Lcom/alibaba/wukong/im/DeviceStatus$StatusType;
    }
.end annotation


# static fields
.field public static final OFFLINE:I = 0x2

.field public static final ONLINE:I = 0x1


# virtual methods
.method public abstract deviceType()I
.end method

.method public abstract status()I
.end method

.method public abstract time()J
.end method

.method public abstract type()Lcom/alibaba/wukong/im/DeviceStatus$StatusType;
.end method
