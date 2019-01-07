.class public Lcom/alibaba/android/search/model/idl/objects/BaseIntimacyPushObject;
.super Ljava/lang/Object;
.source "BaseIntimacyPushObject.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static MAX_SCORE:D


# instance fields
.field public modifidTime:J

.field public score:D


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 26
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    sput-wide v0, Lcom/alibaba/android/search/model/idl/objects/BaseIntimacyPushObject;->MAX_SCORE:D

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
