.class final Lavo$4$1;
.super Lbzd;
.source "CalendarEventUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lavo$4;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lavo$4;


# direct methods
.method constructor <init>(Lavo$4;)V
    .locals 0
    .param p1, "this$0"    # Lavo$4;

    .prologue
    .line 176
    iput-object p1, p0, Lavo$4$1;->a:Lavo$4;

    invoke-direct {p0}, Lbzd;-><init>()V

    return-void
.end method


# virtual methods
.method public final grant()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 179
    iget-object v2, p0, Lavo$4$1;->a:Lavo$4;

    iget-object v1, v2, Lavo$4;->a:Lawv;

    check-cast v1, Lasv;

    .line 1040
    .local v1, "systemEventInstance":Lasv;
    iget-object v0, v1, Lasv;->b:Lcom/alibaba/android/calendar/data/object/SystemEvent;

    .line 181
    .local v0, "systemEvent":Lcom/alibaba/android/calendar/data/object/SystemEvent;
    if-nez v0, :cond_0

    .line 187
    :goto_0
    return-void

    .line 185
    :cond_0
    iget-object v2, p0, Lavo$4$1;->mFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v0}, Lcom/alibaba/android/calendar/data/object/SystemEvent;->getEventId()J

    move-result-wide v4

    .line 1297
    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-gez v3, :cond_1

    .line 1298
    const-string/jumbo v2, "[CalendarEvent]deleteSystemEvent failed"

    const-string/jumbo v3, "-1"

    const-string/jumbo v4, "eventId < 0"

    invoke-static {v2, v3, v4}, Lawm;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    :goto_1
    invoke-static {}, Lavw;->a()V

    goto :goto_0

    .line 1302
    :cond_1
    new-instance v3, Lavo$6;

    invoke-direct {v3}, Lavo$6;-><init>()V

    .line 1319
    const-class v6, Lcom/alibaba/wukong/Callback;

    invoke-static {v3, v6, v2}, Lcon;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/wukong/Callback;

    .line 1320
    invoke-static {v4, v5, v2}, Lawi;->a(JLcom/alibaba/wukong/Callback;)V

    goto :goto_1
.end method
