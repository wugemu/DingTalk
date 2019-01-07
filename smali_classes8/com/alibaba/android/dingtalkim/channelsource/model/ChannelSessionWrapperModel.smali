.class public Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelSessionWrapperModel;
.super Ljava/lang/Object;
.source "ChannelSessionWrapperModel.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final CHANNEL_ATTENTION_ITEM:I = 0x1

.field public static final CHANNEL_ATTENTION_TITLE:I = 0x0

.field public static final CHANNEL_OWN_DESCRIPTION:I = 0x4

.field public static final CHANNEL_OWN_ITEM:I = 0x3

.field public static final CHANNEL_OWN_TITLE:I = 0x2


# instance fields
.field public channelModel:Lddm;

.field public channelOrgSessionModel:Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgSessionModel;

.field public channelSessionTitleModel:Lddn;

.field public itemType:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
