.class final Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity$11;
.super Ljava/lang/Object;
.source "TeleConfRecordDetailActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;

    .prologue
    .line 1025
    iput-object p1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity$11;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1028
    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity$11;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;

    invoke-static {v3}, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->i(Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1029
    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity$11;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;

    invoke-static {v3}, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->i(Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;)Ljava/lang/String;

    move-result-object v0

    .line 1030
    .local v0, "destNumber":Ljava/lang/String;
    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity$11;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;

    invoke-static {v3}, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->i(Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 1031
    .local v1, "index":I
    if-ltz v1, :cond_0

    .line 1032
    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity$11;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;

    invoke-static {v3}, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->i(Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v4, v1, 0x1

    iget-object v5, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity$11;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;

    invoke-static {v5}, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->i(Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1033
    .local v2, "subStr":Ljava/lang/String;
    invoke-static {v2}, Leyv;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1035
    .end local v2    # "subStr":Ljava/lang/String;
    :cond_0
    invoke-static {v0}, Leyv;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1036
    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity$11;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;

    iget-object v4, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity$11;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;

    invoke-static {v4}, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->v(Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;)Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;

    move-result-object v4

    invoke-static {v3, v0, v4}, Lewb;->a(Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;)V

    .line 1038
    .end local v0    # "destNumber":Ljava/lang/String;
    .end local v1    # "index":I
    :cond_1
    return-void
.end method
