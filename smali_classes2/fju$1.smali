.class final Lfju$1;
.super Ljava/lang/Object;
.source "BaseEmployViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfju;->a(Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;ILandroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

.field final synthetic b:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

.field final synthetic c:Lfju;


# direct methods
.method constructor <init>(Lfju;Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;)V
    .locals 0
    .param p1, "this$0"    # Lfju;

    .prologue
    .line 170
    iput-object p1, p0, Lfju$1;->c:Lfju;

    iput-object p2, p0, Lfju$1;->a:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    iput-object p3, p0, Lfju$1;->b:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 173
    iget-object v0, p0, Lfju$1;->c:Lfju;

    invoke-static {v0}, Lfju;->a(Lfju;)Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lfju$1;->c:Lfju;

    invoke-static {v0}, Lfju;->b(Lfju;)Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;

    const-string/jumbo v2, "OrgContactFragment"

    const/4 v3, 0x0

    iget-object v0, p0, Lfju$1;->a:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgId:J

    iget-object v6, p0, Lfju$1;->b:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->a(Ljava/lang/String;Ljava/lang/String;JLcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;)V

    .line 176
    :cond_0
    return-void
.end method
