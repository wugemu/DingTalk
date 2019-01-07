.class public Lcom/aliaba/android/dingtalk/redpackets/base/models/RedBombEntrance;
.super Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsEntrance;
.source "RedBombEntrance.java"


# instance fields
.field public bombDuration:J
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "bombDuration"
    .end annotation
.end field

.field public bombStartTime:J
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "bombStartTime"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsEntrance;-><init>()V

    return-void
.end method
