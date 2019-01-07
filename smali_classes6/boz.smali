.class public final Lboz;
.super Ljava/lang/Object;
.source "PersonSelector.java"


# instance fields
.field final a:Ljava/lang/String;

.field public b:J

.field c:Lcov;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcov",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;>;"
        }
    .end annotation
.end field

.field public d:I

.field private final e:Landroid/app/Activity;

.field private f:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/app/Activity;JLjava/lang/String;)V
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "orgId"    # J
    .param p4, "identityFlag"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    :try_start_0
    invoke-static {p1}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v3

    const-string/jumbo v4, "activity is inactive"

    invoke-static {v3, v4}, Lcom/alibaba/doraemon/utils/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 45
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    move v3, v1

    :goto_0
    const-string/jumbo v4, "identityFlag = null"

    invoke-static {v3, v4}, Lcom/alibaba/doraemon/utils/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 46
    const-wide/16 v4, 0x0

    cmp-long v3, p2, v4

    if-lez v3, :cond_1

    :goto_1
    const-string/jumbo v3, "orgId <= 0"

    invoke-static {v1, v3}, Lcom/alibaba/doraemon/utils/Preconditions;->checkArgument(ZLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    :goto_2
    iput-wide p2, p0, Lboz;->b:J

    .line 51
    iput-object p1, p0, Lboz;->e:Landroid/app/Activity;

    .line 52
    iput-object p4, p0, Lboz;->a:Ljava/lang/String;

    .line 2076
    new-instance v1, Lboz$1;

    invoke-direct {v1, p0}, Lboz$1;-><init>(Lboz;)V

    iput-object v1, p0, Lboz;->f:Landroid/content/BroadcastReceiver;

    .line 2091
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 2092
    const-string/jumbo v2, "action_selected_contacts_result"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2093
    const-string/jumbo v2, "com.workapp.choose.people.from.contact"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2094
    iget-object v2, p0, Lboz;->e:Landroid/app/Activity;

    invoke-static {v2}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v2

    iget-object v3, p0, Lboz;->f:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 54
    return-void

    :cond_0
    move v3, v2

    .line 45
    goto :goto_0

    :cond_1
    move v1, v2

    .line 46
    goto :goto_1

    .line 47
    :catch_0
    move-exception v0

    .line 48
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    .line 1076
    invoke-static {v2, v1}, Lbqh;->a(ZLjava/lang/String;)V

    goto :goto_2
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 69
    iget-object v0, p0, Lboz;->f:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lboz;->e:Landroid/app/Activity;

    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lboz;->f:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lboz;->f:Landroid/content/BroadcastReceiver;

    .line 73
    :cond_0
    return-void
.end method

.method public final a(Lcov;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcov",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .local p1, "callback":Lcov;, "Lcov<Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;>;"
    const/4 v6, 0x0

    .line 98
    if-nez p1, :cond_0

    .line 122
    :goto_0
    return-void

    .line 102
    :cond_0
    iput-object p1, p0, Lboz;->c:Lcov;

    .line 104
    new-instance v0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;-><init>()V

    .line 106
    .local v0, "builder":Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;
    invoke-virtual {v0, v6}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->a(I)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    move-result-object v2

    .line 107
    invoke-virtual {v2, v6}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->c(I)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    move-result-object v2

    iget-object v3, p0, Lboz;->a:Ljava/lang/String;

    .line 108
    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->c(Ljava/lang/String;)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    move-result-object v2

    iget-wide v4, p0, Lboz;->b:J

    .line 109
    invoke-virtual {v2, v4, v5}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->a(J)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    move-result-object v2

    iget-wide v4, p0, Lboz;->b:J

    .line 110
    invoke-virtual {v2, v4, v5}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->b(J)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    move-result-object v2

    .line 111
    invoke-virtual {v2, v6}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->b(Z)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    move-result-object v2

    .line 112
    invoke-virtual {v2, v6}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->j(Z)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    move-result-object v2

    const/4 v3, 0x1

    .line 113
    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->a(Z)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 115
    iget v2, p0, Lboz;->d:I

    if-lez v2, :cond_1

    .line 116
    iget v2, p0, Lboz;->d:I

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->b(I)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 119
    :cond_1
    new-instance v1, Lcom/alibaba/android/dingtalk/userbase/SelectedContactsRequest;

    invoke-direct {v1}, Lcom/alibaba/android/dingtalk/userbase/SelectedContactsRequest;-><init>()V

    .line 3053
    .local v1, "selectedContactsRequest":Lcom/alibaba/android/dingtalk/userbase/SelectedContactsRequest;
    iget-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->a:Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;

    .line 120
    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalk/userbase/SelectedContactsRequest;->setContactChooseRequest(Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;)V

    .line 121
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v2

    iget-object v3, p0, Lboz;->e:Landroid/app/Activity;

    .line 4053
    iget-object v4, v0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->a:Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;

    .line 121
    invoke-virtual {v2, v3, v4}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Landroid/app/Activity;Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;)V

    goto :goto_0
.end method
