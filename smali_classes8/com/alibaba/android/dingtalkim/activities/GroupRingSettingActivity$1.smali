.class final Lcom/alibaba/android/dingtalkim/activities/GroupRingSettingActivity$1;
.super Ljava/lang/Object;
.source "GroupRingSettingActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/GroupRingSettingActivity;
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
        "Lcom/alibaba/android/dingtalkim/models/GroupRingObject;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/GroupRingSettingActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/GroupRingSettingActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/GroupRingSettingActivity;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/GroupRingSettingActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/GroupRingSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 85
    check-cast p1, Ljava/util/List;

    .line 1089
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupRingSettingActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/GroupRingSettingActivity;

    invoke-static {v0, p1}, Lcom/alibaba/android/dingtalkim/activities/GroupRingSettingActivity;->a(Lcom/alibaba/android/dingtalkim/activities/GroupRingSettingActivity;Ljava/util/List;)V

    .line 85
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 94
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 100
    return-void
.end method
