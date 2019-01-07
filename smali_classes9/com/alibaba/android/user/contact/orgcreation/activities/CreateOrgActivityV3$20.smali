.class final Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$20;
.super Ljava/lang/Object;
.source "CreateOrgActivityV3.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:J

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/alibaba/android/dingtalk/userbase/model/CreateNewOrgInfo;

.field final synthetic e:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;Ljava/lang/String;JLjava/lang/String;Lcom/alibaba/android/dingtalk/userbase/model/CreateNewOrgInfo;)V
    .locals 1
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;

    .prologue
    .line 1503
    iput-object p1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$20;->e:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;

    iput-object p2, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$20;->a:Ljava/lang/String;

    iput-wide p3, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$20;->b:J

    iput-object p5, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$20;->c:Ljava/lang/String;

    iput-object p6, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$20;->d:Lcom/alibaba/android/dingtalk/userbase/model/CreateNewOrgInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1506
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$20;->e:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$20;->a:Ljava/lang/String;

    iget-wide v2, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$20;->b:J

    iget-object v4, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$20;->c:Ljava/lang/String;

    iget-object v5, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$20;->d:Lcom/alibaba/android/dingtalk/userbase/model/CreateNewOrgInfo;

    invoke-static/range {v0 .. v5}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->a(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;Ljava/lang/String;JLjava/lang/String;Lcom/alibaba/android/dingtalk/userbase/model/CreateNewOrgInfo;)V

    .line 1507
    return-void
.end method
