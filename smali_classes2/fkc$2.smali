.class final Lfkc$2;
.super Ljava/lang/Object;
.source "MultipleDeptViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfkc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

.field final synthetic b:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

.field final synthetic c:Lfkc;


# direct methods
.method constructor <init>(Lfkc;Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;)V
    .locals 0
    .param p1, "this$0"    # Lfkc;

    .prologue
    .line 161
    iput-object p1, p0, Lfkc$2;->c:Lfkc;

    iput-object p2, p0, Lfkc$2;->a:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    iput-object p3, p0, Lfkc$2;->b:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

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
    .line 164
    iget-object v0, p0, Lfkc$2;->c:Lfkc;

    .line 1043
    iget-object v0, v0, Lfkc;->j:Landroid/widget/CheckBox;

    .line 164
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_1

    .line 165
    iget-object v0, p0, Lfkc$2;->c:Lfkc;

    invoke-static {v0}, Lfkc;->f(Lfkc;)Lfin;

    move-result-object v0

    iget-object v0, v0, Lfin;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lfkc$2;->c:Lfkc;

    invoke-static {v0}, Lfkc;->g(Lfkc;)Lfin;

    move-result-object v0

    const-string/jumbo v1, "OrgContactFragment"

    iput-object v1, v0, Lfin;->d:Ljava/lang/String;

    .line 168
    :cond_0
    iget-object v0, p0, Lfkc$2;->c:Lfkc;

    invoke-static {v0}, Lfkc;->h(Lfkc;)Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;

    if-eqz v0, :cond_1

    .line 169
    iget-object v0, p0, Lfkc$2;->c:Lfkc;

    invoke-static {v0}, Lfkc;->j(Lfkc;)Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;

    iget-object v0, p0, Lfkc$2;->c:Lfkc;

    invoke-static {v0}, Lfkc;->i(Lfkc;)Lfin;

    move-result-object v0

    iget-object v2, v0, Lfin;->d:Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v0, p0, Lfkc$2;->a:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->orgId:J

    iget-object v6, p0, Lfkc$2;->b:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->a(Ljava/lang/String;Ljava/lang/String;JLcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;)V

    .line 172
    :cond_1
    return-void
.end method
