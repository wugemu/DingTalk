.class public final Lfdq;
.super Ljava/lang/Object;
.source "PersonSelector.java"


# instance fields
.field public final a:Landroid/app/Activity;

.field public final b:Ljava/lang/String;

.field public c:J

.field public d:Landroid/content/BroadcastReceiver;

.field public e:Lcov;
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

.field public f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;"
        }
    .end annotation
.end field

.field public g:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;JLjava/lang/String;)V
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "orgId"    # J
    .param p4, "identityFlag"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    :try_start_0
    invoke-static {p1}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v3

    const-string/jumbo v4, "activity is inactive"

    invoke-static {v3, v4}, Lcom/alibaba/doraemon/utils/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 46
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    move v3, v1

    :goto_0
    const-string/jumbo v4, "identityFlag = null"

    invoke-static {v3, v4}, Lcom/alibaba/doraemon/utils/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 47
    const-wide/16 v4, 0x0

    cmp-long v3, p2, v4

    if-lez v3, :cond_1

    :goto_1
    const-string/jumbo v3, "orgId <= 0"

    invoke-static {v1, v3}, Lcom/alibaba/doraemon/utils/Preconditions;->checkArgument(ZLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    :goto_2
    iput-wide p2, p0, Lfdq;->c:J

    .line 52
    iput-object p1, p0, Lfdq;->a:Landroid/app/Activity;

    .line 53
    iput-object p4, p0, Lfdq;->b:Ljava/lang/String;

    .line 1077
    new-instance v1, Lfdq$1;

    invoke-direct {v1, p0}, Lfdq$1;-><init>(Lfdq;)V

    iput-object v1, p0, Lfdq;->d:Landroid/content/BroadcastReceiver;

    .line 1093
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 1094
    const-string/jumbo v2, "action_selected_contacts_result"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1095
    const-string/jumbo v2, "com.workapp.choose.people.from.contact"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1096
    iget-object v2, p0, Lfdq;->a:Landroid/app/Activity;

    invoke-static {v2}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v2

    iget-object v3, p0, Lfdq;->d:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 55
    return-void

    :cond_0
    move v3, v2

    .line 46
    goto :goto_0

    :cond_1
    move v1, v2

    .line 47
    goto :goto_1

    .line 48
    :catch_0
    move-exception v0

    .line 49
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    .line 1060
    invoke-static {v2, v1}, Lffe;->a(ZLjava/lang/String;)V

    goto :goto_2
.end method
