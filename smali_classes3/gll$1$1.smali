.class final Lgll$1$1;
.super Ljava/lang/Object;
.source "SpaceSaveMessageManager.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgll$1;->a(Ljava/lang/Void;)V
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
        "Lcom/alibaba/alimei/cspace/model/DentryModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lgll$1;


# direct methods
.method constructor <init>(Lgll$1;)V
    .locals 0
    .param p1, "this$1"    # Lgll$1;

    .prologue
    .line 111
    iput-object p1, p0, Lgll$1$1;->a:Lgll$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 11

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v5, 0x0

    const-wide/16 v0, 0x0

    .line 111
    move-object v4, p1

    check-cast v4, Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 3114
    if-eqz v4, :cond_2

    .line 3115
    iget-object v2, p0, Lgll$1$1;->a:Lgll$1;

    iget-object v6, v2, Lgll$1;->c:Lgll;

    iget-object v2, p0, Lgll$1$1;->a:Lgll$1;

    iget-object v7, v2, Lgll$1;->b:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    .line 4156
    iget-boolean v2, v6, Lgll;->g:Z

    if-eqz v2, :cond_0

    .line 4157
    invoke-virtual {v6}, Lgll;->a()V

    .line 4158
    iget-object v1, v6, Lgll;->a:Landroid/content/Context;

    iget-wide v2, v6, Lgll;->h:J

    iget-object v6, v6, Lgll;->i:Ljava/lang/String;

    sget-object v7, Lfzu;->d:Lcma;

    invoke-static/range {v1 .. v7}, Lfzu;->a(Landroid/content/Context;JLcom/alibaba/alimei/cspace/model/DentryModel;Ljava/lang/String;Ljava/lang/String;Lcma;)V

    .line 3115
    :goto_0
    return-void

    .line 4164
    :cond_0
    if-eqz v7, :cond_3

    iget-object v2, v7, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->orgId:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 4165
    iget-object v2, v7, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->orgId:Ljava/lang/String;

    .line 5109
    invoke-static {v2, v0, v1}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v8

    .line 4167
    :goto_1
    cmp-long v0, v8, v0

    if-nez v0, :cond_1

    .line 4168
    invoke-virtual {v6}, Lgll;->a()V

    .line 4169
    iget-object v0, v6, Lgll;->a:Landroid/content/Context;

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v1

    invoke-virtual {v1}, Lccr;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    iget-object v1, v6, Lgll;->i:Ljava/lang/String;

    invoke-static {v0, v4, v5, v1}, Lfzu;->a(Landroid/content/Context;Lcom/alibaba/alimei/cspace/model/DentryModel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4174
    :cond_1
    new-instance v5, Lgll$2;

    move-object v10, v4

    invoke-direct/range {v5 .. v10}, Lgll$2;-><init>(Lgll;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;JLcom/alibaba/alimei/cspace/model/DentryModel;)V

    .line 4195
    iget-object v0, v6, Lgll;->c:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v0, v5}, Lgps;->a(Lcom/alibaba/wukong/im/Conversation;Lcma;)V

    goto :goto_0

    .line 3117
    :cond_2
    iget-object v0, p0, Lgll$1$1;->a:Lgll$1;

    iget-object v0, v0, Lgll$1;->c:Lgll;

    .line 6044
    iget-object v0, v0, Lgll;->a:Landroid/content/Context;

    .line 3117
    check-cast v0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->dismissLoadingDialog()V

    .line 3118
    iget-object v0, p0, Lgll$1$1;->a:Lgll$1;

    iget-object v0, v0, Lgll$1;->c:Lgll;

    const-string/jumbo v1, "2012"

    const-string/jumbo v2, "data error"

    invoke-static {v0, v1, v2}, Lgll;->a(Lgll;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move-wide v8, v0

    goto :goto_1
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 129
    iget-object v0, p0, Lgll$1$1;->a:Lgll$1;

    iget-object v0, v0, Lgll$1;->c:Lgll;

    .line 1044
    iget-object v0, v0, Lgll;->a:Landroid/content/Context;

    .line 129
    check-cast v0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->dismissLoadingDialog()V

    .line 130
    const-string/jumbo v0, "13023000"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 131
    iget-object v0, p0, Lgll$1$1;->a:Lgll$1;

    iget-object v0, v0, Lgll$1;->c:Lgll;

    iget-object v1, p0, Lgll$1$1;->a:Lgll$1;

    iget-object v1, v1, Lgll$1;->c:Lgll;

    .line 2044
    iget-object v1, v1, Lgll;->a:Landroid/content/Context;

    .line 131
    if-eqz v1, :cond_0

    iget-object v1, p0, Lgll$1$1;->a:Lgll$1;

    iget-object v1, v1, Lgll$1;->c:Lgll;

    .line 3044
    iget-object v1, v1, Lgll;->a:Landroid/content/Context;

    .line 131
    sget v2, Lfzs$h;->cspace_file_not_exist:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    .end local p2    # "s1":Ljava/lang/String;
    :cond_0
    invoke-static {v0, p1, p2}, Lgll;->a(Lgll;Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    :goto_0
    return-void

    .line 133
    .restart local p2    # "s1":Ljava/lang/String;
    :cond_1
    iget-object v0, p0, Lgll$1$1;->a:Lgll$1;

    iget-object v0, v0, Lgll$1;->c:Lgll;

    invoke-static {v0, p1, p2}, Lgll;->a(Lgll;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 125
    return-void
.end method
