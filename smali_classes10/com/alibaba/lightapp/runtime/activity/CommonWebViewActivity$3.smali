.class final Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity$3;
.super Ljava/lang/Object;
.source "CommonWebViewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;

    .prologue
    .line 335
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity$3;->a:Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 338
    invoke-static {}, Lhfo;->a()Lhfo;

    move-result-object v0

    iget-object v8, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity$3;->a:Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;

    invoke-static {v8}, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->c(Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lhfo;->a(Ljava/lang/String;)Lhfo$b;

    move-result-object v1

    .line 342
    .local v1, "tempMicroAppInfo":Lhfo$b;
    iget-object v6, v1, Lhfo$b;->b:Ljava/lang/String;

    .line 343
    .local v6, "tmpAppId":Ljava/lang/String;
    const/4 v7, 0x0

    .line 344
    .local v7, "tmpAppType":I
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 345
    iget-object v6, v1, Lhfo$b;->a:Ljava/lang/String;

    .line 346
    const/4 v7, 0x2

    .line 348
    :cond_0
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 360
    :goto_0
    return-void

    .line 351
    :cond_1
    invoke-static {}, Lhhx;->a()Ljava/lang/String;

    move-result-object v2

    .line 352
    .local v2, "corpId":Ljava/lang/String;
    move-object v3, v6

    .line 353
    .local v3, "appId":Ljava/lang/String;
    move v4, v7

    .line 354
    .local v4, "appType":I
    invoke-static {v2, v3, v4}, Lhhx;->a(Ljava/lang/String;Ljava/lang/String;I)Lhin;

    move-result-object v5

    .line 355
    .local v5, "appStatementModel":Lhin;
    if-eqz v5, :cond_4

    iget-object v0, v5, Lhin;->d:Ljava/lang/Boolean;

    invoke-static {v0}, Lhdo;->a(Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1064
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string/jumbo v9, "lightapp_loading_time"

    aput-object v9, v0, v8

    const/4 v8, 0x1

    aput-object v2, v0, v8

    const/4 v8, 0x2

    const-string/jumbo v9, "_"

    aput-object v9, v0, v8

    const/4 v8, 0x3

    aput-object v3, v0, v8

    const/4 v8, 0x4

    const-string/jumbo v9, "_"

    aput-object v9, v0, v8

    const/4 v8, 0x5

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v0, v8

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1065
    invoke-static {v0}, Lcpk;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1066
    if-nez v8, :cond_2

    .line 1067
    const/4 v0, 0x1

    .line 355
    :goto_1
    if-eqz v0, :cond_4

    .line 356
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity$3;->a:Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;

    invoke-static/range {v0 .. v5}, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->a(Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;Lhfo$b;Ljava/lang/String;Ljava/lang/String;ILhin;)V

    goto :goto_0

    .line 1069
    :cond_2
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v9

    .line 1070
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v11, 0x1

    invoke-virtual {v9, v11}, Ljava/util/Calendar;->get(I)I

    move-result v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x2

    invoke-virtual {v9, v11}, Ljava/util/Calendar;->get(I)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x5

    invoke-virtual {v9, v11}, Ljava/util/Calendar;->get(I)I

    move-result v9

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1071
    invoke-static {v9, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 1072
    invoke-static {v0, v9}, Lcpk;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1073
    const/4 v0, 0x1

    goto :goto_1

    .line 1075
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 358
    :cond_4
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity$3;->a:Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;

    invoke-static {v0, v5, v2, v3, v4}, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->a(Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;Lhin;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0
.end method
