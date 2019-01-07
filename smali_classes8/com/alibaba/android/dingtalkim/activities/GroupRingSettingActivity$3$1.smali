.class final Lcom/alibaba/android/dingtalkim/activities/GroupRingSettingActivity$3$1;
.super Ljava/lang/Object;
.source "GroupRingSettingActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/activities/GroupRingSettingActivity$3;->a(Lcom/alibaba/android/dingtalkim/models/GroupRingObject;)V
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
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/models/GroupRingObject;

.field final synthetic b:Lcom/alibaba/android/dingtalkim/activities/GroupRingSettingActivity$3;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/GroupRingSettingActivity$3;Lcom/alibaba/android/dingtalkim/models/GroupRingObject;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/dingtalkim/activities/GroupRingSettingActivity$3;

    .prologue
    .line 150
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/GroupRingSettingActivity$3$1;->b:Lcom/alibaba/android/dingtalkim/activities/GroupRingSettingActivity$3;

    iput-object p2, p0, Lcom/alibaba/android/dingtalkim/activities/GroupRingSettingActivity$3$1;->a:Lcom/alibaba/android/dingtalkim/models/GroupRingObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 150
    check-cast p1, Ljava/lang/String;

    .line 1154
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupRingSettingActivity$3$1;->b:Lcom/alibaba/android/dingtalkim/activities/GroupRingSettingActivity$3;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/GroupRingSettingActivity$3;->a:Lcom/alibaba/android/dingtalkim/activities/GroupRingSettingActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/GroupRingSettingActivity;->d(Lcom/alibaba/android/dingtalkim/activities/GroupRingSettingActivity;)Landroid/media/SoundPool;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v0

    .line 1155
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/GroupRingSettingActivity$3$1;->b:Lcom/alibaba/android/dingtalkim/activities/GroupRingSettingActivity$3;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/activities/GroupRingSettingActivity$3;->a:Lcom/alibaba/android/dingtalkim/activities/GroupRingSettingActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/GroupRingSettingActivity;->c(Lcom/alibaba/android/dingtalkim/activities/GroupRingSettingActivity;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/GroupRingSettingActivity$3$1;->a:Lcom/alibaba/android/dingtalkim/models/GroupRingObject;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/models/GroupRingObject;->mediaId:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1156
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v1

    new-instance v2, Lcom/alibaba/android/dingtalkim/activities/GroupRingSettingActivity$3$1$1;

    invoke-direct {v2, p0, v0}, Lcom/alibaba/android/dingtalkim/activities/GroupRingSettingActivity$3$1$1;-><init>(Lcom/alibaba/android/dingtalkim/activities/GroupRingSettingActivity$3$1;I)V

    const-wide/16 v4, 0x1f4

    invoke-virtual {v1, v2, v4, v5}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 150
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 168
    const-string/jumbo v0, "im"

    const/4 v1, 0x0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "download ring fail s:"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "s1:"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p2, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 174
    return-void
.end method
