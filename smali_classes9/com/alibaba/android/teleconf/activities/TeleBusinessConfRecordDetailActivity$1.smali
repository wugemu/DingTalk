.class final Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity$1;
.super Ljava/lang/Object;
.source "TeleBusinessConfRecordDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity$1;->a:Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 108
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 109
    .local v0, "id":I
    sget v1, Leuj$i;->conf_reject:I

    if-ne v1, v0, :cond_1

    .line 111
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity$1;->a:Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;

    invoke-static {v1}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;)Lexg$a;

    move-result-object v1

    invoke-interface {v1}, Lexg$a;->b()V

    .line 122
    :cond_0
    :goto_0
    return-void

    .line 112
    :cond_1
    sget v1, Leuj$i;->conf_accept:I

    if-ne v1, v0, :cond_2

    .line 114
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity$1;->a:Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;

    invoke-static {v1}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;)Lexg$a;

    move-result-object v1

    invoke-interface {v1}, Lexg$a;->a()V

    goto :goto_0

    .line 115
    :cond_2
    sget v1, Leuj$i;->conf_compere:I

    if-ne v1, v0, :cond_3

    .line 116
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity$1;->a:Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;

    invoke-static {v1}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;->b(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;)Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity$1;->a:Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;

    invoke-static {v1}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;->b(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 117
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity$1;->a:Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;

    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity$1;->a:Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;

    invoke-static {v2}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;->b(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;J)V

    goto :goto_0

    .line 119
    :cond_3
    sget v1, Leuj$i;->conf_restart:I

    if-ne v1, v0, :cond_0

    .line 120
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity$1;->a:Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;

    invoke-static {v1}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfRecordDetailActivity;)Lexg$a;

    move-result-object v1

    invoke-interface {v1}, Lexg$a;->c()V

    goto :goto_0
.end method
