.class final Ldiw$7;
.super Ljava/lang/Object;
.source "CalendarUtil.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldiw;->a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/wukong/im/Message;JZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/calendar/base/interfaces/ScheduleCreateModel;

.field final synthetic b:Landroid/app/Activity;

.field final synthetic c:Lcom/alibaba/wukong/im/Conversation;

.field final synthetic d:Lcom/alibaba/wukong/im/Message;

.field final synthetic e:J

.field final synthetic f:Z


# direct methods
.method constructor <init>(Lcom/alibaba/android/calendar/base/interfaces/ScheduleCreateModel;Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/wukong/im/Message;JZ)V
    .locals 1

    .prologue
    .line 229
    iput-object p1, p0, Ldiw$7;->a:Lcom/alibaba/android/calendar/base/interfaces/ScheduleCreateModel;

    iput-object p2, p0, Ldiw$7;->b:Landroid/app/Activity;

    iput-object p3, p0, Ldiw$7;->c:Lcom/alibaba/wukong/im/Conversation;

    iput-object p4, p0, Ldiw$7;->d:Lcom/alibaba/wukong/im/Message;

    iput-wide p5, p0, Ldiw$7;->e:J

    iput-boolean p7, p0, Ldiw$7;->f:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 14

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const-wide/16 v12, 0x0

    .line 229
    check-cast p1, Ljava/lang/String;

    .line 1232
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ldiw$7;->a:Lcom/alibaba/android/calendar/base/interfaces/ScheduleCreateModel;

    invoke-virtual {v0}, Lcom/alibaba/android/calendar/base/interfaces/ScheduleCreateModel;->getScheduleContent()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1233
    iget-object v0, p0, Ldiw$7;->a:Lcom/alibaba/android/calendar/base/interfaces/ScheduleCreateModel;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, ": "

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Ldiw$7;->a:Lcom/alibaba/android/calendar/base/interfaces/ScheduleCreateModel;

    invoke-virtual {v3}, Lcom/alibaba/android/calendar/base/interfaces/ScheduleCreateModel;->getScheduleContent()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/calendar/base/interfaces/ScheduleCreateModel;->setScheduleContent(Ljava/lang/String;)V

    .line 1235
    :cond_0
    iget-object v0, p0, Ldiw$7;->b:Landroid/app/Activity;

    iget-object v3, p0, Ldiw$7;->c:Lcom/alibaba/wukong/im/Conversation;

    iget-object v8, p0, Ldiw$7;->d:Lcom/alibaba/wukong/im/Message;

    iget-wide v4, p0, Ldiw$7;->e:J

    iget-boolean v2, p0, Ldiw$7;->f:Z

    iget-object v10, p0, Ldiw$7;->a:Lcom/alibaba/android/calendar/base/interfaces/ScheduleCreateModel;

    .line 2256
    const-string/jumbo v1, "calendarId"

    invoke-interface {v8, v1}, Lcom/alibaba/wukong/im/Message;->privateExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3109
    invoke-static {v1, v12, v13}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v6

    .line 2257
    invoke-static {}, Lcom/alibaba/android/calendar/base/interfaces/CalendarInterface;->a()Lcom/alibaba/android/calendar/base/interfaces/CalendarInterface;

    move-result-object v9

    const-string/jumbo v1, "eventId"

    .line 2259
    invoke-interface {v8, v1}, Lcom/alibaba/wukong/im/Message;->privateExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4109
    invoke-static {v1, v12, v13}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v12

    .line 2259
    new-instance v1, Ldiw$8;

    invoke-direct/range {v1 .. v8}, Ldiw$8;-><init>(ZLcom/alibaba/wukong/im/Conversation;JJLcom/alibaba/wukong/im/Message;)V

    const-class v2, Lcom/alibaba/wukong/Callback;

    .line 2261
    invoke-static {v1, v2, v0}, Lcon;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/alibaba/wukong/Callback;

    move-object v5, v9

    move-wide v8, v12

    .line 2257
    invoke-virtual/range {v5 .. v11}, Lcom/alibaba/android/calendar/base/interfaces/CalendarInterface;->a(JJLcom/alibaba/android/calendar/base/interfaces/ScheduleCreateModel;Lcom/alibaba/wukong/Callback;)V

    .line 229
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 247
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 241
    return-void
.end method
