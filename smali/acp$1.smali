.class public final Lacp$1;
.super Ljava/lang/Object;
.source "MailDialogManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lacp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

.field final synthetic b:Lcma;

.field final synthetic c:Lacp;


# direct methods
.method public constructor <init>(Lacp;Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lacp;

    .prologue
    .line 162
    iput-object p1, p0, Lacp$1;->c:Lacp;

    iput-object p2, p0, Lacp$1;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    iput-object p3, p0, Lacp$1;->b:Lcma;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v7, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 165
    iget-object v5, p0, Lacp$1;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-virtual {v5}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->isDestroyed()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 205
    :goto_0
    return-void

    .line 169
    :cond_0
    const-string/jumbo v5, "pref_key_dingtalk_org_destribute_check"

    invoke-static {v5, v8}, Lcpk;->a(Ljava/lang/String;Z)Z

    move-result v2

    .line 170
    .local v2, "isShow":Z
    if-nez v2, :cond_1

    .line 171
    iget-object v5, p0, Lacp$1;->c:Lacp;

    iget-object v6, p0, Lacp$1;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    iget-object v7, p0, Lacp$1;->b:Lcma;

    invoke-static {v5, v6, v7}, Lacp;->a(Lacp;Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcma;)V

    goto :goto_0

    .line 175
    :cond_1
    const-string/jumbo v5, "pref_key_dingtalk_org_destribute"

    const-string/jumbo v6, ""

    invoke-static {v5, v6}, Lcpk;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 176
    .local v3, "json":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 177
    iget-object v5, p0, Lacp$1;->c:Lacp;

    iget-object v6, p0, Lacp$1;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    iget-object v7, p0, Lacp$1;->b:Lcma;

    invoke-static {v5, v6, v7}, Lacp;->a(Lacp;Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcma;)V

    goto :goto_0

    .line 180
    :cond_2
    invoke-static {v3}, Lru;->a(Ljava/lang/String;)Lru;

    move-result-object v1

    .line 181
    .local v1, "dingtalkOrgDistributeModel":Lru;
    if-nez v1, :cond_3

    .line 182
    iget-object v5, p0, Lacp$1;->c:Lacp;

    iget-object v6, p0, Lacp$1;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    iget-object v7, p0, Lacp$1;->b:Lcma;

    invoke-static {v5, v6, v7}, Lacp;->a(Lacp;Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcma;)V

    goto :goto_0

    .line 186
    :cond_3
    const-string/jumbo v0, ""

    .line 1053
    .local v0, "description":Ljava/lang/String;
    iget v4, v1, Lru;->c:I

    .line 188
    .local v4, "status":I
    packed-switch v4, :pswitch_data_0

    .line 199
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 200
    iget-object v5, p0, Lacp$1;->c:Lacp;

    iget-object v6, p0, Lacp$1;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    iget-object v7, p0, Lacp$1;->b:Lcma;

    invoke-static {v5, v6, v7}, Lacp;->a(Lacp;Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcma;)V

    goto :goto_0

    .line 190
    :pswitch_0
    iget-object v5, p0, Lacp$1;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    sget v6, Laxo$i;->dt_cmail_dingtalk_org_distribution:I

    invoke-virtual {v5, v6}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v7, [Ljava/lang/Object;

    .line 2037
    iget-object v7, v1, Lru;->a:Ljava/lang/String;

    .line 191
    aput-object v7, v6, v8

    .line 2045
    iget-object v7, v1, Lru;->b:Ljava/lang/String;

    .line 191
    aput-object v7, v6, v9

    .line 190
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 192
    goto :goto_1

    .line 194
    :pswitch_1
    iget-object v5, p0, Lacp$1;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    sget v6, Laxo$i;->dt_cmail_dingtalk_org_unassign:I

    invoke-virtual {v5, v6}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v7, [Ljava/lang/Object;

    .line 3045
    iget-object v7, v1, Lru;->b:Ljava/lang/String;

    .line 195
    aput-object v7, v6, v8

    .line 4037
    iget-object v7, v1, Lru;->a:Ljava/lang/String;

    .line 195
    aput-object v7, v6, v9

    .line 194
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 204
    :cond_4
    iget-object v5, p0, Lacp$1;->c:Lacp;

    iget-object v6, p0, Lacp$1;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-static {v5, v6, v0}, Lacp;->a(Lacp;Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 188
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
