.class final Lcom/alibaba/android/calendar/data/object/MailEvent$1;
.super Ljava/lang/Object;
.source "MailEvent.java"

# interfaces
.implements Laxn$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/calendar/data/object/MailEvent;->getDayEventDelegate()Laxn$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/calendar/data/object/MailEvent;


# direct methods
.method constructor <init>(Lcom/alibaba/android/calendar/data/object/MailEvent;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/calendar/data/object/MailEvent;

    .prologue
    .line 205
    iput-object p1, p0, Lcom/alibaba/android/calendar/data/object/MailEvent$1;->a:Lcom/alibaba/android/calendar/data/object/MailEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 212
    iget-object v0, p0, Lcom/alibaba/android/calendar/data/object/MailEvent$1;->a:Lcom/alibaba/android/calendar/data/object/MailEvent;

    invoke-static {v0}, Lcom/alibaba/android/calendar/data/object/MailEvent;->access$000(Lcom/alibaba/android/calendar/data/object/MailEvent;)Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 213
    invoke-static {}, Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface;->k()Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/calendar/data/object/MailEvent$1;->a:Lcom/alibaba/android/calendar/data/object/MailEvent;

    invoke-static {v1}, Lcom/alibaba/android/calendar/data/object/MailEvent;->access$000(Lcom/alibaba/android/calendar/data/object/MailEvent;)Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface;->a(Landroid/app/Activity;Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;)V

    .line 215
    :cond_0
    return-void
.end method

.method public final a(Landroid/app/Activity;JJLcom/alibaba/wukong/Callback;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "startTimeMillis"    # J
    .param p4, "endTimeMillis"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "JJ",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 208
    .local p6, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/lang/Void;>;"
    return-void
.end method
