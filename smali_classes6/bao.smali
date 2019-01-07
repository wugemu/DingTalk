.class public final Lbao;
.super Ljava/lang/Object;
.source "MeetingMinutesLinesUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/alibaba/android/ding/biz/meeting/minutes/editor/MeetingMinutesLines;
    .locals 3
    .param p0, "meetingMinutesContent"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 25
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v2

    .line 35
    :goto_0
    return-object v1

    .line 30
    :cond_0
    :try_start_0
    const-class v1, Lcom/alibaba/android/ding/biz/meeting/minutes/editor/MeetingMinutesLines;

    invoke-static {p0, v1}, Lcoo;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/ding/biz/meeting/minutes/editor/MeetingMinutesLines;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 31
    :catch_0
    move-exception v0

    .line 32
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v1, "meetingMinutesLines from json failed"

    invoke-static {v1, v0}, Lbkr;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v1, v2

    .line 35
    goto :goto_0
.end method
