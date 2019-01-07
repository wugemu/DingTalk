.class public final Ldiw$5;
.super Ljava/lang/Object;
.source "CalendarUtil.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldiw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
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

.field final synthetic d:J


# direct methods
.method public constructor <init>(Lcom/alibaba/android/calendar/base/interfaces/ScheduleCreateModel;Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;J)V
    .locals 0

    .prologue
    .line 166
    iput-object p1, p0, Ldiw$5;->a:Lcom/alibaba/android/calendar/base/interfaces/ScheduleCreateModel;

    iput-object p2, p0, Ldiw$5;->b:Landroid/app/Activity;

    iput-object p3, p0, Ldiw$5;->c:Lcom/alibaba/wukong/im/Conversation;

    iput-wide p4, p0, Ldiw$5;->d:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 166
    check-cast p1, Ljava/lang/String;

    .line 1171
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ldiw$5;->a:Lcom/alibaba/android/calendar/base/interfaces/ScheduleCreateModel;

    invoke-virtual {v0}, Lcom/alibaba/android/calendar/base/interfaces/ScheduleCreateModel;->getScheduleContent()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1172
    iget-object v0, p0, Ldiw$5;->a:Lcom/alibaba/android/calendar/base/interfaces/ScheduleCreateModel;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, ": "

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Ldiw$5;->a:Lcom/alibaba/android/calendar/base/interfaces/ScheduleCreateModel;

    invoke-virtual {v3}, Lcom/alibaba/android/calendar/base/interfaces/ScheduleCreateModel;->getScheduleContent()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/calendar/base/interfaces/ScheduleCreateModel;->setScheduleContent(Ljava/lang/String;)V

    .line 1174
    :cond_0
    iget-object v0, p0, Ldiw$5;->b:Landroid/app/Activity;

    iget-object v1, p0, Ldiw$5;->c:Lcom/alibaba/wukong/im/Conversation;

    iget-wide v2, p0, Ldiw$5;->d:J

    iget-object v4, p0, Ldiw$5;->a:Lcom/alibaba/android/calendar/base/interfaces/ScheduleCreateModel;

    .line 2193
    invoke-static {}, Lcom/alibaba/android/calendar/base/interfaces/CalendarInterface;->a()Lcom/alibaba/android/calendar/base/interfaces/CalendarInterface;

    move-result-object v5

    new-instance v6, Ldiw$6;

    invoke-direct {v6, v1, v2, v3}, Ldiw$6;-><init>(Lcom/alibaba/wukong/im/Conversation;J)V

    const-class v1, Lcom/alibaba/wukong/Callback;

    .line 2195
    invoke-static {v6, v1, v0}, Lcon;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/Callback;

    .line 2193
    invoke-virtual {v5, v4, v0}, Lcom/alibaba/android/calendar/base/interfaces/CalendarInterface;->a(Lcom/alibaba/android/calendar/base/interfaces/ScheduleCreateModel;Lcom/alibaba/wukong/Callback;)V

    .line 166
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 186
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 180
    return-void
.end method
