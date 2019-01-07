.class final Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity$1;
.super Ljava/lang/Object;
.source "TeleVideoConfRecordActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity;

    .prologue
    .line 134
    iput-object p1, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity$1;->a:Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 138
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 139
    .local v7, "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v0, "call_type"

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v7, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v2, "videocall_meeting_click"

    invoke-interface {v0, v2, v7}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/util/Map;)V

    .line 142
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v2, "1-"

    aput-object v2, v0, v1

    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity$1;->a:Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity;

    invoke-static {v2}, Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v5

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 143
    .local v6, "numInfo":Ljava/lang/String;
    invoke-static {}, Lcms;->h()Z

    move-result v0

    if-nez v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity$1;->a:Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity;

    sget v2, Leuj$l;->conf_txt_conference_members_count:I

    new-array v4, v5, [Ljava/lang/Object;

    aput-object v6, v4, v1

    invoke-virtual {v0, v2, v4}, Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity$1;->a:Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity;

    sget v2, Leuj$l;->and_conf_start_video_conf_from_contact:I

    new-array v4, v5, [Ljava/lang/Object;

    aput-object v6, v4, v1

    invoke-virtual {v0, v2, v4}, Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 147
    .local v3, "title":Ljava/lang/String;
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity$1;->a:Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity;

    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity$1;->a:Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity;

    .line 148
    invoke-static {v2}, Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity;)I

    move-result v2

    sget v4, Leuj$l;->choose_limit:I

    const-string/jumbo v5, "CONF_RECORD_ACTIVITY_CREATE_VIDEO_CONFERENCE"

    .line 147
    invoke-static/range {v0 .. v5}, Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleVideoConfRecordActivity;IILjava/lang/String;ILjava/lang/String;)V

    .line 152
    return-void
.end method
