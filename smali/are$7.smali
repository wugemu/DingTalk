.class public final Lare$7;
.super Ljava/lang/Object;
.source "AliMailFolderManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lare;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lare;


# direct methods
.method public constructor <init>(Lare;)V
    .locals 0
    .param p1, "this$0"    # Lare;

    .prologue
    .line 351
    iput-object p1, p0, Lare$7;->a:Lare;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 354
    iget-object v1, p0, Lare$7;->a:Lare;

    invoke-static {v1}, Lare;->f(Lare;)Ljava/lang/String;

    move-result-object v0

    .line 355
    .local v0, "mainAccountName":Ljava/lang/String;
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "[AliMailFolderManager] startSyncCalendar mainAccountName="

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object v0, v1, v2

    invoke-static {v1}, Lavy;->a([Ljava/lang/String;)V

    .line 356
    invoke-static {}, Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface;->k()Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface;

    move-result-object v1

    invoke-virtual {v1, v0, v3}, Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface;->a(Ljava/lang/String;Z)V

    .line 357
    return-void
.end method
