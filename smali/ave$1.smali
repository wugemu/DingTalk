.class final Lave$1;
.super Ljava/lang/Object;
.source "CalendarSyncDataHandler.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lave;->onReceived(Ljava/util/List;Lcom/alibaba/wukong/sync/SyncAck;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/wukong/Callback",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/wukong/sync/SyncAck;

.field final synthetic b:Lave;


# direct methods
.method constructor <init>(Lave;Lcom/alibaba/wukong/sync/SyncAck;)V
    .locals 0
    .param p1, "this$0"    # Lave;

    .prologue
    .line 144
    iput-object p1, p0, Lave$1;->b:Lave;

    iput-object p2, p0, Lave$1;->a:Lcom/alibaba/wukong/sync/SyncAck;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 152
    iget-object v0, p0, Lave$1;->a:Lcom/alibaba/wukong/sync/SyncAck;

    const-string/jumbo v1, "[CalendarSyncDataHandler] SyncCalendar dealWithCalendarsAndCalendarChangeEvent ack failed."

    invoke-static {v0, v1}, Lavf;->b(Lcom/alibaba/wukong/sync/SyncAck;Ljava/lang/String;)V

    .line 153
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 144
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 144
    .line 1147
    iget-object v0, p0, Lave$1;->a:Lcom/alibaba/wukong/sync/SyncAck;

    const-string/jumbo v1, "[CalendarSyncDataHandler] SyncCalendar dealWithCalendarsAndCalendarChangeEvent ack success."

    invoke-static {v0, v1}, Lavf;->a(Lcom/alibaba/wukong/sync/SyncAck;Ljava/lang/String;)V

    .line 144
    return-void
.end method
