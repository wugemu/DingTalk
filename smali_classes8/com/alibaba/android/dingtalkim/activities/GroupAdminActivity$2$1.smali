.class final Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity$2$1;
.super Ljava/lang/Object;
.source "GroupAdminActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity$2;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
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
        "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity$2;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity$2;Ljava/util/List;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity$2;

    .prologue
    .line 192
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity$2$1;->b:Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity$2;

    iput-object p2, p0, Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity$2$1;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 192
    check-cast p1, Ljava/util/List;

    .line 1195
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity$2$1;->b:Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity$2;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity$2;->a:Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity$2$1;->a:Ljava/util/List;

    invoke-static {v0, p1, v1}, Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity;->a(Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity;Ljava/util/List;Ljava/util/List;)V

    .line 192
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 204
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    const/4 v0, 0x0

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "GroupAdminActivity selected getUserProfileList exception code: "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, " msg: "

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object p2, v1, v2

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1018
    const-string/jumbo v2, "im"

    invoke-static {v0, v1, v2}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 200
    return-void
.end method
