.class public Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsResource;
.super Ljava/lang/Object;
.source "FestivalRedPacketsResource.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public chatTexts:[Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsChatText;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "chatTexts"
    .end annotation
.end field

.field public groupPrices:[Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "groupPrices"
    .end annotation
.end field

.field public groupTexts:[Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "groupTexts"
    .end annotation
.end field

.field public replyTexts:[Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "replyTexts"
    .end annotation
.end field

.field public themes:[Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsTheme;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "themes"
    .end annotation
.end field

.field public title:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "title"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
