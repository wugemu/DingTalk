.class public Lcom/alibaba/android/ding/biz/meeting/minutes/editor/MeetingMinutesLines;
.super Ljava/lang/Object;
.source "MeetingMinutesLines.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x69a5381ad2fa789eL


# instance fields
.field private mLines:Ljava/util/List;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "lines"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/ding/biz/meeting/minutes/editor/MeetingMinutesLine;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLines()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/ding/biz/meeting/minutes/editor/MeetingMinutesLine;",
            ">;"
        }
    .end annotation

    .prologue
    .line 23
    iget-object v0, p0, Lcom/alibaba/android/ding/biz/meeting/minutes/editor/MeetingMinutesLines;->mLines:Ljava/util/List;

    return-object v0
.end method

.method public setLines(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/ding/biz/meeting/minutes/editor/MeetingMinutesLine;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 27
    .local p1, "lines":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/ding/biz/meeting/minutes/editor/MeetingMinutesLine;>;"
    iput-object p1, p0, Lcom/alibaba/android/ding/biz/meeting/minutes/editor/MeetingMinutesLines;->mLines:Ljava/util/List;

    .line 28
    return-void
.end method
