.class final Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListActivity$1;
.super Ljava/lang/Object;
.source "BusinessListActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListActivity;->onCreate(Landroid/os/Bundle;)V
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
        "Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListActivity;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListActivity$1;->a:Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListActivity;

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
    .line 96
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .line 1099
    if-eqz p1, :cond_0

    .line 1100
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListActivity$1;->a:Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListActivity;

    invoke-static {v0, p1}, Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListActivity;->a(Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListActivity;Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;)Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .line 1101
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListActivity$1;->a:Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListActivity;->a(Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListActivity;)V

    .line 1102
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListActivity$1;->a:Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListActivity;->a(Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListActivity;Z)V

    :goto_0
    return-void

    .line 1104
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListActivity$1;->a:Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListActivity;->finish()V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 114
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListActivity$1;->a:Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListActivity;->finish()V

    .line 116
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 110
    return-void
.end method
