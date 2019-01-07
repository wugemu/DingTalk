.class public Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObjectExt;
.super Ljava/lang/Object;
.source "RedPacketsClusterObjectExt.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public enterpriseB2CRedPacket:Lcom/alibaba/android/dingtalk/redpackets/models/EnterpriseB2CRedPpacketsMessageBodyExt;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "enterprise_new_red_packet"
    .end annotation
.end field

.field public festivalRedPacket:Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsMessageBodyExt;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "festival_red_packet"
    .end annotation
.end field

.field public redPacketBomb:Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketBombExt;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "redPacketBomb"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
