.class final Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl$5;
.super Ljava/lang/Object;
.source "DataSourceCalendarImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl;


# direct methods
.method constructor <init>(Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl;

    .prologue
    .line 878
    iput-object p1, p0, Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl$5;->a:Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 881
    iget-object v0, p0, Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl$5;->a:Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl;

    invoke-static {v0}, Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl;->f(Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl;)Lcom/alibaba/bee/DBManager;

    move-result-object v0

    invoke-static {}, Lcom/alibaba/android/dingtalkbase/db/AbsDataSource;->m()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/alibaba/android/calendar/db/entry/EntryEvent;

    const-string/jumbo v3, "tb_event_v3"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/bee/DBManager;->delete(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 882
    iget-object v0, p0, Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl$5;->a:Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl;

    invoke-static {v0}, Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl;->g(Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl;)Lcom/alibaba/bee/DBManager;

    move-result-object v0

    invoke-static {}, Lcom/alibaba/android/dingtalkbase/db/AbsDataSource;->m()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/alibaba/android/calendar/db/entry/EntryInstance;

    const-string/jumbo v3, "tb_instance_v2"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/bee/DBManager;->delete(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 883
    iget-object v0, p0, Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl$5;->a:Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl;

    invoke-static {v0}, Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl;->h(Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl;)Lcom/alibaba/bee/DBManager;

    move-result-object v0

    invoke-static {}, Lcom/alibaba/android/dingtalkbase/db/AbsDataSource;->m()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/alibaba/android/calendar/db/entry/EntryFolderExtra;

    const-string/jumbo v3, "tb_folder_extra_v2"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/bee/DBManager;->delete(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 884
    return-void
.end method
