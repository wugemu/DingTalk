.class final Lgac$1;
.super Ljava/lang/Object;
.source "CSpaceShareAdapter.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgac;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lgac$b;

.field final synthetic b:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

.field final synthetic c:I

.field final synthetic d:Lgac;


# direct methods
.method constructor <init>(Lgac;Lgac$b;Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;I)V
    .locals 0
    .param p1, "this$0"    # Lgac;

    .prologue
    .line 259
    iput-object p1, p0, Lgac$1;->d:Lgac;

    iput-object p2, p0, Lgac$1;->a:Lgac$b;

    iput-object p3, p0, Lgac$1;->b:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iput p4, p0, Lgac$1;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 259
    check-cast p1, Ljava/lang/Boolean;

    .line 1262
    iget-object v0, p0, Lgac$1;->a:Lgac$b;

    iget-object v0, v0, Lgac$b;->n:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Lgac$1;->b:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-wide v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1263
    iget-object v0, p0, Lgac$1;->d:Lgac;

    invoke-static {v0}, Lgac;->a(Lgac;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lgac$1;->b:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-wide v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1265
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1266
    iget-object v0, p0, Lgac$1;->d:Lgac;

    iget-object v1, p0, Lgac$1;->b:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-object v2, p0, Lgac$1;->a:Lgac$b;

    const/4 v3, 0x1

    iget v4, p0, Lgac$1;->c:I

    invoke-static {v0, v1, v2, v3, v4}, Lgac;->a(Lgac;Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;Lgac$b;ZI)V

    .line 259
    :cond_0
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 278
    iget-object v0, p0, Lgac$1;->a:Lgac$b;

    iget-object v0, v0, Lgac$b;->n:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Lgac$1;->b:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-wide v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 279
    iget-object v0, p0, Lgac$1;->d:Lgac;

    iget-object v1, p0, Lgac$1;->b:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-object v2, p0, Lgac$1;->a:Lgac$b;

    const/4 v3, 0x0

    iget v4, p0, Lgac$1;->c:I

    invoke-static {v0, v1, v2, v3, v4}, Lgac;->a(Lgac;Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;Lgac$b;ZI)V

    .line 281
    :cond_0
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 274
    return-void
.end method
