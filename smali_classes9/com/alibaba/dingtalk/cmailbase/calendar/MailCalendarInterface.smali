.class public abstract Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface;
.super Lckb;
.source "MailCalendarInterface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface$DELETE_MODE;,
        Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface$c;,
        Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface$a;,
        Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface$b;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lckb;-><init>()V

    .line 226
    return-void
.end method

.method public static k()Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface;
    .locals 2

    .prologue
    .line 37
    invoke-static {}, Lcke;->a()Lcke;

    move-result-object v0

    const-class v1, Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface;

    invoke-virtual {v0, v1}, Lcke;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 42
    return-void
.end method

.method public a(IIZLcma;)V
    .locals 0
    .param p1, "startJulianDay"    # I
    .param p2, "nums"    # I
    .param p3, "includeShared"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIZ",
            "Lcma",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 126
    .local p4, "listener":Lcma;, "Lcma<Ljava/util/List<Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;>;>;"
    return-void
.end method

.method public a(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            ")V"
        }
    .end annotation

    .prologue
    .line 163
    return-void
.end method

.method public a(Landroid/app/Activity;Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "eventInstanceObject"    # Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;

    .prologue
    .line 160
    return-void
.end method

.method public a(Landroid/content/Context;JJJ)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "eventId"    # J
    .param p4, "startMillis"    # J
    .param p6, "endMillis"    # J

    .prologue
    .line 166
    return-void
.end method

.method public a(Lcma;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcma",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/dingtalk/cmailbase/calendar/CalendarObject;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 82
    .local p1, "listener":Lcma;, "Lcma<Ljava/util/List<Lcom/alibaba/dingtalk/cmailbase/calendar/CalendarObject;>;>;"
    return-void
.end method

.method public a(Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface$a;)V
    .locals 0
    .param p1, "listener"    # Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface$a;

    .prologue
    .line 50
    return-void
.end method

.method public a(Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface$b;)V
    .locals 0
    .param p1, "calendarSyncListener"    # Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface$b;

    .prologue
    .line 154
    return-void
.end method

.method public a(Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface$c;)V
    .locals 0
    .param p1, "listener"    # Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface$c;

    .prologue
    .line 66
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .param p1, "accountName"    # Ljava/lang/String;

    .prologue
    .line 94
    return-void
.end method

.method public a(Ljava/lang/String;IIZLjava/util/List;Ljava/util/List;Lcma;)V
    .locals 0
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "startJulianDay"    # I
    .param p3, "nums"    # I
    .param p4, "includeSelf"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IIZ",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcma",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 118
    .local p5, "sharedList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p6, "serverIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p7, "listener":Lcma;, "Lcma<Ljava/util/List<Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;>;>;"
    return-void
.end method

.method public a(Ljava/lang/String;JJJLcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface$DELETE_MODE;Lcom/alibaba/wukong/Callback;)V
    .locals 0
    .param p1, "accoutName"    # Ljava/lang/String;
    .param p2, "eventId"    # J
    .param p4, "startMillis"    # J
    .param p6, "endMillis"    # J
    .param p8, "deleteMode"    # Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface$DELETE_MODE;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JJJ",
            "Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface$DELETE_MODE;",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 209
    .local p9, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/lang/Void;>;"
    return-void
.end method

.method public a(Ljava/lang/String;JLcom/alibaba/wukong/Callback;)V
    .locals 0
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "eventId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 205
    .local p4, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/lang/Integer;>;"
    return-void
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "fullForceSync"    # Z

    .prologue
    .line 103
    return-void
.end method

.method public b()V
    .locals 0

    .prologue
    .line 132
    return-void
.end method

.method public b(Lcma;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcma",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 90
    .local p1, "listener":Lcma;, "Lcma<Ljava/lang/Boolean;>;"
    return-void
.end method

.method public b(Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface$a;)V
    .locals 0
    .param p1, "listener"    # Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface$a;

    .prologue
    .line 58
    return-void
.end method

.method public b(Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface$b;)V
    .locals 0
    .param p1, "calendarSyncListener"    # Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface$b;

    .prologue
    .line 157
    return-void
.end method

.method public b(Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface$c;)V
    .locals 0
    .param p1, "listener"    # Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface$c;

    .prologue
    .line 74
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 169
    const/4 v0, 0x0

    return v0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 173
    const/4 v0, 0x0

    return v0
.end method

.method public e()V
    .locals 0

    .prologue
    .line 184
    return-void
.end method

.method public f()V
    .locals 0

    .prologue
    .line 187
    return-void
.end method

.method public g()V
    .locals 0

    .prologue
    .line 190
    return-void
.end method

.method public h()V
    .locals 0

    .prologue
    .line 193
    return-void
.end method

.method public i()V
    .locals 0

    .prologue
    .line 196
    return-void
.end method

.method public j()V
    .locals 0

    .prologue
    .line 199
    return-void
.end method
