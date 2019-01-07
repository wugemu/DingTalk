.class public Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketBombExt;
.super Ljava/lang/Object;
.source "RedPacketBombExt.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public type:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "type"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
