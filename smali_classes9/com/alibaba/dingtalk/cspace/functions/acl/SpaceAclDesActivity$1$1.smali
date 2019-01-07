.class final Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity$1$1;
.super Ljava/lang/Object;
.source "SpaceAclDesActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity$1;->a(Lcom/alibaba/wukong/Callback;Lcom/alibaba/wukong/Callback;Lcom/alibaba/wukong/Callback;)V
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
        "Ljava/util/List",
        "<",
        "Lgnv;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/wukong/Callback;

.field final synthetic b:Lcom/alibaba/wukong/Callback;

.field final synthetic c:Lcom/alibaba/wukong/Callback;

.field final synthetic d:Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity$1;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity$1;Lcom/alibaba/wukong/Callback;Lcom/alibaba/wukong/Callback;Lcom/alibaba/wukong/Callback;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity$1;

    .prologue
    .line 147
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity$1$1;->d:Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity$1;

    iput-object p2, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity$1$1;->a:Lcom/alibaba/wukong/Callback;

    iput-object p3, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity$1$1;->b:Lcom/alibaba/wukong/Callback;

    iput-object p4, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity$1$1;->c:Lcom/alibaba/wukong/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v0, 0x1

    const/4 v6, -0x1

    .line 147
    check-cast p1, Ljava/util/List;

    .line 1150
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity$1$1;->d:Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity$1;

    iget-object v1, v1, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity$1;->b:Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity;

    invoke-static {v1}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1154
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity$1$1;->a:Lcom/alibaba/wukong/Callback;

    if-eqz v1, :cond_1

    .line 1155
    invoke-static {}, Lgqd;->a()Lgqd;

    move-result-object v1

    const-wide/16 v2, 0x3eb

    invoke-virtual {v1, p1, v2, v3}, Lgqd;->a(Ljava/util/List;J)I

    move-result v1

    .line 1156
    invoke-static {}, Lgqd;->a()Lgqd;

    move-result-object v2

    const-wide/16 v4, 0x3ec

    invoke-virtual {v2, p1, v4, v5}, Lgqd;->a(Ljava/util/List;J)I

    move-result v2

    .line 1158
    if-eq v1, v6, :cond_0

    if-ne v2, v6, :cond_5

    .line 1160
    :cond_0
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity$1$1;->a:Lcom/alibaba/wukong/Callback;

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity$1$1;->d:Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity$1;

    iget-object v2, v2, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity$1;->b:Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity;

    sget v3, Lfzs$h;->dt_cspace_acl_member_all:I

    invoke-virtual {v2, v3}, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/alibaba/wukong/Callback;->onSuccess(Ljava/lang/Object;)V

    .line 1161
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity$1$1;->d:Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity$1;

    iget-object v1, v1, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity$1;->b:Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity;

    invoke-static {v1}, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity;->d(Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity;)Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesView;

    move-result-object v1

    invoke-static {}, Lgqd;->a()Lgqd;

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity$1$1;->d:Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity$1;

    iget-object v2, v2, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity$1;->a:Ljava/lang/String;

    const-string/jumbo v3, "modifyManager"

    invoke-static {v2, v3}, Lgqd;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesView;->a(Z)V

    .line 1168
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity$1$1;->b:Lcom/alibaba/wukong/Callback;

    if-eqz v1, :cond_2

    .line 1169
    invoke-static {}, Lgqd;->a()Lgqd;

    move-result-object v1

    const-wide/16 v2, 0x3ea

    invoke-virtual {v1, p1, v2, v3}, Lgqd;->a(Ljava/util/List;J)I

    move-result v1

    .line 1171
    if-ne v1, v6, :cond_6

    .line 1173
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity$1$1;->b:Lcom/alibaba/wukong/Callback;

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity$1$1;->d:Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity$1;

    iget-object v2, v2, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity$1;->b:Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity;

    sget v3, Lfzs$h;->dt_cspace_acl_member_all:I

    invoke-virtual {v2, v3}, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/alibaba/wukong/Callback;->onSuccess(Ljava/lang/Object;)V

    .line 1174
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity$1$1;->d:Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity$1;

    iget-object v1, v1, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity$1;->b:Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity;

    invoke-static {v1}, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity;->d(Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity;)Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesView;

    move-result-object v1

    invoke-static {}, Lgqd;->a()Lgqd;

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity$1$1;->d:Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity$1;

    iget-object v2, v2, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity$1;->a:Ljava/lang/String;

    const-string/jumbo v3, "modifyReaderUploader"

    invoke-static {v2, v3}, Lgqd;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesView;->b(Z)V

    .line 1181
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity$1$1;->c:Lcom/alibaba/wukong/Callback;

    if-eqz v1, :cond_3

    .line 1182
    invoke-static {}, Lgqd;->a()Lgqd;

    move-result-object v1

    const-wide/16 v2, 0x3e9

    invoke-virtual {v1, p1, v2, v3}, Lgqd;->a(Ljava/util/List;J)I

    move-result v1

    .line 1184
    if-ne v1, v6, :cond_8

    .line 1186
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity$1$1;->c:Lcom/alibaba/wukong/Callback;

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity$1$1;->d:Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity$1;

    iget-object v2, v2, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity$1;->b:Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity;

    sget v3, Lfzs$h;->dt_cspace_acl_member_all:I

    invoke-virtual {v2, v3}, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/alibaba/wukong/Callback;->onSuccess(Ljava/lang/Object;)V

    .line 1187
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity$1$1;->d:Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity$1;

    iget-object v1, v1, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity$1;->b:Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity;

    invoke-static {v1}, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity;->d(Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity;)Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesView;

    move-result-object v1

    const-string/jumbo v2, "0"

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity$1$1;->d:Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity$1;

    iget-object v3, v3, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity$1;->b:Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity;

    invoke-static {v3}, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity;->a(Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 1188
    invoke-static {}, Lgqd;->a()Lgqd;

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity$1$1;->d:Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity$1;

    iget-object v2, v2, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity$1;->a:Ljava/lang/String;

    const-string/jumbo v3, "modifyReader"

    invoke-static {v2, v3}, Lgqd;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1187
    :goto_2
    invoke-virtual {v1, v0}, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesView;->c(Z)V

    .line 1196
    :cond_3
    :goto_3
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity$1$1;->d:Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity$1;

    iget-object v0, v0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity$1;->b:Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity;

    invoke-static {v0, p1}, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity;->a(Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity;Ljava/util/List;)V

    .line 147
    :cond_4
    return-void

    .line 1163
    :cond_5
    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity$1$1;->a:Lcom/alibaba/wukong/Callback;

    add-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Lcom/alibaba/wukong/Callback;->onSuccess(Ljava/lang/Object;)V

    .line 1164
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity$1$1;->d:Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity$1;

    iget-object v1, v1, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity$1;->b:Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity;

    invoke-static {v1}, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity;->d(Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity;)Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesView;->a(Z)V

    goto/16 :goto_0

    .line 1176
    :cond_6
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity$1$1;->b:Lcom/alibaba/wukong/Callback;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/alibaba/wukong/Callback;->onSuccess(Ljava/lang/Object;)V

    .line 1177
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity$1$1;->d:Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity$1;

    iget-object v1, v1, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity$1;->b:Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity;

    invoke-static {v1}, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity;->d(Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity;)Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesView;->b(Z)V

    goto :goto_1

    .line 1188
    :cond_7
    const/4 v0, 0x0

    goto :goto_2

    .line 1190
    :cond_8
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity$1$1;->c:Lcom/alibaba/wukong/Callback;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/alibaba/wukong/Callback;->onSuccess(Ljava/lang/Object;)V

    .line 1191
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity$1$1;->d:Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity$1;

    iget-object v1, v1, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity$1;->b:Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity;

    invoke-static {v1}, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity;->d(Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity;)Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesView;->c(Z)V

    goto :goto_3
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 206
    const-string/jumbo v0, "CSpace"

    const-string/jumbo v1, "SpaceAclDesActivity"

    const-string/jumbo v2, "SpaceAclDesActivity listAclMembers"

    const/4 v3, 0x0

    .line 207
    invoke-static {v2, p1, p2, v3}, Lgot;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    .line 206
    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 202
    return-void
.end method
