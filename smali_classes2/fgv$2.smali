.class final Lfgv$2;
.super Ljava/lang/Object;
.source "SettingOrgBossAdapter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfgv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

.field final synthetic b:Lfgv;


# direct methods
.method constructor <init>(Lfgv;Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;)V
    .locals 0
    .param p1, "this$0"    # Lfgv;

    .prologue
    .line 106
    iput-object p1, p0, Lfgv$2;->b:Lfgv;

    iput-object p2, p0, Lfgv$2;->a:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 109
    new-instance v6, Lfgv$2$1;

    invoke-direct {v6, p0}, Lfgv$2$1;-><init>(Lfgv$2;)V

    .line 127
    .local v6, "apiEventListener":Lcma;, "Lcma<Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;>;"
    iget-object v0, p0, Lfgv$2;->b:Lfgv;

    iget-object v0, v0, Lfgv;->b:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 128
    const-string/jumbo v0, "EVENTBUTLER"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    const-class v1, Lcma;

    iget-object v2, p0, Lfgv$2;->b:Lfgv;

    iget-object v2, v2, Lfgv;->b:Landroid/app/Activity;

    invoke-interface {v0, v6, v1, v2}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "apiEventListener":Lcma;, "Lcma<Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;>;"
    check-cast v6, Lcma;

    .line 130
    .restart local v6    # "apiEventListener":Lcma;, "Lcma<Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;>;"
    :cond_0
    invoke-static {}, Lfak;->a()Lezt;

    move-result-object v1

    iget-object v0, p0, Lfgv$2;->a:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    iget-wide v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgId:J

    iget-object v0, p0, Lfgv$2;->a:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->uid:J

    invoke-interface/range {v1 .. v6}, Lezt;->c(JJLcma;)V

    .line 131
    return-void
.end method
