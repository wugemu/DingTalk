.class public Lcom/alibaba/android/teleconf/data/TeleMemberRecord;
.super Ljava/lang/Object;
.source "TeleMemberRecord.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public colorType:I

.field public infoText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "info"    # Ljava/lang/String;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/alibaba/android/teleconf/data/TeleMemberRecord;->infoText:Ljava/lang/String;

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/android/teleconf/data/TeleMemberRecord;->colorType:I

    .line 26
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "info"    # Ljava/lang/String;
    .param p2, "color"    # I

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/alibaba/android/teleconf/data/TeleMemberRecord;->infoText:Ljava/lang/String;

    .line 30
    iput p2, p0, Lcom/alibaba/android/teleconf/data/TeleMemberRecord;->colorType:I

    .line 31
    return-void
.end method
