.class public Lcom/alibaba/android/ding/biz/meeting/minutes/editor/MeetingMinutesLine;
.super Ljava/lang/Object;
.source "MeetingMinutesLine.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x59f6a0792fb301L


# instance fields
.field private mTaskId:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "taskId"
    .end annotation
.end field

.field private mText:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "text"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getTaskId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/alibaba/android/ding/biz/meeting/minutes/editor/MeetingMinutesLine;->mTaskId:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/alibaba/android/ding/biz/meeting/minutes/editor/MeetingMinutesLine;->mText:Ljava/lang/String;

    return-object v0
.end method

.method public isTask()Z
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/alibaba/android/ding/biz/meeting/minutes/editor/MeetingMinutesLine;->mTaskId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setTaskId(Ljava/lang/String;)V
    .locals 0
    .param p1, "taskId"    # Ljava/lang/String;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/alibaba/android/ding/biz/meeting/minutes/editor/MeetingMinutesLine;->mTaskId:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/alibaba/android/ding/biz/meeting/minutes/editor/MeetingMinutesLine;->mText:Ljava/lang/String;

    .line 32
    return-void
.end method
