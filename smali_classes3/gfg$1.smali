.class final Lgfg$1;
.super Ljava/lang/Object;
.source "OnlineEditHelper.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgfg;->a(Landroid/app/Activity;Lgrb;JLcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Lgof;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcma;

.field final synthetic c:Lgrb;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:J

.field final synthetic f:Lgfg;


# direct methods
.method constructor <init>(Lgfg;Landroid/app/Activity;Lcma;Lgrb;Ljava/lang/String;J)V
    .locals 0
    .param p1, "this$0"    # Lgfg;

    .prologue
    .line 92
    iput-object p1, p0, Lgfg$1;->f:Lgfg;

    iput-object p2, p0, Lgfg$1;->a:Landroid/app/Activity;

    iput-object p3, p0, Lgfg$1;->b:Lcma;

    iput-object p4, p0, Lgfg$1;->c:Lgrb;

    iput-object p5, p0, Lgfg$1;->d:Ljava/lang/String;

    iput-wide p6, p0, Lgfg$1;->e:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v1, 0x1

    const/4 v8, 0x0

    const/4 v2, 0x0

    .line 92
    check-cast p1, Lgof;

    .line 1095
    iget-object v0, p0, Lgfg$1;->a:Landroid/app/Activity;

    invoke-static {v0}, Lgpk;->a(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1099
    iget-object v0, p0, Lgfg$1;->a:Landroid/app/Activity;

    instance-of v0, v0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    if-eqz v0, :cond_0

    .line 1100
    iget-object v0, p0, Lgfg$1;->a:Landroid/app/Activity;

    check-cast v0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->dismissLoadingDialog()V

    .line 1103
    :cond_0
    if-nez p1, :cond_2

    .line 1104
    iget-object v0, p0, Lgfg$1;->b:Lcma;

    if-eqz v0, :cond_1

    .line 1105
    iget-object v0, p0, Lgfg$1;->b:Lcma;

    const-string/jumbo v1, "20180103"

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    sget v3, Lfzs$h;->dt_cspace_online_document_create_error_common:I

    invoke-virtual {v2, v3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 1143
    :cond_1
    :goto_0
    return-void

    .line 1110
    :cond_2
    iget-boolean v0, p1, Lgof;->a:Z

    if-nez v0, :cond_5

    .line 1111
    const-wide/32 v0, 0xc6ab68

    iget-wide v2, p1, Lgof;->b:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    .line 1113
    iget-object v0, p0, Lgfg$1;->c:Lgrb;

    iget-boolean v0, v0, Lgrb;->k:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lgfg$1;->d:Ljava/lang/String;

    invoke-static {v0}, Lgpx;->o(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1115
    new-instance v0, Lgqz;

    invoke-direct {v0}, Lgqz;-><init>()V

    .line 1116
    iget-object v1, p0, Lgfg$1;->c:Lgrb;

    iget-object v1, v1, Lgrb;->c:Ljava/lang/String;

    iput-object v1, v0, Lgqz;->b:Ljava/lang/String;

    .line 1117
    iget-object v1, p0, Lgfg$1;->c:Lgrb;

    iget-wide v2, v1, Lgrb;->h:J

    iput-wide v2, v0, Lgqz;->d:J

    .line 1118
    iget-object v1, p0, Lgfg$1;->c:Lgrb;

    iget-object v1, v1, Lgrb;->d:Ljava/lang/String;

    iput-object v1, v0, Lgqz;->c:Ljava/lang/String;

    .line 1119
    new-instance v1, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    invoke-direct {v1}, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;-><init>()V

    .line 1120
    iget-object v2, p0, Lgfg$1;->c:Lgrb;

    iget-object v2, v2, Lgrb;->a:Ljava/lang/String;

    iput-object v2, v1, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->spaceId:Ljava/lang/String;

    .line 1121
    iget-object v2, p0, Lgfg$1;->c:Lgrb;

    iget-object v2, v2, Lgrb;->b:Ljava/lang/String;

    iput-object v2, v1, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileId:Ljava/lang/String;

    .line 1122
    iget-object v2, p0, Lgfg$1;->c:Lgrb;

    iget-object v2, v2, Lgrb;->i:Ljava/lang/String;

    iput-object v2, v1, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileName:Ljava/lang/String;

    .line 1123
    iput-object v1, v0, Lgqz;->a:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    .line 1124
    iget-object v1, p0, Lgfg$1;->f:Lgfg;

    iget-object v2, p0, Lgfg$1;->a:Landroid/app/Activity;

    iget-object v3, p0, Lgfg$1;->b:Lcma;

    invoke-virtual {v1, v2, v0, v3}, Lgfg;->a(Landroid/app/Activity;Lgqz;Lcma;)V

    goto :goto_0

    .line 1129
    :cond_3
    iget-object v0, p0, Lgfg$1;->b:Lcma;

    if-eqz v0, :cond_4

    .line 1130
    iget-object v0, p0, Lgfg$1;->b:Lcma;

    iget-wide v2, p1, Lgof;->b:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lgof;->c:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 1132
    :cond_4
    const-string/jumbo v0, "CSpace"

    const-string/jumbo v1, "OnlineEditHelper"

    const-string/jumbo v2, "createDocForOnline"

    const-string/jumbo v3, ""

    iget-object v4, p1, Lgof;->c:Ljava/lang/String;

    invoke-static {v2, v3, v4, v8}, Lgot;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1136
    :cond_5
    iget-object v0, p1, Lgof;->d:Ljava/lang/String;

    .line 1138
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1139
    iget-object v0, p0, Lgfg$1;->b:Lcma;

    if-eqz v0, :cond_6

    .line 1140
    iget-object v0, p0, Lgfg$1;->b:Lcma;

    const-string/jumbo v1, "20180103"

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    sget v3, Lfzs$h;->dt_cspace_online_document_create_error_common:I

    invoke-virtual {v2, v3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 1142
    :cond_6
    const-string/jumbo v0, "CSpace"

    const-string/jumbo v1, "OnlineEditHelper"

    const-string/jumbo v2, "createDocForOnline"

    const-string/jumbo v3, ""

    const-string/jumbo v4, "url is empty"

    invoke-static {v2, v3, v4, v8}, Lgot;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1147
    :cond_7
    :try_start_0
    iget-object v3, p1, Lgof;->d:Ljava/lang/String;

    const-string/jumbo v4, "UTF-8"

    invoke-static {v3, v4}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1152
    :goto_1
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 1153
    const-string/jumbo v4, "common_webview_source"

    const-string/jumbo v5, "source_space_online_edit"

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1154
    const-string/jumbo v4, "intent_key_space_id"

    iget-object v5, p0, Lgfg$1;->c:Lgrb;

    iget-object v5, v5, Lgrb;->a:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1155
    const-string/jumbo v4, "intent_key_file_id"

    iget-object v5, p0, Lgfg$1;->c:Lgrb;

    iget-object v5, v5, Lgrb;->b:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1156
    const-string/jumbo v4, "conversation_id"

    iget-object v5, p0, Lgfg$1;->c:Lgrb;

    iget-object v5, v5, Lgrb;->c:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1157
    const-string/jumbo v4, "message_id"

    iget-object v5, p0, Lgfg$1;->c:Lgrb;

    iget-object v5, v5, Lgrb;->d:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1158
    const-string/jumbo v4, "sp_last_edit_time"

    iget-object v5, p0, Lgfg$1;->c:Lgrb;

    iget-wide v6, v5, Lgrb;->f:J

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1159
    iget-object v4, p0, Lgfg$1;->c:Lgrb;

    iget-wide v4, v4, Lgrb;->h:J

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v6

    invoke-virtual {v6}, Lcid;->b()Lchy;

    move-result-object v6

    invoke-virtual {v6}, Lchy;->getCurrentUid()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_9

    iget-object v4, p0, Lgfg$1;->c:Lgrb;

    iget v4, v4, Lgrb;->j:I

    const/4 v5, 0x3

    if-eq v4, v5, :cond_8

    iget-object v4, p0, Lgfg$1;->c:Lgrb;

    iget v4, v4, Lgrb;->j:I

    const/4 v5, 0x4

    if-eq v4, v5, :cond_8

    iget-object v4, p0, Lgfg$1;->c:Lgrb;

    iget v4, v4, Lgrb;->j:I

    if-eq v4, v1, :cond_8

    iget-object v4, p0, Lgfg$1;->c:Lgrb;

    iget v4, v4, Lgrb;->j:I

    const/4 v5, 0x6

    if-ne v4, v5, :cond_9

    .line 1164
    :cond_8
    :goto_2
    const-string/jumbo v4, "intent_key_online_edit_collaborator_list_editable"

    invoke-virtual {v3, v4, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1165
    const-string/jumbo v1, "org_id"

    iget-wide v4, p0, Lgfg$1;->e:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1166
    const-string/jumbo v1, "intent_key_space_type"

    iget-object v4, p0, Lgfg$1;->c:Lgrb;

    iget v4, v4, Lgrb;->j:I

    invoke-virtual {v3, v1, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1167
    const-string/jumbo v1, "intent_key_file_name"

    iget-object v4, p0, Lgfg$1;->c:Lgrb;

    iget-object v4, v4, Lgrb;->i:Ljava/lang/String;

    invoke-virtual {v3, v1, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1169
    const-string/jumbo v1, "url"

    invoke-virtual {v3, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1170
    const-string/jumbo v0, "title"

    const-string/jumbo v1, ""

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1171
    const-string/jumbo v0, "show_options_menu"

    invoke-virtual {v3, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1172
    const-string/jumbo v0, "show_bottom_botton"

    invoke-virtual {v3, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1175
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "space_mobile_online_edit"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 1177
    invoke-static {}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->getInterfaceImpl()Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;

    move-result-object v0

    iget-object v1, p0, Lgfg$1;->a:Landroid/app/Activity;

    invoke-virtual {v0, v1, v3, v2}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->navToCommonWebView(Landroid/content/Context;Landroid/os/Bundle;I)V

    .line 1179
    iget-object v0, p0, Lgfg$1;->b:Lcma;

    if-eqz v0, :cond_1

    .line 1180
    iget-object v0, p0, Lgfg$1;->b:Lcma;

    invoke-interface {v0, v8}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1148
    :catch_0
    move-exception v3

    .line 1149
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    :cond_9
    move v1, v2

    .line 1159
    goto :goto_2
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 191
    const/16 v1, 0xa

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "createDocForOnline: spaceId: "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lgfg$1;->c:Lgrb;

    iget-object v3, v3, Lgrb;->a:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, ", fileId: "

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lgfg$1;->c:Lgrb;

    iget-object v3, v3, Lgrb;->b:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string/jumbo v3, ", uids: "

    aput-object v3, v1, v2

    const/4 v2, 0x5

    .line 194
    invoke-static {v4}, Lgpr;->c(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string/jumbo v3, ", cid: "

    aput-object v3, v1, v2

    const/4 v2, 0x7

    iget-object v3, p0, Lgfg$1;->c:Lgrb;

    iget-object v3, v3, Lgrb;->c:Ljava/lang/String;

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string/jumbo v3, ", msgId: "

    aput-object v3, v1, v2

    const/16 v2, 0x9

    iget-object v3, p0, Lgfg$1;->c:Lgrb;

    iget-object v3, v3, Lgrb;->d:Ljava/lang/String;

    aput-object v3, v1, v2

    .line 191
    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 197
    .local v0, "method":Ljava/lang/String;
    const-string/jumbo v1, "CSpace"

    const-string/jumbo v2, "OnlineEditHelper"

    .line 198
    invoke-static {v0, p1, p2, v4}, Lgot;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    .line 197
    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    iget-object v1, p0, Lgfg$1;->a:Landroid/app/Activity;

    invoke-static {v1}, Lgpk;->a(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 211
    :cond_0
    :goto_0
    return-void

    .line 204
    :cond_1
    iget-object v1, p0, Lgfg$1;->a:Landroid/app/Activity;

    instance-of v1, v1, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    if-eqz v1, :cond_2

    .line 205
    iget-object v1, p0, Lgfg$1;->a:Landroid/app/Activity;

    check-cast v1, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->dismissLoadingDialog()V

    .line 208
    :cond_2
    iget-object v1, p0, Lgfg$1;->b:Lcma;

    if-eqz v1, :cond_0

    .line 209
    iget-object v1, p0, Lgfg$1;->b:Lcma;

    invoke-interface {v1, p1, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 187
    return-void
.end method
