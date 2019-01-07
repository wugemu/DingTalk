.class public Lcom/alibaba/android/dingtalkim/forward/PickForwardHandler;
.super Lcom/alibaba/android/dingtalkim/forward/BaseForwardHandler;
.source "PickForwardHandler.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/alibaba/android/dingtalkim/forward/PickForwardHandler;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBundle:Landroid/os/Bundle;

.field private mMenuSeed:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    new-instance v0, Lcom/alibaba/android/dingtalkim/forward/PickForwardHandler$1;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalkim/forward/PickForwardHandler$1;-><init>()V

    sput-object v0, Lcom/alibaba/android/dingtalkim/forward/PickForwardHandler;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;J)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "menuSeed"    # J

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/forward/BaseForwardHandler;-><init>()V

    .line 35
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/forward/PickForwardHandler;->mBundle:Landroid/os/Bundle;

    .line 36
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/forward/PickForwardHandler;->mBundle:Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 39
    :cond_0
    iput-wide p2, p0, Lcom/alibaba/android/dingtalkim/forward/PickForwardHandler;->mMenuSeed:J

    .line 40
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/forward/BaseForwardHandler;-><init>()V

    .line 43
    const/4 v0, 0x0

    .line 44
    .local v0, "classLoader":Ljava/lang/ClassLoader;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 45
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 47
    :cond_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/dingtalkim/forward/PickForwardHandler;->mBundle:Landroid/os/Bundle;

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alibaba/android/dingtalkim/forward/PickForwardHandler;->mMenuSeed:J

    .line 49
    return-void
.end method

.method private sendPickData(Landroid/app/Activity;Ljava/util/ArrayList;)V
    .locals 7
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 92
    .local p2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;>;"
    if-nez p1, :cond_0

    .line 108
    :goto_0
    return-void

    .line 96
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "intent_action_forward_pick_data"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 98
    .local v1, "intent":Landroid/content/Intent;
    :try_start_0
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/forward/PickForwardHandler;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    :goto_1
    if-eqz p2, :cond_1

    .line 104
    const-string/jumbo v2, "intent_key_forward_pick_data"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 106
    :cond_1
    const-string/jumbo v2, "intent_key_menu_seed"

    iget-wide v4, p0, Lcom/alibaba/android/dingtalkim/forward/PickForwardHandler;->mMenuSeed:J

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 107
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v2

    invoke-virtual {v2, v1}, Ldq;->a(Landroid/content/Intent;)Z

    goto :goto_0

    .line 99
    :catch_0
    move-exception v0

    .line 100
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "im"

    const/4 v3, 0x0

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "sendPickData putExtras failed, error="

    aput-object v6, v4, v5

    const/4 v5, 0x1

    .line 101
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 100
    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    return v0
.end method

.method public handle(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "activity"    # Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 81
    .local p2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;>;"
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/dingtalkim/forward/PickForwardHandler;->sendPickData(Landroid/app/Activity;Ljava/util/ArrayList;)V

    .line 83
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/forward/PickForwardHandler;->finishCurrentPage()V

    .line 84
    return-void
.end method

.method public isSupportMultiple()Z
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x1

    return v0
.end method

.method protected share2SingleConversationImpl(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;Ljava/lang/String;)V
    .locals 0
    .param p1, "activity"    # Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
    .param p2, "conversation"    # Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    .param p3, "title"    # Ljava/lang/String;

    .prologue
    .line 89
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 53
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/forward/PickForwardHandler;->mBundle:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 54
    iget-wide v0, p0, Lcom/alibaba/android/dingtalkim/forward/PickForwardHandler;->mMenuSeed:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 55
    return-void
.end method
